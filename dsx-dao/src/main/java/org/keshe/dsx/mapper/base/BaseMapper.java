package org.keshe.dsx.mapper.base;

import java.util.List;

public interface BaseMapper<T> {

    public T findByid(Integer id);
    public T findByUUid(String uuid);

    public List<T> findAll();

    public void deleteByid(Integer id);
    public void deleteByUUid(String uuid);

    public int update(T t);

    public void insert(T t);
}
