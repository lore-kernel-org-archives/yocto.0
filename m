Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71674E016DC
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 11:02:21 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Nov 2013 11:02:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="316871544"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.96])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Nov 2013 11:02:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 04 Nov 2013 19:02:19 +0000
Message-ID: <12580917.89TBLT3jfx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311041353520.13071@oneiric>
References: <alpine.DEB.2.02.1311020624570.21875@oneiric>
	<2613359.1lbv24R3Iq@helios>
	<alpine.DEB.2.02.1311041353520.13071@oneiric>
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
X-List-Received-Date: Mon, 04 Nov 2013 19:02:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 04 November 2013 13:54:24 Robert P. J. Day wrote:
> On Mon, 4 Nov 2013, Paul Eggleton wrote:
> > On Sunday 03 November 2013 12:49:16 Khem Raj wrote:
> > > On Sat, Nov 2, 2013 at 3:27 AM, Robert P. J. Day <rpjday@crashcourse.ca>
> > 
> > wrote:
> > > >   (i can see it's going to be that kind of weekend.) ref manual reads:
> > > >      BB_DANGLINGAPPENDS_WARNONLY = "1"
> > > > 
> > > > but some layers define:
> > > > 
> > > > meta-linaro/meta-aarch64/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
> > > > "true"
> > > > meta-linaro/meta-linaro-toolchain/conf/layer.conf:BB_DANGLINGAPPENDS_W
> > > > ARN
> > > > ONLY = "true"
> > > > meta-linaro/meta-linaro/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
> > > > "true"
> > > > poky-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONL
> > > > Y
> > > > ?= "true"
> > > > 
> > > > so general question(s) -- is it understood that "1" and "true" are
> > > > equivalent? should there be a standard? should the ref manual be
> > > > enhanced, or should the above layers clean themselves up?
> > > 
> > > They are all correct. Accepted values are
> > > 
> > > "1", "yes", "true"
> > 
> > Note - for this variable only. For consistency with other "boolean" type
> > variables I'd suggest sticking to "1".
> 
>   wait ... so those three synonyms are equivalent for only that one
> variable? ewwwwwwwwww ...

That's the way it has been coded in this instance I'm afraid, yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

