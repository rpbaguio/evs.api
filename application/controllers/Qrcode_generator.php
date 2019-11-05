<?php

/*
    Filename    : Qrcode_generator.php
    Location    : application/controllers/Qrcode_generator.php
    Purpose     : Qrcode generator controller
    Created     : 11/04/2019 13:02:54 by Spiderman
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Qrcode_generator extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $access_code = $this->get('access_code');

        if(empty($access_code)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $params['data'] = $access_code;
        $params['level'] = 'H';
        $params['size'] = 7;
        $params['savename'] = FCPATH . 'public/assets/qrcode/' . $access_code . '-qrcode.png';
        $this->ciqrcode->generate($params);
        
        $qrcode = [
            'access_code' => $access_code,
            'qrcode_url' => base_url('public/assets/qrcode') . '/' . $access_code . '-qrcode.png'
        ];

        if (empty($qrcode)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($qrcode, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}