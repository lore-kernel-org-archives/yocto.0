Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56FC2E00874; Wed, 29 Mar 2017 10:24:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84B39E007AD
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 10:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490808273; x=1522344273;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=mXbEd2fZV/U6s1PzEdimSKcWfG71QRPYQRlvne8q5UE=;
	b=Zse6bv9nnBZGz/972Bb6y2OuI6QIy/OwhQLxfPAhAlkKiVS5wnGq9qs/
	SIH802U+lm+W+HuHe0wLiud8iuPxPg==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Mar 2017 10:24:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,242,1486454400"; d="scan'208";a="82375064"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga006.fm.intel.com with ESMTP; 29 Mar 2017 10:24:31 -0700
Message-ID: <1490808757.17259.40.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 29 Mar 2017 11:32:37 -0600
In-Reply-To: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
References: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Compiling custom kernel
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
X-List-Received-Date: Wed, 29 Mar 2017 17:24:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-03-29 at 19:11 +0200, Alvaro Garcia wrote:
> Hi, I'm trying to compile a custom kernel (just custom config).
> I created a recipe called linux-yocto in my layer:
> meta-test
> -recipes-test
> --linux-yocto
> ---linux-yocto.bbapend

you may need to include the kernel version to  your bbappend
(linux-yocto_4.4.bappend)


> ---files
> ----enable_various_options.cfg
> 
> The content of the linux-yocto.bbapend is:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI += "file://enable_various_options.cfg"
> 
> And the content of enable_various_options.cfg is:
> CONFIG_DRM_NOUVEAU=y
> 
> The way I generated enable_various_options.cfg was
> bitbake -c menuconfig virtual/kernel
> Select my configuration
> bitbake -c devshell virtual/kernel
> diff of the original .config and the new one.
> I just followed the instructions here
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/020174.html
> and here
> https://software.intel.com/sites/default/files/m/4/d/8/5/8/42868-11__Developing_Kernel_Module_on_Yocto.pdf
> 
> Then I run bitbake core-image-x11
> I got this warning:
> WARNING: /home/amacho/poky/meta/recipes-kernel/linux/linux-yocto_4.4.bb.do_kernel_configme is tainted from a forced run
> but the kernel is not compiled with the new config (I do md5 to
> vmlinuz and was exactly the same).
> 
> Can you help me to find the way I can compile this kernel?
> 
> Thank you
> 
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



