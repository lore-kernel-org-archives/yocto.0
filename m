Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8322FE00B87; Fri,  2 Jun 2017 05:14:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB1D0E00B63
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 05:14:52 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id d127so18563713wmf.1
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 05:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=GiSTTzFSbMuXxJMn5pUPtpRBEppBwkJSR9ujQaux36s=;
	b=R90gRPajeoFqXNfq/r43McZu/Jltlrian+d7Jt09yAlQaW7/c42PYuukM9Z+ELksGS
	fmpyn2QE7ldE1Sz3cInOUURc33YgEV91jhFDHaZj5PXEr00pyYD+14s5xl5e+dG37Ak/
	6vSDwo+xCK2L7MfWCKukDy+l345TQJGIpJB6iiMgSp9uXZxC8tkfPe9adu/fQtUTjgfZ
	xt5VRQMBnXoOizXtKaRsdkzBXA5fR99ZgMGvRudPfnw0XKr+5R27tG6LbYecRlXpeY8l
	1tipVdPr58TOZluekJrb2E+ExXgZFcdzJvmw/HCvrYCjn2DE4jHl8xodBwrT1aHmL3cH
	s/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=GiSTTzFSbMuXxJMn5pUPtpRBEppBwkJSR9ujQaux36s=;
	b=URWHfrNERBN+CnGTafpRk63+wh1eBaa7dhvF4i5MTEpycNM9ZJQ6L6PBDh39iaGjEv
	fytYrICtbMCG9sbpy+dw3A72G6sRi2y+hzWU+dQAM5zaXGgqP0e2H2BPxkW0qXm40Wdz
	NTxQFJgJs3INo5/6vYTfuQRc9UQzztNZBJb8afO1XYVoqZDJeI3t+2rtOR0LogiighwD
	PWSimeQMSXxOxVo1D1TK0hpi5Z+vqA4xSBmcO6G32YA8riINyAORyTl52qiCIViHhdt4
	BDPGsRoiryN1PS1fbmdRObuyrR4P5GD3eArijQwdmyCoN5Oi50CwrlRMLdoNGBRUq3t4
	el5w==
X-Gm-Message-State: AODbwcB0OtXxkZbCWlVmlTajwibSJyZw4XVhZ+1UIAm1z6owwy4WziVY
	QGpsyHy5j8ab1L5W
X-Received: by 10.223.164.137 with SMTP id g9mr4677439wrb.128.1496405691394;
	Fri, 02 Jun 2017 05:14:51 -0700 (PDT)
Received: from localhost.localdomain (h-62.96.158.122.host.de.colt.net.
	[62.96.158.122]) by smtp.gmail.com with ESMTPSA id
	z32sm26653721wrc.12.2017.06.02.05.14.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 02 Jun 2017 05:14:50 -0700 (PDT)
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  2 Jun 2017 14:14:16 +0200
Message-Id: <20170602121416.40842-2-sven.ebenfeld@gmail.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170602121416.40842-1-sven.ebenfeld@gmail.com>
References: <20170602121416.40842-1-sven.ebenfeld@gmail.com>
Subject: [meta-zulu-java][PATCH] zulu-jdk: move files to designated packages
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
X-List-Received-Date: Fri, 02 Jun 2017 12:14:54 -0000

The current zulu-jdk package includes many big files that are not
required to run java-programs on target devices. This patch avoids
that zulu-jdk acquires too much space on the target device.

Signed-off-by: Sven Ebenfeld <sven.ebenfeld@gmail.com>
---
 recipes-devtools/zulu-ezdk-arm-hflt.bb | 14 ++++++++++++++
 recipes-devtools/zulu-ezdk-arm-sflt.bb | 14 ++++++++++++++
 recipes-devtools/zulu-ezdk-x86-64.bb   | 14 ++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/recipes-devtools/zulu-ezdk-arm-hflt.bb b/recipes-devtools/zulu-ezdk-arm-hflt.bb
index 636f245..4f7781c 100644
--- a/recipes-devtools/zulu-ezdk-arm-hflt.bb
+++ b/recipes-devtools/zulu-ezdk-arm-hflt.bb
@@ -43,3 +43,17 @@ PROVIDES += "virtual/java"
 
 DEPENDS = "alsa-lib libxi libxrender libxtst"
 
+FILES_${PN}-doc = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/client/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/jli/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/man/ \
+	"
+
+FILES_${PN}-dev = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/src.zip \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/demo/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/sample/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/include/ \
+	"
\ No newline at end of file
diff --git a/recipes-devtools/zulu-ezdk-arm-sflt.bb b/recipes-devtools/zulu-ezdk-arm-sflt.bb
index 5bb2b7e..0324fcd 100644
--- a/recipes-devtools/zulu-ezdk-arm-sflt.bb
+++ b/recipes-devtools/zulu-ezdk-arm-sflt.bb
@@ -43,3 +43,17 @@ PROVIDES += "virtual/java"
 
 DEPENDS = "alsa-lib libxi libxrender libxtst"
 
+FILES_${PN}-doc = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/client/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/jli/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/man/ \
+	"
+
+FILES_${PN}-dev = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/src.zip \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/demo/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/sample/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/include/ \
+	"
\ No newline at end of file
diff --git a/recipes-devtools/zulu-ezdk-x86-64.bb b/recipes-devtools/zulu-ezdk-x86-64.bb
index f132cdb..60272b3 100644
--- a/recipes-devtools/zulu-ezdk-x86-64.bb
+++ b/recipes-devtools/zulu-ezdk-x86-64.bb
@@ -43,3 +43,17 @@ PROVIDES += "virtual/java"
 
 DEPENDS = "alsa-lib libxi libxrender libxtst"
 
+FILES_${PN}-doc = " \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*/client/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*/jli/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/man/ \
+	"
+
+FILES_${PN}-dev = " \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/src.zip \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/demo/ \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/sample/ \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/include/ \
+	"
\ No newline at end of file
-- 
2.13.0


