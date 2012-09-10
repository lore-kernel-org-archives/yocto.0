Return-Path: <kevstras@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85C8E01481
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 14:50:25 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so3952180pbb.35
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 14:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=XNNPS2wvRvdd4fd7cww3QMWU0a63WfX6YoTBe3B75p8=;
	b=Kn+o+kwKvqc0ZGHEvp3MrkXIvgDGeOfGfgJgarLqVKjZKOQPXUJ1cgJb5WVfji6SsZ
	TRvK0XX7h0iOo/bTvgJ6EMnTrMcAzNqAcfP28nzgU2E/2seL09oQPodZw/tQzbdFx9o1
	QK20cGjbMLqtVT8j0ioUcq8z+yBzj9/czyr2jbih92+V+DqIg7JvBCIXFwt+bFT5kDTq
	QtkS1iEX3cMFHtI3MAkBVGij02Z+poodpJgQWcp+6tHPZ5J47QzJACzbyxEsiJagrRRD
	eQAsCFFW9RJCtdruCqRsCy4YpVW3rbNUPVznXhFufl8eJI9Xf1I3idJeSgH0V6pAGsKp
	HYBQ==
Received: by 10.68.116.232 with SMTP id jz8mr7703712pbb.77.1347313825745;
	Mon, 10 Sep 2012 14:50:25 -0700 (PDT)
Received: from satellite.hsd1.or.comcast.net
	(c-71-237-182-115.hsd1.or.comcast.net. [71.237.182.115])
	by mx.google.com with ESMTPS id jz10sm8707662pbc.8.2012.09.10.14.50.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 10 Sep 2012 14:50:24 -0700 (PDT)
From: Kevin Strasser <kevstras@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Sep 2012 14:50:09 -0700
Message-Id: <05bc846eb9ec84e5094832dcac903fef085fd9d8.1347312790.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1347312790.git.kevin.strasser@linux.intel.com>
References: <cover.1347312790.git.kevin.strasser@linux.intel.com>
X-Mailman-Approved-At: Mon, 10 Sep 2012 14:53:55 -0700
Subject: [meta-baryon][PATCH 1/2] webmin: update package to 1.590
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
X-List-Received-Date: Mon, 10 Sep 2012 21:50:26 -0000

The patch "fdisk-partprobe-fix.patch" has been accepted upstream
and is no longer needed.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../webmin/files/fdisk-partprobe-fix.patch         |   16 ----------------
 .../webmin/{webmin_1.570.bb => webmin_1.590.bb}    |    7 +++----
 2 files changed, 3 insertions(+), 20 deletions(-)
 delete mode 100644 recipes-extended/webmin/files/fdisk-partprobe-fix.patch
 rename recipes-extended/webmin/{webmin_1.570.bb => webmin_1.590.bb} (96%)

diff --git a/recipes-extended/webmin/files/fdisk-partprobe-fix.patch b/recipes-extended/webmin/files/fdisk-partprobe-fix.patch
deleted file mode 100644
index 2279c96..0000000
--- a/recipes-extended/webmin/files/fdisk-partprobe-fix.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-# Fix prepending partprobe command in fdisk module library code
-#
-# Upstream-status: Pending
-#
-# Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---- webmin-1.570.orig/fdisk/fdisk-lib.pl
-+++ webmin-1.570/fdisk/fdisk-lib.pl
-@@ -940,7 +940,7 @@ elsif ($_[0] eq "fatx") {
- 	$cmd = "mkfs -t $_[0] $_[1]";
- 	}
- if (&has_command("partprobe")) {
--	$cmd .= "partprobe ; $cmd";
-+	$cmd = "partprobe ; $cmd";
- 	}
- return $cmd;
- }
diff --git a/recipes-extended/webmin/webmin_1.570.bb b/recipes-extended/webmin/webmin_1.590.bb
similarity index 96%
rename from recipes-extended/webmin/webmin_1.570.bb
rename to recipes-extended/webmin/webmin_1.590.bb
index cf52030..a408092 100644
--- a/recipes-extended/webmin/webmin_1.570.bb
+++ b/recipes-extended/webmin/webmin_1.590.bb
@@ -9,13 +9,12 @@ RDEPENDS_${PN} += "perl-module-warnings perl-module-warnings-register perl-modul
 RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
 RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
 
-PR = "r13"
+PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://setup.sh \
           file://init-exclude.patch \
           file://net-generic.patch \
-          file://fdisk-partprobe-fix.patch \
           file://remove-startup-option.patch \
           file://disable-version-check.patch \
           file://nfs-export.patch \
@@ -26,8 +25,8 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://net-lib.pl.patch \
           file://media-tomb.patch"
 
-SRC_URI[md5sum] = "20b4f488637366c39458b9b93162eff3"
-SRC_URI[sha256sum] = "3b8ad51dee0e61e330c8137b3d8cff91a00cf31d710b68e272fe02db25baaf54"
+SRC_URI[md5sum] = "815005ed7f208dcfbda5308b446779c2"
+SRC_URI[sha256sum] = "07b06612a8bc864388d86b55ec9a9adba0fa71ec60cc66d87c0e58280264182d"
 
 inherit allarch perlnative update-rc.d
 
-- 
1.7.9.5


