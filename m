Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6EB3E00DE6; Wed, 12 Oct 2016 20:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EC7BE00D57
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 20:26:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 12 Oct 2016 20:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,338,1473145200"; d="scan'208";a="1053113623"
Received: from ychiu-mobl5.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.183.245])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2016 20:26:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Sandeep G.R" <grsandeep85@gmail.com>,
	Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Thu, 13 Oct 2016 16:26:35 +1300
Message-ID: <2772514.3CcNj0Ii5Y@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.6-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAKP9-ShAzdB+mCDsbDnTz_jDuT_qAmND=WPay7oLH-t+5YcrMQ@mail.gmail.com>
References: <CAJ58UN=tw2n70748xW9zoSh1tge-c5MWGUwpRr7pkR_jfh8BXg@mail.gmail.com>
	<CAJ58UN=B-P0VeEb_WPO7Z+ViEOspvBdzt==A7tTNnEE0T69y6g@mail.gmail.com>
	<CAKP9-ShAzdB+mCDsbDnTz_jDuT_qAmND=WPay7oLH-t+5YcrMQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Clarification regarding GCC tool version supported on - Krogoth 2.1.1
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
X-List-Received-Date: Thu, 13 Oct 2016 03:26:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

This is more likely to work:

  bitbake-layers show-recipes gcc

Cheers,
Paul

On Wed, 12 Oct 2016 21:19:59 Sandeep G.R wrote:
> Hi Vijay,
> 
> You can run *"bitbake-layers show-recipes | grep gcc-source"* to know more
> on supported toolchain versions.
> 
> On Wed, Oct 12, 2016 at 11:55 AM, Vijayakumar Badiger <
> 
> vijayakumarmb@gmail.com> wrote:
> > Thanks Paul, appreciate your reply.
> > 
> > Cheers,
> > Vijay
> > 
> > 
> > On Mon, Oct 10, 2016 at 6:24 PM, Paul Eggleton <
> > 
> > paul.eggleton@linux.intel.com> wrote:
> >> Hi Vijay,
> >> 
> >> On Mon, 10 Oct 2016 17:44:13 Vijayakumar Badiger wrote:
> >> > Please can some one tell me the tool chain versions supported on the
> >> 
> >> latest
> >> 
> >> > YPCore-Krogoth.
> >> > I know the it uses default GCC5.3, just wanted to know if older tool
> >> 
> >> chain
> >> 
> >> > like 4.9XX is supported or not.
> >> > 
> >> > I don't see the feature list like the one listed below for Krogoth
> >> 
> >> 2.1.1.
> >> 
> >> > which clearly states the tool chain versions supported.
> >> > 
> >> > https://www.yoctoproject.org/downloads/core/jethro20
> >> 
> >> gcc 4.9 is included in the krogoth branch, and being an earlier default
> >> version it should work - however it's fair to say it does not receive the
> >> same
> >> level of testing that 5.3 does given that 5.3 is the default.
> >> 
> >> Cheers,
> >> Paul
> >> 
> >> --
> >> 
> >> Paul Eggleton
> >> Intel Open Source Technology Centre
> > 
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

-- 

Paul Eggleton
Intel Open Source Technology Centre

