Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5068EE013F7
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:54:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r06BsmX7005938
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:54:48 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:54:47 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:41 +0200
Message-ID: <1357473302-19235-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 02/23] README.md: Reformat file to use maximum 80 columns
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
X-List-Received-Date: Sun, 06 Jan 2013 11:54:48 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 README.md |   14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/README.md b/README.md
index fe21807..386615b 100644
--- a/README.md
+++ b/README.md
@@ -41,19 +41,25 @@ following steps:
 
 2. Add meta-ivi path to COREBASE/build/conf/bblayers.conf file.
 
-3. Add meta-openembedded/meta-systemd path to COREBASE/build/conf/bblayers.conf file.
+3. Add meta-openembedded/meta-systemd path to COREBASE/build/conf/bblayers.conf
+file.
 
 4. Add meta-openembedded/meta-oe path to COREBASE/build/conf/bblayers.conf file.
 
-5. Add meta-openembedded/meta-gnome path to COREBASE/build/conf/bblayers.conf file.
+5. Add meta-openembedded/meta-gnome path to COREBASE/build/conf/bblayers.conf
+file.
 
-6. Add meta-openembedded/meta-networking path to COREBASE/build/conf/bblayers.conf file.
+6. Add meta-openembedded/meta-networking path to
+COREBASE/build/conf/bblayers.conf file.
 
 7. Set MACHINE ??= "vexpressa9" or MACHINE ??= "qemux86" in
 COREBASE/build/conf/local.conf file to build for an emulated ARMv7a or IA-32
 instruction-set maschine respectively.
 
-8. Add BBMASK = "meta-systemd/meta-efl|meta-systemd/meta-gnome|meta-systemd/meta-multimedia|meta-systemd/meta-oe/recipes-support|meta-gnome/recipes-gnome"
+8. Add
+BBMASK = "meta-systemd/meta-efl|meta-systemd/meta-gnome|\
+meta-systemd/meta-multimedia|meta-systemd/meta-oe/recipes-support|\
+meta-gnome/recipes-gnome"
 in COREBASE/build/conf/local.conf file.
 
 9. Add INCOMPATIBLE_LICENSE = "GPLv3" in COREBASE/build/conf/local.conf file.
-- 
1.7.9.5


