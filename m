Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE70E00A54; Fri, 26 Oct 2018 23:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BED7E00A54
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 23:25:02 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id q12-v6so497219wmq.0
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 23:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=B88upFd5sUCbzAlb6+v1WpNY+58fPoX5bKdSyzFEewI=;
	b=LwewAb7r1Y0TYwvegXQlzsS6YW6R0puWK/NBJX1/Vt2iRYx6wOi4p2xNMRauv96aK8
	DG4W3SO1AW1h3jz6UuAN9DVGfkS1HoHsU4Ct50kSWwHZMun12T4audvFu5vZNzmUHwkq
	bpyFUnaI1Vyvdz6DXd8pgyiHiNL3lFV6wsv0ymS5iEOVZu2zBBoULgkRqPAAEkmM45S+
	tq55K+/vZmR93ALr50TAzs8zMXAaQXmIqnUQTgmDEMWw90qeDJTlI4/1TDoNnVYYKRfF
	JUEV9hNPLZbUNr30jZa69vphaHpXap0sRv2wmTWq2z7gf90gNWafTHvABJvwXHwMpxaV
	vkkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=B88upFd5sUCbzAlb6+v1WpNY+58fPoX5bKdSyzFEewI=;
	b=eD6wRL+aHmW3y5OBqQNhgDhmL/h5XCctEe30OTocmTVqZ+RGNGMhWQDxUL1lzztyxB
	dRxkukvCTnyj9FnRutUDGKo0qQUgtLsB7r8pvbAl9lsq0rL4l11FaS/5Wtf/YOwmwblq
	I6WFbWxgXp5uZ61kNCwlFdoPHBkX8h1+djlCHjHGRRSMJNJzi+nu5vQ/4TP3d/Oj/02X
	ek/iELuuKUY47t8Ir1qqd/d100v85or6OiL1YpEOCHqKSrxa6suRQzx2a7+fru9lCRmP
	YMGXhpdbZHpUtNOdmQ12fzcZ4cft/XqABSbpPlUTg0zfndfiQpJOQRLViEcqNB5Pcs78
	HzsA==
X-Gm-Message-State: AGRZ1gLvbTKYi0mDyNOvGGCLa54F9dOGZO/Etn6BOeH4EB5+lyCtR8Bj
	qy3HcDHeTZUuacKRXXOqNdR7y/tQPVM=
X-Google-Smtp-Source: AJdET5cIxy04avX9Vi56ODjubCdmtYYHZDqoV+46kX/dEb+5lv9QBMGJ1UqdAu5X6mf0eWa53XtC5A==
X-Received: by 2002:a1c:7617:: with SMTP id
	r23-v6mr3980008wmc.97.1540621500798; 
	Fri, 26 Oct 2018 23:25:00 -0700 (PDT)
Received: from localhost.localdomain ([195.11.164.221])
	by smtp.gmail.com with ESMTPSA id
	c24-v6sm21528848wre.44.2018.10.26.23.24.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Oct 2018 23:24:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Sat, 27 Oct 2018 07:24:54 +0100
Message-Id: <1540621496-21289-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/3] tpm2-abrmd: update to 2.0.2
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
X-List-Received-Date: Sat, 27 Oct 2018 06:25:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.0.1.bb => tpm2-abrmd_2.0.2.bb}      | 9 ++++-----
 .../{tpm2simulator-native_138.bb => tpm2simulator_138.bb}        | 0
 2 files changed, 4 insertions(+), 5 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_2.0.1.bb => tpm2-abrmd_2.0.2.bb} (86%)
 rename meta-tpm/recipes-tpm/tpm2simulator/{tpm2simulator-native_138.bb => tpm2simulator_138.bb} (100%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
similarity index 86%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
index 31e90f8..951556d 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
@@ -9,15 +9,16 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 
-DEPENDS += "autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss glib-2.0-native \
+DEPENDS = "autoconf-archive dbus glib-2.0 tpm2.0-tss glib-2.0-native \
             libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
 
+
 SRC_URI = "\
     git://github.com/01org/tpm2-abrmd.git \
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
-SRCREV = "80f8966b90d6394ad568e362d2936b333c2822bb"
+SRCREV = "d0120ace58d97bc9520c0d558657eaca87ae73b1"
 
 S = "${WORKDIR}/git"
 
@@ -34,9 +35,7 @@ USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "tss"
 USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
-PACKAGECONFIG ?="udev"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
-
+PACKAGECONFIG ?="${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --with-systemdsystemunitdir=no"
 
 do_install_append() {
diff --git a/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb b/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb
rename to meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb
-- 
2.7.4


