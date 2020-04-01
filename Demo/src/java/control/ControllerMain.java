package control;

import data.Connection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import logic.Person;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//Se especifica que es un controlador y s eagrega al XML dispatcher-servelt.xml
@Controller
public class ControllerMain {
    Connection conn = new Connection();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conn.connect());
    ModelAndView mav = new ModelAndView();
    int id;
    List data;
    
    //--------------- Listar -----------------------------
    
    //Desde donde nos pediran la info y donde se va a mostrar por defecto es htm se puede cambiar
    @RequestMapping("index.htm")
    public ModelAndView List(){
        String sql = "select * from person";
        data = this.jdbcTemplate.queryForList(sql);
        mav.addObject("list",data);
        mav.setViewName("index");
        return mav;
    }
    
    //-------------------- Insertar -----------------------------------
    
    //Recordad agregar a dispatcher-servelt.xml el prop
    @RequestMapping(value = "add.htm", method = RequestMethod.GET)
    public ModelAndView Add(){
        mav.addObject(new Person());
        mav.setViewName("add");
        return mav;
    }
    
    @RequestMapping(value = "add.htm", method = RequestMethod.POST)
    public ModelAndView Add(Person p){
        String sql = "insert into person(name, email, nationality) values(?,?,?)";
        this.jdbcTemplate.update(sql, p.getName(), p.getEmail(), p.getNationality());
        return new ModelAndView("redirect:/index.htm");
    }
    
    //---------------------------- Editar --------------------------------
    
    @RequestMapping(value= "edit.htm", method = RequestMethod.GET)
    public ModelAndView Edit(HttpServletRequest request){
       id = Integer.parseInt(request.getParameter("id"));
       String sql = "select * from person where id ="+id;
       data = this.jdbcTemplate.queryForList(sql);
       mav.addObject("list", data);
       mav.setViewName("edit");
       return mav;
    }
    
    @RequestMapping(value= "edit.htm", method = RequestMethod.POST)
    public ModelAndView Edit(Person p){
       String sql = "update person set name=?, email=?, nationality=? where id ="+id;
       this.jdbcTemplate.update(sql, p.getName(), p.getEmail(), p.getNationality());
       return new ModelAndView("redirect:/index.htm");
    }
    
    //--------------------- Borrar -----------------------------------
    
    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request){
       id = Integer.parseInt(request.getParameter("id"));
       String sql = "delete from person where id ="+id;
       this.jdbcTemplate.update(sql);
       return new ModelAndView("redirect:/index.htm");
    }
    
}
