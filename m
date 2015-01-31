Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB498E0092E; Sat, 31 Jan 2015 14:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F9DE00779
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 14:49:57 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id rd3so66509081pab.9
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 14:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=0X6+1svLX/N2oBrBdgV4yrauPb6psFVQejZR35El688=;
	b=rjfO1ESs/1wzo/UuXljupDn8pe1Rs9+TyoaPJkPFE7nn00wORXPvGNz/D+uApGD1ez
	3ON6dSVxPZ5tiX/IoY01dk1fbWhaci5DHKZ/IoeC+zPKn3vJ+B8R2K9hUArGA71tp05M
	1v33PsPbG+Xk+JDMpd3ZvS8O4CaH6f5Ag6keGmekeBSlS2re77WVc/1YnKp+d1C6aMCe
	npLorZkZpsiy0VYPNiF8XmxTrUM+G3FcJ68TVAv1Et8ztOLrduP/xA8wjEj/0jd0YjP4
	C7qx6qU2v1cKAOwsVhm83fQkKpVXQSw1fAMl72vd/nhnJpvL0/FFPE0jFhqNJoIUG2zt
	n8FQ==
X-Received: by 10.70.109.136 with SMTP id hs8mr18574817pdb.139.1422744596109; 
	Sat, 31 Jan 2015 14:49:56 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	a10sm14595329pdl.61.2015.01.31.14.49.54 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 31 Jan 2015 14:49:55 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 31 Jan 2015 14:49:49 -0800
Message-Id: <1422744590-31122-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/2] libmspack: add new package
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
X-List-Received-Date: Sat, 31 Jan 2015 22:50:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libmspack/libmspack_0.4.bb | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 recipes-security/libmspack/libmspack_0.4.bb

diff --git a/recipes-security/libmspack/libmspack_0.4.bb b/recipes-security/libmspack/libmspack_0.4.bb
new file mode 100644
index 0000000..5d2061d
--- /dev/null
+++ b/recipes-security/libmspack/libmspack_0.4.bb
@@ -0,0 +1,16 @@
+SUMMARY = "A library for Microsoft compression formats"
+HOMEPAGE = "http://www.cabextract.org.uk/libmspack/"
+SECTION = "lib"
+LICENSE = "LGPL-2.1"
+DEPENDS = ""
+
+LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b3c8a5bb00a72a28dd"
+
+SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.gz\
+"
+SRC_URI[md5sum] = "1ab10b507259993c74b4c41a88103b59"
+SRC_URI[sha256sum] = "b7958983f60cbec40d48ef87520210f9d8e2672a57a5ce0a2187b3d4fb2f5c68"
+
+inherit autotools
+
+S = "${WORKDIR}/${BP}alpha"
-- 
1.9.1


