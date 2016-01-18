package com.CAL.CALImplement;

import com.CAL.model.ProjectionModel;

import java.util.List;

/**
 * Created by Summer7C on 2015/10/24.
 */
public interface ProjectionInterface {
    public void create();
    public boolean addProjection(ProjectionModel projectionModel);
    public List findProjecion();
}
