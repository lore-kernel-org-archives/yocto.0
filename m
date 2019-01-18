Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B507E00D15; Fri, 18 Jan 2019 05:14:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8601E006F1
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 05:14:05 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id r10so14969079wrs.10
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 05:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=9CAcyyUx6oDfgc/Dk0oJZPdTXWiZ/5pqEWw5NlmSjAc=;
	b=xDcIOZLcGZRKc+I2yCrWGHGWbabqoZzrnpMDQR2pUfscHY+0UKy+iPXehE85ONwLry
	gxI8uuCJAFElpPtumLaiR6ntSe3mHH8Q+7iHFoVxAPWzR6BEOz4ug2XX5MQ0ysKPyMw9
	MkSbeKR4D2TVfOuv3pQzFK051rwXzN0q8vWx/3ZbLPRph1PrPMILiFTlKBX+vfflbr26
	zSjo/Z8aPXtYvU1fvRDwBMP9elYx6+JA9drj+Qy77O7aOKXWO5zwH4Bi5k6eCq47g0xi
	lQIRo4gy0AkYRsqCdLcScjaw/tylycVPX6Rl5J/K3rDpQNvlRWc7xsrCsDM3X+WfKjAj
	VisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=9CAcyyUx6oDfgc/Dk0oJZPdTXWiZ/5pqEWw5NlmSjAc=;
	b=aYQ3Qk0zNPnqFBXLusovp5TiWb2nqjDIiCA+3sbN0ZngV1SFknEEfJz04ak08BDyCB
	pYFXizz/LhH7eWGw206axvghL7/0Lh7A1GyVwhMZaWPes15cj99yv4u4rvbyOkF7AkwS
	NgWEaGx00fTWbU6uKLPDAgtV9dj/1xK9V1Hsme74uEW5TCjekog1QPVdlESTR2Z90DrM
	kssRIZxNpOw19iDlGgQDvMoAt2CnszlImgv+p3r7XxBDdr4G0cmzm99cEAObaPOqnwxK
	B9CFXsuaFTmx/0cYx/XzkaadIo2ToKUUdjAA5ZRqjPBoD6sZmDBipi5AElm1OR8lwMmS
	sqQA==
X-Gm-Message-State: AJcUukdZfC2smjBX06z7IWHNc+a5Bertn3VENtedtkL9l7N45jVwsF7G
	1OPZi8/9JD8nEfR6S2cHVAk9IFq2tlE=
X-Google-Smtp-Source: ALg8bN7XIgy4vid+G+C/xT2MKkXZ5XPeA8ZtSnf1abH9jBwdq54Qi+1/1vcH7Hf1h5P3x5LXaBSDNQ==
X-Received: by 2002:adf:91a3:: with SMTP id 32mr14974389wri.99.1547817244098; 
	Fri, 18 Jan 2019 05:14:04 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	c1sm34743487wmb.14.2019.01.18.05.14.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Jan 2019 05:14:03 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Jan 2019 13:14:00 +0000
Message-Id: <20190118131400.23302-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH v2] apparmor: fix Python install paths when target libdir != native libdir
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
X-List-Received-Date: Fri, 18 Jan 2019 13:14:07 -0000

setuptools will install into what python3-native thinks $libdir is, which may
not match the target $libdir.  Pass in libdir as appropriate to force the
correct paths.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb      |  5 ++--
 recipes-security/AppArmor/files/py-libdir.patch | 40 +++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/AppArmor/files/py-libdir.patch

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index efa93e6..073b62d 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -18,6 +18,7 @@ SRC_URI = " \
 	file://disable_perl_h_check.patch \
 	file://crosscompile_perl_bindings.patch \
 	file://tool-paths.patch \
+	file://py-libdir.patch \
 	file://apparmor.rc \
 	file://functions \
 	file://apparmor \
@@ -79,9 +80,9 @@ do_install () {
 	install -d ${D}/${INIT_D_DIR}
 	install -d ${D}/lib/apparmor
 		
-	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
+	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" PYLIBDIR=${PYTHON_SITEPACKAGES_DIR} install
 	oe_runmake -C ${B}/binutils DESTDIR="${D}" install
-	oe_runmake -C ${B}/utils DESTDIR="${D}" install
+	oe_runmake -C ${B}/utils DESTDIR="${D}" PYLIBDIR=${PYTHON_SITEPACKAGES_DIR} install
 	oe_runmake -C ${B}/parser DESTDIR="${D}" install
 	oe_runmake -C ${B}/profiles DESTDIR="${D}" install
 
diff --git a/recipes-security/AppArmor/files/py-libdir.patch b/recipes-security/AppArmor/files/py-libdir.patch
new file mode 100644
index 0000000..2b88e54
--- /dev/null
+++ b/recipes-security/AppArmor/files/py-libdir.patch
@@ -0,0 +1,40 @@
+Let the user override the Python libdir so it goes to the right place, as
+python3-native's idea of $libdir may not match the target's $libdir.
+
+Upstream-Status: Pending
+Signed-off-by: Ross Burton <ross.burton@intel.com>
+
+diff --git a/libraries/libapparmor/swig/python/Makefile.am b/libraries/libapparmor/swig/python/Makefile.am
+index 421acba9..d2b842a6 100644
+--- a/libraries/libapparmor/swig/python/Makefile.am
++++ b/libraries/libapparmor/swig/python/Makefile.am
+@@ -14,7 +14,7 @@ all-local: libapparmor_wrap.c setup.py
+ 	$(PYTHON) setup.py build
+ 
+ install-exec-local:
+-	$(PYTHON) setup.py install --root="/$(DESTDIR)" --prefix="$(prefix)"
++	$(PYTHON) setup.py install --root="/$(DESTDIR)" --prefix="$(prefix)" --install-lib="$(PYLIBDIR)"
+ 
+ clean-local:
+ 	if test -x "$(PYTHON)"; then $(PYTHON) setup.py clean; fi
+diff --git a/utils/Makefile b/utils/Makefile
+index 68f8c376..025f9da5 100644
+--- a/utils/Makefile
++++ b/utils/Makefile
+@@ -42,6 +42,7 @@ DESTDIR=/
+ BINDIR=${DESTDIR}/usr/sbin
+ CONFDIR=${DESTDIR}/etc/apparmor
+ PYPREFIX=/usr
++PYLIBDIR=$PYPREFIX/lib
+ 
+ PYFLAKES=pyflakes
+ 
+@@ -60,7 +61,7 @@ install: ${MANPAGES} ${HTMLMANPAGES}
+ 	$(MAKE) install_manpages DESTDIR=${DESTDIR}
+ 	$(MAKE) -C vim install DESTDIR=${DESTDIR}
+ 	ln -sf aa-status.8 ${DESTDIR}/${MANDIR}/man8/apparmor_status.8
+-	${PYTHON} ${PYSETUP} install --prefix=${PYPREFIX} --root=${DESTDIR} --version=${VERSION}
++	${PYTHON} ${PYSETUP} install --prefix=${PYPREFIX} --install-lib=${PYLIBDIR} --root=${DESTDIR} --version=${VERSION}
+ 
+ .PHONY: clean
+ ifndef VERBOSE
-- 
2.11.0


