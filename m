Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C60CDE013D6
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 10:46:37 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VOADT-0003YL-GJ; Mon, 23 Sep 2013 17:46:35 +0000
Date: Mon, 23 Sep 2013 17:46:26 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Message-ID: <20130923174626.GA25141@longhaul.twobit.us>
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
Subject: [meta-selinux] Add leading whitespace to DISTRO_FEATURES_append in oe-selinux.conf
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
X-List-Received-Date: Mon, 23 Sep 2013 17:46:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The lack of leading whitespace was causing two values in the
DISTRO_FEATURES variable to be combined. This was causing 'sysvinit'
from DISTRO_FEATURES_BACKFILL and 'pam' (from oe-selinux) to be
combined into 'sysvinitpam' thus dropping both from the
DISTRO_FEATURES.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 conf/distro/oe-selinux.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
index 9523abf..5ae2179 100644
--- a/conf/distro/oe-selinux.conf
+++ b/conf/distro/oe-selinux.conf
@@ -1,4 +1,4 @@
 DISTRO = "oe-selinux"
 DISTROOVERRIDES .= ":selinux"
 
-DISTRO_FEATURES_append = "pam selinux"
+DISTRO_FEATURES_append = " pam selinux"
-- 
1.7.10.4


