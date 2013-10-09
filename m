Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B0B1E016CA
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 05:37:16 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>) id 1VTt0s-00081u-ID
	for yocto@yoctoproject.org; Wed, 09 Oct 2013 12:37:16 +0000
Date: Wed, 9 Oct 2013 12:37:09 +0000
From: Philip Tricca <flihp@twobit.us>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <20131009123709.GF6721@longhaul.twobit.us>
References: <52554ABF.1040308@twobit.us>
MIME-Version: 1.0
In-Reply-To: <52554ABF.1040308@twobit.us>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: Re: [meta-selinux][PATCH 2/5] Remove unnecessary RDEPENDS_${BPN}.
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
X-List-Received-Date: Wed, 09 Oct 2013 12:37:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Now that the policycoreutuils package is empty no need for RDEPENDS.
Doing this in the commit that broke up the policycoreutuils package
made the diff hard to read. Figured it best to break it out for
readability.

Signed-off-by: Philip Tricca <flihp@twobit.us>
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


