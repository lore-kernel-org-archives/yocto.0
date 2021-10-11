Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D02FC433F5
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 17:24:50 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web09.1660.1633973089304544925
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 10:24:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=golg0/pc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id y3so25454972wrl.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 10:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=/aMr2z5NFFvkY5BjywYFL7ugf7XsGsP3MkmNjPYBhvo=;
        b=golg0/pclKKgNJ5PhY4744ay49TkPXm3SeGxbYwB1So/dZoCW44WL+Ty7UQLvqobmZ
         LSEFEC382YYKioq2rZdcI5pdGgiFN4fFFmlZpj+Kyv8t8w7LydA5ovRFWuYCmySEmv8l
         o1Japy9Uimh0hWXxSUBkoE0R7XYzxYbn1diPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=/aMr2z5NFFvkY5BjywYFL7ugf7XsGsP3MkmNjPYBhvo=;
        b=B3r2QGVTmOwEUa2pey9SWp74tC3YmT42Pv0kZXFN+6YBoIZIL9jtmfMlBhH3JHuXal
         bFV7DJlKgGOncE0FejhkngiuZ8lYuKAA5qpikqR8p1LGisj0KsOIVVBdFiTM8DM2yEMc
         TpWo0D0uNG5Hcb7sTeqwE2i2/Kg+3KvhND0lXBpj+liWMqw76UobZK4elE5Ou4B2kRw7
         SkgS9LB6hbtMxoCSIH4qxS+Ib+GNiT/LTNQcK+pbrJJZFjaSl97L/CFhWONH/mqLians
         4+jjSzfQ39qq+qcOpo+EqQqPTcA0esLecOXeO/gqmJMOZWpe7JBSbA2U3WyDtIhdYSM/
         MAJg==
X-Gm-Message-State: AOAM532fu7aMk6RrHO598MlCCdMObpO/4D/mL03ItGkEJ6Ki0Abb0UoU
	aHB2Ax2vq0z01j/UwnMZCZBy6Xsw7KTmzw==
X-Google-Smtp-Source: 
 ABdhPJwFrBS404xjHGJ/Y4vh4+zKtoLUp376sDwY8tWO23dr3YtMPOr1AS5d7qaXw/Qof8lOK5TrIw==
X-Received: by 2002:adf:aa04:: with SMTP id p4mr26726517wrd.67.1633973087634;
        Mon, 11 Oct 2021 10:24:47 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:86d0:36d0:28d3:a79a?
 ([2001:8b0:aba:5f3c:86d0:36d0:28d3:a79a])
        by smtp.gmail.com with ESMTPSA id
 d2sm9068851wrc.32.2021.10.11.10.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 10:24:47 -0700 (PDT)
Message-ID: 
 <4a91fd213b93c091a72f70e76ad1d3d6bc085a0c.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.4.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Mon, 11 Oct 2021 18:24:46 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 17:24:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55018

A build flagged for QA (yocto-3.4.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.rc1


Build hash information: 

bitbake: c78ebac71ec976fdf27ea24767057882870f5c60
meta-agl: 228ecc1dec390138c44299d1c244acda9ad75ce1
meta-arm: 98193f3b6167e07cbb794e96b80d78ca1779ea4f
meta-aws: 27bca81c4d3f0138fda583f9ea98df6152332333
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: 90170cf85fe35b4e8dc00eee50053c0205276b63
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: f2152d79043601eacb70da1a3ab36f5ac56f3e28
oecore: bb1dea6806f084364b6017db2567f438e805aef0
poky: f6d1126fff213460dc6954a5d5fc168606d76b66



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




