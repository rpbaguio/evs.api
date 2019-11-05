<?php

/*
    Filename    : Positions_model.php
    Location    : application/models/Positions_model.php
    Purpose     : Positions model
    Created     : 11/01/2019 16:48:42 by rpbaguio
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Positions_model extends CI_Model
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
                't1.name,' .          
                't1.desc,' .
                't1.max_selection,' .
                't1.sequence,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('positions AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left')                
            ->where('t1.is_deleted', 0)
            ->order_by('t1.id', 'DESC');
      
        return json_decode($this->datatables->generate());
    }

    public function _get_positions()
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .          
                't1.desc,' .
                't1.max_selection,' .
                't1.sequence,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('positions AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left')                
            ->where('t1.is_deleted', 0)
            ->order_by('t1.sequence', 'ASC');
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .          
                't1.desc,' .
                't1.max_selection,' .
                't1.sequence,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('positions AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left') 
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.id' => $id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_name($name)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name AS text')
            ->from('positions AS t1')
            ->where('is_deleted', 0)
            ->like('name', $name);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('positions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('positions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('positions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('positions');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}