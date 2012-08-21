Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F911E00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 10:50:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 10:50:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,803,1336374000"; d="scan'208";a="207679026"
Received: from unknown (HELO [10.255.13.17]) ([10.255.13.17])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2012 10:50:47 -0700
Message-ID: <1345571445.2362.16.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Tue, 21 Aug 2012 12:50:45 -0500
In-Reply-To: <3D495B49-A6C3-4590-AF99-E6BD9A9617A4@keylevel.com>
References: <073A7998-3D05-4835-AA03-113960D00553@keylevel.com>
	<502C0312.2080905@windriver.com>
	<EDAB51DE-EE48-4C30-AD1B-20E7C6B01EF6@keylevel.com>
	<502D86C8.3090805@windriver.com>
	<5053D9BB-9E6B-4D25-B5B0-9B08DBB381E5@keylevel.com>
	<502E5C6B.7040709@windriver.com>
	<35B0FBF5-FE52-4C75-BBF6-F260A1954F76@keylevel.com>
	<502E9C97.6000209@windriver.com>
	<860E0816-033F-4091-ABFB-A3B699D260BD@keylevel.com>
	<502E9FED.8070907@windriver.com>
	<3D495B49-A6C3-4590-AF99-E6BD9A9617A4@keylevel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org
	Project" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp create
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
X-List-Received-Date: Tue, 21 Aug 2012 17:50:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-08-17 at 20:56 +0100, Chris Tapp wrote:
> On 17 Aug 2012, at 20:47, Bruce Ashfield wrote:
> 
> > On 12-08-17 03:40 PM, Chris Tapp wrote:
> >> 
> >> On 17 Aug 2012, at 20:33, Bruce Ashfield wrote:
> >> 
> >>> On 12-08-17 03:32 PM, Chris Tapp wrote:
> >>>> On 17 Aug 2012, at 15:59, Bruce Ashfield wrote:
> >>>> 
> >>>>> On 12-08-17 06:47 AM, Chris Tapp wrote:
> >>>>>> 
> >>>>>> On 17 Aug 2012, at 00:48, Bruce Ashfield wrote:
> >>>>>> 
> >>>>>>> ech. That means that the tree was somehow dirty and branches couldn't
> >>>>>>> be switched/checked out.
> >>>>>>> 
> >>>>>>> If you have a copy of your BSP layer, I can try a build here and shed
> >>>>>>> some light on what exactly went wrong.
> >>>>>> 
> >>>>>> 
> >>>>>> Thanks Bruce. Meta layer attached.
> >>>>> 
> >>>>> Fixed here. This was completely generated from the tools ? If so, the
> >>>>> branching information was wrong.
> >>>>> 
> >>>>> KBRANCH_LX800  = "standard/default/LX800"
> >>>>> YOCTO_KERNEL_EXTERNAL_BRANCH_LX800  = "standard/default/LX800"
> >>>>> 
> >>>>> The "base" is always inferred and only exists because of the
> >>>>> way that git manages refs on disk. So the branch that you
> >>>>> want to build is what I have above, and the tools will
> >>>>> automatically make that branch point off the default/base
> >>>>> branch.
> >>>>> 
> >>>>> Let me know if that did come from the tools and I'll follow
> >>>>> up to the list.
> >>>> 
> >>>> I'm 99.99% sure it did, but it runs ok after making the changes you give above, deleting tmp/ and rebuilding.
> >>>> 
> >>>> I've not g0t any real changes in yet, so I'll go try again and see what I get. It's just possible I didn't do a complete rebuild (i.e. nuke tmp/) which may have caused a problem last time round.
> >>> 
> >>> ok. cool. no rush. I was just going to do a final update on the mailing
> >>> list to not leave it hanging, and if there's a bug in the scripts, we
> >>> can let Tom know .. so he can fix it!
> >> 
> >> 
> >> I've just recreated the BSP. I selected option 4 for the kernel branch (standard/default/base), which gives:
> >> 
> >> KBRANCH_LX800  = "standard/default/base/LX800"
> >> YOCTO_KERNEL_EXTERNAL_BRANCH_LX800  = "standard/default/base/LX800"
> > 
> > ok. Worth firing off a bug report to Tom Zaunussi. .. that
> > won't work .. ever.
> 
> Just bringing this back on-list.
> 
> I'll get something added to the tracker.
> 

Just back from vacation and getting to this...

Yeah, this is a known bug and was fixed by the yocto-bsp patchsets I
sent out just before I left.  See the last entry in the bug below for
links to the branches that fixed it and a few other issues:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2693

I see that the denzil branch has been updated with the changes, but have
yet to hit master.

Tom

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



