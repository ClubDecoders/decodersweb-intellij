package club.decoders.models;

import java.util.ArrayList;
import java.util.Collections;

import club.decoders.models.AnnouncementModel;

public class AnnouncementModelSorter {

	ArrayList<AnnouncementModel> amlist = new ArrayList<AnnouncementModel>();
	
	/**
	 * @param amlist
	 */
	public AnnouncementModelSorter(ArrayList<AnnouncementModel> amlist) {
		this.amlist = amlist;
	}

	public ArrayList<AnnouncementModel> sortList()
	{
		Collections.sort(amlist);
		return amlist;
	}
}
