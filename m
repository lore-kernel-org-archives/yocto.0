Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A00D7E00559
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 14:46:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Nov 2011 14:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,440,1315206000"; d="scan'208";a="69448248"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2011 14:46:00 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1111011733510.5226@localhost6.localdomain6>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<alpine.DEB.2.02.1111011733510.5226@localhost6.localdomain6>
Date: Tue, 01 Nov 2011 16:46:08 -0500
Message-ID: <1320183968.2400.83.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Tue, 01 Nov 2011 21:46:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-01 at 14:37 -0700, Robert P. J. Day wrote:
> On Tue, 1 Nov 2011, Tom Zanussi wrote:
> 
> > Hi,
> >
> > On Tue, 2011-11-01 at 11:37 -0700, James Abernathy wrote:
> > > I tried to duplicate the Yocto Project Decelopment Manual Appendix A
> > > build of a Crownbay NOEMGD image,  no changes just dulicate the
> > > instructions.  This is using the latest Yocto 1.1.  I did get a long
> > > way down the line, but had a fatal error in the last 2 steps.
> > >
> > > The only change I had to make was related to A.5.2.4.  The commit
> > > string for the SRCREV_meta_pn was different on the
> > > git.yoctoproject.org/cgit/cgi for the Meta commit so I used what I
> > > found online.  The first section of 126 task completed without error.
> > > The next section of 4394 tasks failed on 4393.  Not sure if the error
> > > is obvious, but I wanted to run it by someone. Console error log
> > > below:
> > >
> >
> > Hmm, not sure what's going on here - I'm sure this example was
> > verified several times, but just to make sure, what you're doing is
> > going through 'Appendix A. BSP Development Example' verbatim and
> > getting this?
> 
>   ironically, i'm working on this very example and something in the
> dev manual doesn't look right.  section A.5.2.1:
> 
> These commands take care of the recipes-bsp recipes:
> 
>   $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*
>   ... snip ...
> 
> why is that command referring to the recipes-graphics directory when
> this section is supposed to be adjusting recipes-bsp?
> 
> or have i screwed something up?

You're right, that line shouldn't be there (it should be removed from
the instructions).  The emgd recipes were moved out of meta-crownbay and
into meta-intel/common, so this step is no longer needed.

Tom

> 
> rday
> 



