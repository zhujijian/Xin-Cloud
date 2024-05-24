package com.xin.common.core.exception.user;

import com.xin.common.core.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author xin
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }
}
