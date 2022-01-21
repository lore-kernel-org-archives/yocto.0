Return-Path: <nodeax@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32275C433F5
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 16:33:21 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web09.14168.1642782799609083043
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 08:33:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XIlWQwTA;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: nodeax@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id c190so10417567qkg.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 08:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q/FONmIen8LgmZjAfDealm+mo8XbYe4c401dWpX+75E=;
        b=XIlWQwTA/wGVCJshO6zZIRyVAUlefejf9hV9BLEWMLZYx6+JkPSiiQYxbsiy5C8PG8
         osyE3kf+3eLTi1CZCJo/k0P/IavZaxGV+9HQZlBlouO9uPwgELsZUTF1iqIRG6GeMxN0
         TbbqbtT8ocnfeI536gvN9M2d8+b6sDPwcsl5EbKQEz+ICEsSnwXYDJvaEDWw8qyaGeX3
         wjvcV/Fd3Bg8l/vfIA4LIJ5igzIWFAHcOXAL6ey8FVE9BBjvj7KdjrXDTPtwbSMn6CII
         +eEkt5gSV36qmQmrQ8fP4pPdnif0INd6uP7dSTKR+mzPNxvlTiTsPTvOoRfNo+0z7vya
         Lf8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q/FONmIen8LgmZjAfDealm+mo8XbYe4c401dWpX+75E=;
        b=zOU9rag9cdRuAZJk54aF8J+nugC/Rrd7vmwR53I7Z0yjtnfLhLpLj9GnLOjIOb2PIP
         ObEQJMrwTZ/ssXSwI++R+Weuki2dK2CNRAM8astvz0IS2IeGeGgoYe+xR/W1B9OtebE6
         2MyJRxm4OrwUrcWy96z2xQtfGa8TfktrKfPhCYfxgYaqXbLuUhhL+uZZuXbnhjfv+M7X
         lvPFIDMG9sXOFrGQCBtIk/RXjbbZ8YdrYpahqK2wq/MxeS/thlj898ru/i2fddgCOUE6
         upQJResusjF8gvwGHeE5Q1viT4xB5L3aCbiqBipyXcAGYGRdqh9q1elVjkikT5pv+ZQp
         Dwgw==
X-Gm-Message-State: AOAM530JZ7Qe3atnWRsITQUkzpvr/iWJp4Fh1SkyqiXMkuoK1rO6W2Xm
	n83d3s2Dq+TA9xzQLVWRTZUgBuFjLbdZnQ==
X-Google-Smtp-Source: 
 ABdhPJxTTKs9oWvYQ4HTzjetji+xy21BapU8ZfkzgJELrQR1u+IDPkce674/BVYmc9px8a51F51+mQ==
X-Received: by 2002:a05:620a:1aa9:: with SMTP id
 bl41mr3287504qkb.715.1642782798388;
        Fri, 21 Jan 2022 08:33:18 -0800 (PST)
Received: from nodeax-ThinkPad-T14s-Gen-2a.fios-router.home
 (pool-74-111-105-118.pitbpa.fios.verizon.net. [74.111.105.118])
        by smtp.gmail.com with ESMTPSA id
 y17sm3360948qtw.0.2022.01.21.08.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jan 2022 08:33:17 -0800 (PST)
From: Akshay Bhat <nodeax@gmail.com>
X-Google-Original-From: Akshay Bhat <akshay.bhat@timesys.com>
To: yocto@lists.yoctoproject.org
Cc: Akshay Bhat <akshay.bhat@timesys.com>
Subject: [meta-hardening][PATCH] meta-hardening: Fix override syntax
Date: Fri, 21 Jan 2022 11:32:39 -0500
Message-Id: <20220121163239.1922917-1-akshay.bhat@timesys.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 16:33:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55939

Commit 352e6498a missed updating the override syntax for the
"harden" distro override.

Fixes: 352e6498a ("meta-hardening: Convert to new override syntax")

Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
---
 .../recipes-connectivity/openssh/openssh_%.bbappend         | 2 +-
 .../recipes-core/base-files/base-files_%.bbappend           | 2 +-
 .../recipes-core/initscripts/initscripts_1.0.bbappend       | 6 +++---
 meta-hardening/recipes-extended/shadow/shadow_%.bbappend    | 2 +-
 meta-hardening/recipes-extended/sudo/sudo_%.bbappend        | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
index 17c06ed..e192d3d 100644
--- a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
+++ b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
@@ -1,4 +1,4 @@
-do_install:append_harden () {
+do_install:append:harden () {
 	# to hardend
 	sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwarding no:' ${D}${sysconfdir}/ssh/sshd_config
 	sed -i -e 's:ClientAliveCountMax 4:ClientAliveCountMax 2:' ${D}${sysconfdir}/ssh/sshd_config
diff --git a/meta-hardening/recipes-core/base-files/base-files_%.bbappend b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
index 0f0384f..4710b49 100644
--- a/meta-hardening/recipes-core/base-files/base-files_%.bbappend
+++ b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
@@ -1,4 +1,4 @@
 
-do_install:append_harden () {
+do_install:append:harden () {
     sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/profile
 }
diff --git a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
index b27dee9..92e364c 100644
--- a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -1,8 +1,8 @@
-FILESEXTRAPATHS:prepend_harden := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend:harden := "${THISDIR}/files:"
 
-SRC_URI:append_harden = " file://mountall.sh"
+SRC_URI:append:harden = " file://mountall.sh"
 
-do_install:append_harden() {
+do_install:append:harden() {
     install -d ${D}${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/mountall.sh ${D}${sysconfdir}/init.d
 }
diff --git a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
index 3058b55..793a075 100644
--- a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
+++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
@@ -1,4 +1,4 @@
-do_install:append_harden () {
+do_install:append:harden () {
 	# to hardend
 	sed -i -e 's:UMASK.*:UMASK 027:' ${D}${sysconfdir}/login.defs
 	sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:' ${D}${sysconfdir}/login.defs
diff --git a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
index 97c5f49..2860e8a 100644
--- a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
+++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
@@ -1,6 +1,6 @@
 
-PACKAGECONFIG:append_harden = " pam-wheel"
-do_install:append_harden () {
+PACKAGECONFIG:append:harden = " pam-wheel"
+do_install:append:harden () {
     if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes', 'no', d)}" = "yes" ]; then
         sed -i -e 's:root ALL=(ALL) ALL:#root ALL=(ALL) ALL:' ${D}${sysconfdir}/sudoers
     fi
-- 
2.25.1


