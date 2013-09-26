Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D735E015D6
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 13:49:57 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VPIVR-0000qv-L0; Thu, 26 Sep 2013 20:49:55 +0000
Date: Thu, 26 Sep 2013 20:49:39 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Message-ID: <20130926204939.GA2107@longhaul.twobit.us>
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
Subject: [meta-selinux] Check for the availability of 'secon' and 'setenforce' in the selinux-init.sh script.
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
X-List-Received-Date: Thu, 26 Sep 2013 20:49:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This is for consistency and to aid in debugging.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/selinux-config/selinux-init.sh |    8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/selinux-config/selinux-init.sh b/recipes-security/selinux/selinux-config/selinux-init.sh
index 1cdc3dd..8f3efac 100644
--- a/recipes-security/selinux/selinux-config/selinux-init.sh
+++ b/recipes-security/selinux/selinux-config/selinux-init.sh
@@ -6,8 +6,10 @@ CHCON=/usr/bin/chcon
 MATCHPATHCON=/usr/sbin/matchpathcon
 FIXFILES=/sbin/fixfiles
 RESTORECON=/sbin/restorecon
+SECON=/usr/bin/secon
+SETENFORCE=/usr/sbin/setenforce
 
-for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ; do
+for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ${SECON} ${SETENFORCE}; do
 	test -x $i && continue
 	echo "$i is missing in the system."
 	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
@@ -51,12 +53,12 @@ fi
 
 # If first booting, the security context type of init would be
 # "kernel_t", and the whole file system should be relabeled.
-if [ "`/usr/bin/secon -t --pid 1`" = "kernel_t" ]; then
+if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
 	echo "Checking SELinux security contexts:"
 	check_rootfs
 	echo " * First booting, filesystem will be relabeled..."
 	test -x /etc/init.d/auditd && /etc/init.d/auditd start
-	/usr/sbin/setenforce 0
+	${SETENFORCE} 0
 	${RESTORECON} -R /
 	${RESTORECON} /
 	echo " * Relabel done, rebooting the system."
-- 
1.7.10.4


