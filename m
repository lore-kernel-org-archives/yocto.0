Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.3172.1595645326104321695
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 19:48:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pEatIqxY;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id mn17so6375535pjb.4
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2020 19:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=hcTcKbx3kwyn6Ony0Kc4oPiMAYAXf47yjo6Ld1L5lSU=;
        b=pEatIqxYGnbPQc3TyWf2iKSFF0P87bqCvNuwzZ3IrQu29B0EJP6aEJ7lxuH+fFYVOA
         QWNNF4M94p2vhtEV6c6/s6nTiHynUW21UzcFkbEPnaa7ufOHkVR4t+NDdp9CPp+d2Rhm
         eG1TftBYxhEljk3X70tfQyVgJr0wiBf+HXTNhPz4O32MlpCMrMV+dy9O2PsZpGymuiXH
         fqewtSSZQ+GVbdarXcgpVkkGJBFvUA3gdsOy7kpCn52BUpBpOio1f1DWLiOMmtY9YSr8
         PAcbPWU9gQ29IXMKzkYGYaVb6FqKuSIclMY0z/jhRW2v5QF8OLfmHx0lAYdTzTPpfmFS
         VwKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=hcTcKbx3kwyn6Ony0Kc4oPiMAYAXf47yjo6Ld1L5lSU=;
        b=m9uXZQsPX4zDRodfDIvRORZ5Y6rXoWZdY2gnOJLPTLP1xILl9Ya7sPVImMTlITiMu4
         +QGY/zPt3AB0y/SJIg4LPMXhTZCYSFveXWFtYTk34ro3dC8fnaFtqg6lw/lurVrvYWHC
         JR6ERS1rKka8hWjC9GPXsG9crNkMLDTVZIc0BcPq52YvKeQep98m2E5atfEt/iFWsoEV
         LtOrF3/QHneu9rKXq4TmcgKciX4SFAMWIYDxGgw5kqSmuB6pRnbWsjOMTX3PLK/14mrB
         bD8PLeBQ94PUX9PBb75uMoruwoUeVE3TXCeL0Q2TqpbYGsJU9kM/hcEbe4ImQ/61z05b
         Kfgw==
X-Gm-Message-State: AOAM533HZDdGUBAZctLtfVgdEyUzyDB1zJtvfOZr9WfLDL5zhDfL/mun
	ur3xgKIu1RivCMj/G9seu8BlmfSgU6o=
X-Google-Smtp-Source: ABdhPJzBLGF6y+MsKl/G3PrpxIRAzQHQaAQ4ZQnAYZ5E6Fl+gs/eIVMxNrBDlFSANTLUahA0Zse9vg==
X-Received: by 2002:a17:902:302:: with SMTP id 2mr11118148pld.169.1595645325180;
        Fri, 24 Jul 2020 19:48:45 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:c16f:613f:b5e6:25b7])
        by smtp.gmail.com with ESMTPSA id d18sm7117799pjz.11.2020.07.24.19.48.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 19:48:44 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] security packagegroups: move to recipes-core
Date: Fri, 24 Jul 2020 19:48:41 -0700
Message-Id: <20200725024843.14793-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security-ptest.bb              | 0
 .../packagegroup/packagegroup-core-security.bb                    | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-core}/packagegroup/packagegroup-core-security-ptest.bb (100%)
 rename {recipes-security => recipes-core}/packagegroup/packagegroup-core-security.bb (100%)

diff --git a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb b/recipes-core/packagegroup/packagegroup-core-security-ptest.bb
similarity index 100%
rename from recipes-security/packagegroup/packagegroup-core-security-ptest.bb
rename to recipes-core/packagegroup/packagegroup-core-security-ptest.bb
diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
similarity index 100%
rename from recipes-security/packagegroup/packagegroup-core-security.bb
rename to recipes-core/packagegroup/packagegroup-core-security.bb
-- 
2.17.1

