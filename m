Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019B5E0034C
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:51:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qBEJp5SB027202
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:51:05 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Fri, 14 Dec 2012 11:51:05 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <yocto@yoctoproject.org>, <florin.sarbu@windriver.com>,
	<holger.behrens@windriver.com>
Date: Fri, 14 Dec 2012 21:50:56 +0200
Message-ID: <1355514657-7502-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/2] xserver-xorg: Remove dependency to libgl
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
X-List-Received-Date: Fri, 14 Dec 2012 19:51:06 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../xorg-xserver/xserver-xorg_1.13.0.bbappend      |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_1.13.0.bbappend b/recipes-graphics/xorg-xserver/xserver-xorg_1.13.0.bbappend
index c43684e..51573f6 100644
--- a/recipes-graphics/xorg-xserver/xserver-xorg_1.13.0.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xorg_1.13.0.bbappend
@@ -1,6 +1,4 @@
-PRINC := "${@int(PRINC) + 3}"
-
-LIB_DEPS += "virtual/libgl"
+PRINC := "${@int(PRINC) + 4}"
 
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
-- 
1.7.9.5


