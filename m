Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF60E00A84; Mon,  6 May 2019 09:27:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
	[209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95586E00A62
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 09:27:48 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id r10so3195724vsi.10
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 09:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=l+uu1eJ3ly1WDpIgyQh5j3dLOQstXG5jzta5dlCyTAs=;
	b=rhbZVEKz2bpMRqa0axbtl5VOKRkHleyeCy97cfDPEJdsVoCDEIB9o+mEkVIjCCOyuE
	wXwTjhPPLAzKDgNx4A7OP+nkqqIvsBq5nDBXQuA+LbfYzqi/L2hHWmiWx9pmSxrMCngk
	ZgpDtFMVMUMhzPIVxVP+exmCt8/JyxHzRu0dD76xo7Ml4oMTXioflU12UtaUFJ+VvhgT
	wa5LEJCcyG+Spfc3P/xMDOuQrJjh87k6//gpmGIWoiOuWgDRES8qcaiFsN+q+VHYxemJ
	dMpt9yjdd+qGE3yutHIRnnRBOkVfEohHD7trHsgkIG+8qcExoPVs3VaAEi88DSqalhPK
	zC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=l+uu1eJ3ly1WDpIgyQh5j3dLOQstXG5jzta5dlCyTAs=;
	b=iV9x77e+BI3GlKjKdcYNlDJRw5iOf5Z+zcmL6ND8DEje4KfORIzSr9UmmW8j1uXQb6
	6BetGE7dWZz1dTmuXjQLF4J4BP2ZEdZ91Wx/y3RN2ylupWr4I71+cc4GeONwVdwhsONJ
	F38vpIccrgbmVRX+a1+cZYqE5Wanp7P528f7dcsgapXAZzv0MEakYA5aqNLis09Oiie/
	PSphmQy/KtP+dysNo+rcl/okV2P4r9ogndyBFkf4v1h2Iw5I7zkczRE8NzTiP9qmcNDU
	yX8STW74QZEGVQsfH7eoOSY0VSsseOvVoI7ZRsktsTXViDMld/Yaqo0kXIpCsI8sqiEy
	Le+A==
X-Gm-Message-State: APjAAAWhlkFGbqTn8ePKG/YFHCl0No+YzjaWwqQTBIVBJp7NHgYWoLg1
	2XLGISxX7Bo18fJEVodNb5htz+QNHsu6vx2S2+4OGw==
X-Google-Smtp-Source: APXvYqwZZKDUGcQQUQ0SfPxtswrruafPeKMMERDSrEl58l0/r9VAvpyNQ3qzEZls1wokKYKtgEiQdprjWRsLV/Rv9IU=
X-Received: by 2002:a67:ca8f:: with SMTP id a15mr10632942vsl.22.1557160067653; 
	Mon, 06 May 2019 09:27:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:3001:0:0:0:0:0 with HTTP;
	Mon, 6 May 2019 09:27:47 -0700 (PDT)
From: Eric Grunt <gruntblue@gmail.com>
Date: Mon, 6 May 2019 23:27:47 +0700
Message-ID: <CADB9fJHnTXxW78EqNNfeoh2GHM4fqETzC_wo1U58KBRDDJ5TmA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: yocto sumo - upgrading gcc from 7.3 to 8.3 fails - C compiler cannot create executables
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
X-List-Received-Date: Mon, 06 May 2019 16:27:49 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried to upgrade gcc from 7.3 to 8.3 by copying
gcc directory from https://github.com/openembedded/openembedded-core.git
(openembedded-core/meta/recipes-devtools/gcc)
to meta-custom-layer/recipes-gcc,
replacing requires to recipes-devtools/gcc/*inc in all bb files in there,
eg
require recipes-devtools/gcc/gcc-${PV}.inc/require becomes
require gcc-${PV}.inc,

changing gcc and sdk Version in local.conf to 8.%

GCCVERSION = "8.%"
SDKGCCVERSION = "8.%"

and by removing gcc-initial dependency from glibc.

diff --git a/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
b/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
index b86e2fb..4df63ae 100644
--- a/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
+++ b/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
@@ -1,4 +1,4 @@
-DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc-initial
libgcc-initial"
+DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc libgcc-initial"
 PROVIDES = "virtual/${TARGET_PREFIX}libc-initial"

 PACKAGES = ""
diff --git a/sources/poky/meta/recipes-core/glibc/glibc.inc
b/sources/poky/meta/recipes-core/glibc/glibc.inc
index ce1222b..69b15ec 100644
--- a/sources/poky/meta/recipes-core/glibc/glibc.inc
+++ b/sources/poky/meta/recipes-core/glibc/glibc.inc
@@ -32,7 +32,7 @@ siteconfig_do_siteconfig_gencache_prepend = " \
 "

 # nptl needs unwind support in gcc, which can't be built without glibc.
-DEPENDS = "virtual/${TARGET_PREFIX}gcc-initial libgcc-initial
linux-libc-headers virtual/${TARGET_PREFIX}libc-initial"
+DEPENDS = "virtual/${TARGET_PREFIX}gcc libgcc-initial
linux-libc-headers virtual/${TARGET_PREFIX}libc-initial"
 # nptl needs libgcc but dlopens it, so our shlibs code doesn't detect this
 #RDEPENDS_${PN} += "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"


After that, bitbake core-image-minimal fails at do_populate_sysroot
step for glibc_2.27:

| DEBUG: Executing shell function do_siteconfig_gencache
| configure: WARNING: unrecognized options: --disable-silent-rules,
--disable-dependency-tracking, --with-libtool-sysroot
| configure: creating cache glibc_cache
| checking for arm-poky-linux-gnueabi-gcc...
arm-poky-linux-gnueabi-gcc  -march=armv7ve -marm -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/yocto/sigma/yocto-sumo/build/tmp_dev/work/cortexa7hf-neon-poky-linux-gnueabi/glibc/2.27-r0/recipe-sysroot
| checking whether the C compiler works... no
| configure: error: in
`/home/yocto/sigma/yocto-sumo/build/tmp_dev/work/cortexa7hf-neon-poky-linux-gnueabi/glibc/2.27-r0/site_config_imx6ul-var-dart':
| configure: error: C compiler cannot create executables
| See `config.log' for more details
| WARNING: exit code 77 from a shell command.
| DEBUG: Python function siteconfig_do_siteconfig finished
| DEBUG: Python function do_siteconfig finished
| DEBUG: Python function sstate_task_postfunc finished
| ERROR: Function failed: do_siteconfig_gencache

Do I have to perform something additional to be able to use gcc 8.3?

