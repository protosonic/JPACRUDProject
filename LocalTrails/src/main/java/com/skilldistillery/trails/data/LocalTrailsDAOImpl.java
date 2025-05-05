package com.skilldistillery.trails.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.trails.entities.LocalTrails;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class LocalTrailsDAOImpl implements LocalTrailsDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public LocalTrails findById(int trailId) {
		return em.find(LocalTrails.class, trailId);
	}

	@Override
	public List<LocalTrails> findAll() {
		String jpql = "SELECT trail FROM LocalTrails trail";
		List<LocalTrails> allTrails = em.createQuery(jpql, LocalTrails.class).getResultList();
		return allTrails;
	}

	@Override
	public LocalTrails createTrail(LocalTrails trail) {
		em.persist(trail);
		return trail;
	}

	@Override
	public LocalTrails updateTrail(int trailId, LocalTrails updatedTrail) {
		LocalTrails existingTrail = em.find(LocalTrails.class, trailId);
		if (existingTrail != null) {
			existingTrail.setName(updatedTrail.getName());
			existingTrail.setLengthMiles(updatedTrail.getLengthMiles());
			existingTrail.setDifficulty(updatedTrail.getDifficulty());
			existingTrail.setSingleTrackPercent(updatedTrail.getSingleTrackPercent());
			existingTrail.setAltitudeHigh(updatedTrail.getAltitudeHigh());
			existingTrail.setAltitudeLow(updatedTrail.getAltitudeLow());
		}
		return existingTrail;
	}
	
	@Override
	public boolean deleteTrail(int trailId) {
	    LocalTrails trail = em.find(LocalTrails.class, trailId);
	    if (trail != null) {
	        em.remove(trail);
	        return true;
	    }
	    return false;
	}


}
