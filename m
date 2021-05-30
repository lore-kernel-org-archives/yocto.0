Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.34162.1622395109141093807
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 10:18:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+gqaU4x;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id h12so4021414plf.11
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 10:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WNqFITFLI60eF1lSrMfz8T2xNPrw/Q6lWlAPQt+hmIU=;
        b=U+gqaU4xW8b/vHB0c3t8GvlNQ/Lf8t6tXeLOOZ6Fxtgsntp9dCIpZqAVVOCOxCVDkD
         3qcaobdmoT4l3DVL220C7qhjNmXuPSzmOAYzLeUWgsqOuEXPGoIEdOPpJoRS1KlDBPEw
         tABD0J0gPsacZ/IopbFs2ugPHSrplua2Sap1NCLF538upf6swVmKwpp/IkSNAxOEG3Kf
         D/AVZ1AoS4L+C4f33hAmBvsEyIB42Qo2l+tFUDYpprGkRe4xo4aZRy0IpGyPenUYH7EJ
         YlRbsfebPpD4CDFWLVnhkiNsTmUiz+IV0/uLbv2cE9cwH15l0xCJhxgOhEMbdCATgq7h
         XE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WNqFITFLI60eF1lSrMfz8T2xNPrw/Q6lWlAPQt+hmIU=;
        b=Iq+yI2MG9xqaWr/QewGncfyLJizJu3ZeY6fP5gdNib9BtCZfMFHCIftVOgWQVl1y3h
         qxu+bdEiGJCPBoRB/tMOZVw5N0qNFzy1ehxTww1wWphOJOya8gnbmi8Mvn6JNKsecUyg
         AIfRbRLycW+8gh7vyCCWr1WgdtIV9/44UVhkO8T2HxrL/QkD9G0JeWldKMLPfPvbeupu
         kSwwwXC9Sd/RxHiPci32lLgcBIDPPlYuMFVX1c+XUYyTyJozT76BEc2r2Y7bCLCl5XIQ
         1osXEC/jNzKrn45hHOpT3f+t2PCqUJXPdXpfzKwVrlgYgQXe04nK3pTtnTgM1RM54lG5
         Wskg==
X-Gm-Message-State: AOAM532+WJHy64vtXpmpSkgZ6CMOKAUN1Iv++tnjNASB2dHRPgg6OHh3
	eo1x81yCQE93Eskiw8ZWwGbc2bO9QPdlkA==
X-Google-Smtp-Source: ABdhPJyGymeh1XPFbJpjmWp/ldyzO0WsKa18IgleyXbBAt00TWW1IHd9WPqY/3ovWM8a7+k9HFL0pQ==
X-Received: by 2002:a17:902:aa95:b029:fd:8e4a:f341 with SMTP id d21-20020a170902aa95b02900fd8e4af341mr16764934plr.78.1622395108531;
        Sun, 30 May 2021 10:18:28 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x1sm8572548pjk.37.2021.05.30.10.18.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 10:18:28 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/5] python3-scapy: drop , now in meta-python
Date: Sun, 30 May 2021 17:18:23 +0000
Message-Id: <20210530171824.571143-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20210530171824.571143-1-akuster808@gmail.com>
References: <20210530171824.571143-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/scapy/files/run-ptest        |  4 ---
 recipes-security/scapy/python3-scapy_2.4.5.bb | 30 -------------------
 2 files changed, 34 deletions(-)
 delete mode 100644 recipes-security/scapy/files/run-ptest
 delete mode 100644 recipes-security/scapy/python3-scapy_2.4.5.bb

diff --git a/recipes-security/scapy/files/run-ptest b/recipes-security/scapy/files/run-ptest
deleted file mode 100644
index 797d8ec..0000000
--- a/recipes-security/scapy/files/run-ptest
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-UTscapy3 -t regression.uts -f text -l -C \
-    -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
-    2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
diff --git a/recipes-security/scapy/python3-scapy_2.4.5.bb b/recipes-security/scapy/python3-scapy_2.4.5.bb
deleted file mode 100644
index 8f36520..0000000
--- a/recipes-security/scapy/python3-scapy_2.4.5.bb
+++ /dev/null
@@ -1,30 +0,0 @@
-SUMMARY = "Network scanning and manipulation tool"
-DESCRIPTION = "Scapy is a powerful interactive packet manipulation program. It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, match requests and replies, and much more. It can easily handle most classical tasks like scanning, tracerouting, probing, unit tests, attacks or network discovery (it can replace hping, 85% of nmap, arpspoof, arp-sk, arping, tcpdump, tethereal, p0f, etc.). It also performs very well at a lot of other specific tasks that most other tools can't handle, like sending invalid frames, injecting your own 802.11 frames, combining technics (VLAN hopping+ARP cache poisoning, VOIP decoding on WEP encrypted channel, ...), etc."
-SECTION = "security"
-LICENSE = "GPLv2"
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
-
-SRCREV = "32cd7eb0f620d9adf171c48d55514e8326a538d7"
-SRC_URI = "git://github.com/secdev/scapy.git \
-           file://run-ptest"
-
-S = "${WORKDIR}/git"
-
-UPSTREAM_CHECK_COMMITS = "1"
-
-inherit setuptools3 ptest
-
-do_install_append() {
-        mv ${D}${bindir}/scapy ${D}${bindir}/scapy3
-        mv ${D}${bindir}/UTscapy ${D}${bindir}/UTscapy3
-}
-
-do_install_ptest() {
-    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
-    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
-}
-
-RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-cryptography ${PYTHON_PN}-netclient  \
-                  ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
-                  ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
-- 
2.24.3

