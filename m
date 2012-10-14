Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D458EE00347
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 17:10:10 -0700 (PDT)
Received: from static-74-106-4-21.syrcny.fios.verizon.net ([74.106.4.21]
	helo=[10.197.228.100])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1TNBmS-0002bb-CB; Sun, 14 Oct 2012 00:10:08 +0000
Message-ID: <507A02D5.4010001@twobit.us>
Date: Sat, 13 Oct 2012 20:09:57 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.6esrpre) Gecko/20120817 Icedove/10.0.6
MIME-Version: 1.0
To: mark.hatle@windriver.com
X-Enigmail-Version: 1.4.1
X-SA-Exim-Connect-IP: 74.106.4.21
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: yocto@yoctoproject.org
Subject: meta-selinux: missing dependency on libxml2 in setools recipe
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
X-List-Received-Date: Sun, 14 Oct 2012 00:10:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Mark,

I'm building meta-selinux against oe-core and found that the setools
recipe is missing a dependency on libxml2.  When building against Yocto
it looks like this dependency is satisfied by a recipe that's built
prior to setools.  Anyway, trivial patch below.

Thanks,
- Philip

diff --git a/recipes-security/setools/setools_3.3.7.bb b/recipes-security/setools/setools_3.3.7.bb
index 99e53af..2c0f19f 100644
--- a/recipes-security/setools/setools_3.3.7.bb
+++ b/recipes-security/setools/setools_3.3.7.bb
@@ -33,7 +33,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
                     file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
                     file://${S}/COPYING.LGPL;md5=fbc093901857fcd118f065f900982c24"
 
-DEPENDS += "python libsepol libselinux"
+DEPENDS += "python libsepol libselinux libxml2"
 
 PACKAGES += "${PN}-libs ${PN}-console"

