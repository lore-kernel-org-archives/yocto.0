Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6B9AE00B45; Thu,  8 May 2014 09:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 517EDE00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:53:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id A4A2361970
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:05 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hrkF225xsDIu for <yocto@yoctoproject.org>;
	Thu,  8 May 2014 18:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 42F986195E
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:02 +0200 (CEST)
Received: from linuxdev.toradex.int (unknown [46.140.72.82])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 762C061946;
	Thu,  8 May 2014 18:40:02 +0200 (CEST)
From: stefan@agner.ch
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu,  8 May 2014 18:44:25 +0200
Message-Id: <39751f2d60ac609622d2349e03d5db17698e52d8.1399561605.git.stefan@agner.ch>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 May 2014 08:12:07 -0700
Cc: stefan@agner.ch
Subject: [yocto-autobuilder][PATCH v1 1/4] GetDistroVersion.py support for Angstrom distro version
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
X-List-Received-Date: Thu, 08 May 2014 16:53:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan@agner.ch>

Ångström distribution has a different location for distro version,
support "angstrom" as distro too.

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 .../site-packages/autobuilder/buildsteps/GetDistroVersion.py       | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
index 3d4f314..2555e62 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
@@ -32,10 +32,13 @@ class GetDistroVersion(ShellCommand):
 
     def start(self):
         buildername=self.getProperty("buildername")
+        distroconf=self.slaveworkdir + "/" + buildername
         if 'poky' in self.distro:
-            distroconf=self.slaveworkdir + "/" + buildername + "/build/meta-yocto/conf/distro/poky.conf|grep 'DISTRO_VERSION = \"'"
+            distroconf+="/build/meta-yocto/conf/distro/poky.conf|grep 'DISTRO_VERSION = \"'"
         elif 'oecore' in self.distro:
-            distroconf=self.slaveworkdir + "/" + buildername + "/build/meta/conf/distro/include/default-distrovars.inc|grep 'DISTRO_VERSION '"
+            distroconf+="/build/meta/conf/distro/include/default-distrovars.inc|grep 'DISTRO_VERSION '"
+        elif 'angstrom' in self.distro:
+            distroconf+="/build/meta-angstrom/conf/distro/angstrom-*.conf|grep 'DISTRO_VERSION = \"'"
         else:
             self.finished(FAILURE)
         cmd = 'cat ' + distroconf
-- 
1.9.0


