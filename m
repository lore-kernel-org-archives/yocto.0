Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB506E0076C; Thu, 10 Jul 2014 07:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7846E0059F
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:46 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lj1so11200234pab.15
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=5k1rn602jDmPKvWPrFrEB8dcdglVbJ63rbWJz1oDzHs=;
	b=akRRak+dPEFR4NojdIGR6h0R4cBNQmmSsQqX8rC5mMgfC2XN5BugeGiefRHDeHKlJ4
	Ja+aJHmQ1f/NhxbkrSp2laoxH5q4JodhYipPaWGddP1euysoE9RslwdBGBo6txEpYK/p
	vNSzc7Ookuucab8THo4wCvWcrxaHQnM990tKF1g9cle7lYj/RkeXF/cB1AU1s1Orb0p+
	UFh8eDx+hE+zjjgOJJFWzY/H4qU5KxWMc1CyPKBqNEdsJhIhiv2mm3+Ja5NlMeqsGPpP
	idPSWzfffnbI8JKUdEJ1xcnMzM2XX4UbW1i5MUJpCutFzPKxC9IRzRLuuJlQP7TJ2eNI
	RYtw==
X-Gm-Message-State: ALoCoQkk6PFyc8CwdxWB0F0zLNHChvVvTawBqL0puuz8HV2gS5Q84cY41EITRa49A29akANWIxVM
X-Received: by 10.68.245.162 with SMTP id xp2mr37492648pbc.69.1405002646039;
	Thu, 10 Jul 2014 07:30:46 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	ek2sm62152507pbd.30.2014.07.10.07.30.44 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 10 Jul 2014 07:30:45 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jul 2014 07:30:31 -0700
Message-Id: <1405002633-2125-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1405002633-2125-1-git-send-email-akuster@mvista.com>
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
Subject: [meta-security][PATCH 1/3] packagegroup: Add initial set of package groups
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
X-List-Received-Date: Thu, 10 Jul 2014 14:30:59 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../packagegroup/packagegroup-core-security.bb     | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 recipes-security/packagegroup/packagegroup-core-security.bb

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
new file mode 100644
index 0000000..1acc4a9
--- /dev/null
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -0,0 +1,45 @@
+DESCRIPTION = "Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-core-security \
+    packagegroup-security-utils \
+    packagegroup-security-scanners \
+    "
+
+RDEPENDS_packagegroup-core-security = "\
+    packagegroup-security-utils \
+    packagegroup-security-scanners \
+    "
+
+SUMMARY_packagegroup-security-utils = "Security utilities"
+RDEPENDS_packagegroup-security-utils = "\
+    nmap \
+    libseccomp \
+    pinentry \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
+    "
+
+SUMMARY_packagegroup-security-scanners = "Security scanners"
+RDEPENDS_packagegroup-security-scanners = "\
+    nikto \
+    checksecurity \
+	"
+
+SUMMARY_packagegroup-security-audit = "Security Audit tools "
+RDEPENDS_packagegroup-security-audit = " \
+    buck-security \
+    redhat-security \
+    "
+
+SUMMARY_packagegroup-security-hardening = "Security Hardening tools"
+RDEPENDS_packagegroup-security-hardening = " \
+    bastille \
+    "
+
-- 
1.9.1


