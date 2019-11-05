<?php

/*
    Filename    : Tally_model.php
    Location    : application/models/Tally_model.php
    Purpose     : Tally model
    Created     : 11/04/2019 20:49:12 by rpbaguio
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Tally_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.person_id,' .     
                'CONCAT(t2.first_name, " ", t2.last_name) AS person_full_name,'  .   
                't1.candidate_id,' .    
                'CONCAT(t2.first_name, " ", t2.last_name) AS candidate_full_name,'  .
                't1.dt_created,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by')
            ->from('tally AS t1')
            ->join('persons AS t2', 't2.id = t1.person_id', 'left')
            ->join('persons AS t3', 't3.id = t1.candidate_id', 'left')
            ->join('persons AS t4', 't4.id = t1.created_by', 'left')                    
            ->order_by('t1.id', 'DESC');
        
        return json_decode($this->datatables->generate());
    }

    public function _summary_results()
    {
        $sp = 'call sp_summary_results';
        $query = $this->db->query($sp);
        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();
        
        $this->db->insert('tally', $data);
        
        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}