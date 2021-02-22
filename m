Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web08.36621.1614006870421247815
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 07:14:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JaWE5I7L;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id g20so7930070plo.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 07:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=tVbsgD1teSqCyZ0Sj5ImBbepQ56G0lGvmISj9YEf/QU=;
        b=JaWE5I7LWbTrBlT9yWPj3fDI0uWkMK5mWqWDTR/v58Bj1wE1e04noqy3pEs+P6/hKm
         ma1P8UTm19/mo5vNS/YfJuG9wCREdEpshpr3d3vO8YMXnFzb+qkn0VQvv2ECiKPc+hTj
         FaenfoWbvZA0SgA+X54e2DmyQs7BGreA3Tq+w4gGAgwgFBcv/No0D0gJO2A1vxoF9nnn
         KXkw6U9ucPgFfKfx8jmU3BGurxixv0S4K01axJm1wYrZMk3obgqI0jWuU9Qh1fEzDyll
         0kpz5m64JwFqCaMn3z+6cz/0cVNc5X0zzDqlCuCn44fPlx+hiufQhqpVlR06wkuwFvGA
         nEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=tVbsgD1teSqCyZ0Sj5ImBbepQ56G0lGvmISj9YEf/QU=;
        b=O9Ya/nefYorYFkNe/GLQUhWzjn852fQKAYdm4dyUIdW3NFSR4vpEMUXfO9v3FTGO/b
         uBzTsv0wBQ8dH4XW2TuEF0cpxxg1BTTt7jblGTZpxciZkhxj+qs3JeJ6ani//3W5Xulq
         +GQEAU/QYnui7PJPnXIh5fF2HqjPXZ/HjHXfsbAXnfRN4SPjsh0xy/rzR2BejbgKC7nL
         exSp4bbP+fLs2vqARbeYz4f/Vi5Og9x8KZbsHxEy8VRryC0Z2wRO375gxJ/r4iAgYnw1
         PgJNpaBNNkWeX6rLKtn4EeDzunKNJblamXYRH7Riub6sJzI9oL2+4885hCJbahOIlXV0
         ByVg==
X-Gm-Message-State: AOAM531XFutbPqn2Re9/cKNHQTT48BzluP98f1Ky5iD1LYyrXRvAg7vS
	yAT44zBe3N4At4yn4cSaQ9k75UdN7JBx6g==
X-Google-Smtp-Source: ABdhPJzK0zDfxKX3AJrwECrgizOuxSEHh022xH6/h89VirLKzlEz0Ai1eBz+Mly49Pe5jN40EVzZwg==
X-Received: by 2002:a17:902:b282:b029:e3:923c:a377 with SMTP id u2-20020a170902b282b02900e3923ca377mr22884934plr.14.1614006869816;
        Mon, 22 Feb 2021 07:14:29 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e1:8c0f:8c00:9696])
        by smtp.gmail.com with ESMTPSA id 134sm20069288pfc.113.2021.02.22.07.14.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 07:14:29 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/5] scap-security-guide: Inherit python3targetconfig
Date: Mon, 22 Feb 2021 07:14:24 -0800
Message-Id: <20210222151425.13534-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222151425.13534-1-akuster808@gmail.com>
References: <20210222151425.13534-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scap-security-guide/scap-security-guide.inc                 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index 32fce0f..d1a9511 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -10,7 +10,7 @@ DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native l
 
 S = "${WORKDIR}/git"
 
-inherit cmake pkgconfig python3native
+inherit cmake pkgconfig python3native python3targetconfig
 
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
 export OSCAP_CPE_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe"
-- 
2.17.1

