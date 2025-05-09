package com.skilldistillery.trails.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class LocalTrailsTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private LocalTrails trail;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPALocalTrails");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		trail = em.find(LocalTrails.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		trail = null;
	}

	@Test
	void test_LocalTrails_entity_mapping() {
		assertNotNull(trail);
		assertEquals("Cottonwood Loop", trail.getName());
		assertEquals(22.9, trail.getLengthMiles());
		assertEquals("Difficult", trail.getDifficulty());
		assertEquals(75, trail.getSingleTrackPercent());
		assertEquals(8935, trail.getAltitudeHigh());
		assertEquals(7030, trail.getAltitudeLow());
		assertEquals(4.0, trail.getAvgGrade());
		assertEquals(15.0, trail.getMaxGrade());
	}

}
