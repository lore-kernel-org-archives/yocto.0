Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 050A2E00B88; Thu,  5 Jun 2014 08:07:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF001E00A44
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 08:07:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2014 08:07:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,981,1392192000"; d="scan'208";a="542953936"
Received: from smoffitt-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.113])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2014 08:07:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 05 Jun 2014 16:07:02 +0100
Message-ID: <2865499.mMpv2bqsZi@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <539081B5.6020905@mlbassoc.com>
References: <53906B96.300@mlbassoc.com>
	<1461672.ni0uDSAuWr@peggleto-mobl5.ger.corp.intel.com>
	<539081B5.6020905@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: Live images?
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
X-List-Received-Date: Thu, 05 Jun 2014 15:07:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 June 2014 08:41:57 Gary Thomas wrote:
> On 2014-06-05 08:32, Paul Eggleton wrote:
> > On Thursday 05 June 2014 15:26:28 Paul Eggleton wrote:
> >> Hi Gary,
> >> 
> >> On Thursday 05 June 2014 07:07:34 Gary Thomas wrote:
> >>> Looking through the Poky/Yocto sources, there seems to be
> >>> some support for Live CD/USB images.  However, I can't find
> >>> any examples nor documentation for how to use this.
> >>> 
> >>> Can anyone provide some pointers?
> >> 
> >> You're right, we seem to be missing that in our documentation; I'm not
> >> sure
> >> where the best place to document it would be though.
> >> 
> >> FYI, you should just need to ensure "live" is in IMAGE_FSTYPES; then you
> >> should get a .directdisk image that you can just dd to a USB stick.
> > 
> > Of course I meant to say .hddimg, not .directdisk.
> 
> Thanks, I'll give that a try.
> 
> What if I needed to boot from an actual CD?  I have an old
> box here I'd like to try, but it doesn't boot from USB.

We can produce ISO images but I don't think that they work quite as well, 
e.g.:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5282

You could always try it though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

