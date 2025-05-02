package com.skilldistillery.trails.entities;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table(name = "local_trail")
@Entity
public class LocalTrails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	@Column(name = "length_miles")
	private double lengthMiles;
	private String difficulty;
	@Column(name = "trail_head_altitude")
	private int trailHeadAlt;
	@Column(name = "trail_end_altitude")
	private int trailEndAlt;
	@Column(name = "dog_friendly")
	private boolean dogFriendly;
	@Column(name = "bike_friendly")
	private boolean bikeFriendly;
	@Column(name = "trail_head_longitude")
	private double trailHeadLongitude;
	@Column(name = "trail_head_latitude")
	private double trailHeadLatitude;
	@Column(name = "trail_end_longitude")
	private double trailEndLongitude;
	@Column(name = "trail_end_latitude")
	private double trailEndLatitude;
	@Column(name = "last_maintained")
	private String lastMaintainted;

	public LocalTrails() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getLength_miles() {
		return lengthMiles;
	}

	public void setLength_miles(double length_miles) {
		this.lengthMiles = length_miles;
	}

	public String getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}

	public int getTrailHeadAlt() {
		return trailHeadAlt;
	}

	public void setTrailHeadAlt(int trailHeadAlt) {
		this.trailHeadAlt = trailHeadAlt;
	}

	public int getTrailEndAlt() {
		return trailEndAlt;
	}

	public void setTrailEndAlt(int trailEndAlt) {
		this.trailEndAlt = trailEndAlt;
	}

	public boolean isDogFriendly() {
		return dogFriendly;
	}

	public void setDogFriendly(boolean dogFriendly) {
		this.dogFriendly = dogFriendly;
	}

	public boolean isBikeFriendly() {
		return bikeFriendly;
	}

	public void setBikeFriendly(boolean bikeFriendly) {
		this.bikeFriendly = bikeFriendly;
	}

	public double getTrailHeadLongitude() {
		return trailHeadLongitude;
	}

	public void setTrailHeadLongitude(double trailHeadLongitude) {
		this.trailHeadLongitude = trailHeadLongitude;
	}

	public double getTrailHeadLatitude() {
		return trailHeadLatitude;
	}

	public void setTrailHeadLatitude(double trailHeadLatitude) {
		this.trailHeadLatitude = trailHeadLatitude;
	}

	public double getTrailEndLongitude() {
		return trailEndLongitude;
	}

	public void setTrailEndLongitude(double trailEndLongitude) {
		this.trailEndLongitude = trailEndLongitude;
	}

	public double getTrailEndLatitude() {
		return trailEndLatitude;
	}

	public void setTrailEndLatitude(double trailEndLatitude) {
		this.trailEndLatitude = trailEndLatitude;
	}

	public String getLastMaintainted() {
		return lastMaintainted;
	}

	public void setLastMaintainted(String lastMaintainted) {
		this.lastMaintainted = lastMaintainted;
	}

	@Override
	public String toString() {
		return "LocalTrails [id=" + id + ", name=" + name + ", length_miles=" + lengthMiles + ", difficulty="
				+ difficulty + ", trailHeadAlt=" + trailHeadAlt + ", trailEndAlt=" + trailEndAlt + ", dogFriendly="
				+ dogFriendly + ", bikeFriendly=" + bikeFriendly + ", trailHeadLongitude=" + trailHeadLongitude
				+ ", trailHeadLatitude=" + trailHeadLatitude + ", trailEndLongitude=" + trailEndLongitude
				+ ", trailEndLatitude=" + trailEndLatitude + ", lastMaintainted=" + lastMaintainted + "]";
	}

}
