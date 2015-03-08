<?php

/**
 * This is a "CMS" model for blogposts.
 *
 * @author Mae
 */
class Posts extends MY_Model {
       
    // constructor
    function __construct() {
        parent::__construct('blogposts', 'id');
    }
    
    // return all blog posts, ascending order by post date
    function all() {
        
        $this->db->order_by("id", "asc");
        $query = $this->db->get('blogposts');
        return $query->result_array();
    }
    
    // return the 3 newest blog posts
    function newest() {
        
        $this->db->order_by("id", "desc");
        $this->db->limit(3);
        $query = $this->db->get('blogposts');
        return $query->result_array();
    }
    
}