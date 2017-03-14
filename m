Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BBB0E00A48; Tue, 14 Mar 2017 13:54:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F32E009DA
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 13:53:57 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20170314205355007_0485;
	Tue, 14 Mar 2017 20:53:55 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=47148 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cntRz-0001Gf-V2; Tue, 14 Mar 2017 16:53:48 -0400
Date: Tue, 14 Mar 2017 16:53:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Belisko Marek <marek.belisko@gmail.com>
In-Reply-To: <CAAfyv34xQFXPZ2ir7P0nWHMqyHPZR5jLSy4=QRd9=8x=t3Y8xQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1703141652030.15636@localhost.localdomain>
References: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
	<alpine.LFD.2.20.1703141608001.3664@localhost.localdomain>
	<CAAfyv34xQFXPZ2ir7P0nWHMqyHPZR5jLSy4=QRd9=8x=t3Y8xQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 14 Mar 2017 20:54:00 -0000
Content-Type: text/plain; charset=US-ASCII

On Tue, 14 Mar 2017, Belisko Marek wrote:

> Hi Robert,
>
> On Tue, Mar 14, 2017 at 9:16 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > On Mon, 13 Mar 2017, Robert P. J. Day wrote:
> >
> >>
> >>   i'll start a new thread to focus on just this issue. again, building
> >> core-image-minimal for mpc8315e-rdb, adding this to local.conf:
> >>
> >>   INHERIT += "kernel-fitimage"             <-- do i need this line?
> >>   KERNEL_IMAGETYPES_append = " fitImage"
> >>
> >> anyway, run:
> >>
> >>   $ bitbake virtual/kernel
> >>
> >> and eventually get:
> >>
> >>   make[2]: *** No rule to make target 'fitImage'.  Stop.
> >
> > ... snip ...
> >
> >   i would still love to figure out how to generate a simple FIT image
> > when building core-image-minimal for mpc8315e-rdb.
> >
> >   first, based on what i read, my first attempt was to add the
> > following line to local.conf:
> >
> >   KERNEL_IMAGETYPES_append = " fitImage"
> You need probably also add:
>
> KERNEL_CLASSES += "kernel-fitimage"
>
> to local.conf

  that *appears* to have solved the problem ... so why is it i didn't
realize that? where is that written up that i somehow missed it?

  and would it not make sense that selecting FIT image in one variable
should automatically set the other required variables?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


