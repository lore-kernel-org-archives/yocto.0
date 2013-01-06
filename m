Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8CB9E0145D
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r06Bt4NI005958
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:04 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:03 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:50 +0200
Message-ID: <1357473302-19235-11-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 11/23] base-passwd: Minor file reformatting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 06 Jan 2013 11:55:03 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../base-passwd/base-passwd_3.5.26.bbappend        |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend b/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend
index 4e3c8a9..325d641 100644
--- a/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend
+++ b/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend
@@ -1,5 +1,6 @@
 PRINC := "${@int(PRINC) + 2}"
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
-SRC_URI += "file://add-default-root-pass.patch \
-           "
+SRC_URI += " \
+    file://add-default-root-pass.patch \
+    "
-- 
1.7.9.5


