Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D41DC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 11:52:05 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web12.11626.1645530724995227170
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 03:52:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b24/gB/P;
 spf=pass (domain: gmail.com, ip: 209.85.208.41,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id q17so36468316edd.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 03:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QU7BFeYDDkjzZQkoAA4HjWDXNVe5LxbTjnbusZ5ZQZw=;
        b=b24/gB/Py/4D1h5Txi8wlGZC8pat1xhqJjszKscpUvOXFUeFYXjku4lvEsZNOn4L+q
         UcC4EwDV2hd+gA0W4Hs5yEvB6jOn2OAI1Y5ZutIId81xkzjxvEC1j7tX0jSqHyRDIpWr
         i16C6gZhiw/EKL44XxcJNsD8R9KaIAnyB+e++OBy68qPQIcDsQDvUCBmIZ/64eAmB3V2
         j+WazMsHR7xtN+o5rnUchgWxHGBf6UVv0rf8FEKCZ3BIzs2gFrYejJVqqXredLB8YlnO
         56EsFtGZbrbWWagagahmbfU097MdFrr7M/sBcsi4Gnh+GWDJ869qquxj9iZZXWCVAP8a
         xuHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QU7BFeYDDkjzZQkoAA4HjWDXNVe5LxbTjnbusZ5ZQZw=;
        b=1HoDZH4IYvyxztNodvYqj1tASUyRun5HRxpZVYOXloxrkmqdYt5iQtjIzoJR2z8HwA
         s4noJY8TDvuxm1Lb4Dcc13Sw3xQ9sMGS+OS9zrSkCmpfdyM7GZt6D/UrGKI86I9KqOvf
         TO2MMg7u3WrgWVU79IzIIg8QdTY3QS+2huOv2AiGPqHWNaPBNixtwKzPT0nv2je/aJdf
         uo+U3Xkw5Z/utTl5NPrkRtKBmJt2VguY6aQImKjwwjbTi8z7zX7G7EZ+pYSqnrfN/y7H
         pFAdBxwmpIyw0M8H1Y8U2kjiUvcqO5cYoROjos4v/6Tv2689Pt09eBQJaUni3LUsJ5W1
         sSeQ==
X-Gm-Message-State: AOAM530nxhglN5Y6H2pg+IH2yX1LwugIx8lIrjyh9SCBq1PXBiBMC4Ad
	Y1FrKTcn28Usi3QnqXMdjqDrqWURn9liPA==
X-Google-Smtp-Source: 
 ABdhPJz4xxVy0Lbmqm072k0wgFmlA8x13Rf00vJK2Qm/qr8CNqV5OlzdcUvIIfpufa0taWrpJgkhLQ==
X-Received: by 2002:a05:6402:70d:b0:410:ba4d:736f with SMTP id
 w13-20020a056402070d00b00410ba4d736fmr25674481edx.0.1645530723398;
        Tue, 22 Feb 2022 03:52:03 -0800 (PST)
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id
 go13sm6195042ejc.190.2022.02.22.03.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 03:52:03 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][PATCH] meta: update variable names
Date: Tue, 22 Feb 2022 12:51:49 +0100
Message-Id: <20220222115149.2564995-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 11:52:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56235

* openembedded-core/scripts/contrib/convert-variable-renames.py .
  ...
  All files processed with version 0.1
---
 recipes-ids/tripwire/tripwire_2.4.3.7.bb         | 2 +-
 recipes-mac/smack/smack_1.3.1.bb                 | 6 +++---
 recipes-security/libest/libest_3.2.0.bb          | 2 +-
 recipes-security/opendnssec/opendnssec_2.1.10.bb | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index 93cb443..5bb0e3e 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -74,4 +74,4 @@ FILES:${PN}-ptest += "${PTEST_PATH}/tests "
 RDEPENDS:${PN} += " perl nano msmtp cronie"
 RDEPENDS:${PN}-ptest = " perl lib-perl perl-modules "
 
-PNBLACKLIST[tripwire] ?= "Upsteram project appears to be abondoned, fails to build with gcc11"
+SKIP_RECIPE[tripwire] ?= "Upsteram project appears to be abondoned, fails to build with gcc11"
diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index 79a8f5a..7a8ca78 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -14,9 +14,9 @@ SRC_URI = " \
 PV = "1.3.1"
 
 # CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other product.
-CVE_CHECK_WHITELIST += "CVE-2014-0363"
-CVE_CHECK_WHITELIST += "CVE-2014-0364"
-CVE_CHECK_WHITELIST += "CVE-2016-10027"
+CVE_CHECK_IGNORE += "CVE-2014-0363"
+CVE_CHECK_IGNORE += "CVE-2014-0364"
+CVE_CHECK_IGNORE += "CVE-2016-10027"
 
 inherit autotools update-rc.d pkgconfig ptest
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index 41a4025..b4c6165 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -27,4 +27,4 @@ PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
 FILES:${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
 
 # https://github.com/cisco/libest/issues/104
-PNBLACKLIST[libest] ?= "Needs porting to openssl 3.x"
+SKIP_RECIPE[libest] ?= "Needs porting to openssl 3.x"
diff --git a/recipes-security/opendnssec/opendnssec_2.1.10.bb b/recipes-security/opendnssec/opendnssec_2.1.10.bb
index 6b53711..64bacf1 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.10.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.10.bb
@@ -33,4 +33,4 @@ do_install:append () {
 
 RDEPENDS:${PN} = "softhsm"
 
-PNBLACKLIST[opendnssec] ?= "Needs porting to openssl 3.x"
+SKIP_RECIPE[opendnssec] ?= "Needs porting to openssl 3.x"
-- 
2.35.1


