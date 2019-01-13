Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0136CE00CCE; Sun, 13 Jan 2019 03:14:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6490E0082D
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 03:14:05 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id d39so16417611edb.12
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 03:14:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=cBj+fyKq9TpjA8O8T0oeH6FczDAARD72+0EmfGmbcjY=;
	b=YZ6Ph4710rN/q3G+Xs2I83gmy0d+OAiG2mKsQ4Woy/9ywlER9IYB5vxKH03azrQfGj
	wFGfi4CuxYFvHITAVe2978lvrfDgj4g18dTiCNdbwo26T7siDBoRV8UBifjc7+FWbMRE
	vdk/kjyeU8ZDZYEJ6M/rKDEII4/o15R1iG2dZ/qrFECchK4LYMd2Ae1Fvbd0Q2euA5Dr
	JbaxN9uubxRzzvmOiqo48M86gaxyLjidjMEybaLFhqvk7WGhAM5+7jDsXuB4nxzkkfXE
	8Nly97Set0yU40GcP1OS/LgZxXebMmbYwZ/Bv1hGtzVTD/hhmHFrWvOS9YV77pwtU8lN
	A2Pw==
X-Gm-Message-State: AJcUukd1qJis3TnUYfx6oaox2yojYFabkw/tHglyhUU59I3atAg44aG0
	GSOF9TO63/XJN3iO4kQyux725cNC
X-Google-Smtp-Source: ALg8bN5Xo6MwmFdjX6wdGaXnCqvmgBToLGypxs5WdmAx8OJPcBzaYvIkVdir3fFViFCGWSW7ARyu1w==
X-Received: by 2002:a17:906:23f1:: with SMTP id
	j17-v6mr17240012ejg.155.1547378044363; 
	Sun, 13 Jan 2019 03:14:04 -0800 (PST)
Received: from tfsielt31850.fritz.box (188-141-55-36.dynamic.upc.ie.
	[188.141.55.36]) by smtp.gmail.com with ESMTPSA id
	a13-v6sm1964358ejt.69.2019.01.13.03.14.03
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 13 Jan 2019 03:14:03 -0800 (PST)
Message-ID: <94d1cc0ddb64cecb162c89747e004e13ca280baf.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Sun, 13 Jan 2019 11:14:03 +0000
In-Reply-To: <20190113111114.18412-1-git@andred.net>
References: <20190113111114.18412-1-git@andred.net>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Subject: Re: [meta-java][PATCH] remove True option to getVar calls
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
X-List-Received-Date: Sun, 13 Jan 2019 11:14:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Reposted to correct list...

On Sun, 2019-01-13 at 11:11 +0000, André Draszik wrote:
> From: André Draszik <andre.draszik@jci.com>
> 
> getVar() has been defaulting to expanding by default for
> a long time (2016), thus remove the True option from
> getVar() calls with a regex search and replace.
> 
> Search & replace made using the following command:
>     sed -e 's|\(d\.getVar \?\)( \?\([^,()]*\), \?True)|\1(\2)|g' \
>         -i $(git grep -E 'getVar ?\( ?([^,()]*), ?True\)' \
>              | cut -d':' -f1 \
>              | sort -u)
> 
> Signed-off-by: André Draszik <andre.draszik@jci.com>
> ---
>  classes/java-library.bbclass              |  4 ++--
>  classes/openjdk-build-helper.bbclass      | 10 +++++-----
>  recipes-core/openjdk/openjdk-7-common.inc |  2 +-
>  recipes-core/openjdk/openjdk-8-common.inc |  4 ++--
>  recipes-core/openjdk/openjdk-8-cross.inc  | 10 +++++-----
>  5 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/classes/java-library.bbclass b/classes/java-library.bbclass
> index e0159ba..d801930 100644
> --- a/classes/java-library.bbclass
> +++ b/classes/java-library.bbclass
> @@ -27,8 +27,8 @@ def java_package_name(d):
>    pre=""
>    post=""
>  
> -  bpn = d.getVar('BPN', True)
> -  ml = d.getVar('MLPREFIX', True)
> +  bpn = d.getVar('BPN')
> +  ml = d.getVar('MLPREFIX')
>    if not bpn.startswith("lib"):
>      pre='lib'
>  
> diff --git a/classes/openjdk-build-helper.bbclass b/classes/openjdk-build-
> helper.bbclass
> index 01ed591..8d83e02 100644
> --- a/classes/openjdk-build-helper.bbclass
> +++ b/classes/openjdk-build-helper.bbclass
> @@ -9,7 +9,7 @@ EXTRA_OEMAKE_remove_task-install = "${PARALLEL_MAKEINST}"
>  # In OE we have PARALLEL_MAKE which is the actual option passed to make,
>  # e.g. "-j 4".
>  def openjdk_build_helper_get_parallel_make(d):
> -    pm = d.getVar('PARALLEL_MAKE', True);
> +    pm = d.getVar('PARALLEL_MAKE');
>      if not pm or '-j' not in pm:
>          return 1
>  
> @@ -55,7 +55,7 @@ def openjdk_build_helper_get_target_cflags(d):
>  def openjdk_build_helper_get_jdk_arch(d):
>      import bb
>  
> -    jdk_arch = d.getVar('TRANSLATED_TARGET_ARCH', True)
> +    jdk_arch = d.getVar('TRANSLATED_TARGET_ARCH')
>      if jdk_arch == "x86-64":
>          jdk_arch = "amd64"
>      elif jdk_arch == "powerpc":
> @@ -73,7 +73,7 @@ def openjdk_build_helper_get_jdk_arch(d):
>  def openjdk_build_helper_get_llvm_configure_arch(d):
>      import bb;
>  
> -    arch = d.getVar('TRANSLATED_TARGET_ARCH', True)
> +    arch = d.getVar('TRANSLATED_TARGET_ARCH')
>      if arch in ['i386', 'i486', 'i586', 'i686', 'x86-64']:
>          arch = "x86"
>      elif arch in ['mipsel', 'mips']:
> @@ -84,7 +84,7 @@ def openjdk_build_helper_get_llvm_configure_arch(d):
>          arch = "arm"
>      else:
>          if 'shark' in d.getVar('PACKAGECONFIG').split():
> -            bb.warn("%s does not support %s in Shark builds yet" %
> (d.getVar('PN', True), arch) );
> +            bb.warn("%s does not support %s in Shark builds yet" %
> (d.getVar('PN'), arch) );
>  
>      return arch
>  
> @@ -93,7 +93,7 @@ def openjdk_build_helper_get_llvm_configure_arch(d):
>  def openjdk_build_helper_get_icedtea_arch(d):
>      import bb;
>  
> -    arch = d.getVar('TRANSLATED_TARGET_ARCH', True)
> +    arch = d.getVar('TRANSLATED_TARGET_ARCH')
>      if arch == "x86-64":
>          arch = "amd64"
>      elif arch in ['i386', 'i486', 'i586', 'i686']:
> diff --git a/recipes-core/openjdk/openjdk-7-common.inc b/recipes-
> core/openjdk/openjdk-7-common.inc
> index 794bf58..d59a57a 100644
> --- a/recipes-core/openjdk/openjdk-7-common.inc
> +++ b/recipes-core/openjdk/openjdk-7-common.inc
> @@ -93,7 +93,7 @@ export ALT_CUPS_HEADERS_PATH = "${STAGING_INCDIR}"
>  export ALT_FREETYPE_HEADERS_PATH = "${STAGING_INCDIR}/freetype2"
>  export ALT_FREETYPE_LIB_PATH = "${STAGING_LIBDIR}"
>  export CACAO_CONFIGURE_ARGS = " \
> -    ${@['','--enable-softfloat'][d.getVar('TARGET_FPU', True) ==
> 'soft']}"
> +    ${@['','--enable-softfloat'][d.getVar('TARGET_FPU') == 'soft']}"
>  
>  JAVA_HOME[unexport] = "1"
>  
> diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-
> core/openjdk/openjdk-8-common.inc
> index 4d8f935..1fbe7fe 100644
> --- a/recipes-core/openjdk/openjdk-8-common.inc
> +++ b/recipes-core/openjdk/openjdk-8-common.inc
> @@ -163,8 +163,8 @@ export DEBUG_BINARIES = "true"
>  
>  ALTERNATIVE_PRIORITY = "50"
>  
> -OPENJDK_UPDATE_VERSION = "${@d.getVar('PV', True).split('b')[0]}"
> -OPENJDK_BUILD_NUMBER = "b${@d.getVar('PV', True).split('b')[1]}"
> +OPENJDK_UPDATE_VERSION = "${@d.getVar('PV').split('b')[0]}"
> +OPENJDK_BUILD_NUMBER = "b${@d.getVar('PV').split('b')[1]}"
>  EXTRA_OECONF_append = "\
>          --with-build-number=${OPENJDK_BUILD_NUMBER} \
>          --with-update-version=${OPENJDK_UPDATE_VERSION} \
> diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-
> core/openjdk/openjdk-8-cross.inc
> index d04b0d3..7d6c1a5 100644
> --- a/recipes-core/openjdk/openjdk-8-cross.inc
> +++ b/recipes-core/openjdk/openjdk-8-cross.inc
> @@ -108,14 +108,14 @@ EXTRA_OEMAKE_append = '\
>  '
>  
>  python remove_debuglink() {
> -    dvar = d.getVar('PKGD', True)
> -    objcopy = d.getVar("OBJCOPY", True)
> +    dvar = d.getVar('PKGD')
> +    objcopy = d.getVar("OBJCOPY")
>  
>      # Remove the previous debuglink if it has existed, because it has a
> different file name with that we will add.
> -    if d.getVar('PN', True).find("jre") != -1:
> -        file = dvar + d.getVar("JRE_HOME", True) + "/lib/" +
> d.getVar("JDK_ARCH", True) + "/server/libjvm.so"
> +    if d.getVar('PN').find("jre") != -1:
> +        file = dvar + d.getVar("JRE_HOME") + "/lib/" +
> d.getVar("JDK_ARCH") + "/server/libjvm.so"
>      else:
> -        file = dvar + d.getVar("JDK_HOME", True) + "/jre/lib/" +
> d.getVar("JDK_ARCH", True) + "/server/libjvm.so"
> +        file = dvar + d.getVar("JDK_HOME") + "/jre/lib/" +
> d.getVar("JDK_ARCH") + "/server/libjvm.so"
>  
>      cmd = "'%s' --remove-section .gnu_debuglink '%s'" % (objcopy, file)
>      oe.utils.getstatusoutput(cmd)


