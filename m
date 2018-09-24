Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 176F0E00B81; Mon, 24 Sep 2018 14:09:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1DF6E00B3E
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 14:09:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2018 14:09:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,299,1534834800"; d="scan'208";a="88970205"
Received: from hhooy-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.133.199])
	by fmsmga002.fm.intel.com with ESMTP; 24 Sep 2018 14:01:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
Date: Tue, 25 Sep 2018 09:01:17 +1200
Message-ID: <2748401.7VLvW5X585@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <A05DCA0C0293664FB237A9C4B0E55E46015C01B1@PGSMSX107.gar.corp.intel.com>
References: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
	<3065402.BQHNVuqeqy@localhost.localdomain>
	<A05DCA0C0293664FB237A9C4B0E55E46015C01B1@PGSMSX107.gar.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] runtime: add BSP test case for usb storage
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
X-List-Received-Date: Mon, 24 Sep 2018 21:09:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 24 September 2018 3:02:28 PM NZST Hussin, Mohamad Noor Alim wrote:
> This patch is my supersede of earlier "manualbsp" which I split into 2 parts called usb test and microsd test.

OK thanks.

> I would use MACHINE_FEATURES = "usbhost" instead of introducing new variable as it would eliminate problem in case someone try to execute the usb test case without enable the "HARDWARE_TEST = 1" 

Sorry I don't understand - do you mean you will use it or you can't?

> or download the image form public autobuilder.

The test won't do anything in an image by default, only when you're running 
the test. In any case if the test isn't writing to the device there shouldn't 
be any major risk.

> > Otherwise I agree with Mike's reply, we should avoid writing to the storage device as part of the test.
> 
> It is mean that just do test like mount and unmount only? To read something in storage device we need to write at first place? 

That's true - but you can still do a read test if you make it a precondition of the test
that you write some known file to the storage device before running the test 
(as part of setup, just as you need to set up the board/device before
running any tests - you just need to ensure this gets documented somewhere).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



