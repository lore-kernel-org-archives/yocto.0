Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB086E00571; Wed, 23 Oct 2019 15:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FF0E00571
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 15:34:06 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id t16so18644396wrr.1
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 15:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=3vvkAA+IG7P677iLi1k5U+lX7WGqQcR0oo/IKTVwnT0=;
	b=GTKPco36eNSOPq/z17xBQpwf8KS+TMZHMx//Xn9M075icJAEvvT21szcAWQ9nSlE4Z
	DobBIvc3D+nNepNA9/nO5QWQ/r8Fz9s8xqyJB/KPiHT2/p1+fLzLhdTNLa/k5H+fLBZI
	Q+Y6lFAffBFyxdFHCgAdOl6OezQ7RS/vYB5pU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=3vvkAA+IG7P677iLi1k5U+lX7WGqQcR0oo/IKTVwnT0=;
	b=qpVn9BBwAyfM8f98ZX9AT2jbRmz646u4ID7eW03q2FzeHc8C+8ZJdqNShqDqEVQ9SV
	+t04K8kw8Nfav8kDblF8Y63ktH9AwFyH+UroN51qrct5JZJUC+RDrQIR9dZQ25MMikUq
	IukvmfW2tmHHGsWD+c5EPVt8R86ywKP/2hmEabOBIaqHNMcE2gjju5vwq+4PBFBSVjBi
	FVVh4l2OVbTldcnhDSJXxQaG4N3Txy6s4HhoknZOcFT0uWWegs4IaziRlY0uV3ctP/w/
	T6n1XTz7wpnLNC9jCCxX+kg8ig/nTZe/SeBgna4V55uVP4cqDxDfdAng03jHLlj0THBn
	oMeA==
X-Gm-Message-State: APjAAAXd+XcnNzscmtFcUhEmjqAmVL3B717SjIv23pB7M7rILnUN1Db0
	bXHVIagBhSD45nNzFLgi1srlig==
X-Google-Smtp-Source: APXvYqzqXkoEhmYSXbl8TJ6Z+0WMSgPVS6N4PnJ/ha0E5LKhlhQ2lgjUz521pjBoOaODSZbgYJYAwg==
X-Received: by 2002:adf:a506:: with SMTP id i6mr817533wrb.159.1571870045742;
	Wed, 23 Oct 2019 15:34:05 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	b196sm960498wmd.24.2019.10.23.15.34.04
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 23 Oct 2019 15:34:05 -0700 (PDT)
Message-ID: <9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Westermann, Oliver" <Oliver.Westermann@cognex.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 23 Oct 2019 23:34:04 +0100
In-Reply-To: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Wed, 23 Oct 2019 22:34:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-10-23 at 11:23 +0000, Westermann, Oliver wrote:
> Hey,
> 
> I'm having issues adding a build for a bare metal target to my yocto
> toolchain. I've a NXP SoC with a M4 core and I would like to
> integrate the M4 binary build into yocto.
> My M4 binary has a CMAKE file that depends on ARMGCC_DIR being set to
> locate the toolchain and everything works fine locally.
> 
> I've create a recipe for the toolchain that is heavily inspired by a
> TI recipe for the gcc-arm-none-eabi (available here: 
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/recipes-ti/devtools/gcc-arm-none-eabi_7-2018-q2-update.bb?h=master
> ).
> I've made sure that GCC_ARM_NONE_TOOLCHAIN_RECIPE is set.
> 
> After calling bitbake -cpopulate-sysroot gcc-arm-none-eabi-native the
> image/${GCC_ARM_NONE_TOOLCHAIN_RECIPE} path contains the complete
> toolchain.
> 
> My M4 recipe looks like this (plus SUMMARY, LICENSE, SRC_URI, ...):
> 
> inherit pkgconfig cmake
> DEPENDS = "gcc-arm-none-eabi-native"
> 
> S = "${WORKDIR}/git "
> 
> EXTRA_OECMAKE = '-DCMAKE_TOOLCHAIN_FILE="../armgcc.cmake" \
>                  -G "Unix Makefiles" \
>                  -DCMAKE_BUILD_TYPE=release'
> 
> From my understanding depending on gcc-arm-none-eabi-native should
> result in the native toolchain being installed into the m4's recipe-
> sysroot-native folder.
> The sysroot-providers in the recipe-sysroot-native folder does list
> gcc-arm-none-eabi-native, but I don't get the files and therefore
> have no toolchain.
> 
> Any suggestions on what I'm doing wrong or how to debug this further?

Sounds like the sysroot filtering code doesn't know about this
directory and therefore doesn't pass it through to the recipe sysroot?

The recipe you link to is for an on target compiler, not one in the
sysroot.

I'm actually a little surprised you can't use our standard cross
compiler assuming this M4 core is on an ARM chip? It should be a case
of passing the right options to the compiler to target the M4?

Cheers,

Richard


