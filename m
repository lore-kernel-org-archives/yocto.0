Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D70A4E0084D; Wed, 17 Sep 2014 02:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A8FE00786
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 02:14:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s8H9EOkK019384
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Sep 2014 02:14:25 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Wed, 17 Sep 2014 02:14:24 -0700
Message-ID: <541950EF.2070100@windriver.com>
Date: Wed, 17 Sep 2014 17:14:23 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Joe MacDonald <joe_macdonald@mentor.com>, <yocto@yoctoproject.org>
References: <1410810395-16786-1-git-send-email-joe_macdonald@mentor.com>
In-Reply-To: <1410810395-16786-1-git-send-email-joe_macdonald@mentor.com>
X-TagToolbar-Keys: D20140917171423152
Subject: Re: [meta-selinux][PATCH] selinux-userspace: update userspace SRC_URI and checksums
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
X-List-Received-Date: Wed, 17 Sep 2014 09:14:30 -0000
X-Groupsio-MsgNum: 21495
Content-Type: multipart/mixed; boundary="------------000904020204060406060400"

--------------000904020204060406060400
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-9-16 上午3:46, Joe MacDonald 写道:
> Trac has been turned off on OSS.  Update all SRC_URI links for the
> userspace components to point at the github project releases.  The github
> releases also have a slightly different directory structure in the
> tarballs, requiring an update of the checksums as well.
>
> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ---
>
> Trac/OSS has been turned off on the Tresys website where we were getting the
> userspace release tarballs.  It's been quite a while since all of this
> development moved to github, so as a first step toward updating the core
> utilities, get builds working again by pointing the SRC_URIs somewhere
> functional.
>
>   recipes-security/selinux/checkpolicy_2.2.bb       |    4 ++--
>   recipes-security/selinux/libselinux_2.2.2.bb      |    4 ++--
>   recipes-security/selinux/libsemanage_2.2.bb       |    4 ++--
>   recipes-security/selinux/libsepol_2.2.bb          |    4 ++--
>   recipes-security/selinux/policycoreutils_2.2.5.bb |    4 ++--
>   recipes-security/selinux/selinux_20131030.inc     |    2 +-
>   recipes-security/selinux/selinux_common.inc       |    6 +++++-
>   recipes-security/selinux/selinux_git.inc          |    6 ++++--
>   recipes-security/selinux/sepolgen_1.2.1.bb        |    4 ++--
>   recipes-security/setools/setools_3.3.8.bb         |    2 +-
>   10 files changed, 23 insertions(+), 17 deletions(-)
>
> diff --git a/recipes-security/selinux/checkpolicy_2.2.bb b/recipes-security/selinux/checkpolicy_2.2.bb
> index 47bbf57..23d57c1 100644
> --- a/recipes-security/selinux/checkpolicy_2.2.bb
> +++ b/recipes-security/selinux/checkpolicy_2.2.bb
> @@ -5,5 +5,5 @@ include ${BPN}.inc
>
>   LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
>
> -SRC_URI[md5sum] = "9662eaa1163de67cf3d392b58d262552"
> -SRC_URI[sha256sum] = "9ff6698f4d4cb59c9c916e348187d533ada4107f90c253ef7304905934e9adf8"
> +SRC_URI[md5sum] = "d76d5c70cd594fdb15f8d319c6536324"
> +SRC_URI[sha256sum] = "5d74075379cbaf17135c2a113a3053bd2e7b2a2c54ac04458de652457306c020"
> diff --git a/recipes-security/selinux/libselinux_2.2.2.bb b/recipes-security/selinux/libselinux_2.2.2.bb
> index 0027a35..d6502ad 100644
> --- a/recipes-security/selinux/libselinux_2.2.2.bb
> +++ b/recipes-security/selinux/libselinux_2.2.2.bb
> @@ -5,8 +5,8 @@ include ${BPN}.inc
>
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
>
> -SRC_URI[md5sum] = "55026eb4654c4f732a27c191b39bebaf"
> -SRC_URI[sha256sum] = "30ab363416806da907b86b97f1d31c252473e3200358bb1570f563c8312b5a3e"
> +SRC_URI[md5sum] = "c13ea5de171f21fee399abfd4aef9481"
> +SRC_URI[sha256sum] = "cc8354d67d7bef11fb2a03d23e788c6f4e8510b6760c3778dc7baf6dcfa97539"
>
>   SRC_URI += "\
>           file://libselinux-drop-Wno-unused-but-set-variable.patch \
> diff --git a/recipes-security/selinux/libsemanage_2.2.bb b/recipes-security/selinux/libsemanage_2.2.bb
> index 6a67d9f..1f00d07 100644
> --- a/recipes-security/selinux/libsemanage_2.2.bb
> +++ b/recipes-security/selinux/libsemanage_2.2.bb
> @@ -5,8 +5,8 @@ include ${BPN}.inc
>
>   LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
>
> -SRC_URI[md5sum] = "2a939538645de6023633bc2247a5e72e"
> -SRC_URI[sha256sum] = "11f60bfa0f1c6063cd9bd99ce0cb4acc9d6d9e9b8d7743d39e847bcd7803bd75"
> +SRC_URI[md5sum] = "2bb8f4b728a5667519764297b7725c19"
> +SRC_URI[sha256sum] = "9b421ce1df10594cb467eef37faeb403d5c6b341a4b7e4b407ac4cb77df95cba"
>
>   SRC_URI += "\
>   	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
> diff --git a/recipes-security/selinux/libsepol_2.2.bb b/recipes-security/selinux/libsepol_2.2.bb
> index 485d1da..a0b7df7 100644
> --- a/recipes-security/selinux/libsepol_2.2.bb
> +++ b/recipes-security/selinux/libsepol_2.2.bb
> @@ -5,5 +5,5 @@ include ${BPN}.inc
>
>   LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
>
> -SRC_URI[md5sum] = "41cbe38ea809b5752f520bdeac4d2cf8"
> -SRC_URI[sha256sum] = "77a4b27006295805bdbd7f240038cb32a49be1d60847d413899501702933fc0f"
> +SRC_URI[md5sum] = "2d43599ed29fea9ef41218ec9635ef64"
> +SRC_URI[sha256sum] = "fbd77459fd03979a9020289b10c89a0af56a52bcd0f7ae0a78455713bb04878b"
> diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-security/selinux/policycoreutils_2.2.5.bb
> index 2bbf541..96cf354 100644
> --- a/recipes-security/selinux/policycoreutils_2.2.5.bb
> +++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
> @@ -5,8 +5,8 @@ include ${BPN}.inc
>
>   LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
>
> -SRC_URI[md5sum] = "a2963d7024c5c4ce89f2459d48f91ec8"
> -SRC_URI[sha256sum] = "bbf850a8c3c2f371f439d6525663eecdd3a737acd594d2f27f8d8f3a07830cc4"
> +SRC_URI[md5sum] = "f330a90c566c8b564858d45399ce3dd1"
> +SRC_URI[sha256sum] = "3d2c8806742004693c2d4726abbc4f412340ee07bed407976dd8abeda09a4333"
>
>   SRC_URI += "\
>   	file://policycoreutils-fix-sepolicy-install-path.patch \
> diff --git a/recipes-security/selinux/selinux_20131030.inc b/recipes-security/selinux/selinux_20131030.inc
> index 2cb35d5..01cc52f 100644
> --- a/recipes-security/selinux/selinux_20131030.inc
> +++ b/recipes-security/selinux/selinux_20131030.inc
> @@ -1,5 +1,5 @@
>   SELINUX_RELEASE = "20131030"
>
> -SRC_URI = "http://userspace.selinuxproject.org/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
> +SRC_URI = "https://github.com/SELinuxProject/selinux/archive/${BPN}-${PV}.tar.gz"


Hi Joe,

I have tested and want to change the SRC_URI to:
https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz
so we can get separate tarballs and no checksum changes.

Thanks:)

- Pascal


>
>   include selinux_common.inc
> diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
> index 6997cee..e53792d 100644
> --- a/recipes-security/selinux/selinux_common.inc
> +++ b/recipes-security/selinux/selinux_common.inc
> @@ -1,10 +1,14 @@
> -HOMEPAGE = "http://userspace.selinuxproject.org"
> +HOMEPAGE = "https://github.com/SELinuxProject"
>
>   # EXTRA_OEMAKE is typically: -e MAKEFLAGS=
>   # "MAKEFLAGS= " causes problems as ENV variables will not pass to subdirs, so
>   # we redefine EXTRA_OEMAKE here
>   EXTRA_OEMAKE = "-e"
>
> +# Releases are now from the base of the full tree, necessitating our skipping
> +# through an extra level of directories.
> +S = "${WORKDIR}/selinux-${BPN}-${PV}/${BPN}"
> +
>   do_compile() {
>       oe_runmake all \
>               INCLUDEDIR='${STAGING_INCDIR}' \
> diff --git a/recipes-security/selinux/selinux_git.inc b/recipes-security/selinux/selinux_git.inc
> index bb64d0d..d56f25b 100644
> --- a/recipes-security/selinux/selinux_git.inc
> +++ b/recipes-security/selinux/selinux_git.inc
> @@ -2,8 +2,10 @@ SRCREV = "edc2e99687b050d5be21a78a66d038aa1fc068d9"
>
>   SRC_URI = "git://oss.tresys.com/git/selinux.git;protocol=http"
>
> -S = "${WORKDIR}/git/${BPN}"
> -
>   include selinux_common.inc
>
> +# ${S} is set in selinux_common above, but we need to change it here since the
> +# top level directory is named differently
> +S = "${WORKDIR}/git/${BPN}"
> +
>   DEFAULT_PREFERENCE = "-1"
> diff --git a/recipes-security/selinux/sepolgen_1.2.1.bb b/recipes-security/selinux/sepolgen_1.2.1.bb
> index a253e17..21dff41 100644
> --- a/recipes-security/selinux/sepolgen_1.2.1.bb
> +++ b/recipes-security/selinux/sepolgen_1.2.1.bb
> @@ -5,5 +5,5 @@ include ${BPN}.inc
>
>   LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
>
> -SRC_URI[md5sum] = "ce662a83188bc3a9b40c15792fcaf2c8"
> -SRC_URI[sha256sum] = "438c246bdc6b3cf1b12116831f4c601aaae6e93decb007dddab212a3c88781b0"
> +SRC_URI[md5sum] = "308011ba495b6770239bb3d371d277d3"
> +SRC_URI[sha256sum] = "7a5710f7c8be16dfbaf8da98c3c0e46bc6159f2df5340e9efb975b084f61413c"
> diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
> index ba1802a..6f3b1dd 100644
> --- a/recipes-security/setools/setools_3.3.8.bb
> +++ b/recipes-security/setools/setools_3.3.8.bb
> @@ -8,7 +8,7 @@ SETools."
>   SECTION = "base"
>   LICENSE = "GPLv2 & LGPLv2.1"
>
> -SRC_URI = "http://oss.tresys.com/projects/setools/chrome/site/dists/setools-${PV}/setools-${PV}.tar.bz2;"
> +SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/setools3/files/dists/setools-${PV}/setools-${PV}.tar.bz2"
>   SRC_URI[md5sum] = "d68d0d4e4da0f01da0f208782ff04b91"
>   SRC_URI[sha256sum] = "44387ecc9a231ec536a937783440cd8960a72c51f14bffc1604b7525e341e999"
>
>
-- 
- Pascal

--------------000904020204060406060400
Content-Type: text/x-diff;
	name="0001-selinux-userspace-update-userspace-SRC_URI.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-selinux-userspace-update-userspace-SRC_URI.patch"

From 68530a5388bd60761e501b69beb6b6c115d00360 Mon Sep 17 00:00:00 2001
From: Joe MacDonald <joe_macdonald@mentor.com>
Date: Mon, 15 Sep 2014 15:46:35 -0400
Subject: [PATCH] selinux-userspace: update userspace SRC_URI

Trac has been turned off on OSS.  Update all SRC_URI links for the
userspace components to point at the github project releases.

Reviewed-by: Xin Ouyang <xin.ouyang@windriver.com>
Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
Signed-off-by: Xin Ouyang <xin.ouyang@windriver.com>
---
 recipes-security/selinux/selinux_20131030.inc |    2 +-
 recipes-security/selinux/selinux_common.inc   |    2 +-
 recipes-security/selinux/selinux_git.inc      |    6 ++++--
 recipes-security/setools/setools_3.3.8.bb     |    2 +-
 4 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/recipes-security/selinux/selinux_20131030.inc b/recipes-security/selinux/selinux_20131030.inc
index 2cb35d5..4144691 100644
--- a/recipes-security/selinux/selinux_20131030.inc
+++ b/recipes-security/selinux/selinux_20131030.inc
@@ -1,5 +1,5 @@
 SELINUX_RELEASE = "20131030"
 
-SRC_URI = "http://userspace.selinuxproject.org/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
+SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
 
 include selinux_common.inc
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index 6997cee..7efa694 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,4 +1,4 @@
-HOMEPAGE = "http://userspace.selinuxproject.org"
+HOMEPAGE = "https://github.com/SELinuxProject"
 
 # EXTRA_OEMAKE is typically: -e MAKEFLAGS=
 # "MAKEFLAGS= " causes problems as ENV variables will not pass to subdirs, so
diff --git a/recipes-security/selinux/selinux_git.inc b/recipes-security/selinux/selinux_git.inc
index bb64d0d..d56f25b 100644
--- a/recipes-security/selinux/selinux_git.inc
+++ b/recipes-security/selinux/selinux_git.inc
@@ -2,8 +2,10 @@ SRCREV = "edc2e99687b050d5be21a78a66d038aa1fc068d9"
 
 SRC_URI = "git://oss.tresys.com/git/selinux.git;protocol=http"
 
-S = "${WORKDIR}/git/${BPN}"
-
 include selinux_common.inc
 
+# ${S} is set in selinux_common above, but we need to change it here since the
+# top level directory is named differently
+S = "${WORKDIR}/git/${BPN}"
+
 DEFAULT_PREFERENCE = "-1"
diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
index ba1802a..6f3b1dd 100644
--- a/recipes-security/setools/setools_3.3.8.bb
+++ b/recipes-security/setools/setools_3.3.8.bb
@@ -8,7 +8,7 @@ SETools."
 SECTION = "base"
 LICENSE = "GPLv2 & LGPLv2.1"
 
-SRC_URI = "http://oss.tresys.com/projects/setools/chrome/site/dists/setools-${PV}/setools-${PV}.tar.bz2;"
+SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/setools3/files/dists/setools-${PV}/setools-${PV}.tar.bz2"
 SRC_URI[md5sum] = "d68d0d4e4da0f01da0f208782ff04b91"
 SRC_URI[sha256sum] = "44387ecc9a231ec536a937783440cd8960a72c51f14bffc1604b7525e341e999"
 
-- 
1.7.9.5


--------------000904020204060406060400--
