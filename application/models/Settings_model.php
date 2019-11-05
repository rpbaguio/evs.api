<?php

/*
    Filename    : Settings_model.php
    Location    : application/models/Settings_model.php
    Purpose     : Settings model
    Created     : 11/01/2019 16:48:42 by rpbaguio
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Settings_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select(
                't1.id,' .
                't1.header,' .          
                't1.slogan,' .
                't1.footer,' .
                't1.logo,')
            ->from('settings AS t1');
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.header,' .          
                't1.slogan,' .
                't1.footer,' .
                't1.logo,')
            ->from('settings AS t1')
            ->where('t1.id', $id);
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('settings', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}