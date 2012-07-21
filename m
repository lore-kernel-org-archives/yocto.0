Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37940E002A5
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 16:47:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Jul 2012 16:47:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="175386613"
Received: from unknown (HELO [10.255.13.14]) ([10.255.13.14])
	by orsmga002.jf.intel.com with ESMTP; 21 Jul 2012 16:47:09 -0700
Message-ID: <1342914426.6963.1.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Sat, 21 Jul 2012 18:47:06 -0500
In-Reply-To: <500AB599.4090003@gmail.com>
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
	<5009C119.3070801@gmail.com>
	<1342816760.2274.2.camel@trz-ThinkPad-T420>
	<1342821334.2274.13.camel@trz-ThinkPad-T420>
	<1342843583.6230.3.camel@trz-ThinkPad-T420>
	<500AB599.4090003@gmail.com>
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
X-List-Received-Date: Sat, 21 Jul 2012 23:47:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-07-21 at 09:58 -0400, Jim Abernathy wrote:
> On 07/21/2012 12:06 AM, Tom Zanussi wrote:
> > On Fri, 2012-07-20 at 16:55 -0500, Tom Zanussi wrote:
> >> On Fri, 2012-07-20 at 15:39 -0500, Tom Zanussi wrote:
> >>> On Fri, 2012-07-20 at 16:35 -0400, Jim Abernathy wrote:
> >>>> On 07/20/2012 04:29 PM, Scott Garman wrote:
> >>>>> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
> >>>>>> There must be some basic thing I'm missing.  Nothing that I used to
> >>>>>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
> >>>>>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
> >>>>>> you can run?
> >>>>>>
> >>>>>> I'd thought I'd check before I post a bunch of log files.
> >>>>>>
> >>>>>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
> >>>>>> directory and untarred the 7.0 Intel BSPs.
> >>>>>>
> >>>>>> There must be a step I'm missing.  otherwise this would not have gotten
> >>>>>> thru testing before deployment.
> >>>>>>
> >>>>>> Jim A
> >>>>> Hi Jim,
> >>>>>
> >>>>> We need more specific information about the error(s) you're seeing.
> >>>>> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there
> >>>>> must be a step you've forgotten.
> >>>>>
> >>>>> For example, you are using the denzil branch of meta-intel, right?
> >>>>>
> >>>>> Scott
> >>>>>
> >>>> I think it maybe that old problem with the n450 SRCREC being blank in
> >>>> the linux-yocto bbappend file.  Obviously that BSP didn't get fixed
> >>>> before 7.0.1 was deployed.  I'll put in the ones I used to patch in and
> >>>> see if it works.
> >>>>
> >>> I updated the n450 in both the denzil and master meta-intel branches,
> >>> but the tarball still needs to be updated with that fix.
> >>>
> >>> Is this the problem you're seeing, or are there other problems you're
> >>> seeing with this and/or the other meta-intel BSPs?
> >>>
> >> As a sanity check, I just now downloaded the denzil-7.0.1 tarball and
> >> the denzil sugarbay tarball and built successfully without any problems.
> >>
> > Also did a fresh clone of meta-intel, checked out meta-intel/denzil and
> > successfully built n450 with the denzil-7.0.1 tarball here with no
> > problems.
> >
> > Tom
> >
> I can confirm I had no issues doing just what you did. tarball for 
> denzil-7.0.1 and denzil clone for meta-intel and default core-image-sato 
> for n450.
> 
> Next, I cloned poky and checked out the tag denzil-7.0.1, which in 
> theory should match the tarball I ran with in the above test. I cloned 
> meta-intel and checked out the branch denzil, just as above.
> 
> So this good news is that worked as expected. The denzil-7.0.1 tag 
> equals the tarball.
> 
> So the only problem is the denzil branch of poky has some problem that's 
> seen in denzil-7.0.1 as it relates to n450.
> 

I'm not sure what you mean by this - I just did a build of poky/denzil
with meta-intel/denzil and again, didn't see any problems with that
permutation either.

Tom

> Jim A
> 
> 
> >> Tom
> >>
> >>
> >>> Tom
> >>>
> >>>> Jim A
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >
> 



