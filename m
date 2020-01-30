Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1836.1580426928579085530
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 15:28:48 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=qgu3UfWt;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DE79E01546; Thu, 30 Jan 2020 15:28:48 -0800 (PST)
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
	*      [209.85.210.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B765DE00782
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2020 15:28:46 -0800 (PST)
Received: by mail-pf1-f177.google.com with SMTP id 84so2292245pfy.6
        for <yocto@yoctoproject.org>; Thu, 30 Jan 2020 15:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tCg5mWj19RvdIE6VONK8J40rwJS16lkidqI14DoCjDk=;
        b=qgu3UfWt4FJbpUzVlIEisEPVNOQ2P4aFG9ZQY/xC8aFS9MIiykxUX81sTElOPfHwzv
         3do6FHEVleso03m4TecPogJWhOc8JtL7XgW63S0VF5QgsHAMFg20wfQNKlWuNGr0Oe8A
         x2DnYMz4CLDNG4iWK/LRNFFCYVu0OOw2ykzUTo10WkHc3W9/RW3MoXvvoB2flPlvFcH0
         nRC0ncJGwiYZUwGFqCWPmHaNPte3Wli8flnR5qZhBXtvdBeWxJwzRHfHAZMGnwzpenkQ
         KKgk6NqCaYxKh5I7zVkWklsUFHgswIahQ5WZGY1JFALF9v/OLnszbZimH7up/Bv5Najl
         kDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=tCg5mWj19RvdIE6VONK8J40rwJS16lkidqI14DoCjDk=;
        b=UEI6ANBQ0Ky516I7hJ1nZQvl+VlMnCSvS8DPsr7Ocr2RQO0YAHZK9g4aHhhNDJ8W86
         cmll6dv2dqSm3cka4ZMeHkxKac/e3oqSmangDBfwVq+zxf401hnRfyr6P41d/C0ISjnr
         Zi5b0+A9XfW+GQLTzNwgOnzaUQnaqlLZzo/q0LdOzRyE6yffXXIuuHtDUTpE/ZZ59zKK
         Yk5hlDX5GJKM18LJ7AoOMk4W6tEd4e8l3cnCE7uAn4AmdISQ8+G3eEP7X9cTnppuW4iA
         wWPylUftiBoneOeZDtztfBHAL1Au1l0cS21515J/ITF3WpqDaVad/wZv41XLVNCLyF1T
         s9hw==
X-Gm-Message-State: APjAAAUSUFQ+ntuskzmjOEZW0F8dw+EAs2XVrKI9df/v6vOx7EU7CG5a
	JEj+xm4uQddj/3nJStXZWgc=
X-Google-Smtp-Source: APXvYqwver5Q6ZjaQjARIc8BTHo8awEckk0QG+w7v3lJsRKO4Td7ypLXNJRVRrWb/FuRhjR9CoYVzw==
X-Received: by 2002:aa7:92c7:: with SMTP id k7mr7557078pfa.8.1580426925890;
        Thu, 30 Jan 2020 15:28:45 -0800 (PST)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id 13sm7524521pfi.78.2020.01.30.15.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 15:28:45 -0800 (PST)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 91EA32A042C; Thu, 30 Jan 2020 15:28:43 -0800 (PST)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-selinux][PATCH 1/2] python: move appends to a dynamic-layer
Date: Thu, 30 Jan 2020 15:28:40 -0800
Message-Id: <20200130232841.6706-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 conf/layer.conf                                                 | 2 ++
 .../recipes-devtools}/python/files/sitecustomize.py             | 0
 .../python2-layer/recipes-devtools}/python/python_%.bbappend    | 0
 .../python2-layer/recipes-devtools}/python/python_selinux.inc   | 0
 4 files changed, 2 insertions(+)
 rename {recipes-devtools =3D> dynamic-layers/python2-layer/recipes-devto=
ols}/python/files/sitecustomize.py (100%)
 rename {recipes-devtools =3D> dynamic-layers/python2-layer/recipes-devto=
ols}/python/python_%.bbappend (100%)
 rename {recipes-devtools =3D> dynamic-layers/python2-layer/recipes-devto=
ols}/python/python_selinux.inc (100%)

diff --git a/conf/layer.conf b/conf/layer.conf
index 226a75a..cdee27a 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -11,6 +11,8 @@ BBFILES_DYNAMIC +=3D "openembedded-layer:${LAYERDIR}/dy=
namic-layers/openembedded-l
                     networking-layer:${LAYERDIR}/dynamic-layers/networki=
ng-layer/*/*/*.bbappend \
                     virtualization-layer:${LAYERDIR}/dynamic-layers/virt=
ualization-layer/recipes*/*/*.bb \
                     virtualization-layer:${LAYERDIR}/dynamic-layers/virt=
ualization-layer/recipes*/*/*.bbappend \
+                    meta-python2:${LAYERDIR}/dynamic-layers/python2-laye=
r/recipes*/*/*.bb \
+                    meta-python2:${LAYERDIR}/dynamic-layers/python2-laye=
r/recipes*/*/*.bbappend \
                    "
=20
 BBFILE_COLLECTIONS +=3D "selinux"
diff --git a/recipes-devtools/python/files/sitecustomize.py b/dynamic-lay=
ers/python2-layer/recipes-devtools/python/files/sitecustomize.py
similarity index 100%
rename from recipes-devtools/python/files/sitecustomize.py
rename to dynamic-layers/python2-layer/recipes-devtools/python/files/site=
customize.py
diff --git a/recipes-devtools/python/python_%.bbappend b/dynamic-layers/p=
ython2-layer/recipes-devtools/python/python_%.bbappend
similarity index 100%
rename from recipes-devtools/python/python_%.bbappend
rename to dynamic-layers/python2-layer/recipes-devtools/python/python_%.b=
bappend
diff --git a/recipes-devtools/python/python_selinux.inc b/dynamic-layers/=
python2-layer/recipes-devtools/python/python_selinux.inc
similarity index 100%
rename from recipes-devtools/python/python_selinux.inc
rename to dynamic-layers/python2-layer/recipes-devtools/python/python_sel=
inux.inc
--=20
2.20.1

