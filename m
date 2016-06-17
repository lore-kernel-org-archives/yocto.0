Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C576E00E72; Fri, 17 Jun 2016 13:30:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92DBCE00E67
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 13:30:39 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id m124so489373wme.3
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 13:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=aVaVjoJusCtAi5GA6Ru2qn0OeNM4pYCBUDIPCieIEmo=;
	b=JlLRgFWnf6DjzLXKnywfukmltHXDTB2ZyoZgVD0CZOxqZvb65CCsYJ4mD5tVFDgGOu
	rQikgHfCE+V2WJccoC0M2WPtuy43LWBA+qCPXfVu8YrlXbvCANOCSNv1cTRgZcCVmMgR
	Dp/Q6cOuWL36zVzAVjyHUds1e8BeC3NW8IATO6WsRjnq79pAULD54GpZ1q4Z7bVKFJaS
	eckQsbJ1FRdUF5Pf2sGCLTIKmDRdn5ov69Up5x8rnBc+vCHhYJUeQDsC2yOiQnf4frLh
	WS3fuL6KpXHVvVQcpUjOnuXOocn6jH/ReI9VuClX7phYzQcBEXmtXWETAHSYIB+WpHzw
	f/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aVaVjoJusCtAi5GA6Ru2qn0OeNM4pYCBUDIPCieIEmo=;
	b=O2zaoGqbJr/Wl6GoHS2R09RfdK91JbC2GS8AzXF66X/LRmKTmPRq7roAhmjefmbbfX
	EH2SNsyiPGweG7J8Ta7Jl7ozdoNz+wdZfM5z7ZoV/cLx3dvTO7oWLySb/LOTSICUixTd
	1h43hZZCIGoreljLKx/kh2pb2fB99X2nir48P8coD6I5e6+MhVewNwXWu4ow3c1GR4uk
	XMvEJu+0rJILr2s81StWBFfXN83iHOgdHVKxzQEF29IFumseJ832DoqH5hLVaalzJ+gC
	0/azmXGXhyXc4d3v/nX+jF7gnXDYiaOHCbfE9GfvdGH3JFcMUDBFoAF/4vksYEmO5pxR
	5hPA==
X-Gm-Message-State: ALyK8tI147L3+e3Xj3VxfavuvMnP4HRz4tIhxGCmbWMbPIthYGsVRTIbpkZfs07TXYfVLg==
X-Received: by 10.28.157.1 with SMTP id g1mr330574wme.34.1466195438900;
	Fri, 17 Jun 2016 13:30:38 -0700 (PDT)
Received: from amyr.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by smtp.gmail.com with ESMTPSA id
	x124sm330244wmg.24.2016.06.17.13.30.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 17 Jun 2016 13:30:37 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Jun 2016 13:30:30 -0700
Message-Id: <1466195431-5409-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 2.8.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Christopher Larson <chris_larson@mentor.com>
Subject: [meta-qt3][PATCH] qt-x11-free: obey LDFLAGS
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
X-List-Received-Date: Fri, 17 Jun 2016 20:30:45 -0000

From: Christopher Larson <chris_larson@mentor.com>

We need to obey LDFLAGS to get the correct hash style for external toolchains.

The ideal way to deal with this would be for the build to be like the qt4
build, obeying the OE_QMAKE_ variables as defined in qmake_base, but that's
not going to happen just now. The next best thing would be to pass '${CXX}
${LDFLAGS}' as the 'LINK' variable, but the plugin builds aren't using LINK,
so this resorts to brute force and appends LDFLAGS to CXX.

We'll eventually bump LSB support and drop qt3 anyway.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index a788cbe..6d23848 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -20,10 +20,16 @@ QT_CONFIG_FLAGS = "-release -shared -qt-zlib -no-nas-sound -no-sm -qt-libpng -no
 
 EXTRA_ENV = 'QMAKE="${OE_QMAKE_QMAKE} -after INCPATH+=${STAGING_INCDIR} \
              INCPATH+=${STAGING_INCDIR}/freetype2 LIBS+=-L${STAGING_LIBDIR}" \
-             QMAKESPEC="${QMAKESPEC}" LINK="${CXX} -Wl,-rpath-link,${STAGING_LIBDIR}" \
+             QMAKESPEC="${QMAKESPEC}" LINK="${CXX}" \
              AR="${TARGET_PREFIX}ar cqs" \
              MOC="${OE_QMAKE_MOC}" UIC="${OE_QMAKE_UIC}" MAKE="make -e"'
 
+# This isn't an ideal fix, but not everything is obeying the 'LINK' variable,
+# and the qt3 build isn't using a qmake.conf that obeys the OE_QMAKE_
+# variables. Rather than substantially reworking the qt3 build at this time,
+# just hack it. We'll eventually bump LSB support and drop qt3 anyway.
+CXX += "${LDFLAGS}"
+
 do_configure() {
 	if [ ! -L ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++ ]; then
 		ln -sf ${QMAKE_MKSPEC_PATH}/linux-g++ ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++
-- 
2.8.0


