Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8883E01374
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 07:53:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Mar 2012 07:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="125217009"
Received: from unknown (HELO [10.255.12.49]) ([10.255.12.49])
	by orsmga002.jf.intel.com with ESMTP; 26 Mar 2012 07:53:08 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB12379451764E7@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203260747350.4275@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379451764E7@ORSMSX101.amr.corp.intel.com>
Date: Mon, 26 Mar 2012 09:53:29 -0500
Message-ID: <1332773609.23802.97.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: can all of the licensing discussion be centralized in an	appendix?
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
X-List-Received-Date: Mon, 26 Mar 2012 14:53:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-26 at 14:26 +0000, Rifenbark, Scott M wrote:
> Is BSP licensing different than non-BSP licensing?  If not, then licensing could be combined into a single section.  Can someone answer this for me?
> 

The focus of those sections are different and should probably be in
separate sections - the BSP licensing section of the BSP Guide deals
mainly with the licensing considerations affecting BSP images, while the
rest of the Manual deals with the nuts and bolts of how to deal with
licenses when writing recipes.

> Also, good point on the BSP guide appearing as a chapter in the reference manual.  I have not liked this.  Is there any rational reason to have it this way?
> 

I guess it's there for convenience, but the only reason I can see for
keeping it there other than that is that it's the only chapter that
deals with the kernel.

It would probably make sense would be to remove everything in the the
BSP Guide from the reference manual, except for the kernel section,
which should stay since it's of general interest and not just to people
dealing with BSPs.

Does that make sense?

Tom

> Scott
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Monday, March 26, 2012 5:53 AM
> To: Yocto discussion list
> Subject: [yocto] can all of the licensing discussion be centralized in an appendix?
> 
> 
>   still clawing my way through the ref manual and it seems that
> there's *way* too much coverage of licensing sprinkled throughout.
> most people are not going to care about licensing until the time comes
> to maybe start distributing their BSP.
> 
>   as it stands, in the *development* version of the ref manual,
> section 3.4 is all about licensing, then ch 4 is essentially the BSP
> guide where section 4.2.1 is "License Files" and all of section 4.3 is
> "BSP Licensing Considerations."
> 
>   that just seems like too much licensing info that breaks up the flow
> of the reference manual.  can all of that be moved to one location and
> referenced from there?
> 
> rday
> 
> p.s.  i'm also not keen on an entire chapter of the ref manual being
> nothing more than an include of the BSP guide.  if you've got a
> perfectly respectable BSP guide, there's no point having it magically
> appear as part of another manual.  but that's just my $0.02.
> 



