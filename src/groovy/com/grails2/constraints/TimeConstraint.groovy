package com.grails2.constraints

import org.codehaus.groovy.grails.validation.AbstractConstraint
import org.springframework.validation.Errors
import java.util.regex.Pattern

class TimeConstraint extends AbstractConstraint {

	public static final String CONSTRAINT_NAME = "time"
  
	public static final Pattern REGEXP = Pattern.compile("([01]?[0-9]|2[0-3]):[0-5][0-9]")
  
	protected void processValidate(Object target, Object propertyValue, Errors errors) {
	   if (!REGEXP.matcher(propertyValue).matches()) {
		   Object[] args = [ constraintPropertyName, constraintOwningClass,propertyValue ]
		   rejectValue(target, errors, "Invalid time format", "default.time.invalidFormat.message", args)
		   return
	   }
	}
  
	boolean supports(Class type) {
	  return type && String.class.isAssignableFrom(type);
	}
  
	String getName() {
	  return CONSTRAINT_NAME;
	}
}
