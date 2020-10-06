/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence.dao;

import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author wenkary
 */
public interface AbstractDAO<T>{
    
   boolean create(T t);

    boolean delete(T t);

    boolean update(T t);

    T getOne(T t);

    List<T> getAll();
}
