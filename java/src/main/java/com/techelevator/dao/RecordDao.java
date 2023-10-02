package com.techelevator.dao;

import com.techelevator.model.Record;

import java.security.Principal;
import java.util.List;

public interface RecordDao {

    public Record getRecordById(String recordId);

    public List<Record> getUserLibrary(int userId);

    boolean createTags(Record record, String tagName, Principal principal);

    boolean updateTags(List<String> tagName, String recordId, int userId);

    boolean deleteTags(int userId, String recordId);

    boolean updateCondition(String recordId, String condition, int userId);

    public boolean updateRecordNote(String recordId, int userId, String note);

    public boolean createRecord(Record record);

    public boolean addRecordToUserLib(String recordId, int userId, String userNote);

    public boolean removeRecordFromUserLib(String recordId, int userId);


    public String[] getRecordNoteAndCondition(String recordId, Principal principal);

    public List<String> getRecordTags(String recordId, Principal principal);

}
