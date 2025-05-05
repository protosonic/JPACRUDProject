package com.skilldistillery.trails.data;

import java.util.List;

import com.skilldistillery.trails.entities.LocalTrails;

public interface LocalTrailsDAO {
	LocalTrails findById(int trailId);
	List<LocalTrails> findAll();
	LocalTrails createTrail(LocalTrails trail);
	LocalTrails updateTrail(int trailId, LocalTrails updatedtrail);

}
