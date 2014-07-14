Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6224CE0076F; Mon, 14 Jul 2014 03:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B28E0053E
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 03:46:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2014 03:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,657,1400050800"; d="scan'208";a="569456596"
Received: from snaufer-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.80])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2014 03:46:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 14 Jul 2014 11:46:23 +0100
Message-ID: <4137831.cdWht7PMij@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.2 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.2; x86_64; ; )
In-Reply-To: <53BD0C5B.3090506@reliableembeddedsystems.com>
References: <53BD0C5B.3090506@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: automated hardware testing
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
X-List-Received-Date: Mon, 14 Jul 2014 10:46:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Wednesday 09 July 2014 12:33:15 Robert Berger wrote:
> I just noticed this [1] and there are rumors that in the next release
> hardware testing will also work with yocto-autobuilder.
> 
> I do have a couple of boards deployer in my lab and build with
> autobuilder images for them.
> 
> The consoles of my boards are connected via conservers to ethernet and I
> can also remotely switch on/off power.
> 
> For the beagle bone white the setup is more complex in order to press
> the reset button remotely and turn on/off the power over the USB cable
> remotely.
> 
> My goal would be to build something with autobuilder, deploy to a board
> and run some tests.
> 
> Is this feasible with my current infrastructure?
> Can someone please guide me in the right directions.

Absolutely. As a starting point I'd recommend the following section of the
manual:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#performing-automated-runtime-testing

Some of the capabilities in this area were added after 1.6, i.e. they are
only in master.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

