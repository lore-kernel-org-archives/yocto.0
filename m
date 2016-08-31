Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E012CE00BF8; Wed, 31 Aug 2016 15:23:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,PLING_QUERY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721F7E00BC1
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 15:23:49 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP; 31 Aug 2016 15:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,264,1470726000"; d="scan'208";a="163035865"
Received: from clim59-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.178.177])
	by fmsmga004.fm.intel.com with ESMTP; 31 Aug 2016 15:23:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Daniel." <danielhilst@gmail.com>
Date: Thu, 01 Sep 2016 10:23:43 +1200
Message-ID: <1888254.UId6usnihk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.7-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
References: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Edwin Plauchu <edwin.plauchu.camacho@intel.com>
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
X-List-Received-Date: Wed, 31 Aug 2016 22:23:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Daniel,

On Tue, 30 Aug 2016 17:18:44 Daniel. wrote:
> While writing software we're used to delivery packages, libraries and
> stacks. There are out there a lot of continuos integration solutions
> to automaticaly build and test these kinds of software. But when
> dealing to images the thing is more tricky.
> 
> I can't run the tests at the same machine that build the image because
> crosscompilation take place on 99% of the cases. What is aproach that
> you guys are using to automate and increase the quality of your
> images?
> 
> Automating the build is the easy part my concert is about automating
> the runtime tests that need the target board to run. In my case I
> depend on hardware to fully test the image features. Is there any
> reliable way to automate image installation and boot!?

There are some folks here working on automated hardware tests (on CC), perhaps
they can expand on what we're currently doing in that area. At least in the
existing code we do have basic support for running tests on real hardware that
may be worth looking into - at the moment though it's pretty rudimentary when
it comes to interacting directly with the hardware though. You can see what
we've currently got here:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#hardware-image-enabling-tests

We've looked at LAVA several times, and I'm sorry to say the conclusion each
time is that its a mess - both from a usage perspective and looking at the
code. It was disappointing to us because initially it looked like it was going
to solve a lot of our problems. Maybe others have had different experiences -
I'd love to hear details if anyone is prepared to share.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

