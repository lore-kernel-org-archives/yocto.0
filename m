Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47336E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:48:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jul 2012 13:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170962873"
Received: from unknown (HELO [10.255.12.249]) ([10.255.12.249])
	by azsmga001.ch.intel.com with ESMTP; 20 Jul 2012 13:48:52 -0700
Message-ID: <1342817332.2274.8.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Fri, 20 Jul 2012 15:48:52 -0500
In-Reply-To: <5009C2A5.5050802@gmail.com>
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
	<5009C119.3070801@gmail.com>
	<1342816760.2274.2.camel@trz-ThinkPad-T420>
	<5009C2A5.5050802@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: nothing building under denzil-7.0.1
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
X-List-Received-Date: Fri, 20 Jul 2012 20:48:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-07-20 at 16:42 -0400, Jim Abernathy wrote:
> On 07/20/2012 04:39 PM, Tom Zanussi wrote:
> > On Fri, 2012-07-20 at 16:35 -0400, Jim Abernathy wrote:
> >> On 07/20/2012 04:29 PM, Scott Garman wrote:
> >>> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
> >>>> There must be some basic thing I'm missing.  Nothing that I used to
> >>>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
> >>>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
> >>>> you can run?
> >>>>
> >>>> I'd thought I'd check before I post a bunch of log files.
> >>>>
> >>>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
> >>>> directory and untarred the 7.0 Intel BSPs.
> >>>>
> >>>> There must be a step I'm missing.  otherwise this would not have gotten
> >>>> thru testing before deployment.
> >>>>
> >>>> Jim A
> >>> Hi Jim,
> >>>
> >>> We need more specific information about the error(s) you're seeing.
> >>> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there
> >>> must be a step you've forgotten.
> >>>
> >>> For example, you are using the denzil branch of meta-intel, right?
> >>>
> >>> Scott
> >>>
> >> I think it maybe that old problem with the n450 SRCREC being blank in
> >> the linux-yocto bbappend file.  Obviously that BSP didn't get fixed
> >> before 7.0.1 was deployed.  I'll put in the ones I used to patch in and
> >> see if it works.
> >>
> > I updated the n450 in both the denzil and master meta-intel branches,
> > but the tarball still needs to be updated with that fix.
> >
> > Is this the problem you're seeing, or are there other problems you're
> > seeing with this and/or the other meta-intel BSPs?
> >
> > Tom
> 
> I should know shortly. I patched the n450 like I did before. I forgot 
> that BSP didn't get updated when denzil 7.0.1 came out. Duh!
> 
> If you have it fixed in Denzil and master branch, I'll test that as well.

Yes, you should be fine using the BSP branches from the git repo, but
steer clear of the tarball until it gets updated...

Tom

> >> Jim A
> >>
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> 



