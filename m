Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B4BE015C2
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2013 20:51:29 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>) id 1VNxBI-0002XS-0t
	for yocto@yoctoproject.org; Mon, 23 Sep 2013 03:51:28 +0000
Date: Mon, 23 Sep 2013 03:51:19 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Message-ID: <20130923035119.GA17078@longhaul.twobit.us>
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
Subject: [meta-selinux] Stage SELinux config file in the sysroot.
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
X-List-Received-Date: Mon, 23 Sep 2013 03:51:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This is needed to build policy modules outside of the refpolicy.
Policy module build systems need to determine the name of the policy
that will be in effect on the target host. This allows them to
locate the policy headers that will be under
$sysroot/usr/share/selinux/$name/include. Given that there *could*
be more than one policy installed in the sysroot we can't assume
that the policy installed there is the only policy to build against.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/selinux-config_0.1.bb |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
index 9521dcf..ad0d647 100644
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ b/recipes-security/selinux/selinux-config_0.1.bb
@@ -43,3 +43,6 @@ SELINUXTYPE=${DEFAULT_POLICY}
 	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
 }
 
+sysroot_stage_all_append () {
+	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
+}
-- 
1.7.10.4


