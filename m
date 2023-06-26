Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BFFEEB64DC
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 17:54:50 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.3143.1687802081092647063
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 10:54:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bGm61Tqh;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: akuster808@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1b0156a1c49so1968089fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 10:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687802080; x=1690394080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aFJVwXhyRZm0cSQB2K+IuwE0KJu3EzKT3ZBbAYk15O0=;
        b=bGm61TqhBEsJJ786T9qWPkqZcixeh5dsH2Bka2XZsA1EDuialow1gal2XRc1H2XO9A
         1IR00u5SzMGYq9wBlnsT+0F8T2rqwZHXMzLbMoXCmDJwSr7UbabL4lTLYBRXGsWomP+H
         yAjhq9grQzh8QEKNoNmlo5UdKVAIgRI5SWTW0swNrLi4E5B6db5okeRzhvqxptxDCHPt
         KhcIMfUxmYBY26tfOYARljKwqmiw64ci6IU+oeNlPtaeR5fOT5aoX/+p5/fN5rs7qhSo
         BVODu10sJCquilXWxNh4r0kuv4H0tkdiPE6N0ND6700miEV2n2b6iQo5n4BgXheeFk3b
         bgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687802080; x=1690394080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFJVwXhyRZm0cSQB2K+IuwE0KJu3EzKT3ZBbAYk15O0=;
        b=Ef1DKLeoaRm/ujprD/MmPNQvhNlW4Ns2lOPJWMRrD/+FWeztyJAHcToGdmIRyXIlTv
         cuchRD0e00UTLTa4Ol7L6JxGT9Lx74RJSiPVL4WYHVgv5TDxPlHcrQKCffADBnXUMNK1
         11GmSThzl5Y46LMu6cTj9o/V9/JJWhyv24uMSkTPbixyK1bnjVvwFJccK2qdRCo/izpC
         fLrGLNX93dwgv2DxJh8ToFhYoIdfbrWwBrJI7kpkgMdNdtzb4lWM793I33Q99Bz/6XH+
         M9b5nVyEvNpbcIFb3AmDYaf2dlHHGrcW6hw89TlukHejclrCt3CFJYj1lajx2peurUqo
         3IAg==
X-Gm-Message-State: AC+VfDyS2xnTK/x+IWRDRFNsh4VuFztSbVTtpfba2jHwb6duzGdsFobV
	jKO1dVHrM49QfAlWu6GY7gd/pxHbfs8=
X-Google-Smtp-Source: ACHHUZ7Rtfk9Jrlt4Nj6J86onBjqqfI8jbk7i4BRt9RQgAMfd/B7URBqkX9ggCJEHBVEAZmJOE6/gw==
X-Received: by 2002:a05:6808:23d0:b0:3a0:5748:2d95 with SMTP id bq16-20020a05680823d000b003a057482d95mr14402899oib.39.1687802079646;
        Mon, 26 Jun 2023 10:54:39 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:3e6e:8667:bf24:944b])
        by smtp.gmail.com with ESMTPSA id x66-20020a81a045000000b00568c1c919d2sm1397020ywg.29.2023.06.26.10.54.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 10:54:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] ossec-hids: Fix usermod
Date: Mon, 26 Jun 2023 13:54:38 -0400
Message-Id: <20230626175438.2990764-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230626175438.2990764-1-akuster808@gmail.com>
References: <20230626175438.2990764-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 17:54:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60450

Use built in USERMOD to set uid and gid properly.
convert to using OSSEC_DIR instead of DIR

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/ossec/ossec-hids_3.7.0.bb | 111 ++++++++++++++------------
 1 file changed, 58 insertions(+), 53 deletions(-)

diff --git a/recipes-ids/ossec/ossec-hids_3.7.0.bb b/recipes-ids/ossec/ossec-hids_3.7.0.bb
index 55c10fa..829715b 100644
--- a/recipes-ids/ossec/ossec-hids_3.7.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.7.0.bb
@@ -17,11 +17,19 @@ inherit autotools-brokensep  useradd
 
 S = "${WORKDIR}/git"
 
+
+OSSEC_DIR="/var/ossec"
 OSSEC_UID ?= "ossec"
 OSSEC_RUID ?= "ossecr"
 OSSEC_GID ?= "ossec"
 OSSEC_EMAIL ?= "ossecm"
 
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM:${PN} = "--system ${OSSEC_UID}"
+USERADD_PARAM:${PN} = "--system -g ${OSSEC_GID} --home-dir  \
+                       ${OSSEC_DIR} --no-create-home  \
+                       --shell /sbin/nologin ${BPN}"
+
 do_configure[noexec] = "1"
 
 do_compile() {
@@ -45,78 +53,75 @@ do_install(){
 }
 
 pkg_postinst_ontarget:${PN} () {
-    DIR="/var/ossec"
-
-    usermod -g ossec -G ossec -a root
 
     # Default for all directories
-    chmod -R 550 ${DIR}
-    chown -R root:${OSSEC_GID} ${DIR}
+    chmod -R 550 ${OSSEC_DIR}
+    chown -R root:${OSSEC_GID} ${OSSEC_DIR}
 
     # To the ossec queue (default for agentd to read)
-    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/queue/ossec
-    chmod -R 770 ${DIR}/queue/ossec
+    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${OSSEC_DIR}/queue/ossec
+    chmod -R 770 ${OSSEC_DIR}/queue/ossec
 
     # For the logging user
-    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/logs
-    chmod -R 750 ${DIR}/logs
-    chmod -R 775 ${DIR}/queue/rids
-    touch ${DIR}/logs/ossec.log
-    chown ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/logs/ossec.log
-    chmod 664 ${DIR}/logs/ossec.log
+    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${OSSEC_DIR}/logs
+    chmod -R 750 ${OSSEC_DIR}/logs
+    chmod -R 775 ${OSSEC_DIR}/queue/rids
+    touch ${OSSEC_DIR}/logs/ossec.log
+    chown ${OSSEC_UUID}:${OSSEC_GID} ${OSSEC_DIR}/logs/ossec.log
+    chmod 664 ${OSSEC_DIR}/logs/ossec.log
 
-    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/queue/diff
-    chmod -R 750 ${DIR}/queue/diff
-        chmod 740 ${DIR}/queue/diff/* > /dev/null 2>&1 || true
+    chown -R ${OSSEC_UUID}:${OSSEC_GID} ${OSSEC_DIR}/queue/diff
+    chmod -R 750 ${OSSEC_DIR}/queue/diff
+    chmod 740 ${OSSEC_DIR}/queue/diff/* > /dev/null 2>&1 || true
 
 	# For the etc dir
-	chmod 550 ${DIR}/etc
-	chown -R root:${OSSEC_GID} ${DIR}/etc
+	chmod 550 ${OSSEC_DIR}/etc
+	chown -R root:${OSSEC_GID} ${OSSEC_DIR}/etc
 	if [ -f /etc/localtime ]; then
-	    cp -pL /etc/localtime ${DIR}/etc/;
-	    chmod 555 ${DIR}/etc/localtime
-	    chown root:${OSSEC_GID} ${DIR}/etc/localtime
+	    cp -pL /etc/localtime ${OSSEC_DIR}/etc/;
+	    chmod 555 ${OSSEC_DIR}/etc/localtime
+	    chown root:${OSSEC_GID} ${OSSEC_DIR}/etc/localtime
 	fi
 
 	if [ -f /etc/TIMEZONE ]; then
-	    cp -p /etc/TIMEZONE ${DIR}/etc/;
-	    chmod 555 ${DIR}/etc/TIMEZONE
+	    cp -p /etc/TIMEZONE ${OSSEC_DIR}/etc/;
+	    chmod 555 ${OSSEC_DIR}/etc/TIMEZONE
 	fi
 
 	# More files
-	chown root:${OSSEC_GID} ${DIR}/etc/internal_options.conf
-	chown root:${OSSEC_GID} ${DIR}/etc/local_internal_options.conf >/dev/null 2>&1 || true
-	chown root:${OSSEC_GID} ${DIR}/etc/client.keys >/dev/null 2>&1 || true
-	chown root:${OSSEC_GID} ${DIR}/agentless/*
-	chown ${OSSEC_UUID}:${OSSEC_GID} ${DIR}/.ssh
-	chown root:${OSSEC_GID} ${DIR}/etc/shared/*
-
-	chmod 550 ${DIR}/etc
-	chmod 440 ${DIR}/etc/internal_options.conf
-	chmod 660 ${DIR}/etc/local_internal_options.conf >/dev/null 2>&1 || true
-	chmod 440 ${DIR}/etc/client.keys >/dev/null 2>&1 || true
-	chmod 550 ${DIR}/agentless/*
-	chmod 700 ${DIR}/.ssh
-	chmod 770 ${DIR}/etc/shared
-	chmod 660 ${DIR}/etc/shared/*
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/etc/internal_options.conf
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/etc/local_internal_options.conf >/dev/null 2>&1 || true
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/etc/client.keys >/dev/null 2>&1 || true
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/agentless/*
+	chown ${OSSEC_UUID}:${OSSEC_GID} ${OSSEC_DIR}/.ssh
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/etc/shared/*
+
+	chmod 550 ${OSSEC_DIR}/etc
+	chmod 440 ${OSSEC_DIR}/etc/internal_options.conf
+	chmod 660 ${OSSEC_DIR}/etc/local_internal_options.conf >/dev/null 2>&1 || true
+	chmod 440 ${OSSEC_DIR}/etc/client.keys >/dev/null 2>&1 || true
+	chmod 550 ${OSSEC_DIR}/agentless/*
+	chmod 700 ${OSSEC_DIR}/.ssh
+	chmod 770 ${OSSEC_DIR}/etc/shared
+	chmod 660 ${OSSEC_DIR}/etc/shared/*
 
 	# For the /var/run
-	chmod 770 ${DIR}/var/run
-	chown root:${OSSEC_GID} ${DIR}/var/run
+	chmod 770 ${OSSEC_DIR}/var/run
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/var/run
 
 	# For util.sh 
-	chown root:${OSSEC_GID} ${DIR}/bin/util.sh
-	chmod +x ${DIR}/bin/util.sh
+	chown root:${OSSEC_GID} ${OSSEC_DIR}/bin/util.sh
+	chmod +x ${OSSEC_DIR}/bin/util.sh
 
 	# For binaries and active response
-        chmod 755 ${DIR}/active-response/bin/*
-        chown root:${OSSEC_GID} ${DIR}/active-response/bin/*
-        chown root:${OSSEC_GID} ${DIR}/bin/*
-        chmod 550 ${DIR}/bin/*
+        chmod 755 ${OSSEC_DIR}/active-response/bin/*
+        chown root:${OSSEC_GID} ${OSSEC_DIR}/active-response/bin/*
+        chown root:${OSSEC_GID} ${OSSEC_DIR}/bin/*
+        chmod 550 ${OSSEC_DIR}/bin/*
 
 	# For ossec.conf
-        chown root:${OSSEC_GID} ${DIR}/etc/ossec.conf
-        chmod 660 ${DIR}/etc/ossec.conf
+        chown root:${OSSEC_GID} ${OSSEC_DIR}/etc/ossec.conf
+        chmod 660 ${OSSEC_DIR}/etc/ossec.conf
 
 	# Debconf
 	. /usr/share/debconf/confmodule
@@ -126,23 +131,23 @@ pkg_postinst_ontarget:${PN} () {
 	db_get ossec-hids-agent/server-ip
 	SERVER_IP=$RET
 
-	sed -i "s/<server-ip>[^<]\+<\/server-ip>/<server-ip>${SERVER_IP}<\/server-ip>/" ${DIR}/etc/ossec.conf
+	sed -i "s/<server-ip>[^<]\+<\/server-ip>/<server-ip>${SERVER_IP}<\/server-ip>/" ${OSSEC_DIR}/etc/ossec.conf
 	db_stop
 
         # ossec-init.conf
-        if [ -e ${DIR}/etc/ossec-init.conf ] && [ -d /etc/ ]; then
+        if [ -e ${OSSEC_DIR}/etc/ossec-init.conf ] && [ -d /etc/ ]; then
             if [ -e /etc/ossec-init.conf ]; then
                 rm -f /etc/ossec-init.conf
             fi
-            ln -s ${DIR}/etc/ossec-init.conf /etc/ossec-init.conf
+            ln -s ${OSSEC_DIR}/etc/ossec-init.conf /etc/ossec-init.conf
         fi
 
         # init.d/ossec file
-        if [ -x ${DIR}/etc/init.d/ossec ] && [ -d /etc/init.d/ ]; then
+        if [ -x ${OSSEC_DIR}/etc/init.d/ossec ] && [ -d /etc/init.d/ ]; then
             if [ -e /etc/init.d/ossec ]; then
                 rm -f /etc/init.d/ossec
             fi
-            ln -s ${DIR}/etc/init.d/ossec /etc/init.d/ossec
+            ln -s ${OSSEC_DIR}/etc/init.d/ossec /etc/init.d/ossec
         fi
 
 	# Service
-- 
2.34.1


