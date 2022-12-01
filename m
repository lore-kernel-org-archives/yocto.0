Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 386C2C4332F
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 22:33:07 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.59911.1669933979241294877
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 14:32:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=YGQc3wHv;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.171, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f171.google.com with SMTP id k7so3009304pll.6
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 14:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ugNdsAhUwRnMxZqSusXwdR1Gt+dQV9fijKVJNfF+ig8=;
        b=YGQc3wHvItuGK60SY2xgkmraxriBLuS09TKIfzsFLghhKTd1N/HNSgw05UkQl5iX2d
         X5vrmTphlx1f6+/SP6DCeAVm+Oko9tay8x+N+HAX3NFQ8ooGQmwiVSWxAcuhJfGV/oyJ
         TOGYJzN3j5hn0f7KvBnIjhPH8Tm8HTC9hXs+dP8qhLvhH5X+QNcpTkkMoH8DfE2sHHZQ
         Z9aPw9wqScJDG139luoMqOlJ/Ppkdb2P8E5taDH5n67iavJtQJzYVzK1+WCoCY008Uxg
         KfvTuv447v2pH3R7hOLtoAtenJg8ZvJZK0/bNla4BGMvYn7O44RFl0d+HdyK+oQ7A2xC
         trKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ugNdsAhUwRnMxZqSusXwdR1Gt+dQV9fijKVJNfF+ig8=;
        b=nuF5pqb2feemHCyb+YPUNv6d/dSy78gmQKv1Hr6sYP9bpls0OkL/72Zpvutbk3aTjO
         FOXU0argkaP92UlA8gi2j+v4zhqr2Zz/EI+BbmfybayeI67irMEK/PtlEXzjV38funw6
         X7l1bcOzKC2cE1xRL7M4GBWOW3Wfwt2vfwALvIas5faSmWvUejNHANklVj51TUtwQ8vG
         iLMqo169N07LQ7QAE5mzDxg9CtX7f9odcqXff0laTvMWwlu7Uu/IlbAth5KGUKHZSS44
         Dx537MG2ycGrXPkv6nIfZb1OxMe2V/vYoL9CuHz073s7Zm0AM0VvXblA96G658t+WsQM
         P/qg==
X-Gm-Message-State: ANoB5pl1bEipnVhg2Btqo8kIa+Z70t4qq5oXKt/akZMVtZQMORH9Y/RG
	Vler3rDZriN0RtmkNyipcT5zWdu7VRXZy89CC8c=
X-Google-Smtp-Source: AA0mqf6JNVT3bI+k89vHlJHmdjNqspW0DmxcssqQQrs6nKoOdyFTcdwlu7F2AgBU6IyK20ufYpGUYQ==
X-Received: by 2002:a17:90b:4a48:b0:213:a9e6:dadf with SMTP id lb8-20020a17090b4a4800b00213a9e6dadfmr72476690pjb.108.1669933978032;
        Thu, 01 Dec 2022 14:32:58 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id h15-20020a056a00000f00b00574d38f4d37sm3750351pfk.45.2022.12.01.14.32.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 14:32:57 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] config.py: add fedora36 to workers_prev_releases for kirkstone
Date: Thu,  1 Dec 2022 12:32:48 -1000
Message-Id: <1045417bd149734da4decf719be2104348feff0b.1669933890.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1669933890.git.steve@sakoman.com>
References: <cover.1669933890.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 22:33:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58712

also remove obsolete fedora releases for kirkstone

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index de9356a..082c853 100644
--- a/config.py
+++ b/config.py
@@ -153,7 +153,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 # Worker filtering for older releases
 workers_prev_releases = {
     "langdale" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
-    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
+    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.25.1


