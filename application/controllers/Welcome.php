<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller
{
    /**
     * Default page
     */
    public function index()
    {
        $view_data = [
            'page_title' => 'Mount Carmel API v1.0',
            'page_header' => 'Bicol Research'
        ];

        $this->load->view('welcome', $view_data);
    }
}