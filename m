Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41505E01453
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r06BtLvJ027408
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:21 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:20 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:59 +0200
Message-ID: <1357473302-19235-20-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 20/23] mesa-dri: egl and gles are added by default in PACKAGECONFIG
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
X-List-Received-Date: Sun, 06 Jan 2013 11:55:21 -0000
Content-Type: text/plain

oe-core mesa-dri recipe includes egl and gles by default now in
PACKAGECONFIG. Drop this bbappend.

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-graphics/mesa/mesa-dri_8.0.5.bbappend |    2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 recipes-graphics/mesa/mesa-dri_8.0.5.bbappend

diff --git a/recipes-graphics/mesa/mesa-dri_8.0.5.bbappend b/recipes-graphics/mesa/mesa-dri_8.0.5.bbappend
deleted file mode 100644
index db4a459..0000000
--- a/recipes-graphics/mesa/mesa-dri_8.0.5.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-PRINC := "${@int(PRINC) + 1}"
-PACKAGECONFIG_append_vexpressa9 = " gles egl"
-- 
1.7.9.5


