Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D454CE7B17
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 09:47:44 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.10009.1695894461481779888
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 02:47:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RiZy/Ktm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5048156976cso4535957e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 02:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695894459; x=1696499259; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SauCinxiQBUdLNXVhSnL9lcp6CppJS3DbAFRciOg3UM=;
        b=RiZy/KtmjFjPDBjmoE+Ar8mc7XAVBjrMh47bXOymFKXNvqKpwNYh/AWyG9rZHgfPPt
         lxxA5kxHbQVLCAdxBXLnVFBeEzTZoIeL9VfBDVKgcrDt+4WgZ0Nb0plrUrLaLsED0MCy
         lmP4i+4KYz/zMefNO71VGgFvQYM4+I6MaVS4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695894459; x=1696499259;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SauCinxiQBUdLNXVhSnL9lcp6CppJS3DbAFRciOg3UM=;
        b=h8oOCnQKfZeQiEg5yeloR9dJks77frkiq9NPOK5nhE8Kgo3VrF3MLzwaad4HzFS0x/
         kujzl7c6Tn+BAGWtIReId9ZqaOatFhvCu9jKrzdtB06nbdr1KPkbpewQPwT5hVUS0HNE
         b4RRjKPro19peDC4TjWpIpiQOj8AV14TsXIN+6tn6umDX8LaFMYaf+Eo82HjojF5m+u/
         OfR6KXDjMcbQEH7kjAWLMFdY90mJhMI0s87uNEVD1EUn508E0BwyWLzBcBAibzpH43Ux
         MJ1Uw4e3CejzZ4veQbakA4qGd+jbSedw2C1ikFD0VSrwsY6/bkkeDRTngnGGv57neJ7n
         B7kg==
X-Gm-Message-State: AOJu0Yx5FOR3rwB0A2MmZNOcKsQ9Gf7ueKPsdsDdXVMz5Cc3iSFqwzce
	zzlXX2EY0c4lzG/LZkOfp65JYrAIt9xR8UFdh/U=
X-Google-Smtp-Source: AGHT+IE9RBUgcO+hLWTqZrlaB7kGFZUBtTL6zWUOVyoVYV1iBu70YkeYuD/Z1xxody16OjU4l1rOCQ==
X-Received: by 2002:a05:6512:2249:b0:4fb:90c6:c31a with SMTP id i9-20020a056512224900b004fb90c6c31amr922621lfu.14.1695894459103;
        Thu, 28 Sep 2023 02:47:39 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c378500b004064ac107cfsm2039591wmr.39.2023.09.28.02.47.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 02:47:38 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH 1/4] config.py: Update perf workers to match autobuilder
Date: Thu, 28 Sep 2023 10:47:34 +0100
Message-Id: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:47:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61149

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.py     | 9 +++++----
 schedulers.py | 6 ++----
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/config.py b/config.py
index a9433be5..68c690cc 100644
--- a/config.py
+++ b/config.py
@@ -109,7 +109,7 @@ trigger_builders_wait_full_releases = {
                                              "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-centos"]
 }
 
-trigger_builders_wait_perf = ["buildperf-ubuntu1604", "buildperf-centos7", "buildperf-debian11"]
+trigger_builders_wait_perf = ["buildperf-debian11", "buildperf-alma8"]
 
 # Builders which are individually triggered
 builders_others = [
@@ -123,6 +123,8 @@ builders_others = [
     "qemuriscv64", "qemuriscv64-ptest", "qemuriscv64-tc",
     "qemuppc64", "qemuppc64-tc",
     "qemux86-ptest", "qemux86-ptest-fast",
+    "buildperf-debian11",
+    "buildperf-alma8",
     "auh"
 ]
 
@@ -149,8 +151,8 @@ workers = workers_ubuntu + workers_centos + workers_fedora + workers_debian + wo
 workers_bringup = []
 # workers with wine on them for meta-mingw
 workers_wine = ["ubuntu1804-ty-3"]
-workers_buildperf = ["perf-ubuntu1604", "perf-centos7", "perf-debian11"]
 workers_arm = ["ubuntu1804-arm-1", "ubuntu2004-arm-1", "ubuntu2204-arm-1"]
+workers_buildperf = ["perf-debian11", "perf-alma8"]
 # workers which don't need buildtools for AUH and are able to send email to mailing lists
 workers_auh = ["alma8-ty-1", "alma8-ty-2"]
 
@@ -192,9 +194,8 @@ builder_to_workers = {
     "reproducible-opensuse": workers_opensuse,
     "reproducible-centos": workers_centos,
     "meta-mingw": workers_wine,
-    "buildperf-ubuntu1604": ["perf-ubuntu1604"],
     "buildperf-debian11": ["perf-debian11"],
-    "buildperf-centos7": ["perf-centos7"],
+    "buildperf-alma8": ["perf-alma8"],
     "qemuarm-armhost": workers_arm,
     "qemuarm64-ptest": workers_arm,
     "qemuarm64-ptest-fast": workers_arm,
diff --git a/schedulers.py b/schedulers.py
index b70b5edd..4914bcf1 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -471,10 +471,8 @@ schedulers.append(sched.Nightly(name='nightly-check-layer-dunfell', properties=p
                   builderNames=['check-layer-nightly'], dayOfWeek=[1, 4], hour=2, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
 
 # Run the build performance tests at 3am, 9am, 3pm and 9pm
-schedulers.append(sched.Nightly(name='nightly-buildperf-ubuntu1604', branch='master', properties=parent_default_props('buildperf-ubuntu1604'),
-                  builderNames=['buildperf-ubuntu1604', 'buildperf-debian11'], hour=[3,9,15,21], minute=0))
-schedulers.append(sched.Nightly(name='nightly-buildperf-centos7', branch='master', properties=parent_default_props('buildperf-centos7'),
-                  builderNames=['buildperf-centos7'], hour=[3,9,15,21], minute=0))
+schedulers.append(sched.Nightly(name='nightly-buildperf', branch='master', properties=parent_default_props('buildperf-debian11'),
+                  builderNames=['buildperf-debian11', 'buildperf-alma8'], hour=[3,9,15,21], minute=0)
 
 # Run the AUH twice a month on 1st and 15th
 schedulers.append(sched.Nightly(name='nightly-auh', branch='master', properties=parent_default_props('auh'),
-- 
2.39.2


