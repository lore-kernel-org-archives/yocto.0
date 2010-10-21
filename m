Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2FA34C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 19:07:20 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Oct 2010 17:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,357,1283756400"; d="scan'208";a="338562638"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by azsmga001.ch.intel.com with ESMTP; 20 Oct 2010 17:07:18 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CBF7FBB.3080804@linux.intel.com>
References: <1287595139.2635.16.camel@scimitar>
	<1287612589.2231.3.camel@scimitar> <4CBF7FBB.3080804@linux.intel.com>
Date: Wed, 20 Oct 2010 19:07:16 -0500
Message-ID: <1287619636.2036.1.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UPnP demo - call for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 00:07:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 16:48 -0700, Darren Hart wrote:
> On 10/20/2010 03:09 PM, Joshua Lock wrote:
> > On Wed, 2010-10-20 at 18:18 +0100, Joshua Lock wrote:
> >> Hi all,
> >>
> >> I've successfully tested the UPnP demo in my office but would appreciate
> >> someone else taking a bash.
> >>
> >> Unfortunately you currently need my branch from poky-contrib (josh/demo)
> >> and the corresponding branch from meta-demo (josh/demo).
> >
> > I've just pushed one change to poky/master and merged a tidied up
> > changeset into the master branch of meta-demo. So you should now be able
> > to test with latest poky and meta-demo master.
> >
> > Cheers,
> > Joshua
> 
> I have added the COMMERCIAL_LICENSE bits to my local.conf and mediatomb 
> built after that.
> 
> building poky-image-rygel-live, gupnp-dlna do_configure is failing with:
> 
> 	configure: error: Package requirements (gstreamer-0.10 >=
> 	0.10.29.2) were not met:
> 
> 	No package 'gstreamer-0.10' found
> 
> Have you seen that?
> 

I did get that, but IIRC it was because I didn't have the latest
josh/demo branch.  Do you have the latest?

Tom


