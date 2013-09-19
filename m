Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1A6AE015E5
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 18:10:34 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[172.16.1.10])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VMSlL-0008TD-76; Thu, 19 Sep 2013 01:10:32 +0000
Message-ID: <523A4EFA.1040907@twobit.us>
Date: Wed, 18 Sep 2013 21:10:18 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130828 Icedove/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5238FF44.6000502@twobit.us>
In-Reply-To: <5238FF44.6000502@twobit.us>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: Re: [meta-selinux] Install policy headers and include them in the refpolicy dev package.
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
X-List-Received-Date: Thu, 19 Sep 2013 01:10:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/17/2013 09:17 PM, Philip Tricca wrote:
> This patch is pretty straight forward: All we do is call the
> 'install-headers' make target at the end of do_install. We then add
> the interface 'include' directory to the dev package. This allows
> projects that ship their own SELinux policy (not in the refpolicy)
> to build against the refpolicy headers / interface files by using
> the Makefile supplied by refpolicy.

Apologies, I let my MUA mangle that last patch something awful. Fixed below:

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/refpolicy/refpolicy_common.inc |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 2c8891a..07c05aa 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -12,7 +12,8 @@ SRC_URI += "file://customizable_types \
 S = "${WORKDIR}/refpolicy"
 
 FILES_${PN} = "${sysconfdir}/selinux/${POLICY_NAME}/ \
-	${datadir}/selinux/${POLICY_NAME}/"
+	${datadir}/selinux/${POLICY_NAME}/*.pp"
+FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/""
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
 RDEPENDS_${PN} += "policycoreutils selinux-config"
@@ -75,4 +76,7 @@ EOF
 
 	cat ${WORKDIR}/customizable_types >> \
 		${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
+
+	# install policy headers
+	oe_runmake install-headers DESTDIR=${D}
 }
-- 
1.7.10.

