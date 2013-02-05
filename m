Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CAD0E011C0
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 07:54:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r15FsqS0009930
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Feb 2013 07:54:52 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Tue, 5 Feb 2013 07:54:51 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Tue, 5 Feb 2013 17:54:40 +0200
Message-ID: <1360079682-7778-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/3] systemd: Remove bbappend as xz si not GPLv3
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
X-List-Received-Date: Tue, 05 Feb 2013 15:54:52 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-core-ivi/systemd/systemd_git.bbappend |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-core-ivi/systemd/systemd_git.bbappend

diff --git a/recipes-core-ivi/systemd/systemd_git.bbappend b/recipes-core-ivi/systemd/systemd_git.bbappend
deleted file mode 100644
index f881b7f..0000000
--- a/recipes-core-ivi/systemd/systemd_git.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-PRINC := "${@int(PRINC) + 1}"
-
-# xz is GPLv3
-# Remove this package from depends and configure
-DEPENDS := "${@oe_filter_out('xz', '${DEPENDS}', d)}"
-EXTRA_OECONF := "${@oe_filter_out('--enable-xz', '${EXTRA_OECONF}', d)}"
-- 
1.7.5.4


