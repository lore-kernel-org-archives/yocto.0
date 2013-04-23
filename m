Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D8A8E014D5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:27:13 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3NCRx8l006245; Tue, 23 Apr 2013 13:27:59 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id y1zFfiEgj0jv; Tue, 23 Apr 2013 13:27:59 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3NCRrNP006231
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Tue, 23 Apr 2013 13:27:54 +0100
Message-ID: <1366720007.23738.57.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Tue, 23 Apr 2013 13:26:47 +0100
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Subject: [PATCH] meta-jasperforest: Fix BBFILES
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
X-List-Received-Date: Tue, 23 Apr 2013 12:27:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

BBFILES is whitespace delimited. If .= used, no whitespace padding is added around
the addition and this can lead to it being combined with some other part of the
field, leading to parts of BBFILES mysteriously not being seen.

For example, I have in my bblayers.conf:

  /media/build1/poky/meta-intel/meta-emenlow \
  /media/build1/poky/meta-intel/meta-fri2 \
  /media/build1/poky/meta-intel/meta-jasperforest \
  /media/build1/poky/meta-intel/meta-n450 \
  /media/build1/poky/meta-intel/meta-romley \

and this results in the warning:

WARNING: No bb files matched BBFILE_PATTERN_fri2 '^/media/build1/poky/meta-intel/meta-fri2/'

and if I try to build MACHINE=fri2, I get strange errors due to the .bb files
not being parsed.

The fix is simply to use +=, just like every other layer.conf file.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-jasperforest/conf/layer.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
index b539733..6d096e7 100644
--- a/meta-jasperforest/conf/layer.conf
+++ b/meta-jasperforest/conf/layer.conf
@@ -2,7 +2,7 @@
 BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES .= "${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "jasperforest"



