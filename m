Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.599.1585256376152851091
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 13:59:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYaKmNPr;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBE46E018E2; Thu, 26 Mar 2020 13:59:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79A53E018AB
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2020 13:59:35 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id g23so7517092otq.4
        for <yocto@yoctoproject.org>; Thu, 26 Mar 2020 13:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=NjTtoWo6VughUNp6C0g4quZbSh7Y6Ct6bEQSYY0m70Q=;
        b=sYaKmNPrEvfDOitnTt8drQ4yfR4U3wUrjyKI5dSmxlaLmFYj77LaMn1UNYE+aAcZTz
         1MTxr6e4CjlvZFFCew1PZUIbuBwWvPM6bspHRY2fP7a0p0VfhMGU3mQ+fXlXNYfLbOpK
         e9wrSLPgYuTJVyavl7hgwpt4AO2KUOCIVZ34X3CQPHEtciJBBjzaJwvvtsll1+ZHMuvt
         ixDPH5X/tyWTnwSZMpZnWH6WxzgXKhEcriDzMD16PMc1Q6xQds/QJxObyf802js/xw9c
         HQXTOQqj1HDghttGXTBVjZ2Jt3na9qW/avyAy/Vx+FXvZzymkZji6aoYvfl3neFYcvbz
         PQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=NjTtoWo6VughUNp6C0g4quZbSh7Y6Ct6bEQSYY0m70Q=;
        b=qXNyNSM/PNr5BaKmOeVxkhxr6JntqFopX9+vnM1MW1Nc/E0a4rL5wC1nvNd/woszci
         FkMQkceCGHHnekspopw59w5HzBwlio1nGowdOYYO6ANdEHp+/cJVOTdN09BZSPBjWGCP
         GzhHDBWNYjKC5bMGlm15QOgCogIPhLBWBwUXK4/5cjCce5jZ6OpzWdMgI9E8zqJh+AlM
         zBWHhcELeMOnZdq+VdT9wIzqquqGCyaWFOE1sVdCf2oCfxk7H8dvteb3rv8g7PRFfZPC
         0Dk0EVPmbx6orJ/slXDxWrPqMdgr28/yZJFYQP69UCsfxPOYkQH5Fk/Bd8OdpcY4EmLW
         2CtA==
X-Gm-Message-State: ANhLgQ0EVvU9/bnX94eRCxiCT9v6RIdEyxSM0+5R4rfBUS06FZmUv3T9
	ngvShRPhDLBuwZm0tXxDVMc=
X-Google-Smtp-Source: ADFU+vsE85Ma11hx4mn8D/sy3AbMNfTNtBMt71jze+nu9SKUM8huMlkBpVLA/nwP6I4blZ69dk7ZfQ==
X-Received: by 2002:a9d:3a1:: with SMTP id f30mr42053otf.215.1585256374736;
        Thu, 26 Mar 2020 13:59:34 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id r8sm904284otc.73.2020.03.26.13.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 13:59:34 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 10D3D2A05A0; Tue, 24 Mar 2020 08:14:01 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH] layer.conf: add dunfell
Date: Tue, 24 Mar 2020 08:13:59 -0700
Message-Id: <20200324151359.15826-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index a48f96e..6035b4b 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "warrior zeus"
+LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.13.3

