Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4AC2E00536
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 12:07:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2011 12:07:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="58568885"
Received: from unknown (HELO [10.255.15.15]) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 03 Oct 2011 12:07:16 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1317668520.12684.8.camel@ted>
References: <4E8A0380.1030502@linux.intel.com> <1317668520.12684.8.camel@ted>
Date: Mon, 03 Oct 2011 14:07:47 -0500
Message-ID: <1317668867.2323.24.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: GRUB fix for 1.1: Preferred approach for default grub version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Oct 2011 19:07:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-10-03 at 12:01 -0700, Richard Purdie wrote:
> On Mon, 2011-10-03 at 11:48 -0700, Darren Hart wrote:
> > When grub2 was merged int oe-core, it became the default (rather than
> > being explicitly requested by the 64b meta-intel BSPs). This breaks the
> > live install on 32b systems, like the n450 - installing grub v1.99 with
> > a grub v1 config.
> > 
> > We have a couple options on how to fix this.
> > 
> > 1) Set PREFERRED_PROVIDER_grub="0.97" in all 32b x86 machine configs
> > 2) Set DEFAULT_PREFERENCE="-1" in the grub_1.99.bb recipe which would
> >    affect all of oe-core.
> > 3) Some alternate approach which would be the equivalent of
> >    DEFAULT_PREFERENCE, but only for meta-yocto BSPs or the poky
> >    "distro".
> > 
> > Given the time frame, I'd prefer to agree on the approach before writing
> > and testing patches. Preferences?
> 
> I thought I'd been assured grub2 worked fine for our 32 and 64 bit
> platforms? :/.
> 
> The correct question here is why doesn't grub2 work on 32 bit platforms?
> 

I did test it with both 32-bit and 64-bit BSPs in meta-intel, so it
should work for the n450 too.

Tom

> The answer might be "we need for time than is available in the 1.1
> release to fix it" but I'd at least like to see the answer to the
> question before we start with workarounds.
> 
> Cheers,
> 
> Richard
> 



