package org.keshe.dsx.service.impl;

import org.keshe.dsx.Vegetable;
import org.keshe.dsx.service.BaseServiceImpl;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class VegetableServiceimpl  extends BaseServiceImpl<Vegetable> implements IVegetableService {
    @Override

    public List<Vegetable> findAll() {
        return vegetableMapper.findAll();

    }

    @Override
    public int update(Vegetable vegetable) {

        return vegetableMapper.update(vegetable);
    }

    @Override
    public Vegetable findByid(Integer id) {
        return null;
    }

    @Override
    public Vegetable findByUUid(String vId) {
        return vegetableMapper.findByUUid(vId);
    }



    @Override
    public void deleteByid(Integer id) {

    }

    @Override
    public void deleteByUUid(String uuid) {

    }

    @Override
    public void insert(Vegetable vegetable) {

    }
}
