Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52FCAE00D0E; Fri, 18 Jan 2019 05:12:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88746E00CF1
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 05:12:45 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id j2so15079249wrw.1
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 05:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=UxGTjt7eCEbfJS+hbvYrgvweekjqcNxJt/wzZISJ054=;
	b=tE5hzBiQuI9k+4XOKEyMXS2iNqHlpmTaN44ZjbwaCGwAcgPgXQpRiguwnV2GBXKviQ
	S4kcWn3yjm2EGEh4YpMQ5pAW8Wz7GrH1htqvpioZQ+JjcDzUNPxasb04OAA2LxJNCM+e
	mq6FiV0WITswX4dFaA6FT3lrIjd4RqHk1aDiJWU8dRFn9V7O0T6ik2KsYfwiV2Qkxl7j
	HJQpslKIHERCZsuPNGPd10ilvZRj07pI7uodSdaIniPsYuBnrIsMlPTOey+BzP3AtHqE
	XlUufmKR0QBwbSkA44o2JhDz1wbBRZ4Sra7N4Xr6/FtFxcYxg+bqRaqRwsnSi9W0HX7m
	sXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=UxGTjt7eCEbfJS+hbvYrgvweekjqcNxJt/wzZISJ054=;
	b=Yjt+Jk4pO/U9L6/o3Meg4RLlhFQNA264p+0ahiFEa0cWfHIJezv8js/vGs3aCAWXJ0
	zaJCJ5woRY6sq10R+D2ORNwij9dg1H3mF0cmCQT/kvwUbNyfzszr/rMFEz/ZPDsweqM/
	UAxmnF/gl6Tdg85kGtyqAOO1MM1S/H7yYfmrXNRAwM5ShR8eLA/pM2CMLqyIl4magQEd
	UdlHxEkT5CVZ4NZ8h4LRh1gvgQdNO2A8i1IIiyacwfbjJy8PRL+AB2EUjipDUxsWAptw
	5PMIpV5MVr6vAgNkyvxxBSTubzr1zc7NTCQOr00ur4chMdLSYPqfXrFun1ZgctEJNNEj
	aSHQ==
X-Gm-Message-State: AJcUukffNCGWCORnqyrYsawhTHMTQ1dEicS292YVclxoHZiVp1b1XQpi
	Jqmd/EAwb2yCHHPIm3cJcqk6V7UzmfM=
X-Google-Smtp-Source: ALg8bN7+w5L6236MF50NvqjzMPubTHoiA2bsJMVoHeWimiAiTRsrSMuYlnJn0aSby1tJ48m3FzImkQ==
X-Received: by 2002:adf:f401:: with SMTP id g1mr16966234wro.103.1547817164369; 
	Fri, 18 Jan 2019 05:12:44 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	p139sm81320004wmd.31.2019.01.18.05.12.42 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Jan 2019 05:12:43 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Jan 2019 13:12:39 +0000
Message-Id: <20190118131239.10567-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH] apparmor: fix Python install paths when target libdir != native libdir
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
X-List-Received-Date: Fri, 18 Jan 2019 13:12:46 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb      |  4 ++--
 recipes-security/AppArmor/files/py-libdir.patch | 13 +++++++++++++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 1e3a223..073b62d 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -80,9 +80,9 @@ do_install () {
 	install -d ${D}/${INIT_D_DIR}
 	install -d ${D}/lib/apparmor
 		
-	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
+	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" PYLIBDIR=${PYTHON_SITEPACKAGES_DIR} install
 	oe_runmake -C ${B}/binutils DESTDIR="${D}" install
-	oe_runmake -C ${B}/utils DESTDIR="${D}" PYLIBDIR=${libdir} install
+	oe_runmake -C ${B}/utils DESTDIR="${D}" PYLIBDIR=${PYTHON_SITEPACKAGES_DIR} install
 	oe_runmake -C ${B}/parser DESTDIR="${D}" install
 	oe_runmake -C ${B}/profiles DESTDIR="${D}" install
 
diff --git a/recipes-security/AppArmor/files/py-libdir.patch b/recipes-security/AppArmor/files/py-libdir.patch
index fc617fb..2b88e54 100644
--- a/recipes-security/AppArmor/files/py-libdir.patch
+++ b/recipes-security/AppArmor/files/py-libdir.patch
@@ -4,6 +4,19 @@ python3-native's idea of $libdir may not match the target's $libdir.
 Upstream-Status: Pending
 Signed-off-by: Ross Burton <ross.burton@intel.com>
 
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
 diff --git a/utils/Makefile b/utils/Makefile
 index 68f8c376..025f9da5 100644
 --- a/utils/Makefile
-- 
2.11.0


