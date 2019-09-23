Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0F94E00D4E; Mon, 23 Sep 2019 07:14:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 73 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Sep 2019 07:14:42 PDT
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59557E00D46
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:14:42 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x8NEEWGv008259
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 23 Sep 2019 09:14:34 -0500
To: Hongxu Jia <hongxu.jia@windriver.com>, jason.wessel@windriver.com,
	yocto@yoctoproject.org
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
	<1569164228-26934-2-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <be81562a-d337-ba75-eeea-d31528e71c75@kernel.crashing.org>
Date: Mon, 23 Sep 2019 09:14:31 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1569164228-26934-2-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH 1/15] fipscheck: add 1.5.0
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
X-List-Received-Date: Mon, 23 Sep 2019 14:14:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Please include the commit id of the Fedora version that was included.  It will
help us review changes in the future.

On 9/22/19 9:56 AM, Hongxu Jia wrote:
> Port it from fedora:
> https://src.fedoraproject.org/rpms/fipscheck
> 
> It is required by openssh fips.
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  .../0001-compat-fip-with-openssl-1.0.2.patch       | 34 ++++++++++++++++++++++
>  recipes-connectivity/openssh/fipscheck_1.5.0.bb    | 30 +++++++++++++++++++
>  templates/feature/openssl-fips/template.conf       |  2 +-
>  3 files changed, 65 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch
>  create mode 100644 recipes-connectivity/openssh/fipscheck_1.5.0.bb
> 
> diff --git a/recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch b/recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch
> new file mode 100644
> index 0000000..22e5a62
> --- /dev/null
> +++ b/recipes-connectivity/openssh/fipscheck/0001-compat-fip-with-openssl-1.0.2.patch
> @@ -0,0 +1,34 @@
> +From 3147ae2a63f10f9bbdd0a617b450ff8b9868e60f Mon Sep 17 00:00:00 2001
> +From: Hongxu Jia <hongxu.jia@windriver.com>
> +Date: Fri, 20 Sep 2019 17:51:09 +0800
> +Subject: [PATCH] compat fip with openssl 1.0.2
> +
> +In /usr/lib64/ssl/fips-2.0/include/openssl/opensslv.h
> +...
> +define OPENSSL_VERSION_NUMBER  0x10100000L
> +...
> +Since fips include file compat with openssl 1.1.0, do not include it
> +in Yocto
> +
> +Upstream-Status: Inappropriate [oe specific]
> +
> +Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> +---
> + src/filehmac.c | 1 -
> + 1 file changed, 1 deletion(-)
> +
> +diff --git a/src/filehmac.c b/src/filehmac.c
> +index a8eef00..0b36cec 100644
> +--- a/src/filehmac.c
> ++++ b/src/filehmac.c
> +@@ -41,7 +41,6 @@
> + #include <sys/wait.h>
> + 
> + #if defined(WITH_OPENSSL)
> +-#include <openssl/fips.h>
> + #include <openssl/evp.h>
> + #include <openssl/hmac.h>
> + #elif defined(WITH_NSS)
> +-- 
> +2.7.4
> +
> diff --git a/recipes-connectivity/openssh/fipscheck_1.5.0.bb b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> new file mode 100644
> index 0000000..68051d2
> --- /dev/null
> +++ b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> @@ -0,0 +1,30 @@
> +SUMMARY = "A library for integrity verification of FIPS validated modules"
> +DESCRIPTION = "FIPSCheck is a library for integrity verification of FIPS validated \
> +modules. The package also provides helper binaries for creation and \
> +verification of the HMAC-SHA256 checksum files."
> +HOMEPAGE = "https://pagure.io/fipscheck"
> +SECTION = "libs/network"
> +
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=35f2904ce138ac5fa63e7cedf96bbedf"
> +
> +SRC_URI = "https://releases.pagure.org/fipscheck/${BPN}-${PV}.tar.bz2 \
> +           file://0001-compat-fip-with-openssl-1.0.2.patch \
> +"
> +SRC_URI[md5sum] = "86e756a7d2aa15f3f91033fb3eced99b"
> +SRC_URI[sha256sum] = "7ba38100ced187f44b12dd52c8c74db8f366a2a8b9da819bd3e7c6ea17f469d5"
> +
> +DEPENDS = " \
> +    openssl \
> +    openssl-fips \
> +"
> +
> +inherit autotools pkgconfig
> +
> +EXTRA_OECONF += " \
> +    --disable-static \
> +"
> +EXTRA_OEMAKE += " \
> +    -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
> +"
> +
> diff --git a/templates/feature/openssl-fips/template.conf b/templates/feature/openssl-fips/template.conf
> index 6da678c..9a551c3 100644
> --- a/templates/feature/openssl-fips/template.conf
> +++ b/templates/feature/openssl-fips/template.conf
> @@ -8,4 +8,4 @@ OPENSSL_FIPS_PREBUILT ??= ""
>  
>  PNWHITELIST_meta-openssl-one-zero-two-fips += 'openssl-fips'
>  PNWHITELIST_meta-openssl-one-zero-two-fips += 'openssl-fips-example'
> -
> +PNWHITELIST_meta-openssl-one-zero-two-fips += 'fipscheck'
> 

