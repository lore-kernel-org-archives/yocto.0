Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A097E016D1
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:06:22 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VWstp-0004ty-Bd; Thu, 17 Oct 2013 19:06:22 +0000
Received: from flihp by longhaul.twobit.us with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VWsti-0007x8-Oa; Thu, 17 Oct 2013 19:06:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2013 19:06:08 +0000
Message-Id: <1382036771-30531-3-git-send-email-flihp@twobit.us>
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
Subject: [meta-selinux][PATCH 2/5] Remove unnecessary RDEPENDS_${BPN}.
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

Now that the policycoreutuils package is empty no need for RDEPENDS.
Doing this in the commit that broke up the policycoreutuils package
made the diff hard to read. Figured it best to break it out for
readability.
---
 recipes-security/selinux/policycoreutils.inc |   16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index e6ff4ed..05de7ac 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -22,22 +22,6 @@ DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
 inherit selinux
 DEPENDS += "${@target_selinux(d, 'libpam audit')}"
 
-RDEPENDS_${BPN} += "\
-	libselinux-python \
-	libsemanage-python \
-	sepolgen \
-	"
-RDEPENDS_${BPN} += "\
-	python \
-	python-unixadmin \
-	python-shell \
-	python-crypt \
-	python-subprocess \
-	python-syslog \
-	python-textutils \
-	python-ipy \
-	"
-
 RDEPENDS_${BPN}-audit2allow = " \
 	python-textutils \
 	libselinux-python \
-- 
1.7.10.4


