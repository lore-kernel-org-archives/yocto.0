Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 405AFE00DF2; Thu, 29 Aug 2019 15:00:14 -0700 (PDT)
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
	*      [209.85.210.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FFE8E00C9C
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 15:00:12 -0700 (PDT)
Received: by mail-pf1-f182.google.com with SMTP id g2so3043264pfq.0
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 15:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=3ex/AJfqILANnQ/y1PAzFwK+naU0hmlKQi8fD2HDvFk=;
	b=kIPtye60LMRzb66VD4gEFCmw+pfGPUzIKJ7MQioEle8hs5G2YgLNCfWPn+LmLA7Ddy
	lf7SzDklawKptlHp8og6V2tIPoR1SOWZXoCqaonaYgr+cBPRaBvjSxfkz9YRl9LP04np
	jibU4v1+/MuZzEuJ1PQSdGkQ0kUZkfw7gVSMqf+GhK2G0EhGJBbdlvmWaup3Tofy3Jkd
	dpJ6fjlH8RahEfHO6NfputXkhTsymI1HcaEkHelALAxnzVrEcfAn79vaSwym0VzKl9xM
	9db6aCwrxMiIGbxi59czywqpnpQSnjut4UsamjJ4C9+z09A34fZ2EjuNc5nQuy7cN1KL
	PpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=3ex/AJfqILANnQ/y1PAzFwK+naU0hmlKQi8fD2HDvFk=;
	b=FnmCFgwJX5U16V5T8zY/g0go/TFqEIvwK/WnQw545zJ8JHDfKzzl9Ue5QNubFIyzF4
	7fhtKRxH+LcnWtJ7Hw0TyJPobydqT6ju/9em3VaFxmcveSehjWqWrztd7oDlVPixgwNE
	OgYo+8FjNxHkWt/jEDeetiPen7g4G0NLuH8JpSJ1ncKMq4XdVYPo/TEA4wv5FhA7F8LM
	jG4I7/z2fetVESZv21X0xpmzm9aVyO+sVDal1lx7A9eQHaaYOC/mCw2CbUYXjgWyrnUk
	fQ/Eq0AgLTC50tr+t+7R7l8FD5+fYP3N4AJTO34He0oX3KgkiKMF/mwNfUzF66PG9YI5
	4R8Q==
X-Gm-Message-State: APjAAAU6T6oRdRwkQuYbQD2PwFJDSvKpIyPFpm91wtz8vmbnSncsbgKy
	lb42Pd1Sh1yZ/97cNfX4A1vQs63W
X-Google-Smtp-Source: APXvYqztv82WSgzMn/aIlLkf4xgN7AGTSF74rCLS/mrqsHgTtsu6SBVHIaGFEiQOQvWuR92z3gzEuA==
X-Received: by 2002:a17:90b:342:: with SMTP id fh2mr28666pjb.21.1567116011615; 
	Thu, 29 Aug 2019 15:00:11 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id z6sm5853872pgk.18.2019.08.29.15.00.08
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 29 Aug 2019 15:00:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Aug 2019 15:00:07 -0700
Message-Id: <20190829220007.29751-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] python-scapy: drop py2 package
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
X-List-Received-Date: Thu, 29 Aug 2019 22:00:14 -0000

fixup run-ptest

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/scapy/files/run-ptest        |  2 +-
 recipes-security/scapy/python-scapy.inc       | 22 ---------------
 recipes-security/scapy/python-scapy_2.4.3.bb  | 11 --------
 recipes-security/scapy/python3-scapy_2.4.3.bb | 27 ++++++++++++++++---
 4 files changed, 25 insertions(+), 37 deletions(-)
 delete mode 100644 recipes-security/scapy/python-scapy.inc
 delete mode 100644 recipes-security/scapy/python-scapy_2.4.3.bb

diff --git a/recipes-security/scapy/files/run-ptest b/recipes-security/scapy/files/run-ptest
index 91b29f9..797d8ec 100644
--- a/recipes-security/scapy/files/run-ptest
+++ b/recipes-security/scapy/files/run-ptest
@@ -1,4 +1,4 @@
 #!/bin/sh
-UTscapy -t regression.uts -f text -l -C \
+UTscapy3 -t regression.uts -f text -l -C \
     -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
     2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
deleted file mode 100644
index 28e13f2..0000000
--- a/recipes-security/scapy/python-scapy.inc
+++ /dev/null
@@ -1,22 +0,0 @@
-SUMMARY = "Network scanning and manipulation tool"
-DESCRIPTION = "Scapy is a powerful interactive packet manipulation program. It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, match requests and replies, and much more. It can easily handle most classical tasks like scanning, tracerouting, probing, unit tests, attacks or network discovery (it can replace hping, 85% of nmap, arpspoof, arp-sk, arping, tcpdump, tethereal, p0f, etc.). It also performs very well at a lot of other specific tasks that most other tools can't handle, like sending invalid frames, injecting your own 802.11 frames, combining technics (VLAN hopping+ARP cache poisoning, VOIP decoding on WEP encrypted channel, ...), etc."
-SECTION = "security"
-LICENSE = "GPLv2"
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
-
-S = "${WORKDIR}/git"
-
-SRCREV = "3047580162a9407ef05fe981983cacfa698f1159"
-SRC_URI = "git://github.com/secdev/scapy.git"
-
-inherit ptest
-
-do_install_ptest() {
-    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
-    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
-}
-
-RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-cryptography ${PYTHON_PN}-netclient  \
-                  ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
-                  ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
diff --git a/recipes-security/scapy/python-scapy_2.4.3.bb b/recipes-security/scapy/python-scapy_2.4.3.bb
deleted file mode 100644
index 982620e..0000000
--- a/recipes-security/scapy/python-scapy_2.4.3.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-inherit setuptools
-require python-scapy.inc
-
-SRC_URI += "file://run-ptest"
-
-RDEPENDS_${PN} += "${PYTHON_PN}-subprocess"
-
-do_install_append() {
-        mv ${D}${bindir}/scapy ${D}${bindir}/scapy2
-        mv ${D}${bindir}/UTscapy ${D}${bindir}/UTscapy2
-}
diff --git a/recipes-security/scapy/python3-scapy_2.4.3.bb b/recipes-security/scapy/python3-scapy_2.4.3.bb
index abcaeeb..925f188 100644
--- a/recipes-security/scapy/python3-scapy_2.4.3.bb
+++ b/recipes-security/scapy/python3-scapy_2.4.3.bb
@@ -1,9 +1,30 @@
-inherit setuptools3
-require python-scapy.inc
+SUMMARY = "Network scanning and manipulation tool"
+DESCRIPTION = "Scapy is a powerful interactive packet manipulation program. It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, match requests and replies, and much more. It can easily handle most classical tasks like scanning, tracerouting, probing, unit tests, attacks or network discovery (it can replace hping, 85% of nmap, arpspoof, arp-sk, arping, tcpdump, tethereal, p0f, etc.). It also performs very well at a lot of other specific tasks that most other tools can't handle, like sending invalid frames, injecting your own 802.11 frames, combining technics (VLAN hopping+ARP cache poisoning, VOIP decoding on WEP encrypted channel, ...), etc."
+SECTION = "security"
+LICENSE = "GPLv2"
 
-SRC_URI += "file://run-ptest"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+S = "${WORKDIR}/git"
+
+SRCREV = "3047580162a9407ef05fe981983cacfa698f1159"
+SRC_URI = "git://github.com/secdev/scapy.git \
+           file://run-ptest"
+
+S = "${WORKDIR}/git"
+
+inherit setuptools3 ptest
 
 do_install_append() {
         mv ${D}${bindir}/scapy ${D}${bindir}/scapy3
         mv ${D}${bindir}/UTscapy ${D}${bindir}/UTscapy3
 }
+
+do_install_ptest() {
+    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
+    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
+}
+
+RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-cryptography ${PYTHON_PN}-netclient  \
+                  ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
+                  ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
-- 
2.17.1


