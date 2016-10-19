Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F6B6E00D8D; Tue, 18 Oct 2016 19:01:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7243FE00D7C
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 19:01:07 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP; 18 Oct 2016 19:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,364,1473145200"; d="scan'208";a="21099579"
Received: from yuan-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.98])
	by fmsmga005.fm.intel.com with ESMTP; 18 Oct 2016 19:01:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 19 Oct 2016 15:00:59 +1300
Message-ID: <2230276.qBQjo1O2fV@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.7-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CACfi_Z1gqXxGMgqwvs0YwT73VBWb4-GXsjKkkUxRZ5HehwL7-Q@mail.gmail.com>
References: <CACfi_Z1gqXxGMgqwvs0YwT73VBWb4-GXsjKkkUxRZ5HehwL7-Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Difference between bitbake inclusion and inheritance
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
X-List-Received-Date: Wed, 19 Oct 2016 02:01:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Davis,

On Tue, 18 Oct 2016 18:37:50 Davis Roman wrote:
> I'm a yocto newbie and so I'm becoming familiar with the documentation.
> 
> I came across a bitbake feature that is somewhat confusing to me regarding
> the difference between optional/required inclusion versus inheritance.
> 
> As far as optional/required inclusion is concerned, the documentation
> states quite clearly that the main difference is that the former will not
> issue an error message if the specified file is not found while the latter
> will so there is no issue here.
> 
> My issue has to do with the 'inherit' command. Sounds to me like 'include'
> and 'require' already do the trick so I'm curious to know what value does
> 'inherit' bring ?

The answer is that they are very similar - but tend to be used for slightly 
different purposes. inherit is for where you have some functionality that you 
expect to be applicable across a number of recipes, so it should show up in a 
standard location in a reasonably standard format. The technical differences 
really stem from that:

* Classes must appear in a classes subdirectory somewhere along BBPATH
* Classes must be named <something>.bbclass
* Classes can use EXPORT_FUNCTIONS so you can still call the original function 
from your overridden version
* It's easy to query from python code whether a recipe inherits a class (and 
it's something we do in quite a number of places); it's technically possible 
to do the same for include/require but more difficult

include/require are much more generic and applicable for any other kind of 
shared or encapsulated functionality or configuration that doesn't suit a 
.bbclass.

Note that not all classes are typically inherited from individual recipes with 
inherit - there are classes that are usually applied globally by adding their 
names to INHERIT (e.g. buildhistory).

Hope that helps.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

