<?php

/*
    Filename    : Tally.php
    Location    : application/controllers/Tally.php
    Purpose     : Tally controller
    Created     : 11/04/2019 20:56:58 by rpbaguio
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Tally extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $get_all = $this->tally_model->_get_all();

        if (empty($get_all)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function results_get()
    {
        $results = [
            'draw' => 0,
            'recordsTotal' => '',
            'recordsFiltered' => '',
            'data' => $this->tally_model->_summary_results()
        ];

        if (empty($results)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($results, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_post()
    {
        $data = [
            'is_voted' => 1,
            'updated_by' => $this->post('user_id'),
            'dt_updated' => date('Y-m-d H:i:s')
        ];

        if (in_array(null, $data, true)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            foreach ($this->post('candidate_id') as $candidate_id) {
                $obj = [
                    'candidate_id' => $candidate_id,
                    'person_id' => $this->post('person_id'),
                    'created_by' => $this->post('user_id'),
                    'dt_created' => date('Y-m-d H:i:s')
                ];
                $this->tally_model->_create($obj);
            }

            $this->persons_model->_update_is_voted($this->post('user_id'), $data);
            
            $this->response([
                'status' => TRUE,
                'message' => 'Created'
            ], REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
        }
    }
}