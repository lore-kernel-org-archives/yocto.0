Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF90E00476
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:17:54 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2013 02:17:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,766,1378882800"; d="scan'208";a="414148544"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2013 02:17:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nick D'Ademo <nickdademo@gmail.com>
Date: Mon, 25 Nov 2013 10:17:02 +0000
Message-ID: <1692310.DXcMCOQJZA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CANR6C56G+sT0h3iXemO41Yf-knp4X9M96qv-CQK+oPN5VUtyPw@mail.gmail.com>
References: <CANR6C56jHhErDpNceMYwCrP6c+LUeck0WOPdX55uAeLr103gTA@mail.gmail.com>
	<CANR6C55TONoWageb9=HEVMLrHbYKpL96zB+x805xgXYGuPw-EQ@mail.gmail.com>
	<CANR6C56G+sT0h3iXemO41Yf-knp4X9M96qv-CQK+oPN5VUtyPw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: MULTILIB builds with Yocto: Status?
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
X-List-Received-Date: Mon, 25 Nov 2013 10:17:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Nick,

On Monday 25 November 2013 01:43:32 Nick D'Ademo wrote:
> Found the fix for these issues:
> 
> *The two offending Poky recipes are:*
> recipes-multimedia/x264
> recipes-multimedia/libav
> 
> *Files which need to be modified:*
> x264_git.bb -> Add --libdir=${libdir} to EXTRA_OECONF variable
> libav.inc -> Add --libdir=${libdir} AND --shlibdir=${libdir} to
> EXTRA_OECONF variable
> 
> As you can see from the above fixes, the issue was that the configure step
> was passing "usr/lib" instead of "usr/lib64" which ultimately caused the
> "installed but not shipped" errors.
> 
> Are these actually bugs which should be patched in the recipes?

These two recipes have their own custom (non-autotools) configure scripts and 
thus we compose our own configure command line to match; so yes we should fix 
these. Would you be able to send a patch on top of OE-Core to add the options 
to each recipe? There's a guide here if you need it:

http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

