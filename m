Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A22F2E00AC8; Thu,  2 Aug 2018 01:36:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF39E0096A
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2018 01:36:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Aug 2018 01:36:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,434,1526367600"; d="scan'208";a="76654291"
Received: from unknown (HELO localhost.localdomain) ([10.103.239.151])
	by fmsmga004.fm.intel.com with ESMTP; 02 Aug 2018 01:35:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Paulo Neves <ptsneves@gmail.com>
Date: Thu, 02 Aug 2018 09:35:41 +0100
Message-ID: <6111005.T3omFVPL6s@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAJO0J4g=yJLtdncAAJxdCA5vTOPnz5ZOt3hc6Q4eHOh18tm4-w@mail.gmail.com>
References: <CAJO0J4g=yJLtdncAAJxdCA5vTOPnz5ZOt3hc6Q4eHOh18tm4-w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Cannot use any TEST_TARGET besides simpleremote or qemu
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
X-List-Received-Date: Thu, 02 Aug 2018 08:36:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paulo,

On Thursday, 2 August 2018 12:11:37 AM BST Paulo Neves wrote:
> I am trying to create my own test controller. After copy pasting and
> adapting the skeleton from BeagleBoneTarget to
> $MYLAYER/lib/oeqa/controllers I set the appropriate TEST_TARGET.
> 
> When I run the testimage task I always have errors like in [1]. The
> actual keyword that is unexpected changes from invocation to
> invocation. There was a similar error previously reported in this
> mailing list but the presented solution was to actually stop using the
> TEST_TARGET variable, which is not applicable.
> 
> I have tried setting TEST_TARGET to any of the proposed options in the
> manual [2] and the same unhelping error shows. I know that some of
> that these controller targets, are not appropriate for my target
> (odroid [cortex-arm15]), but the errors seems to not be related to any
> functionality or these boards.
> 
> I have analyzed and cannot really understand also how all the example
> targets classes have a constructor which takes the d variable, while
> the context.py call has some more variables including a dictionary,
> kwargs, which does not actually have the d variable.

I discovered this as well:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=12842

This code got broken during the refactoring a while ago, and I think the 
person doing the work considered it to be legacy functionality and was going 
to remove it. Personally I'd like to see it stay and get fixed up, but the 
issue is having the time to fix it and maintain it - if you do by any chance 
then that would be great.

At the moment I believe "simpleremote" does still work, it's just the actual 
classes that are broken, but I didn't give it extensive testing.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



