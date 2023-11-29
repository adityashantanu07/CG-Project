@RestResource(urlMapping='/candidateApi/*')
global with sharing class CandidateRestController {
    
    @HttpPost
    global static String createCandidate() {
        String response;

        try {
            RestRequest restRequest = RestContext.request;

            Map<String, Object> params = (Map<String,Object>)JSON.deserializeUntyped(restRequest.requestBody.toString());

            String firstName = (String)params.get('firstName');
            String lastName = (String)params.get('lastName');
            String conflictOfInterest = (String)params.get('conflictOfInterest');
            String employmentHistory = (String)params.get('employmentHistory');
            String criminalHistory = (String)params.get('criminalHistory');
            String legalRightToWork = (String)params.get('legalRightToWork');
            String relativesWorking = (String)params.get('relativesWorking');
            String regulatoryDisciplineHistory = (String)params.get('regulatoryDisciplineHistory');
            String screeningAcceptance = (String)params.get('screeningAcceptance');
            String visaRequired = (String)params.get('visaRequired');
            String emailAddress = (String)params.get('emailAddress');
            String permanentAddress = (String)params.get('permanentAddress');
            String permanentCity = (String)params.get('permanentCity');
            String permanentCountyState = (String)params.get('permanentCountyState');
            String permanentPostcodeZIPEIR = (String)params.get('permanentPostcodeZIPEIR');
            String currentAddress = (String)params.get('currentAddress');
            String currentCity = (String)params.get('currentCity');
            String currentCountyState = (String)params.get('currentCountyState');
            String currentPostcodeZIP = (String)params.get('currentPostcodeZIP');
            String placeOfResidence = (String)params.get('placeOfResidence');
            String mobileNumber = (String)params.get('mobileNumber');
            Decimal totalExperience = (Decimal)params.get('totalExperience');
            String dateOfBirthString = (String)params.get('dateOfBirth');
            Date dateOfBirth = Date.valueOf(dateOfBirthString);
            String previouslyWorkedHere = (String)params.get('previouslyWorkedHere');
            String highestEducationDegree = (String)params.get('highestEducationDegree');
            Boolean acceptedTermsConditions = (Boolean)params.get('acceptedTermsConditions');
            String selfIdentifiedDisability = (String)params.get('selfIdentifiedDisability');
            String plainTextCoverLetter=(String)params.get('plainTextCoverLetter');
            String gender = (String)params.get('gender');
            Decimal currentSalary = (Decimal)params.get('currentSalary');
            Decimal expectedSalary = (Decimal)params.get('expectedSalary');
            String PANNumber = (String)params.get('PANNumber');
            String passportNumber = (String)params.get('passportNumber');
            String currentJobTitle = (String)params.get('currentJobTitle');
            String currentEmployerName = (String)params.get('currentEmployerName');
            String achievements = (String)params.get('achievements');
            String currentJobStartDateString = (String)params.get('currentJobStartDate');
            Date currentJobStartDate = Date.valueOf(currentJobStartDateString);

            Candidate__c newCandidate = new Candidate__c();
            newCandidate.First_Name__c = firstName;
            newCandidate.Last_Name__c=lastName;
            newCandidate.Conflict_Of_Interest__c = conflictOfInterest;
            newCandidate.Employment_History__c = employmentHistory;
            newCandidate.Criminal_History__c = criminalHistory;
            newCandidate.Legal_Right_to_Work__c = legalRightToWork;
            newCandidate.Relatives_Working__c = relativesWorking;
            newCandidate.Regulatory_Discipline_History__c = regulatoryDisciplineHistory;
            newCandidate.Screening_Acceptance__c = screeningAcceptance;
            newCandidate.Visa_Required__c = visaRequired;
            newCandidate.Email_Address__c = emailAddress;
            newCandidate.Permanent_Address__c = permanentAddress;
            newCandidate.Permanent_City__c = permanentCity;
            newCandidate.Permanent_County_State__c = permanentCountyState;
            newCandidate.Permanent_Postcode_ZIP_EIR__c = permanentPostcodeZIPEIR;
            newCandidate.Current_Address__c = currentAddress;
            newCandidate.Current_City__c = currentCity;
            newCandidate.Current_County_State__c = currentCountyState;
            newCandidate.Current_Postcode_ZIP__c = currentPostcodeZIP;
            newCandidate.Place_of_Residence__c = placeOfResidence;
            newCandidate.Mobile_Number__c = mobileNumber;
            newCandidate.Total_Experience__c = totalExperience;
            newCandidate.Date_of_Birth__c = dateOfBirth;
            newCandidate.Previously_Worked_Here__c = previouslyWorkedHere;
            newCandidate.Highest_Education_Degree__c = highestEducationDegree;
            newCandidate.Accepted_Terms_Conditions__c = acceptedTermsConditions;
            newCandidate.Gender__c = gender;
            newCandidate.Self_Identified_Disability__c= selfIdentifiedDisability;
            newCandidate.Plain_Text_Cover_Letter__c= plainTextCoverLetter;
            newCandidate.Current_Salary__c=currentSalary;
            newCandidate.Expected_Salary__c=expectedSalary;
            newCandidate.PAN_Number__c=PANNumber;
            newCandidate.Passport_Number__c=passportNumber;
            newCandidate.Current_Job_Title__c=currentJobTitle;
            newCandidate.Current_Employer_Name__c=currentEmployerName;
            newCandidate.Current_Job_StartDate__c=currentJobStartDate;
            newCandidate.Achievements__c=achievements;
            

            // Insert the new Candidate record
            insert newCandidate;

            response = '{"candidateId": "' + newCandidate.Id + '"}';
        } catch(Exception e) {
            response = '{"errorMessage": "Error creating Candidate: ' + e.getMessage() + '"}';
        }

        return response;
    }
}