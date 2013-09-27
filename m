Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0349EE0164A
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 18:40:29 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VPN2h-00014z-AR; Fri, 27 Sep 2013 01:40:27 +0000
Date: Fri, 27 Sep 2013 01:40:17 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Message-ID: <20130927014017.GA11590@longhaul.twobit.us>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: Joe.MacDonald@windriver.com
Subject: [meta-selinux] Add ${bindir}/sepolgen to system-config-selinux package.
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
X-List-Received-Date: Fri, 27 Sep 2013 01:40:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Currently the policycoreutils package has a broken link from
${bindir}/sepolgen to ${datadir}/system-config-selinux/polgen.py.
All of the other polgen stuff is in system-config-selinux so
adding sepolgen to same package seems like the right thing to do.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/policycoreutils.inc |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 08b14eb..7939095 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -48,7 +48,10 @@ FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 FILES_${PN}-sandbox = "${datadir}/sandbox/*"
 FILES_${PN}-sandbox += "${bindir}/sandbox"
 FILES_${PN}-sandbox += "${sbindir}/seunshare"
-FILES_system-config-selinux = "${datadir}/system-config-selinux/*"
+FILES_system-config-selinux = " \
+    ${bindir}/sepolgen \
+    ${datadir}/system-config-selinux/* \
+"
 
 inherit pythonnative
 
-- 
1.7.10.4


