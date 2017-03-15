Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2DD5E00A81; Wed, 15 Mar 2017 01:21:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A76E006D8
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 01:21:31 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20170315082122166_0486;
	Wed, 15 Mar 2017 08:21:22 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=53766 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1co4BG-0004Qu-Ic; Wed, 15 Mar 2017 04:21:14 -0400
Date: Wed, 15 Mar 2017 04:21:09 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Belisko Marek <marek.belisko@gmail.com>
In-Reply-To: <CAAfyv36nwRAeKt-LyaMfDXmDuTTDQbLCPu1M5MLR_T=fAf_4ig@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1703150413470.12566@localhost.localdomain>
References: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
	<alpine.LFD.2.20.1703141608001.3664@localhost.localdomain>
	<CAAfyv34xQFXPZ2ir7P0nWHMqyHPZR5jLSy4=QRd9=8x=t3Y8xQ@mail.gmail.com>
	<alpine.LFD.2.20.1703141652030.15636@localhost.localdomain>
	<CAAfyv36nwRAeKt-LyaMfDXmDuTTDQbLCPu1M5MLR_T=fAf_4ig@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: make[2]: *** No rule to make target 'fitImage'. Stop.
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
X-List-Received-Date: Wed, 15 Mar 2017 08:21:34 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 15 Mar 2017, Belisko Marek wrote:

> On Tue, Mar 14, 2017 at 9:53 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > On Tue, 14 Mar 2017, Belisko Marek wrote:
> >
> >> Hi Robert,
> >>
> >> On Tue, Mar 14, 2017 at 9:16 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >> > On Mon, 13 Mar 2017, Robert P. J. Day wrote:
> >> >
> >> >>
> >> >>   i'll start a new thread to focus on just this issue. again, building
> >> >> core-image-minimal for mpc8315e-rdb, adding this to local.conf:
> >> >>
> >> >>   INHERIT += "kernel-fitimage"             <-- do i need this line?
> >> >>   KERNEL_IMAGETYPES_append = " fitImage"
> >> >>
> >> >> anyway, run:
> >> >>
> >> >>   $ bitbake virtual/kernel
> >> >>
> >> >> and eventually get:
> >> >>
> >> >>   make[2]: *** No rule to make target 'fitImage'.  Stop.
> >> >
> >> > ... snip ...
> >> >
> >> >   i would still love to figure out how to generate a simple FIT image
> >> > when building core-image-minimal for mpc8315e-rdb.
> >> >
> >> >   first, based on what i read, my first attempt was to add the
> >> > following line to local.conf:
> >> >
> >> >   KERNEL_IMAGETYPES_append = " fitImage"
> >> You need probably also add:
> >>
> >> KERNEL_CLASSES += "kernel-fitimage"
> >>
> >> to local.conf
> >
> >   that *appears* to have solved the problem ... so why is it i didn't
> > realize that? where is that written up that i somehow missed it?

> It is not documented in yocto manual (I cannot find anything about
> fitimage at all), so maybe it could be extended.

  i'll check later to see where it would seem to belong, unless
someone has a suggestion.

> >   and would it not make sense that selecting FIT image in one
> > variable should automatically set the other required variables?

> I think something like that can be doable and it will save a lot of
> time for people who want's to have it enabled.

  actually, i take back that suggestion, as i think it would overly
complicate kernel.bbclass (at least the way i read it).

  i can see that, for backward compatibility, kernel.bbclass contains
the following:

  # Here we pull in all various kernel image types which we support.
  #
  # In case you're wondering why kernel.bbclass inherits the other image
  # types instead of the other way around, the reason for that is to
  # maintain compatibility with various currently existing meta-layers.
  # By pulling in the various kernel image types here, we retain the
  # original behavior of kernel.bbclass, so no meta-layers should get
  # broken.
  #
  # KERNEL_CLASSES by default pulls in kernel-uimage.bbclass, since this
  # used to be the default behavior when only uImage was supported. This
  # variable can be appended by users who implement support for new kernel
  # image types.

  KERNEL_CLASSES ?= " kernel-uimage "
  inherit ${KERNEL_CLASSES}

so it's quite simple to extend the set of .bbclass files that provide
new kernel image types with, say:

  KERNEL_CLASSES += "kernel-fitimage"

beyond that, however, since a new kernel class file might define a
*pile* of new kernel image types, poor kernel.bbclass would need to
recognize all of them and know which kernel class file to inherit for
each new kernel type, which seems unwieldy.

  so as long as how to define new kernel image types is explained
clerly (is it?), then a discussion of FIT images should simply need to
refer the reader to that section.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


