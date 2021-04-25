Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.6254.1619382200385260004
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Apr 2021 13:23:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VD5of3LA;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id s22so17623833pgk.6
        for <yocto@lists.yoctoproject.org>; Sun, 25 Apr 2021 13:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Gp1q5T5XKSr8sDajjlU9/Oms8aHSxx5+q+JTYJZaaxs=;
        b=VD5of3LA0kJtRgIfHbVWooNDzlxvPnab35dHnJaYnu6FdOQGO9waY0hB6vrqHP83Jw
         d9zO3V42TWlkY59jG3uXrnf/ym5SS4+t3feZj6yToF/R0TFyi3Zkyx1pHcwQKDBaNepn
         cSuXeGabnnVRsyZSh4hj1O3WS1EVsA/rhVk3shx5KG0beR9HkJtklQmzjuXXm671DwR/
         UFNebRIddriwl2Gc1H4doaLwPTGMhIlIky3wt3xPFefAjAueB1itDj3inVwMTwrtY47O
         9RWn7vIO+YL7XnnK/h9NvEQgMf4t8Hnzm3OFUux9rO5plff/NnYzrlCYLih/oQAy6vyH
         hWXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Gp1q5T5XKSr8sDajjlU9/Oms8aHSxx5+q+JTYJZaaxs=;
        b=fYSmJ4AAH+mwEjGMG3xo94G3uIjOFUm6DPf+ATlfTf99HFsmgzamWyp8nbnS3UXotO
         ZcBDZvsWfr/ZuJ6LG1ORD5BmKOt4B3ADlQtFQdelJqwG7e/OgclSmggUx32BPLukqlHJ
         +RJ5wOX00j6ylRGsiIRcoGvQoucwU3ki2xmaVr2qwgp3P6OtVjtPSz+pqXKrHH4CSMYE
         1Fef0Fpiwmqlk9Z0hKGsNCrDpitvj23Hw06oRkXD+iOZ+8+rwmsKCmtS95h0Hk+njjkq
         r3c3KvOQc+phyXEKnJOsA64ZDwKgkQi5uT4ecYlzMlUDMwueyWgiwx30FFJdecO+ECbk
         PC/g==
X-Gm-Message-State: AOAM532eZMXdkDtRqij3+DUXZsDKTW3LZZnCgtvzUG9PFH/O2ROZXaIL
	IUAnD+0eS5uFfOXmFXQ8TaEiCVk6ZP2IXg==
X-Google-Smtp-Source: ABdhPJzoNxl33Jw/7NqM5xgKlT5wXQXQMVPmDWbpLr8uP9tEczE9xTD4uuLpbcJcFy2IwV5PupKgcA==
X-Received: by 2002:a63:7842:: with SMTP id t63mr13989312pgc.233.1619382199301;
        Sun, 25 Apr 2021 13:23:19 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id f18sm1447546pfe.49.2021.04.25.13.23.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Apr 2021 13:23:18 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] ossec-hids: add new pkg
Date: Sun, 25 Apr 2021 20:23:17 +0000
Message-Id: <20210425202317.696591-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...Makefile-drop-running-scrips-install.patch |  37 +++
 .../0002-Makefile-don-t-set-uid-gid.patch     | 251 ++++++++++++++++++
 recipes-ids/ossec/ossec-hids_3.6.0.bb         | 161 +++++++++++
 3 files changed, 449 insertions(+)
 create mode 100644 recipes-ids/ossec/files/0001-Makefile-drop-running-scrips-install.patch
 create mode 100644 recipes-ids/ossec/files/0002-Makefile-don-t-set-uid-gid.patch
 create mode 100644 recipes-ids/ossec/ossec-hids_3.6.0.bb

diff --git a/recipes-ids/ossec/files/0001-Makefile-drop-running-scrips-install.patch b/recipes-ids/ossec/files/0001-Makefile-drop-running-scrips-install.patch
new file mode 100644
index 0000000..08e018f
--- /dev/null
+++ b/recipes-ids/ossec/files/0001-Makefile-drop-running-scrips-install.patch
@@ -0,0 +1,37 @@
+From b948d36a8ca8e04794381f0f6eba29daf7e3fd01 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Wed, 21 Apr 2021 00:56:53 +0000
+Subject: [PATCH 1/2] Makefile: drop running scrips @ install
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+---
+ src/Makefile | 4 ----
+ 1 file changed, 4 deletions(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index 06a7094c..dfb8cb58 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -409,7 +409,6 @@ install-hybrid: install-server-generic
+ install-server: install-server-generic
+ 
+ install-common: build
+-	./init/adduser.sh ${OSSEC_USER} ${OSSEC_USER_MAIL} ${OSSEC_USER_REM} ${OSSEC_GROUP} ${PREFIX}
+ 	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/
+ 	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/logs
+ 	$(call INSTALL_CMD,0660,${OSSEC_USER},${OSSEC_GROUP}) /dev/null ${PREFIX}/logs/ossec.log
+@@ -485,9 +484,6 @@ endif
+ 	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/var
+ 	$(call INSTALL_CMD,0770,root,${OSSEC_GROUP}) -d ${PREFIX}/var/run
+ 
+-	./init/fw-check.sh execute
+-
+-
+ 
+ install-server-generic: install-common
+ 	$(call INSTALL_CMD,0660,${OSSEC_USER},${OSSEC_GROUP}) /dev/null ${PREFIX}/logs/active-responses.log
+-- 
+2.25.1
+
diff --git a/recipes-ids/ossec/files/0002-Makefile-don-t-set-uid-gid.patch b/recipes-ids/ossec/files/0002-Makefile-don-t-set-uid-gid.patch
new file mode 100644
index 0000000..d5e3403
--- /dev/null
+++ b/recipes-ids/ossec/files/0002-Makefile-don-t-set-uid-gid.patch
@@ -0,0 +1,251 @@
+From d9ec907881b72d42b4918f7cfb46516ce8e77772 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Sat, 24 Apr 2021 23:07:29 +0000
+Subject: [PATCH 2/2] Makefile: don't set uid/gid
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+---
+ src/Makefile | 166 +++++++++++++++++++++++++--------------------------
+ 1 file changed, 83 insertions(+), 83 deletions(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index dfb8cb58..a4d69ef6 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -21,7 +21,7 @@ OSSEC_USER?=ossec
+ OSSEC_USER_MAIL?=ossecm
+ OSSEC_USER_REM?=ossecr
+ 
+-INSTALL_CMD?=install -m $(1) -o $(2) -g $(3)
++INSTALL_CMD?=install -m $(1) 
+ INSTALL_LOCALTIME?=yes
+ INSTALL_RESOLVCONF?=yes
+ 
+@@ -397,10 +397,10 @@ endif
+ install: install-${TARGET}
+ 
+ install-agent: install-common
+-	$(call INSTALL_CMD,0550,root,0) ossec-agentd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) agent-auth ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-agentd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) agent-auth ${PREFIX}/bin
+ 
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/rids
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/rids
+ 
+ install-local: install-server-generic
+ 
+@@ -409,129 +409,129 @@ install-hybrid: install-server-generic
+ install-server: install-server-generic
+ 
+ install-common: build
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/logs
+-	$(call INSTALL_CMD,0660,${OSSEC_USER},${OSSEC_GROUP}) /dev/null ${PREFIX}/logs/ossec.log
+-
+-	$(call INSTALL_CMD,0550,root,0) -d ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-logcollector ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-syscheckd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-execd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) manage_agents ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ../contrib/util.sh ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) ${OSSEC_CONTROL_SRC} ${PREFIX}/bin/ossec-control
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/logs
++	$(call INSTALL_CMD,0660) /dev/null ${PREFIX}/logs/ossec.log
++
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-logcollector ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-syscheckd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-execd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) manage_agents ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ../contrib/util.sh ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) ${OSSEC_CONTROL_SRC} ${PREFIX}/bin/ossec-control
+ 
+ ifeq (${LUA_ENABLE},yes)
+-	$(call INSTALL_CMD,0550,root,0) -d ${PREFIX}/lua
+-	$(call INSTALL_CMD,0550,root,0) -d ${PREFIX}/lua/native
+-	$(call INSTALL_CMD,0550,root,0) -d ${PREFIX}/lua/compiled
+-	$(call INSTALL_CMD,0550,root,0) ${EXTERNAL_LUA}src/ossec-lua ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) ${EXTERNAL_LUA}src/ossec-luac ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/lua
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/lua/native
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/lua/compiled
++	$(call INSTALL_CMD,0550) ${EXTERNAL_LUA}src/ossec-lua ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) ${EXTERNAL_LUA}src/ossec-luac ${PREFIX}/bin/
+ endif
+ 
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/queue
+-	$(call INSTALL_CMD,0770,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/alerts
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/ossec
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/syscheck
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/diff
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/queue
++	$(call INSTALL_CMD,0770) -d ${PREFIX}/queue/alerts
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/ossec
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/syscheck
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/diff
+ 
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/etc
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/etc
+ ifeq (${INSTALL_LOCALTIME},yes)
+-	$(call INSTALL_CMD,0440,root,${OSSEC_GROUP}) /etc/localtime ${PREFIX}/etc
++	$(call INSTALL_CMD,0440) /etc/localtime ${PREFIX}/etc
+ endif
+ ifeq (${INSTALL_RESOLVCONF},yes)
+-	$(call INSTALL_CMD,0440,root,${OSSEC_GROUP}) /etc/resolv.conf ${PREFIX}/etc
++	$(call INSTALL_CMD,0440) /etc/resolv.conf ${PREFIX}/etc
+ endif
+ 
+-	$(call INSTALL_CMD,1550,root,${OSSEC_GROUP}) -d ${PREFIX}/tmp
++	$(call INSTALL_CMD,1550) -d ${PREFIX}/tmp
+ 
+ ifneq (,$(wildcard /etc/TIMEZONE))
+-	$(call INSTALL_CMD,440,root,${OSSEC_GROUP}) /etc/TIMEZONE ${PREFIX}/etc/
++	$(call INSTALL_CMD,440) /etc/TIMEZONE ${PREFIX}/etc/
+ endif
+ # Solaris Needs some extra files
+ ifeq (${uname_S},SunOS)
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/usr/share/lib/zoneinfo/
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/usr/share/lib/zoneinfo/
+ 	cp -r /usr/share/lib/zoneinfo/* ${PREFIX}/usr/share/lib/zoneinfo/
+ endif
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) -b ../etc/internal_options.conf ${PREFIX}/etc/
++	$(call INSTALL_CMD,0640) -b ../etc/internal_options.conf ${PREFIX}/etc/
+ ifeq (,$(wildcard ${PREFIX}/etc/local_internal_options.conf))
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) ../etc/local_internal_options.conf ${PREFIX}/etc/local_internal_options.conf
++	$(call INSTALL_CMD,0640) ../etc/local_internal_options.conf ${PREFIX}/etc/local_internal_options.conf
+ endif
+ ifeq (,$(wildcard ${PREFIX}/etc/client.keys))
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) /dev/null ${PREFIX}/etc/client.keys
++	$(call INSTALL_CMD,0640) /dev/null ${PREFIX}/etc/client.keys
+ endif
+ ifeq (,$(wildcard ${PREFIX}/etc/ossec.conf))
+ ifneq (,$(wildcard ../etc/ossec.mc))
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) ../etc/ossec.mc ${PREFIX}/etc/ossec.conf
++	$(call INSTALL_CMD,0640) ../etc/ossec.mc ${PREFIX}/etc/ossec.conf
+ else
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) ${OSSEC_CONF_SRC} ${PREFIX}/etc/ossec.conf
++	$(call INSTALL_CMD,0640) ${OSSEC_CONF_SRC} ${PREFIX}/etc/ossec.conf
+ endif
+ endif
+ 
+-	$(call INSTALL_CMD,0770,root,${OSSEC_GROUP}) -d ${PREFIX}/etc/shared
+-	$(call INSTALL_CMD,0640,${OSSEC_USER},${OSSEC_GROUP}) rootcheck/db/*.txt ${PREFIX}/etc/shared/
++	$(call INSTALL_CMD,0770) -d ${PREFIX}/etc/shared
++	$(call INSTALL_CMD,0640) rootcheck/db/*.txt ${PREFIX}/etc/shared/
+ 
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/active-response
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/active-response/bin
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/agentless
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) agentlessd/scripts/* ${PREFIX}/agentless/
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/active-response
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/active-response/bin
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/agentless
++	$(call INSTALL_CMD,0550) agentlessd/scripts/* ${PREFIX}/agentless/
+ 
+-	$(call INSTALL_CMD,0700,root,${OSSEC_GROUP}) -d ${PREFIX}/.ssh
++	$(call INSTALL_CMD,0700) -d ${PREFIX}/.ssh
+ 
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) ../active-response/*.sh ${PREFIX}/active-response/bin/
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) ../active-response/firewalls/*.sh ${PREFIX}/active-response/bin/
++	$(call INSTALL_CMD,0550) ../active-response/*.sh ${PREFIX}/active-response/bin/
++	$(call INSTALL_CMD,0550) ../active-response/firewalls/*.sh ${PREFIX}/active-response/bin/
+ 
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/var
+-	$(call INSTALL_CMD,0770,root,${OSSEC_GROUP}) -d ${PREFIX}/var/run
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/var
++	$(call INSTALL_CMD,0770) -d ${PREFIX}/var/run
+ 
+ 
+ install-server-generic: install-common
+-	$(call INSTALL_CMD,0660,${OSSEC_USER},${OSSEC_GROUP}) /dev/null ${PREFIX}/logs/active-responses.log
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/logs/archives
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/logs/alerts
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/logs/firewall
+-
+-	$(call INSTALL_CMD,0550,root,0) ossec-agentlessd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-analysisd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-monitord ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-reportd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-maild ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-remoted ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-logtest ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-csyslogd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-authd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-dbd ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) ossec-makelists ${PREFIX}/bin
+-	$(call INSTALL_CMD,0550,root,0) verify-agent-conf ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) clear_stats ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) list_agents ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) ossec-regex ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) syscheck_update ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) agent_control ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) syscheck_control ${PREFIX}/bin/
+-	$(call INSTALL_CMD,0550,root,0) rootcheck_control ${PREFIX}/bin/
+-
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/stats
+-	$(call INSTALL_CMD,0550,root,${OSSEC_GROUP}) -d ${PREFIX}/rules
++	$(call INSTALL_CMD,0660) /dev/null ${PREFIX}/logs/active-responses.log
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/logs/archives
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/logs/alerts
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/logs/firewall
++
++	$(call INSTALL_CMD,0550) ossec-agentlessd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-analysisd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-monitord ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-reportd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-maild ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-remoted ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-logtest ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-csyslogd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-authd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-dbd ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) ossec-makelists ${PREFIX}/bin
++	$(call INSTALL_CMD,0550) verify-agent-conf ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) clear_stats ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) list_agents ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) ossec-regex ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) syscheck_update ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) agent_control ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) syscheck_control ${PREFIX}/bin/
++	$(call INSTALL_CMD,0550) rootcheck_control ${PREFIX}/bin/
++
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/stats
++	$(call INSTALL_CMD,0550) -d ${PREFIX}/rules
+ ifneq (,$(wildcard ${PREFIX}/rules/local_rules.xml))
+ 	cp ${PREFIX}/rules/local_rules.xml ${PREFIX}/rules/local_rules.xml.installbackup
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) -b ../etc/rules/*.xml ${PREFIX}/rules
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) ${PREFIX}/rules/local_rules.xml.installbackup ${PREFIX}/rules/local_rules.xml
++	$(call INSTALL_CMD,0640) -b ../etc/rules/*.xml ${PREFIX}/rules
++	$(call INSTALL_CMD,0640) ${PREFIX}/rules/local_rules.xml.installbackup ${PREFIX}/rules/local_rules.xml
+ 	rm ${PREFIX}/rules/local_rules.xml.installbackup
+ else
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) -b ../etc/rules/*.xml ${PREFIX}/rules
++	$(call INSTALL_CMD,0640) -b ../etc/rules/*.xml ${PREFIX}/rules
+ endif
+ 
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/fts
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/fts
+ 
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/rootcheck
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/rootcheck
+ 
+-	$(call INSTALL_CMD,0750,${OSSEC_USER_REM},${OSSEC_GROUP}) -d ${PREFIX}/queue/agent-info
+-	$(call INSTALL_CMD,0750,${OSSEC_USER},${OSSEC_GROUP}) -d ${PREFIX}/queue/agentless
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/agent-info
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/agentless
+ 
+-	$(call INSTALL_CMD,0750,${OSSEC_USER_REM},${OSSEC_GROUP}) -d ${PREFIX}/queue/rids
++	$(call INSTALL_CMD,0750) -d ${PREFIX}/queue/rids
+ 
+-	$(call INSTALL_CMD,0640,root,${OSSEC_GROUP}) ../etc/decoder.xml ${PREFIX}/etc/
++	$(call INSTALL_CMD,0640) ../etc/decoder.xml ${PREFIX}/etc/
+ 
+ 	rm -f ${PREFIX}/etc/shared/merged.mg
+ 
+-- 
+2.25.1
+
diff --git a/recipes-ids/ossec/ossec-hids_3.6.0.bb b/recipes-ids/ossec/ossec-hids_3.6.0.bb
new file mode 100644
index 0000000..10354a7
--- /dev/null
+++ b/recipes-ids/ossec/ossec-hids_3.6.0.bb
@@ -0,0 +1,161 @@
+SUMMARY = "A full platform to monitor and control your systems"
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d625d1520b5e38faefb81cf9772badc9"
+
+
+DEPENDS = "openssl libpcre2 zlib libevent"
+SRC_URI = "git://github.com/ossec/ossec-hids;branch=master \
+           file://0001-Makefile-drop-running-scrips-install.patch  \
+           file://0002-Makefile-don-t-set-uid-gid.patch \
+           "
+
+SRCREV = "1303c78e2c67d7acee0508cb00c3bc63baaa27c2"
+
+inherit autotools-brokensep  useradd
+
+S = "${WORKDIR}/git"
+
+OSSEC_UID ?= "ossec"
+OSSEC_RUID ?= "ossecr"
+OSSEC_GID ?= "ossec"
+OSSEC_EMAIL ?= "ossecm"
+
+do_configure[noexec] = "1"
+
+do_compile() {
+  cd ${S}/src
+  make PREFIX=${prefix} TARGET=local USE_SYSTEMD=No build 
+}
+
+do_install(){
+  install -d ${D}${sysconfdir}
+  install -d ${D}/var/ossec/${sysconfdir}
+
+  cd ${S}/src
+  make TARGET=local  PREFIX=${D}/var/ossec install
+
+  echo "DIRECTORY=\"/var/ossec\"" > ${D}/${sysconfdir}/ossec-init.conf
+  echo "VERSION=\"${PV}\"" >> ${D}/${sysconfdir}/ossec-init.conf
+  echo "DATE=\"`date`\"" >> ${D}/${sysconfdir}/ossec-init.conf
+  echo "TYPE=\"local\"" >> ${D}/${sysconfdir}/ossec-init.conf
+  chmod 600  ${D}/${sysconfdir}/ossec-init.conf
+  install -m 640 ${D}/${sysconfdir}/ossec-init.conf ${D}/var/ossec/${sysconfdir}/ossec-init.conf
+}
+
+pkg_postinst_ontarget_${PN} () {
+    DIR="/var/ossec"
+
+    usermod -g ossec -G ossec -a root
+
+    # Default for all directories
+    chmod -R 550 ${DIR}
+    chown -R root:${OSSEC_GID} ${DIR}
+
+    # To the ossec queue (default for agentd to read)
+    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/queue/ossec
+    chmod -R 770 ${DIR}/queue/ossec
+
+    # For the logging user
+    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/logs
+    chmod -R 750 ${DIR}/logs
+    chmod -R 775 ${DIR}/queue/rids
+    touch ${DIR}/logs/ossec.log
+    chown ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/logs/ossec.log
+    chmod 664 ${DIR}/logs/ossec.log
+
+    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/queue/diff
+    chmod -R 750 ${DIR}/queue/diff
+        chmod 740 ${DIR}/queue/diff/* > /dev/null 2>&1 || true
+
+	# For the etc dir
+	chmod 550 ${DIR}/etc
+	chown -R root:${OSSEC_GID} ${DIR}/etc
+	if [ -f /etc/localtime ]; then
+	    cp -pL /etc/localtime ${DIR}/etc/;
+	    chmod 555 ${DIR}/etc/localtime
+	    chown root:${OSSEC_GID} ${DIR}/etc/localtime
+	fi
+
+	if [ -f /etc/TIMEZONE ]; then
+	    cp -p /etc/TIMEZONE ${DIR}/etc/;
+	    chmod 555 ${DIR}/etc/TIMEZONE
+	fi
+
+	# More files
+	chown root:${OSSEC_GID} ${DIR}/etc/internal_options.conf
+	chown root:${OSSEC_GID} ${DIR}/etc/local_internal_options.conf >/dev/null 2>&1 || true
+	chown root:${OSSEC_GID} ${DIR}/etc/client.keys >/dev/null 2>&1 || true
+	chown root:${OSSEC_GID} ${DIR}/agentless/*
+	chown ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/.ssh
+	chown root:${OSSEC_GID} ${DIR}/etc/shared/*
+
+	chmod 550 ${DIR}/etc
+	chmod 440 ${DIR}/etc/internal_options.conf
+	chmod 660 ${DIR}/etc/local_internal_options.conf >/dev/null 2>&1 || true
+	chmod 440 ${DIR}/etc/client.keys >/dev/null 2>&1 || true
+	chmod 550 ${DIR}/agentless/*
+	chmod 700 ${DIR}/.ssh
+	chmod 770 ${DIR}/etc/shared
+	chmod 660 ${DIR}/etc/shared/*
+
+	# For the /var/run
+	chmod 770 ${DIR}/var/run
+	chown root:${OSSEC_GID} ${DIR}/var/run
+
+	# For util.sh 
+	chown root:${OSSEC_GID} ${DIR}/bin/util.sh
+	chmod +x ${DIR}/bin/util.sh
+
+	# For binaries and active response
+        chmod 755 ${DIR}/active-response/bin/*
+        chown root:${OSSEC_GID} ${DIR}/active-response/bin/*
+        chown root:${OSSEC_GID} ${DIR}/bin/*
+        chmod 550 ${DIR}/bin/*
+
+	# For ossec.conf
+        chown root:${OSSEC_GID} ${DIR}/etc/ossec.conf
+        chmod 660 ${DIR}/etc/ossec.conf
+
+	# Debconf
+	. /usr/share/debconf/confmodule
+	db_input high ossec-hids-agent/server-ip || true
+	db_go
+
+	db_get ossec-hids-agent/server-ip
+	SERVER_IP=$RET
+
+	sed -i "s/<server-ip>[^<]\+<\/server-ip>/<server-ip>${SERVER_IP}<\/server-ip>/" ${DIR}/etc/ossec.conf
+	db_stop
+
+        # ossec-init.conf
+        if [ -e ${DIR}/etc/ossec-init.conf ] && [ -d /etc/ ]; then
+            if [ -e /etc/ossec-init.conf ]; then
+                rm -f /etc/ossec-init.conf
+            fi
+            ln -s ${DIR}/etc/ossec-init.conf /etc/ossec-init.conf
+        fi
+
+        # init.d/ossec file
+        if [ -x ${DIR}/etc/init.d/ossec ] && [ -d /etc/init.d/ ]; then
+            if [ -e /etc/init.d/ossec ]; then
+                rm -f /etc/init.d/ossec
+            fi
+            ln -s ${DIR}/etc/init.d/ossec /etc/init.d/ossec
+        fi
+
+	# Service
+	if [ -x /etc/init.d/ossec ]; then
+	    update-rc.d -f ossec defaults
+	fi
+
+	# Delete tmp directory
+	if [ -d ${OSSEC_HIDS_TMP_DIR} ]; then
+	    rm -r ${OSSEC_HIDS_TMP_DIR}
+	fi
+}
+
+USERADD_PACKAGES = "${PN}"
+USERADD_PARAM_${PN} = "--system --home-dir /var/ossec -g ossec --shell /bin/false ossec"
+GROUPADD_PARAM_${PN} = "--system ossec"
+
+RDEPENDS_${PN} = "openssl bash"
-- 
2.25.1

