Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web12.7460.1584498622185973064
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S5JwAdHo;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id n7so13049070pfn.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=BTlvhJdujeLj2aQ3eNWu711DuQfKOusimTtKY0NTYPo=;
        b=S5JwAdHoMJE40Pth3CJWUtUvcppnYcXTfOTwjfnXQhUuLCXOnbk455TNuTCqcXLYT3
         NlycrF+/nK0eszeM6iRxbO3jqAgE4m+duOx+sveRXMpRVIy7fRXkgYgq2TbjdyB03kTA
         MSrPePfKPmJn8y73HP4DNul7Cu8i1Vcp+WPnsnnNc4yoOUQf4K18QHYyVhoMzBlvQOKw
         9bcjBZzkOolpsjbrPJ7KK5rRjWLw7M0CCZXEk1t+wvWDjvFwIp7h7Ci9ydZpG/Vv8ScK
         OIeDetNPH4nri6TlEwBqDUdbMziZLE8Y9eOdXcAj8K5xl455Z49Ev/70KoAgABvSRNEq
         jw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=BTlvhJdujeLj2aQ3eNWu711DuQfKOusimTtKY0NTYPo=;
        b=QzG556uuoP3oe2ghtK1bKq2rse8t9l+/eXvKnxmG2lJpxJ35l5utQQ4IsAOy4XtW2q
         kPDD/LzdaVBfEXEU+MXJKRT0nVOKgN0X47tDqTN/9lJJbkZ2wSDuvw4RaJDxfdJZGYTL
         XYzKUFEnkfxzHIGa1APuOL40rEKkhng42wA2Pt6uVa5sbGdCmLGkbcTMNVdX6HnDGxAR
         q0FIJyC0qslobKUZjaMKqh2KrJGKRTpxYaBoZRv36qFwm3SU137FtCSq7daleYmA6FWA
         8j+yj9DXENKmpLvlBMa2LUkd3BTeAZOmA5PhIXaKTy3AcizVKcbWosRdldJuCNGYu20U
         Tr5w==
X-Gm-Message-State: ANhLgQ3GnZj+HyRDa4gdoAyiJaJTioU5tch0phUnBq9fIqzx9UzRLU1d
	nsbUsi4ANv7knNGsSXYhDUtmhB+1
X-Google-Smtp-Source: ADFU+vtNbepPRUwjls7trLj4CinL/OKMhuHOKCE5EuvThCJFcVeFeobylYO9d9OU9U6fEbriIP+fnA==
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr2253134pgi.259.1584498621535;
        Tue, 17 Mar 2020 19:30:21 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:21 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/7] buck-security: move to recipes-scanners
Date: Wed, 18 Mar 2020 02:30:14 +0000
Message-Id: <20200318023014.31723-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318023014.31723-1-akuster808@gmail.com>
References: <20200318023014.31723-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../buck-security/buck-security_0.7.bb                            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-scanners}/buck-security/buck-security_0.7.bb (100%)

diff --git a/recipes-security/buck-security/buck-security_0.7.bb b/recipes-scanners/buck-security/buck-security_0.7.bb
similarity index 100%
rename from recipes-security/buck-security/buck-security_0.7.bb
rename to recipes-scanners/buck-security/buck-security_0.7.bb
-- 
2.17.1

