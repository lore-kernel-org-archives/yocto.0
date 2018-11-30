Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80C2CE00C71; Fri, 30 Nov 2018 07:35:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FD0AE00C3D
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2018 07:35:09 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id y1so6207156wmi.3
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2018 07:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=pMgCR4t/yalzmxgGHbsJpnn/yxrcEkkx4hggFHyWTho=;
	b=dbhXODsDNYQd0EL02/lZy2yRcjqMH5z0iReB4qF4rPAI/fZxAoWCRvd8GoELldtmy5
	Xey31+QSuCSVXnMUNnXzmU3eXlEKIlqI20FE5tgNnSmxEaK7OXPh8XMnCvr4kSE2Isay
	Jsp6Bn9abBl+AVtZ9uArk2levrRWmKx5F979x2MxXio/9pk7btAMZmGZ0qolDcKtut0J
	T+NPIsuo7LoEPTIGzmO4FmB3wAl6vZM0pm3f96QVnAC5zo7kkM1y6A0djI7T+Uq7OdD/
	5nJBTp7D1M6oXKxFEK6A18ukWoM8EA8V5I6NiZot13EYMaGOA2/jYEYnyoG0069JjG9b
	sgeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=pMgCR4t/yalzmxgGHbsJpnn/yxrcEkkx4hggFHyWTho=;
	b=ULXrAXpIC4QmrLrez9twUc6My1u+uLg20CAU88FLFYsYT9SPF19jus4VSmHGZxqtSF
	C7NOLGnuH9ngdABiOOlv8VmfaM2oU1GU6069UGozWH0kt32eXebhBtPGetaqIQW92v6i
	VXKW269VUEh5qMMRtMZ/D1aMwamyrOGvcIe5GTSu1EH81hdm5LqWWG7PfhUV6HPe+M9S
	sLWyMYCZiR9O83y+or/L/eM3lVbqNjfd87SajkG1T1KY1cEbtuNuVUJ4lTxKZcKeOVOG
	Sl1e9fvy/hC6BkiKjHhL2ZQS0bL3mgbJmx8p6hKAeqdnPzH9iUFISDq5J2WT8ydqteLd
	vqhA==
X-Gm-Message-State: AA+aEWa8/u0CXsrAqKJ4pQn3VdcdxXoiLGGYsv9tK/o4ZfCuEkAipnCR
	3Hh0O1qzVhaU5HZx8qJYdLOgM0RfJP4=
X-Google-Smtp-Source: AFSGD/Wi0gBwovLbAb8GosDV4HdNaTAAilQ/+73ioiOFD1IDcY/AJI3+Hr3NiS73aq0PAC1lV/8h8g==
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr5589461wme.17.1543592107832; 
	Fri, 30 Nov 2018 07:35:07 -0800 (PST)
Received: from mueller-a-nb-linux.zera.local (p509737a3.dip0.t-ipconnect.de.
	[80.151.55.163]) by smtp.gmail.com with ESMTPSA id
	f15sm3854014wrt.10.2018.11.30.07.35.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 30 Nov 2018 07:35:07 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2018 16:34:59 +0100
Message-Id: <20181130153459.28202-1-schnitzeltony@gmail.com>
X-Mailer: git-send-email 2.14.5
MIME-Version: 1.0
Subject: [PATCH][meta-qt4] sip: re-add 4.19
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
X-List-Received-Date: Fri, 30 Nov 2018 15:35:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

* Haven't tested this but it seems unlikely that python-pyqt builds properly
  with '--sip-module PyQt5.sip' in meta-oe's sip
* I plan to move reworked sip to meta-qt5 and remove meta-oe's version
* remove FILES_${PN} - not necessary
* add "STRIP="" for native configure to avoid 'already stripped' warning
* tested build of python-pyqt

Signed-off-by: Andreas Müller <schnitzeltony@gmail.com>
---
 recipes-qt4/recipes-python/sip_4.19.bb | 41 ++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 recipes-qt4/recipes-python/sip_4.19.bb

diff --git a/recipes-qt4/recipes-python/sip_4.19.bb b/recipes-qt4/recipes-python/sip_4.19.bb
new file mode 100644
index 0000000..b43c2d2
--- /dev/null
+++ b/recipes-qt4/recipes-python/sip_4.19.bb
@@ -0,0 +1,41 @@
+SUMMARY = "SIP is a C++/Python Wrapper Generator"
+HOMEPAGE = "http://www.riverbankcomputing.co.uk/sip"
+SECTION = "devel"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://LICENSE-GPL2;md5=e91355d8a6f8bd8f7c699d62863c7303"
+
+inherit python-dir
+
+DEPENDS = "python"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/pyqt/sip/sip-${PV}/sip-${PV}.tar.gz"
+SRC_URI[md5sum] = "be51a05065c9323b98a2ec2966c64e6a"
+SRC_URI[sha256sum] = "014bf55f653e0d8bcc582705ef4fbd61e0859a36e959ab46d8fa060cdf0b5e27"
+
+BBCLASSEXTEND = "native"
+
+PACKAGES += "python-sip"
+
+do_configure_prepend_class-target() {
+    echo "py_platform = linux" > sip.cfg
+    echo "py_inc_dir = %(sysroot)/${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
+    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
+    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
+    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
+    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
+    python configure.py --configuration sip.cfg --sysroot ${STAGING_DIR_HOST} CC="${CC}" CXX="${CXX}" LINK="${CXX}" STRIP="" LINK_SHLIB="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" LFLAGS="${LDFLAGS}"
+}
+do_configure_prepend_class-native() {
+    echo "py_platform = linux" > sip.cfg
+    echo "py_inc_dir = ${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
+    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
+    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
+    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
+    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
+    python configure.py --configuration sip.cfg --sysroot ${STAGING_DIR_NATIVE} STRIP=""
+}
+do_install() {
+    oe_runmake install
+}
+
+FILES_python-sip = "${libdir}/${PYTHON_DIR}/site-packages/"
-- 
2.14.5


