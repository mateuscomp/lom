package com.nanuvem.lom.kernel.dao;

import java.util.List;

import com.nanuvem.lom.kernel.AttributeValue;

public interface AttributeValueDao {

	void create(AttributeValue values);

	void create(List<AttributeValue> values);

}
