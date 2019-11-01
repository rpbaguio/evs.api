<?php

/*
    Filename    : Welcome.php
    Location    : application/controllers/Welcome.php
    Purpose     : Welcome controller
    Created     : 11/01/2019 11:29:16 by rpbaguio
    Updated     : 
    Changes     : 
*/

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller
{
    public function index()
    {
        $view_data = [
            'page_title' => 'EVS API v1.0.0-Alpha',
            'page_header' => 'Team <01/>'
        ];

        $this->load->view('welcome', $view_data);
    }
}