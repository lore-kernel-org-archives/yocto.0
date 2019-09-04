Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27287E00DD3; Tue,  3 Sep 2019 19:46:21 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA91DE00BF8
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 19:46:20 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id t11so2776622plo.0
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2019 19:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=J/7i+cH4RewpaBebQaSgTW+tB3qFYTXIBiyzRfEYCeQ=;
	b=RkMDZ36yVqn44VoRJFPaB7HIme90ABywqUlYzAGwmjcBA7cxehMaThRwV5oJY+03jM
	5loVCsA5fQwU6sPUXlz1vrB/B3+pWKLrwBtocAqRi90QQ9N3uiIzHru0+3HFDgJEBUU7
	lGF2PqydbF9JgEuQjCRTlpgkv1/pB7kz/o2CV0wa0Ay5Q8swj+iv7+HsUArtCBK+g+b5
	U/hnl5SnQOGkTvyivoZ+ga7Hpi4wDEH9J05o3q1NHmdeeiV/xS0sAZuBmCP2t1rYPteZ
	r4wiFnPa2gTgELdaGBRBhMO4xf9myjLhD04thT9dra7Mofx5LH/k8z3OMm12ItK453Ok
	uWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=J/7i+cH4RewpaBebQaSgTW+tB3qFYTXIBiyzRfEYCeQ=;
	b=GdYWUJ45v9v1XfuGfEpmbPWMotnxJnZSZasGqcWZJ+2mckQWud+JUevTWhsn6Iq6sg
	CPKsQEBG6iJyaP9vx1MDWTZzKkrjg07C2Tm56GXS3aNCLBQWyAYiTA9q0F889D07nuhB
	7qv22SqQWJyhrEd+BDzkrsu1DDrjBTUGL/AQLrShQh19gaxvBDxhyTKWXX15TXLpLH83
	c5lrVBq4tIhxQP0ffLid6mJVq78+WCqoeSquRwIE72x5D2gHq1S2uzSBmhCHdQXJvhdQ
	JSU8ChicFls4M/t8NU9YAoRSa9Buf1Nkx3ecK8VuKEuE3Ft/GxoY7ZtfrYRK20arAMHP
	daQg==
X-Gm-Message-State: APjAAAWdU/lrnrXgEWc5KUb2NPg1tir6z6UfHBW5uWK+7sMZfuFSmSVF
	tVxJOy+d3y9BgjbOP7x9MSZjPpNE
X-Google-Smtp-Source: APXvYqz00VDnmi9nPnIzGE4m0xcCc/eKpC5VRzdvVai9KuP/hYgoMGmQ9H1J0aaNKxeyqcxcUUiqPw==
X-Received: by 2002:a17:902:7085:: with SMTP id
	z5mr38670091plk.102.1567565180191; 
	Tue, 03 Sep 2019 19:46:20 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n10sm18262976pgv.67.2019.09.03.19.46.19 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 03 Sep 2019 19:46:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Sep 2019 19:46:13 -0700
Message-Id: <20190904024614.17530-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] openscap: Drop nostamp
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
X-List-Received-Date: Wed, 04 Sep 2019 02:46:21 -0000

add cleandir depends to do_install task

This nostamp is causing issues with the yocto-check-layer when checking
hash changes.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-openscap/openscap/openscap.inc                   | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index ed8d8ff..afa576a 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -40,15 +40,14 @@ do_configure_append_class-native () {
     sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
 }
 
-do_clean[cleandirs] += "${STAGING_OSCAP_BUILDDIR}"
-do_install[nostamp] = "1"
-
+do_install_class-native[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
 do_install_append_class-native () {
     oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
     install -d $oscapdir
     cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
 }
 
+
 FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
 RDEPENDS_${PN} += "libxml2 python3-core libgcc bash"
-- 
2.17.1


