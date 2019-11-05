<?php

/*
    Filename    : Auth.php
    Location    : application/controllers/Auth.php
    Purpose     : Auth controller
    Created     : 11/02/2019 00:38:01 by rpbaguio
    Updated     : 11/02/2019 12:09:45 by rpbaguio
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Auth extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function login_get()
    {
        $access_code = (string)$this->get('access_code');

        if (empty($access_code)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $get_by_access_code = $this->persons_model->_get_by_access_code($access_code);

        if (empty($get_by_access_code)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_by_access_code, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function is_voted_get()
    {
        $access_code = (string)$this->get('access_code');

        if(empty($access_code)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Access code field is required'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $get_is_voted = $this->persons_model->_get_is_voted($access_code);

        if (empty($get_is_voted)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Access code not found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_is_voted, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}