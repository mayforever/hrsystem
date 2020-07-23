package io.github.mayforever.hrserver.api;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.ws.rs.core.Response.Status;

import io.github.mayforever.hrserver.model.User;

@Path("/users")
public class UsersApi {

	
	public UsersApi() {
		
	}
	
	
	
	@GET
	@Consumes({MediaType.TEXT_PLAIN})
	@Produces(MediaType.APPLICATION_JSON)
	public List<UsersApi> getUser(
//			@MatrixParam("id") String id,
//            @MatrixParam("username") String username,
//            @MatrixParam("firstname") String firstname,
//            @MatrixParam("lastname") String lastname,
//            @MatrixParam("department") String department,
          ){
		List<UsersApi> users = new ArrayList<UsersApi>();
		
		return users;
		
	}
	
	@Path("/login")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response login(User user) {
//		User user = new User();
		return Response.status(Status.CREATED).entity("Success : Endorsement ID # "+user.getCode()+" was recieved").build();
	}
}
