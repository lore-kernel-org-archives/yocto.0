Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE147E00CDD; Wed,  1 Aug 2018 01:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C1CAE00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:48 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id x5-v6so6284561edr.0
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0zO/ZPlceAaAL9pdjIvS03oGVNR9gnrVV50w3C4FJPo=;
	b=BWfSdHqRSeL8+IFm/eDKBmQDkTgz7aIiZ2iZYqhADglFRmqKbsVH+mMRUScO/quJe3
	plhVtWnwN+HJAgwmfjIlDl/7O1Ii6Ot5I0h1rZdAvTY1unmEv8fxZnxwNnEEGcU9Hc6l
	Y4aFdRM+UQEJOKNFa0iZrwt1R6aMG4mJjecpkkNTDLAPV3EY0371i6ovRpMbcEqTh+aX
	OLMOMeD6/GupfVY8P6ZuRrQ3ebhfjV23WKUMmWotIiQfLZ3GP+JoRcfTOoyO/GZav1g8
	e0Gj8F01+ru8wNbWCfGJTAMbfc+avAIjrhZA0EshYl5D7ee68njT8LE0M8jmseQETtYP
	n2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0zO/ZPlceAaAL9pdjIvS03oGVNR9gnrVV50w3C4FJPo=;
	b=muhGU2lzcHWWgKgrVTebjNrZuhtFv87E/cRRxjWqtYfbR2HaR5GcYkVKOnQYHoUkNG
	uZE+mgt/S6SgGdCALPhWKrzi+Uf38kBFIB6MQIgawzh8KMxywrbco69Nu8Yithed54nu
	ndM3rqQiMBtDshva3kqdDOh6pZYOyl4z79kDYtqybtbgojHS7yuXR0qbbPHyfRzv5ShM
	+Qwm3zEiY3vXvWLXEYLkQP1QHjRyvdQ0ZxYmORonz9QKAf9YqEgpPRbY4hhkL3dDAeXM
	1Q7FNgyG2EfGG1QzSgYDTmoc3c7tEx/ywoEDTOPy33FZIu9IFIc6SbzoZl8EjEqg8e88
	XOpA==
X-Gm-Message-State: AOUpUlHRj6IMMJu8aEq2nvHKMv0KhcwVjYwMvMLxNFnhkc+7rENeqC9D
	7j+6mpUsfu6YFD+K5sVW0fmEkQA/UlU=
X-Google-Smtp-Source: AAOMgpc5FPvzMLE0EckLuNF+qrvYLSHYJoJ9rfsKmOoI3n3K1qrUpsZtK1ogoXHbDYLgYVgRNURBAQ==
X-Received: by 2002:a50:ac65:: with SMTP id
	w34-v6mr2892413edc.211.1533110987362; 
	Wed, 01 Aug 2018 01:09:47 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:46 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:22 +0200
Message-Id: <20180801080927.26522-5-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 05/10] suricata: add systemd unit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Aug 2018 08:09:49 -0000

Based on the debian systemd unit.

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/files/suricata.service | 20 ++++++++++++++++++++
 recipes-security/suricata/suricata_4.0.0.bb      | 17 +++++++++++++++--
 2 files changed, 35 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/suricata/files/suricata.service

diff --git a/recipes-security/suricata/files/suricata.service b/recipes-security/suricata/files/suricata.service
new file mode 100644
index 0000000..a99a76e
--- /dev/null
+++ b/recipes-security/suricata/files/suricata.service
@@ -0,0 +1,20 @@
+[Unit]
+Description=Suricata IDS/IDP daemon
+After=network.target
+Requires=network.target
+Documentation=man:suricata(8) man:suricatasc(8)
+Documentation=https://redmine.openinfosecfoundation.org/projects/suricata/wiki
+
+[Service]
+Type=simple
+CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_RAW
+RestrictAddressFamilies=
+ExecStart=/usr/bin/suricata -c /etc/suricata/suricata.yaml eth0
+ExecReload=/bin/kill -HUP $MAINPID
+PrivateTmp=yes
+ProtectHome=yes
+ProtectSystem=yes
+
+[Install]
+WantedBy=multi-user.target
+
diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 7ab3077..91136bf 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -7,9 +7,10 @@ LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd
 SRC_URI += " \
            file://volatiles.03_suricata \
            file://suricata.yaml \
+           file://suricata.service \
            "
 
-inherit autotools-brokensep pkgconfig python-dir 
+inherit autotools-brokensep pkgconfig python-dir systemd 
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
@@ -45,6 +46,16 @@ do_install_append () {
     install -m 644 reference.config ${D}${sysconfdir}/suricata
     install -m 644 ${WORKDIR}/suricata.yaml ${D}${sysconfdir}/suricata
     install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
+
+    install -d ${D}${systemd_unitdir}/system
+    sed  -e s:/etc:${sysconfdir}:g \
+         -e s:/var/run:/run:g \
+         -e s:/var:${localstatedir}:g \
+         -e s:/usr/bin:${bindir}:g \
+         -e s:/bin/kill:${base_bindir}/kill:g \
+         -e s:/usr/lib:${libdir}:g \
+         ${WORKDIR}/suricata.service > ${D}${systemd_unitdir}/system/suricata.service
+
 }
 
 pkg_postinst_ontarget_${PN} () {
@@ -53,8 +64,10 @@ if [ -e /etc/init.d/populate-volatile.sh ] ; then
 fi
 }
 
+SYSTEMD_PACKAGES = "${PN}"
+
 PACKAGES =+ "${PN}-python"
-FILES_${PN} += "${logdir}/suricata"
+FILES_${PN} += "${logdir}/suricata ${systemd_unitdir}"
 FILES_${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
 CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
-- 
2.9.5


