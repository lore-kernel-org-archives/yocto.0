Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 767AFE0086F; Mon, 15 Dec 2014 05:28:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42530E0082D
	for <yocto@yoctoproject.org>; Mon, 15 Dec 2014 05:28:06 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2014 05:28:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,579,1413270000"; d="scan'208";a="637737680"
Received: from zhiweiji-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.22.140])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2014 05:28:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ulf Winberg <ulfwin@gmail.com>
Date: Mon, 15 Dec 2014 13:28:04 +0000
Message-ID: <3787463.ZeeaN0mB2c@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.4-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CAP9QVgCfKRgn5O8=miJL1KzRkWh5xP1kEE9H8uLFgFVEB+uOaQ@mail.gmail.com>
References: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
	<1426837.Z6YLN2FboT@peggleto-mobl5.ger.corp.intel.com>
	<CAP9QVgCfKRgn5O8=miJL1KzRkWh5xP1kEE9H8uLFgFVEB+uOaQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using anonymous python function to define variables
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
X-List-Received-Date: Mon, 15 Dec 2014 13:28:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 12 December 2014 16:19:39 Ulf Winberg wrote:
> Thanks! Using python as a function with return value solved it.

Great!
 
> When bb.parse.SkipPackage is used, there seems to be no warning when
> building. Does the text I wrote end up in a log somewhere?

SkipPackage (or SkipRecipe which should really now be used instead) just marks 
the recipe as skipped - you only see the message when you try to build that 
recipe.

> I was testing the SOMEVAR example you give. Am I right to assume that the
> overrides only works for gobal variables, already defined elsewhere? I was
> not able to define one myself and use the overrides.

No, that should work for any variable (and you can see existing examples where 
we do that, e.g. 
meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb )

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

