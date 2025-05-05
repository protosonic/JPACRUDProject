package com.skilldistillery.trails.entities;

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

	@Column(name = "single_track_percentage")
	private int singleTrackPercent;

	@Column(name = "alt_high")
	private int altitudeHigh;

	@Column(name = "alt_low")
	private int altitudeLow;

	@Column(name = "avg_grade")
	private double avgGrade;

	@Column(name = "max_grade")
	private double maxGrade;

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

	public double getLengthMiles() {
		return lengthMiles;
	}

	public void setLengthMiles(double lengthMiles) {
		this.lengthMiles = lengthMiles;
	}

	public String getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}

	public int getSingleTrackPercent() {
		return singleTrackPercent;
	}

	public void setSingleTrackPercent(int singleTrackPercent) {
		this.singleTrackPercent = singleTrackPercent;
	}

	public int getAltitudeHigh() {
		return altitudeHigh;
	}

	public void setAltitudeHigh(int altitudeHigh) {
		this.altitudeHigh = altitudeHigh;
	}

	public int getAltitudeLow() {
		return altitudeLow;
	}

	public void setAltitudeLow(int altitudeLow) {
		this.altitudeLow = altitudeLow;
	}

	public double getAvgGrade() {
		return avgGrade;
	}

	public void setAvgGrade(double avgGrade) {
		this.avgGrade = avgGrade;
	}

	public double getMaxGrade() {
		return maxGrade;
	}

	public void setMaxGrade(double maxGrade) {
		this.maxGrade = maxGrade;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("LocalTrails [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", lengthMiles=");
		builder.append(lengthMiles);
		builder.append(", difficulty=");
		builder.append(difficulty);
		builder.append(", singleTrackPercent=");
		builder.append(singleTrackPercent);
		builder.append(", altitudeHigh=");
		builder.append(altitudeHigh);
		builder.append(", altitudeLow=");
		builder.append(altitudeLow);
		builder.append(", avgGrade=");
		builder.append(avgGrade);
		builder.append(", maxGrade=");
		builder.append(maxGrade);
		builder.append("]");
		return builder.toString();
	}

}
