Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.20773.1599740756680467673
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:25:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NH7BgHYz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id e17so5447493wme.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3OYz0Ged43Sk/cuSV3JBkIxF+6BIYFL859w7tSRfaR8=;
        b=NH7BgHYzhVyoIz08LbEkaDbp2SIW2LhKboPsrZDaOsPA/UWyumgCLPp3tIxmTFPnFm
         jVbB7lUsYAezRZCIr3ADDaZgNhyK2cWoTPjogUgZGB1hev95x7M1FWvR5RTNu3+u4b0z
         SWr6I71xW2aplOL+hD2uaEL1pu4Se1gAa48ys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3OYz0Ged43Sk/cuSV3JBkIxF+6BIYFL859w7tSRfaR8=;
        b=CiS1QYot5YtYVt9PrWaey2Rurh+PJZu2bB471b2A/ryH3FOTMu0BMakXWwO+5fZv2n
         9/K4SBcdfOPByDvkldmRR/39iluLBVEs1npT4Fyfs4rEgEKpsXKC55ZBPnH+tR6DBcrY
         T2PVv9YSYuFZpiszXjTggycJWchfIFwSGpd0BdLWgyL5M3Y5h3dE1Cr5RBzX2bjJNtdV
         vhim7NtYrNgQcGZbMAYGFYgV5OFCgpKftm/WvyIETpzH6UD6eCUDnzLqLSF/xV2JDbKO
         15C/Vaf+lhiOvktqwSD++I0iTgJ3LA7TIFS0pnYgYduwz8AjA3ucM/cZTNCcA6CONENA
         i6Qg==
X-Gm-Message-State: AOAM533UveGmW0vu+A75YtdJ+0Igt3LpZkjOwzgcVfX7lSR/pkyGMGLS
	5cJUVEaadjOWca4GkFtVoDjRRbgFsMWVAg==
X-Google-Smtp-Source: ABdhPJx2WeIDJl2oBE8Duj+w1XZChk55qxeV5rka5kOlQWnIfWZF+j4l4zX80K094nIlxqRn/UZqsA==
X-Received: by 2002:a1c:234b:: with SMTP id j72mr8373143wmj.153.1599740754450;
        Thu, 10 Sep 2020 05:25:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:53 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 01/41] config.json: Disable PRSERV
Date: Thu, 10 Sep 2020 13:25:13 +0100
Message-Id: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This was copied from the old autobuilder configuration without much thought.
It would only be effective if we had a common PRSERV or saved the database
but we don't. It therefore makes sense to disable it.

One problem it was causing was inconsistency in the buildhistory output as
PKGR would change "r0" to "r0.0" and vice versa. The issue depended on whether
the build has coming from sstate or not and the settings the sstate had been
built with.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/config.json b/config.json
index 573082a..90b78f3 100644
--- a/config.json
+++ b/config.json
@@ -24,7 +24,6 @@
         "DISTRO" : "poky",
         "SDKMACHINE" : "i686",
         "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
-        "PRSERV" : "PRSERV_HOST = 'localhost:0'",
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
         "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate-warrior'"],
         "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
@@ -67,7 +66,6 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             },
             "step3" : {
-                "PRSERV" : false,
                 "BUILDHISTORY" : false,
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r runqemu meta_ide -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
@@ -124,7 +122,6 @@
             "MACHINE" : "qemux86-64",
             "SDKMACHINE" : "x86_64",
             "PACKAGE_CLASSES" : "package_rpm",
-            "PRSERV" : false,
             "extravars" : [
                 "RPM_GPG_SIGN_CHUNK = '1'"
             ],
@@ -142,7 +139,6 @@
         "trigger-build" : {
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86",
-            "PRSERV" : false,
             "step1" : {
                 "BBTARGETS" : "universe -c fetch -k",
                 "extravars" : [
@@ -235,7 +231,6 @@
                 "MACHINE" : "qemux86-64",
                 "SDKMACHINE" : "x86_64",
                 "PACKAGE_CLASSES" : "package_rpm",
-                "PRSERV" : false,
                 "extravars" : [
                     "RPM_GPG_SIGN_CHUNK = '1'"
                 ],
@@ -596,7 +591,6 @@
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
             "BBTARGETS" : "universe:do_checkuri",
-            "PRSERV" : false,
             "extravars" : [
                 "SOURCE_MIRROR_FETCH = '1'",
                 "BB_NUMBER_THREADS = '1'",
-- 
2.25.1

