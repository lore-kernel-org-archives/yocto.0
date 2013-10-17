Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C859E016D3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:06:24 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VWstp-0004u0-Be; Thu, 17 Oct 2013 19:06:23 +0000
Received: from flihp by longhaul.twobit.us with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VWsti-0007xC-Pi; Thu, 17 Oct 2013 19:06:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2013 19:06:09 +0000
Message-Id: <1382036771-30531-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1382036771-30531-1-git-send-email-flihp@twobit.us>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux][PATCH 3/5] Remove runtime dependency on policycoreutils from the reference policy.
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
X-List-Received-Date: Thu, 17 Oct 2013 19:06:26 -0000

The only thing refpol needs to depend on at runtime are the things
necessary to load the policy.  If sysvinit is patched to load the
policy (which it is) then we only need the config.
---
 recipes-security/refpolicy/refpolicy_common.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 3eaf16d..873d887 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -16,7 +16,7 @@ FILES_${PN} = "${sysconfdir}/selinux/${POLICY_NAME}/ \
 FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
-RDEPENDS_${PN} += "policycoreutils selinux-config"
+RDEPENDS_${PN} += "selinux-config"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
-- 
1.7.10.4


