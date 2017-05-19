Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE217E0094C; Fri, 19 May 2017 07:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E5CE00812
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:49:59 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id s62so10033543pgc.0
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=64eGS70XUQ8cSbhuu9OV0q2UNs96HvLmdQhKUh2ftSE=;
	b=AvDihmCtRhuKBFTlOqXgXk/2VyZ5mxGT2Tq9YusMGLTI9MYnZV9mAYj4yvDNVXFoER
	NC7kH4kVankCjNYvS/KDdIc2DESxYWphFBgfwqwePNbxxpiW/37jTEZ1N6/xP+QipBiZ
	Q3GI0s0RykpEzQap3NC5VTgyCXfBo5GM4G87Q70pyoucbFXZTnb+FwVeDRhoe/ZXv2RO
	g21HAkUc3v7KBRvlCavr7jUTIEgEWC4qswtFu7f2bS4BODDQXNOywHONSc9s8zVnA66t
	WKigv4eaINmPsl6H1FWEHOqF495f9hiwF+V0HNkGvJKZw3dg4Yb0TVQFeKKFQDFsJ3t2
	dhRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=64eGS70XUQ8cSbhuu9OV0q2UNs96HvLmdQhKUh2ftSE=;
	b=ecHarAsqaXao5wn6qzokz7XkAR9TZmQhNYAn56q+0o243kTK2aXJu60LVNt41Xaydb
	Bq5364FUtu1nobnoH2eoVWdoROSanByQrLQtVOumTlrDbrCid7ir9st+JnYoP2upC+gT
	q4iiG4LhfjM8VnaM7d3FOrPlLOvCu8kdoj9QLNdgFP45968QayzkKHPgX/BRC91Y9EYm
	6p6lI6N/L/uPJ3+1yRtTm2rMmGZJry719CcHh9+LEF2hIXB/Pe6Uw8uyBEbYLisnKvsK
	2JHdYPiwSQlw6ujtumMHe/hett8bnGfckZce6Q187N17SlQt+DUbhzNJQxy4ljFRr4Pp
	rq3A==
X-Gm-Message-State: AODbwcCEqIXPQKZcxNbfgnHLITXv6hrXJXEJWcePIoECikOR3bgExugg
	769XHES95nYisXrVev0=
X-Received: by 10.99.127.80 with SMTP id p16mr10581408pgn.180.1495205398651;
	Fri, 19 May 2017 07:49:58 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:556f:b9ba:b26e:7f00?
	([2601:202:4001:9ea0:556f:b9ba:b26e:7f00])
	by smtp.gmail.com with ESMTPSA id
	u78sm14764842pfa.47.2017.05.19.07.49.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 19 May 2017 07:49:58 -0700 (PDT)
To: jackie.huang@windriver.com, yocto@yoctoproject.org
References: <cover.1495007644.git.jackie.huang@windriver.com>
	<8e4ad559ae8543501c07c6d12a09e72688ceb72a.1495007644.git.jackie.huang@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <5576d9c1-a95c-c274-c748-952c0dc7ed49@gmail.com>
Date: Fri, 19 May 2017 07:49:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <8e4ad559ae8543501c07c6d12a09e72688ceb72a.1495007644.git.jackie.huang@windriver.com>
Subject: Re: [meta-security][PATCH 2/2] ecryptfs-utils: add new recipe
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
X-List-Received-Date: Fri, 19 May 2017 14:50:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 05/17/2017 12:56 AM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> eCryptfs is a stacked cryptographic filesystem that ships
> in Linux kernel versions 2.6.19 and above. This package
> provides the mount helper and supporting libraries to
> perform key management and mount functions.
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>

This has the following warning:
WARNING: libpam-1.3.0-r5 do_pam_sanity: Building libpam but 'pam' isn't 
in DISTRO_FEATURES, PAM won't work correctly

I noticed this package has the ability to disable-pam so maybe 
PACKAGECONFIG with the DISTRO_FEATURES check for PAM would be applicable 
in this case?

please investigate.

everything else looks fine for inclusion to meta-security.

regards,
Armin

> ---
>   .../ecryptfs-utils/ecryptfs-utils_111.bb           | 52 +++++++++++++++++
>   .../files/ecryptfs-utils-CVE-2016-6224.patch       | 65 ++++++++++++++++++++++
>   2 files changed, 117 insertions(+)
>   create mode 100644 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
>   create mode 100644 recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
>
> diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> new file mode 100644
> index 0000000..49c2605
> --- /dev/null
> +++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> @@ -0,0 +1,52 @@
> +SUMMARY = "The eCryptfs mount helper and support libraries"
> +DESCRIPTION = "eCryptfs is a stacked cryptographic filesystem \
> +    that ships in Linux kernel versions 2.6.19 and above. This \
> +    package provides the mount helper and supporting libraries \
> +    to perform key management and mount functions."
> +HOMEPAGE = "https://launchpad.net/ecryptfs"
> +SECTION = "base"
> +
> +LICENSE = "GPL-2.0"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
> +
> +DEPENDS = "keyutils libgcrypt libpam nss intltool-native glib-2.0-native"
> +
> +inherit autotools pkgconfig
> +
> +SRC_URI = "\
> +    https://launchpad.net/ecryptfs/trunk/${PV}/+download/${BPN}_${PV}.orig.tar.gz \
> +    file://ecryptfs-utils-CVE-2016-6224.patch \
> +    "
> +
> +SRC_URI[md5sum] = "83513228984f671930752c3518cac6fd"
> +SRC_URI[sha256sum] = "112cb3e37e81a1ecd8e39516725dec0ce55c5f3df6284e0f4cc0f118750a987f"
> +
> +PARALLEL_MAKEINST=""
> +
> +EXTRA_OECONF = "\
> +    --libdir=${base_libdir} \
> +    --disable-pywrap \
> +    --disable-nls \
> +    --enable-openssl=no \
> +    "
> +
> +do_configure_prepend() {
> +    export NSS_CFLAGS="-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
> +    export NSS_LIBS="-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 -lsoftokn3 -lnssutil3"
> +    export KEYUTILS_CFLAGS="-I${STAGING_INCDIR}"
> +    export KEYUTILS_LIBS="-L${STAGING_LIBDIR} -lkeyutils"
> +}
> +
> +do_install_append() {
> +    chmod 4755 ${D}${base_sbindir}/mount.ecryptfs_private
> +    mkdir -p ${D}/${libdir}
> +    mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}
> +    sed -i -e 's:-I${STAGING_INCDIR}::' \
> +           -e 's:-L${STAGING_LIBDIR}::' ${D}/${libdir}/pkgconfig/libecryptfs.pc
> +    sed -i -e "s: ${base_sbindir}/cryptsetup: ${sbindir}/cryptsetup:" ${D}${bindir}/ecryptfs-setup-swap
> +}
> +
> +FILES_${PN} += "${base_libdir}/security/* ${base_libdir}/ecryptfs/*"
> +
> +RDEPENDS_${PN} += "cryptsetup"
> +RRECOMMENDS_${PN} = "gettext-runtime"
> diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
> new file mode 100644
> index 0000000..4252f97
> --- /dev/null
> +++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
> @@ -0,0 +1,65 @@
> +From 558a513ba3100ea5190de1a24cf1fed663367765 Mon Sep 17 00:00:00 2001
> +From: Li Zhou <li.zhou@windriver.com>
> +Date: Mon, 5 Sep 2016 10:28:08 +0800
> +Subject: [PATCH] ecryptfs-utils: CVE-2016-6224
> +
> +src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partitions from
> +being automatically enabled by systemd. This bug affected GPT partitioned
> +NVMe/MMC drives and resulted in the swap partition being used without
> +encryption. It also resulted in a usability issue in that users were
> +erroneously prompted to enter a pass-phrase to unlock their swap partition
> +at boot. (LP: #1597154)
> +
> +the patch comes from:
> +https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-6224
> +https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
> +
> +Upstream-Status: backport
> +
> +Signed-off-by: Li Zhou <li.zhou@windriver.com>
> +---
> + ChangeLog                     |  9 +++++++++
> + src/utils/ecryptfs-setup-swap | 10 ++++++++--
> + 2 files changed, 17 insertions(+), 2 deletions(-)
> +
> +diff --git a/ChangeLog b/ChangeLog
> +index d255a94..2c9c73e 100644
> +--- a/ChangeLog
> ++++ b/ChangeLog
> +@@ -1,3 +1,12 @@
> ++ecryptfs-utils-112
> ++  [ Jason Gerard DeRose ]
> ++  * src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partitions from
> ++    being automatically enabled by systemd. This bug affected GPT partitioned
> ++    NVMe/MMC drives and resulted in the swap partition being used without
> ++    encryption. It also resulted in a usability issue in that users were
> ++    erroneously prompted to enter a pass-phrase to unlock their swap partition
> ++    at boot. (LP: #1597154)
> ++
> + ecryptfs-utils-74
> +   [ Michal Hlavinka ]
> +   * Changes for RH/Fedora release
> +diff --git a/src/utils/ecryptfs-setup-swap b/src/utils/ecryptfs-setup-swap
> +index 41cf18a..e4785d7 100755
> +--- a/src/utils/ecryptfs-setup-swap
> ++++ b/src/utils/ecryptfs-setup-swap
> +@@ -166,8 +166,14 @@ for swap in $swaps; do
> + 	# If this is a GPT partition, mark it as no-auto mounting, to avoid
> + 	# auto-activating it on boot
> + 	if [ "$(blkid -p -s PART_ENTRY_SCHEME -o value "$swap")" = "gpt" ]; then
> +-		drive="${swap%[0-9]*}"
> +-		partno="${swap#$drive}"
> ++		# Correctly handle NVMe/MMC drives, as well as any similar physical
> ++		# block device that follow the "/dev/foo0p1" pattern (LP: #1597154)
> ++		if echo "$swap" | grep -qE "^/dev/.+[0-9]+p[0-9]+$"; then
> ++			drive=$(echo "$swap" | sed "s:\(.\+[0-9]\)p[0-9]\+:\1:")
> ++		else
> ++			drive=$(echo "$swap" | sed "s:\(.\+[^0-9]\)[0-9]\+:\1:")
> ++		fi
> ++		partno=$(echo "$swap" | sed "s:.\+[^0-9]\([0-9]\+\):\1:")
> + 		if [ -b "$drive" ]; then
> + 			if printf "x\np\n" | fdisk "$drive" | grep -q "^$swap .* GUID:.*\b63\b"; then
> + 				echo "$swap is already marked as no-auto"
> +--
> +1.9.1
> +


