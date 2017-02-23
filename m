Return-Path: <mickael@tansorier.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2997E00A73; Thu, 23 Feb 2017 01:15:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8579EE00A0A
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 01:15:53 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 129121EE20AE
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 10:07:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id Ehw-HEGnc76f for <yocto@yoctoproject.org>;
	Thu, 23 Feb 2017 10:07:56 +0100 (CET)
Received: from [192.168.0.127] (bgn92-6-88-179-202-174.fbx.proxad.net
	[88.179.202.174])
	by idris.smile.fr (Postfix) with ESMTPSA id CF6AB1EE2063
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 10:07:56 +0100 (CET)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Micka=c3=abl_Tansorier?= <mickael@tansorier.fr>
Message-ID: <76b39576-fa93-33e8-e6e5-e0fffbe8c5ce@tansorier.fr>
Date: Thu, 23 Feb 2017 10:07:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Firefox/45.0 Thunderbird/45.7.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
Subject: Patch for krogoth vorsion
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
X-List-Received-Date: Thu, 23 Feb 2017 09:15:55 -0000
X-Groupsio-MsgNum: 34680
Content-Type: multipart/mixed; boundary="------------FE5B40EB41DE39B96AD1056F"

--------------FE5B40EB41DE39B96AD1056F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I propose a patch for krogoth branch.

It seems that miss a space a the end of line SRC_URI_prepend. This make 
error when two sources are concatenated.

Thank your.

Regards.

-- 
Tansorier Mickaël


--------------FE5B40EB41DE39B96AD1056F
Content-Type: text/x-patch;
 name="0001-qemu-Add-space-to-fix-concatenated-SRC_URI.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="0001-qemu-Add-space-to-fix-concatenated-SRC_URI.patch"

From 4b753ee916ee1a9fa6c82bb7dc2a8070bf14b2ec Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Micka=C3=ABl=20Tansorier?= <mickael@tansorier.fr>
Date: Thu, 23 Feb 2017 09:40:18 +0100
Subject: [PATCH] qemu: Add space to fix concatenated SRC_URI
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Mickaël Tansorier <mickael@tansorier.fr>
---
 meta/recipes-devtools/qemu/qemu_2.5.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/qemu/qemu_2.5.0.bb b/meta/recipes-devtools/qemu/qemu_2.5.0.bb
index ed8d911ea6..241dee050c 100644
--- a/meta/recipes-devtools/qemu/qemu_2.5.0.bb
+++ b/meta/recipes-devtools/qemu/qemu_2.5.0.bb
@@ -27,7 +27,7 @@ SRC_URI += "file://configure-fix-Darwin-target-detection.patch \
             file://CVE-2016-4002.patch \
             file://CVE-2016-5403.patch \
            "
-SRC_URI_prepend = "http://wiki.qemu-project.org/download/${BP}.tar.bz2"
+SRC_URI_prepend = "http://wiki.qemu-project.org/download/${BP}.tar.bz2 "
 SRC_URI[md5sum] = "f469f2330bbe76e3e39db10e9ac4f8db"
 SRC_URI[sha256sum] = "3443887401619fe33bfa5d900a4f2d6a79425ae2b7e43d5b8c36eb7a683772d4"
 
-- 
2.11.1


--------------FE5B40EB41DE39B96AD1056F--
