Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.15580.1604826573372901047
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 01:09:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=PBTIkzzW;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D84E138C06EF
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2020 01:09:32 -0800 (PST)
Received: by mail-ej1-f68.google.com with SMTP id w13so7924170eju.13
        for <yocto@yoctoproject.org>; Sun, 08 Nov 2020 01:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rIQwCSJsmDf1nc6tPmPOo0w+v7W5S3M9Wq4HU3F+9FY=;
        b=PBTIkzzWHWaFEnuH5/Uaao1IaoaqXgrGEgAP6iSxGbicLmVxOjv+6Djr+wdY9dDUPL
         /9qsiqUm4wckorAOc4piEWNFP+6FTYaypsGdeCzvqeSrjHlExoNUNHmOGh6k0Qb3ovaL
         O6fZCVnixHDtk3UmM+Fc/wabwAf/2UzidT/uPQtr6rPb8qd64RkpsU0I5gQZd25g2x7G
         bBXbasGmGih1yJnixW+rbCBmNKdTsk4CkG3XiisO9nqaj6AXFyRkrq+NbmBhSkstry56
         2m76/cKbHkOSRVf7k6/VHz/fXBmiUqsizHkPLhP8dFnvdGWggCn3agvEyIw1e+L/bPSi
         nONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rIQwCSJsmDf1nc6tPmPOo0w+v7W5S3M9Wq4HU3F+9FY=;
        b=ZhDVUZYjjloybzAKTnkEBFEuetcE7l9pWpo22eL6z4s6Bq3WDX4vVkwsCLKeW0zz4V
         RKbUUVRrIpw3ehw3EChBDQBtrk8lquoJCYy5JhiG0zkJME9QdG9sRMGM0b8JxkpPJ/Wv
         1cbx7ligWNQFROPP0eHTrNKxZflbWRVdxXtnswG+cwgTlBL3Rmgoo6FNbFvOMVMGGEaE
         E2ddDYGTszzO8IkGcTh3y55TCnP3opvkYWIiLSgSWTRA80bD1i/auiOadvEdG6Z8APOE
         aBym76z7SS0Sh40Iy/je0PyAZh6GW68RH4HK0pBeGMYJLcbpx34AXbKpUfvq2UUgwelA
         n5Qg==
X-Gm-Message-State: AOAM531wZY7qdUOYCMDjGTcBFik4wRIgz7013MuNsZrorRB4uQLfRlAW
	NOJZThtSdlv8JBKRHYGJXgr8zw5ryFQpoQ==
X-Google-Smtp-Source: ABdhPJxhbqV1INxuupuLn2CIC6oHAh5gc0HiXpOtlDY0xy6zrPagM7L8ibE2a+YVlfQ3OXsGWIBs4w==
X-Received: by 2002:a17:906:b150:: with SMTP id bt16mr10315864ejb.257.1604826571148;
        Sun, 08 Nov 2020 01:09:31 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id p1sm2804940edx.4.2020.11.08.01.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 01:09:30 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH] schedulers.py: run performance builds only 2x a day, not 4x
Date: Sun,  8 Nov 2020 10:09:23 +0100
Message-Id: <20201108090923.3079-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The same builds are included in a-full, so they tend to get queued up
and cause delays in builds completion, as there's only a single worker
allocated to them. Let's run them less frequently to mitigate the delays.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 schedulers.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 2e8f3d5..ca63c9f 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -306,11 +306,11 @@ schedulers.append(sched.Nightly(name=3D'nightly-qui=
ck', branch=3D'master', propertie
 schedulers.append(sched.Nightly(name=3D'nightly-full', branch=3D'master'=
, properties=3Dparent_default_props('a-full'),
                   builderNames=3D['a-full'], hour=3D1, minute=3D0, dayOf=
Week=3D6))
=20
-# Run the build performance tests at 3am, 9am, 3pm and 9pm
+# Run the build performance tests at 3am and 3pm
 schedulers.append(sched.Nightly(name=3D'nightly-buildperf-ubuntu1604', b=
ranch=3D'master', properties=3Dparent_default_props('buildperf-ubuntu1604=
'),
-                  builderNames=3D['buildperf-ubuntu1604'], hour=3D[3,9,1=
5,21], minute=3D0))
+                  builderNames=3D['buildperf-ubuntu1604'], hour=3D[3,15]=
, minute=3D0))
 schedulers.append(sched.Nightly(name=3D'nightly-buildperf-centos7', bran=
ch=3D'master', properties=3Dparent_default_props('buildperf-centos7'),
-                  builderNames=3D['buildperf-centos7'], hour=3D[3,9,15,2=
1], minute=3D0))
+                  builderNames=3D['buildperf-centos7'], hour=3D[3,15], m=
inute=3D0))
=20
 # Run the AUH on the 15th of every month
 schedulers.append(sched.Nightly(name=3D'nightly-auh', branch=3D'master',=
 properties=3Dparent_default_props('auh'),
--=20
2.29.1

