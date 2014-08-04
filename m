Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31084E004DD; Mon,  4 Aug 2014 08:19:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179FAE0030B
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 08:19:15 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 04 Aug 2014 08:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="367685230"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.122.206])
	by FMSMGA003.fm.intel.com with ESMTP; 04 Aug 2014 08:15:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: gmane@reliableembeddedsystems.com
Date: Mon, 04 Aug 2014 16:19:12 +0100
Message-ID: <15994920.lHIRveqRz5@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.7-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <437a1f01163768e1c5e53c1c1f397bc5@reliableembeddedsystems.com>
References: <53BD0C5B.3090506@reliableembeddedsystems.com>
	<4137831.cdWht7PMij@peggleto-mobl5.ger.corp.intel.com>
	<437a1f01163768e1c5e53c1c1f397bc5@reliableembeddedsystems.com>
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
X-List-Received-Date: Mon, 04 Aug 2014 15:19:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 03 August 2014 11:41:50 gmane@reliableembeddedsystems.com wrote:
> On 2014-07-14 05:46, Paul Eggleton wrote:
> > Some of the capabilities in this area were added after 1.6, i.e. they
> > are only in master.
> 
> I use a pretty recent yocto-autobuilder, but I guess I will need to
> update poky as well. Right?

That is correct, yes. In fact this functionality is implemented within the 
build system rather than the autobuilder.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

