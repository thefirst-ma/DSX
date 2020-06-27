package org.keshe.dsx.service.impl;

import org.keshe.dsx.VegetableOrder;
import org.keshe.dsx.service.BaseServiceImpl;
import org.keshe.dsx.service.org.keshe.dsx.service.base.IVegetableOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VegetableOrderServiceimpl extends BaseServiceImpl<VegetableOrder> implements IVegetableOrderService {
    @Override
    public VegetableOrder findByid(Integer id) {
        return null;
    }

    @Override
    public VegetableOrder findByUUid(String uuid) {
        return vegetableOrderMapper.findByUUid(uuid);
    }

    @Override
    public List<VegetableOrder> findAll() {
        return vegetableOrderMapper.findAll();
    }

    @Override
    public void deleteByid(Integer id) {

    }

    @Override
    public void deleteByUUid(String uuid) {

    }

    @Override
    public int update(VegetableOrder vegetableOrder) {
        return 0;
    }

    @Override
    public void insert(VegetableOrder vegetableOrder) {
        vegetableOrderMapper.insert(vegetableOrder);
    }
}
