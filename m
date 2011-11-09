Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABBBFE00305
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 11:49:11 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2011 11:49:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,484,1315206000"; d="scan'208";a="83067028"
Received: from unknown (HELO [10.255.15.253]) ([10.255.15.253])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2011 11:49:10 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <4EBAD1BC.4060103@linux.intel.com>
References: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
	<1320861083.16608.45.camel@elmorro> <4EBAD1BC.4060103@linux.intel.com>
Date: Wed, 09 Nov 2011 13:50:19 -0600
Message-ID: <1320868219.16608.55.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on crownbay with EMGD
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
X-List-Received-Date: Wed, 09 Nov 2011 19:49:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-09 at 11:17 -0800, Joshua Lock wrote:
> 
> On 09/11/11 09:51, Tom Zanussi wrote:
> > On Wed, 2011-11-09 at 09:41 -0800, James Abernathy wrote:
> >> In the past I've built the crownbay-noemgd successfully, using the
> >> Development Manual Appendix A corrected instructions that have been
> >> patched.  I thought I'd try my hand at building the crownbay with EMGD
> >> this time.  Following the instructions in the Appendix A, but using
> >> the opposite instructions related to EMGD, plus installing EMGD per
> >> the instructions in the README file in the meta-crownbay directory, I
> >> got a long way into the build, but failed toward the end in what looks
> >> like a dependance issue.  Can someone spot what I need to change???
> >>  
> > 
> > Yes, you've hit the missing step added to the update release notes here:
> > 
> > http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1
> > 
> > 
> > 7. Remove the following unused file from the emgd binaries in order to
> > avoid a packaging error at build-time:
> >         $ rm
> > meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
> 
> What prevents us doing this in the recipe?
> 

There were several round of doing just that not too long ago, but all
stumbled on the license bits e.g.

https://lists.yoctoproject.org/pipermail/yocto/2011-August/004650.html

Tom

> Joshua



