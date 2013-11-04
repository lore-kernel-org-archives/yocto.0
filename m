Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD48E016D8
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:47:50 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 04 Nov 2013 10:47:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,634,1378882800"; d="scan'208";a="422131677"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.96])
	by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2013 10:47:33 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>, "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 04 Nov 2013 18:47:32 +0000
Message-ID: <2613359.1lbv24R3Iq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAMKF1so3X0P=A5fvVpzj-3RMntH_bGVJsGX2iJFJoiFZgJyksQ@mail.gmail.com>
References: <alpine.DEB.2.02.1311020624570.21875@oneiric>
	<CAMKF1so3X0P=A5fvVpzj-3RMntH_bGVJsGX2iJFJoiFZgJyksQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY = "1" or "true"?
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
X-List-Received-Date: Mon, 04 Nov 2013 18:47:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 03 November 2013 12:49:16 Khem Raj wrote:
> On Sat, Nov 2, 2013 at 3:27 AM, Robert P. J. Day <rpjday@crashcourse.ca> 
wrote:
> >   (i can see it's going to be that kind of weekend.) ref manual reads:
> >      BB_DANGLINGAPPENDS_WARNONLY = "1"
> > 
> > but some layers define:
> > 
> > meta-linaro/meta-aarch64/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
> > "true"
> > meta-linaro/meta-linaro-toolchain/conf/layer.conf:BB_DANGLINGAPPENDS_WARN
> > ONLY = "true"
> > meta-linaro/meta-linaro/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
> > "true"
> > poky-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY
> > ?= "true"
> > 
> > so general question(s) -- is it understood that "1" and "true" are
> > equivalent? should there be a standard? should the ref manual be
> > enhanced, or should the above layers clean themselves up?
> 
> They are all correct. Accepted values are
> 
> "1", "yes", "true"

Note - for this variable only. For consistency with other "boolean" type 
variables I'd suggest sticking to "1".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

