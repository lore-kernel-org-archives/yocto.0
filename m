Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CAC8E00BD5; Sun, 10 Feb 2019 09:07:06 -0800 (PST)
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
	*      [209.85.215.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04A7E00B92
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2019 09:07:04 -0800 (PST)
Received: by mail-pg1-f175.google.com with SMTP id v28so3857258pgk.10
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2019 09:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=mNkpKawBwdoc8lLuz8tMzU7069eoTZnjjmhrZ8ihChs=;
	b=JCu2E9WTHkMLRfjWojQ0DHa57ZVvCrqCRzmWx2eOUIlRywyXqjWywD0wC1xKn3iuMP
	hjIqQt7ueauZRBOw8/RP1muiZ78JjwcCvyl4AtKMskM/9LM9GaJWkc/ENbrLqfm4A3zg
	wNUd6m+82JAEpHDq94GSQ7xMAPJF2BfhOgPfnolGrJnnWItO6+x5aligb9RghvBoAEn4
	Lks6uWByq6Vuezg/rqQRNHpAuoDeAqamgw5TSi1W+4egHw1lfrOfCTkDZYfYZzl3EIuf
	IF4NNrh5yt13N6gsGWZqp8CpbvJDv7iEDrEcey5IGmWOyIX8BLY69OuLA2bA//gD7s/n
	zo+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=mNkpKawBwdoc8lLuz8tMzU7069eoTZnjjmhrZ8ihChs=;
	b=PANodRpZ0D6a3f8UNsnxM06xMCHZgUd3oXKvAivpcMy51W0xQEOpblZ3/UBQppeFmy
	0jPSb+e89Q/wjiyc3Bw3if871qk7FoBMMMvo1vy2jmO0g9U0EvxffGawCDpcjakbbMTo
	DQ8ia1cmyZJ4F23303waU2sauJbiYKz5BAuHujSbRPWycrLOTVUmlEwZW3+BiSidZ5NX
	6jSrxJeZb7DyyF/LaRAp/j47mff8LSLuIPTMCIycgUwmsV0PIkuURXT9V6pcLSZCIOeY
	VeVsARv4Gjqvm31l/GI2OmtodDypdeON1ydc/7JWL+2hUsXCHZ1jXb7iqzaYjkP/teKz
	ddyg==
X-Gm-Message-State: AHQUAuZuKia11g6VMf2kfdF/CKKoWonDlVzuWLJwueI4q9XCKZ2Ofs22
	hDz9vQa3d7Li2ItPhSaCMNLHCtoqn68=
X-Google-Smtp-Source: AHgI3Ia7HXqhPWMU8B6b0LrFE2DM7NVRlDEgay2/yU2lRzh4AQz/a3TmuR4ZiI+OMu6GEnuGtJOqOQ==
X-Received: by 2002:a62:9fd9:: with SMTP id v86mr32652015pfk.191.1549818423824;
	Sun, 10 Feb 2019 09:07:03 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	z15sm10144091pgc.77.2019.02.10.09.07.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 10 Feb 2019 09:07:03 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2019 09:07:01 -0800
Message-Id: <20190210170702.24929-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] scapy: restore ptest by going to github directly
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
X-List-Received-Date: Sun, 10 Feb 2019 17:07:06 -0000

The pypi package removed the tests so
go to the git repo directly.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/scapy/files/run-ptest        |  4 ++++
 recipes-security/scapy/python-scapy.inc       | 13 ++++++++++---
 recipes-security/scapy/python-scapy_2.4.2.bb  |  2 ++
 recipes-security/scapy/python3-scapy_2.4.2.bb |  3 +++
 4 files changed, 19 insertions(+), 3 deletions(-)
 create mode 100644 recipes-security/scapy/files/run-ptest

diff --git a/recipes-security/scapy/files/run-ptest b/recipes-security/scapy/files/run-ptest
new file mode 100644
index 0000000..91b29f9
--- /dev/null
+++ b/recipes-security/scapy/files/run-ptest
@@ -0,0 +1,4 @@
+#!/bin/sh
+UTscapy -t regression.uts -f text -l -C \
+    -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
+    2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index 43ef959..99f30a7 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -5,10 +5,12 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
 
-SRC_URI[md5sum] = "e6a03d8c924a6bbde1e86fc58bd2b9d6"
-SRC_URI[sha256sum] = "1baa048936207ceb1a4281a0e1e3b4317667c754872a0bb4734c5213c468e86a"
+S = "${WORKDIR}/git"
 
-inherit pypi
+SRCREV = "bad14cb1a5aee29f8107fbe8ad008d4645f14da7"
+SRC_URI = "git://github.com/secdev/scapy.git"
+
+inherit ptest
 
 do_install_append() {
     if [ "${PYTHON_PN}" = "python3" ]; then
@@ -17,6 +19,11 @@ do_install_append() {
     fi
 }
 
+do_install_ptest() {
+    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
+    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
+}
+
 RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-cryptography ${PYTHON_PN}-netclient  \
                   ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
                   ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-security/scapy/python-scapy_2.4.2.bb
index ea8764a..98db1fd 100644
--- a/recipes-security/scapy/python-scapy_2.4.2.bb
+++ b/recipes-security/scapy/python-scapy_2.4.2.bb
@@ -1,4 +1,6 @@
 inherit setuptools
 require python-scapy.inc
 
+SRC_URI += "file://run-ptest"
+
 RDEPENDS_${PN} += "${PYTHON_PN}-subprocess"
diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-security/scapy/python3-scapy_2.4.2.bb
index 34eb2a3..83c79f4 100644
--- a/recipes-security/scapy/python3-scapy_2.4.2.bb
+++ b/recipes-security/scapy/python3-scapy_2.4.2.bb
@@ -1,2 +1,5 @@
 inherit setuptools3
 require python-scapy.inc
+
+SRC_URI += "file://run-ptest"
+
-- 
2.17.1


