<?php

/*
    Filename    : Persons_model.php
    Location    : application/models/Persons_model.php
    Purpose     : Persons model
    Created     : 11/01/2019 16:48:42 by rpbaguio
    Updated     : 11/05/2019 20:40:28 by rpbaguio
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Persons_model extends CI_Model
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
                't1.prefix,' .
                't1.first_name,' .          
                't1.middle_name,' .
                't1.last_name,' .
                'CONCAT(t1.first_name," ",t1.last_name) AS full_name,' .          
                't1.group_id,' .
                't4.short_name AS group_short_name,' .
                't4.long_name AS group_long_name,' .
                't1.is_candidate,' .
                't1.is_validated,' .
                't1.is_voted,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('persons AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left')  
            ->join('groups AS t4', 't4.id = t1.group_id', 'left')                           
            ->where([
                't1.is_deleted' => 0,
                't1.role_id' => 2
            ])
            ->order_by('t1.id', 'DESC');
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.prefix,' .
                't1.suffix,' .
                't1.first_name,' .          
                't1.middle_name,' .
                't1.last_name,' .
                'CONCAT(t1.first_name," ",t1.last_name) AS full_name,' . 
                't1.avatar,' .
                't1.gender_id,' .
                't4.name AS gender_name,' .
                't1.role_id,' .
                't5.name AS role_name,' .
                't1.group_id,' .
                't6.short_name AS group_short_name,' .
                't6.long_name AS group_long_name,' .
                't1.position_id,' .
                't7.name AS position_name,' .
                't1.is_candidate,' .
                't1.is_validated,' .
                't1.is_voted,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('persons AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left') 
            ->join('global_reference_group_value AS t4', 't4.id = t1.gender_id', 'left')    
            ->join('global_reference_group_value AS t5', 't5.id = t1.role_id', 'left')
            ->join('groups AS t6', 't6.id = t1.group_id', 'left')     
            ->join('positions AS t7', 't7.id = t1.position_id', 'left')     
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.id' => $id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_position_id($position_id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.prefix,' .
                't1.suffix,' .
                't1.first_name,' .          
                't1.middle_name,' .
                't1.last_name,' .
                'CONCAT(t1.first_name," ",t1.last_name) AS full_name,' . 
                't1.avatar,' .
                't1.gender_id,' .
                't4.name AS gender_name,' .
                't1.role_id,' .
                't5.name AS role_name,' .
                't1.group_id,' .
                't6.short_name AS group_short_name,' .
                't6.long_name AS group_long_name,' .
                't1.position_id,' .
                't7.name AS position_name,' .
                't1.is_candidate,' .
                't1.is_validated,' .
                't1.is_voted,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('persons AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left') 
            ->join('global_reference_group_value AS t4', 't4.id = t1.gender_id', 'left')    
            ->join('global_reference_group_value AS t5', 't5.id = t1.role_id', 'left')
            ->join('groups AS t6', 't6.id = t1.group_id', 'left')     
            ->join('positions AS t7', 't7.id = t1.position_id', 'left')     
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.is_candidate' => 1,
                    't1.position_id' => $position_id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_access_code($access_code)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.prefix,' .
                't1.suffix,' .
                't1.first_name,' .          
                't1.middle_name,' .
                't1.last_name,' .
                't1.avatar,' .
                't1.gender_id,' .
                't4.name AS gender_name,' .
                't1.role_id,' .
                't5.name AS role_name,' .
                't1.group_id,' .
                't6.short_name AS group_short_name,' .
                't6.long_name AS group_long_name,' .
                't1.is_candidate,' .
                't1.is_validated,' .
                't1.is_voted,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('persons AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left') 
            ->join('global_reference_group_value AS t4', 't4.id = t1.gender_id', 'left')    
            ->join('global_reference_group_value AS t5', 't5.id = t1.role_id', 'left')
            ->join('groups AS t6', 't6.id = t1.group_id', 'left')      
            ->where(
                [
                    't1.is_deleted'=> 0, 
                    't1.access_code' => $access_code
                ]
            );
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_is_candidate()
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.prefix,' .
                't1.first_name,' .          
                't1.middle_name,' .
                't1.last_name,' .
                'CONCAT(t1.first_name," ",t1.last_name) AS full_name,' .          
                't1.group_id,' .
                't4.short_name AS group_short_name,' .
                't4.long_name AS group_long_name,' .
                't1.is_candidate,' .
                't1.is_validated,' .
                't1.is_voted,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('persons AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left')  
            ->join('groups AS t4', 't4.id = t1.group_id', 'left')                           
            ->where([
                't1.is_deleted' => 0,
                't1.role_id' => 2,
                't1.is_candidate' => 1
            ])
            ->order_by('t1.id', 'DESC');
        
        return json_decode($this->datatables->generate());
    }

    public function _get_is_candidate_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.prefix,' .
                't1.suffix,' .
                't1.first_name,' .          
                't1.middle_name,' .
                't1.last_name,' .
                'CONCAT(t1.first_name," ",t1.last_name) AS full_name,' . 
                't1.avatar,' .
                't1.gender_id,' .
                't4.name AS gender_name,' .
                't1.role_id,' .
                't5.name AS role_name,' .
                't1.group_id,' .
                't6.short_name AS group_short_name,' .
                't6.long_name AS group_long_name,' .
                't1.position_id,' .
                't7.name AS position_name,' .
                't1.is_candidate,' .
                't1.is_validated,' .
                't1.is_voted,' .
                't1.dt_created,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                't1.dt_updated,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('persons AS t1')
            ->join('persons AS t2', 't2.id = t1.created_by', 'left')          
            ->join('persons AS t3', 't3.id = t1.updated_by', 'left') 
            ->join('global_reference_group_value AS t4', 't4.id = t1.gender_id', 'left')    
            ->join('global_reference_group_value AS t5', 't5.id = t1.role_id', 'left')
            ->join('groups AS t6', 't6.id = t1.group_id', 'left')     
            ->join('positions AS t7', 't7.id = t1.position_id', 'left')                          
            ->where([
                't1.is_deleted' => 0,
                't1.role_id' => 2,
                't1.is_candidate' => 1,
                't1.id' => $id
            ]);
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_is_voted($access_code)
    {
        $this->db
            ->select('t1.is_voted')
            ->from('persons AS t1')
            ->where('t1.access_code', hash('sha512', $access_code));
            
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _update_is_voted($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('persons', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('persons', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('persons', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('persons', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('persons');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}