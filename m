Return-Path: <Mark.Asselstine@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94142E00D6A; Thu,  1 Sep 2016 09:57:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,PLING_QUERY,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 671F0E00D62
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 09:57:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u81Gv4nv002835
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Sep 2016 09:57:04 -0700 (PDT)
Received: from yow-masselst-d1.localnet (128.224.56.91) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 1 Sep 2016 09:57:04 -0700
From: Mark Asselstine <mark.asselstine@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Sep 2016 12:57:02 -0400
Message-ID: <2656113.vjmPeydY1u@yow-masselst-d1>
Organization: Wind River Internation Inc.
User-Agent: KMail/5.0.2 (Linux/4.2.0-42-generic; KDE/5.15.0; x86_64; ; )
In-Reply-To: <CAF3SDA5z6NSLPP0GZqmHLAkyyJY771-w4y5JtzZA8kh_XQGp_Q@mail.gmail.com>
References: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
	<0ded4d99-a310-e7a0-fbe7-206a481a568c@windriver.com>
	<CAF3SDA5z6NSLPP0GZqmHLAkyyJY771-w4y5JtzZA8kh_XQGp_Q@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Automating imaging building and testing, what aproach to use!?
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
X-List-Received-Date: Thu, 01 Sep 2016 16:57:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On September 1, 2016 11:54:30 AM Daniel. wrote:
> Hi Paul, Bruce
> 
> Thanks for the replies,
> 
> Paul,
> 
> I take a look at the documentation. It's an amazing feature I'll try
> it as soon as got time avaible.
> My next question is about that "master image" that is installed at
> target hardware so that the image
> is deployed automagically. I read that it writes the image to a second
> partition... Well.. I'm dealing
> with NAND Flash memory here I would like to avoid writing as much as
> possible. Even more for
> machines that will be reflashing at each new image built. I know how easy
> is to setup an NFS + TFTP server and get u-boot booting things from
> network. Also, with this kind
> of setup booting a fresh new image is just a matter of rebooting
> (which makes the master image
> very simple). Would be possible to customise the master image and the
> autodeploy to the hardware target!?

Just to prefix I have mostly used LAVA v1 and nearly exclusively with PXE boot 
capable targets. We are currently starting to use LAVA v2 and with more ARM 
boards with uBoot and SD/MMC devices.

LAVA has been fairly flexible when looking to implement custom device types 
and how they are booted. For instance we actually added interfaces to LAVA to 
reserve/unreserve targets via our lab management software as well as configure 
the PXE config file. We created our own master image (kernel+initramfs) which 
we PXE boot to then copy and setup the image we want to test. So although I 
don't want to say outright that you should be able to do whatever you want 
with LAVA I can say that it has been flexible enough to handle everything I 
have thrown at it. To add to this the changes have been 100% independent of 
the LAVA codebase, only new files, which I think speaks well to the design 
they have selected.

The one thing I have had to do is attempt to think more like a tester and less 
like a developer (I am definitely not a tester). So at times I have thought 
"why the heck are they booting the target so much", being the developer I have 
a tendency to want to be efficient, but when thinking about the problem from a 
testing perspective it made sense to ensure the test was done properly and 
results would be available, even if things failed horribly.

With all of the above we haven't been completely free of creating our own 
infrastructure. We use our own build farm to create images to test daily 
(developers can use their own builds). We also created scripts to allow for 
easier deployment of test 'collections'.

At time I also get frustrated with the LAVA documentation but I suppose this 
can be a common complaint for many pieces of software out there. This is 
somewhat offset by the fact that the code is well layed out. I can usually 
find what I am looking for easily, it tends to be in the spot that makes the 
most sense for it to be.

Mark


> 
> Regards,
> 
> 2016-08-31 19:43 GMT-03:00 Bruce Ashfield <bruce.ashfield@windriver.com>:
> > On 2016-08-31 6:23 PM, Paul Eggleton wrote:
> >> Hi Daniel,
> >> 
> >> On Tue, 30 Aug 2016 17:18:44 Daniel. wrote:
> >>> While writing software we're used to delivery packages, libraries and
> >>> stacks. There are out there a lot of continuos integration solutions
> >>> to automaticaly build and test these kinds of software. But when
> >>> dealing to images the thing is more tricky.
> >>> 
> >>> I can't run the tests at the same machine that build the image because
> >>> crosscompilation take place on 99% of the cases. What is aproach that
> >>> you guys are using to automate and increase the quality of your
> >>> images?
> >>> 
> >>> Automating the build is the easy part my concert is about automating
> >>> the runtime tests that need the target board to run. In my case I
> >>> depend on hardware to fully test the image features. Is there any
> >>> reliable way to automate image installation and boot!?
> >> 
> >> There are some folks here working on automated hardware tests (on CC),
> >> perhaps
> >> they can expand on what we're currently doing in that area. At least in
> >> the
> >> existing code we do have basic support for running tests on real hardware
> >> that
> >> may be worth looking into - at the moment though it's pretty rudimentary
> >> when
> >> it comes to interacting directly with the hardware though. You can see
> >> what
> >> we've currently got here:
> >> 
> >> 
> >> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#hardw
> >> are-image-enabling-tests
> >> 
> >> We've looked at LAVA several times, and I'm sorry to say the conclusion
> >> each
> >> time is that its a mess - both from a usage perspective and looking at
> >> the
> >> code. It was disappointing to us because initially it looked like it was
> >> going
> >> to solve a lot of our problems. Maybe others have had different
> >> experiences -
> >> I'd love to hear details if anyone is prepared to share.
> > 
> > We've been using LAVA extensively within WRind River, and haven't run
> > into any major issues with the code and usage. Perhaps it depends on
> > the type of test cases that are being run ?
> > 
> > LAVA was active, extensible and able to integrate with our wide range
> > of targets.
> > 
> > That's not to say that we didn't add a lot of our own tests,
> > infrastructure, etc, but that was expected work with whatever we
> > chose.
> > 
> > Cheers,
> > 
> > Bruce
> > 
> >> Cheers,
> >> Paul
> 
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


