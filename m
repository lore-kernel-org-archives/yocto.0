Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B227E009C5; Fri,  2 May 2014 12:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF037E009BA
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 12:16:26 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s42JA4K6019963; Fri, 2 May 2014 20:10:04 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id FZYrW76UXvAm; Fri,  2 May 2014 20:10:04 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s42JA0Ke019958
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 2 May 2014 20:10:01 +0100
Message-ID: <1399057794.12731.61.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Woodyatt, James" <james.woodyatt@intel.com>
Date: Fri, 02 May 2014 20:09:54 +0100
In-Reply-To: <9B489023-F966-4C06-ACD4-A5028E46D5F1@intel.com>
References: <9B489023-F966-4C06-ACD4-A5028E46D5F1@intel.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] dylan: fix C++ standard library headers on OS X
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
X-List-Received-Date: Fri, 02 May 2014 19:16:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-05-01 at 23:02 +0000, Woodyatt, James wrote:
> commit 562fa987cea60d61c256195adce7e83bf1c1a8c9
> Author: james woodyatt <james.woodyatt@intel.com>
> Date:   Thu May 1 14:44:39 2014 -0700
> 
>     Fix C++ standard library header directory configuration.
>     
>     Remove the 4.2.1 directory from the --with-gxx-include-dir path provided
>     to the configure script for GCC 4.7 in the cross-canadian build.
> 
> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend b/recipes-devt
> index 3fcc012..083b930 100644
> --- a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
> +++ b/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
> @@ -4,7 +4,7 @@ INSANE_SKIP_${PN}_append_darwinsdk = " staticdev"
>  LDFLAGS_darwinsdk = "${BUILDSDK_LDFLAGS} -L${libdir}/.."
>  
>  # Change gxx-include-dir
> -EXTRA_OECONF_PATHS_darwinsdk = "--with-gxx-include-dir=${SDKPATH}/sysroots/${TU
> +EXTRA_OECONF_PATHS_darwinsdk = "--with-gxx-include-dir=${SDKPATH}/sysroots/${TU
>                        --with-build-time-tools=${STAGING_DIR_NATIVE}${prefix_nat
>                        --with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGE
>                        --with-build-sysroot=${STAGING_DIR_TARGET}"
> 

This patch is truncated at the linewrap unfortunately :(

Cheers,

Richard


