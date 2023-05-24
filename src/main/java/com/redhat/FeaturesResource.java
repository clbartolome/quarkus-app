package com.redhat;

import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import org.eclipse.microprofile.metrics.MetricUnits;
import org.eclipse.microprofile.metrics.annotation.Counted;
import org.eclipse.microprofile.metrics.annotation.Timed;
import org.eclipse.microprofile.openapi.annotations.Operation;
import org.eclipse.microprofile.openapi.annotations.enums.SchemaType;
import org.eclipse.microprofile.openapi.annotations.media.Content;
import org.eclipse.microprofile.openapi.annotations.media.Schema;
import org.eclipse.microprofile.openapi.annotations.responses.APIResponse;

@Path("/features")
@Produces(APPLICATION_JSON)
@Consumes(APPLICATION_JSON)
public class FeaturesResource {

    @GET
    @Operation(summary = "Returns all the features")
    @APIResponse(responseCode = "200", content = @Content(mediaType = APPLICATION_JSON, schema = @Schema(implementation = Feature.class, type = SchemaType.ARRAY)))
    @APIResponse(responseCode = "204", description = "No features")
    @Counted(name = "countGetfeatures")
    @Timed(name = "timeGetfeatures", unit = MetricUnits.MILLISECONDS)
    public Response getfeatures() {
  
      List<Feature> features = Feature.listAll();
      if (features.isEmpty()) {
        return Response.noContent().build();
      }
      return Response.ok(features).build();
    }
}
