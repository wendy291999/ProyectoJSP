/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence.dao.impl;

import commons.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Person;
import persistence.dao.AbstractDAO;

/**
 *
 * @author wenkary
 */
public class PersonDAO implements AbstractDAO<Person> {

    private Connection conection = Connection.getInstance();
    private String sql = "";

    @Override
    public boolean create(Person t) {
        sql = "INSERT INTO person (id, name,telephone,address) VALUES (" + t.getId() + ",'" + t.getName() + "','" + t.getTelephone() + "','" + t.getAddress() + "');";
        return conection.execute(sql);

    }

    @Override
    public boolean delete(Person t) {
        sql = "DELETE FROM person WHERE id = " + t.getId() + ";";
        return conection.execute(sql);
    }

    @Override
    public boolean update(Person t) {
        sql = "UPDATE person SET name = '" + t.getName() + "', telephone = '" + t.getTelephone() + "',address = '" + t.getAddress() + "' WHERE id = " + t.getId() + ";";
        return conection.execute(sql);

    }

    @Override
    public Person getOne(Person t) {
        sql = "SELECT * FROM person WHERE id =" + t.getId() + ";";
        ResultSet resultSet = conection.executeQuery(sql);
        Person person = null;
        if(resultSet != null) {
            try {
                while(resultSet.next()) {
                    person = new Person();
                    person.setId(resultSet.getLong("ID"));
                    person.setName(resultSet.getString("NAME"));
                    person.setTelephone(resultSet.getString("TELEPHONE"));
                    person.setAddress(resultSet.getString("ADDRESS"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(PersonDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return person;
    }

    @Override
    public List<Person> getAll() {
        sql = " SELECT * FROM person";
        ResultSet resultSet =  conection.executeQuery(sql);
        List<Person> persons = new ArrayList<>();
        if(resultSet != null) {
            try {
                while(resultSet.next()){
                    Person person = new Person();
                    person.setId(resultSet.getLong("ID"));
                    person.setName(resultSet.getString("NAME"));
                    person.setTelephone(resultSet.getString("TELEPHONE"));
                    person.setAddress(resultSet.getString("ADDRESS"));
                    persons.add(person);
                }
            } catch (SQLException ex) {
                Logger.getLogger(PersonDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return persons;
    }

}
