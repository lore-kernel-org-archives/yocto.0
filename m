Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C15B4E0077A
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 03:43:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Feb 2014 03:39:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,786,1384329600"; d="scan'208";a="478409442"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.170])
	by orsmga002.jf.intel.com with ESMTP; 05 Feb 2014 03:43:29 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 05 Feb 2014 11:43:27 +0000
Message-ID: <4625095.yYDEiBqlji@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.9-301.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
References: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, ajlennon@gmail.com
Subject: Re: [PATCH 1/2] mono-xsp: Fix parse warnings
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
X-List-Received-Date: Wed, 05 Feb 2014 11:43:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Khem,

On Tuesday 04 February 2014 10:44:57 Khem Raj wrote:
> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> ${base_libdir}/*.la) replaces original key FILES_mono-xsp-dev (
> /usr/lib/pkgconfig/xsp.pc       /usr/lib/pkgconfig/xsp-2.pc     ).
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-mono/mono-xsp/mono-xsp_1.2.5.bb | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
> b/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb index b27e74e..648477a 100644
> --- a/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
> +++ b/recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
> @@ -7,7 +7,6 @@ SECTION = "devel/mono"
>  #  - scripts in /usr/bin contain the wrong paths
>  #
> 
> -
>  PR = "r5"
> 
>  DEPENDS = "mono"
> @@ -21,16 +20,14 @@ SRC_URI =
> "http://go-mono.com/sources/xsp/xsp-${PV}.tar.bz2"
> 
>  S = "${WORKDIR}/xsp-${PV}"
> 
> -PACKAGES = "${PN}-dbg \
> +PACKAGES += "\

Should this be += or =+ ?

>  	libmono-webserver1.0-cil \
>  	libmono-webserver2.0-cil \
>  	mono-xsp \
> -	mono-xsp2 \
> -	mono-xsp-test \
> +	${PN}2 \
> +	${PN}-test \

Er, so you've changed it to modify instead of set PACKAGES above, so shouldn't 
the "mono-xsp" entry be removed as well since ${PN} is already in the default 
value of PACKAGES?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

