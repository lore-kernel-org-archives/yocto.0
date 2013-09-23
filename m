Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7545AE015C2
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2013 21:24:28 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VNxhD-0002Zb-0P; Mon, 23 Sep 2013 04:24:27 +0000
Date: Mon, 23 Sep 2013 04:24:18 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Message-ID: <20130923042418.GA17195@longhaul.twobit.us>
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
Subject: [meta-selinux] Add sysvinit to DISTRO_FEATURES in oe-selinux distro.
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
X-List-Received-Date: Mon, 23 Sep 2013 04:24:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The oe-selinux distro won't build against the master branch of
oe-core unless sysvinit is in DISTRO_FEATURES.
Commit c72ec4b52827f75351790eab483d258b2e87611a in oe-core adds a
sanity check to the packagegroup class that requires the
VIRTUAL-RUNTIME_init_manager explicitly be set in DISTRO_FEATURES.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 conf/distro/oe-selinux.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
index 9523abf..061529c 100644
--- a/conf/distro/oe-selinux.conf
+++ b/conf/distro/oe-selinux.conf
@@ -1,4 +1,4 @@
 DISTRO = "oe-selinux"
 DISTROOVERRIDES .= ":selinux"
 
-DISTRO_FEATURES_append = "pam selinux"
+DISTRO_FEATURES_append = "pam selinux sysvinit"
-- 
1.7.10.4


