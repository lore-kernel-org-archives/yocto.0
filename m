Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FA60E00994; Wed, 22 Apr 2015 16:22:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6644AE00994
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 16:22:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 22 Apr 2015 16:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,626,1422950400"; d="scan'208";a="717765052"
Received: from dkenned1-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.5.70])
	by orsmga002.jf.intel.com with ESMTP; 22 Apr 2015 16:22:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Thu, 23 Apr 2015 00:22:23 +0100
Message-ID: <1508758.Rhv2PmRKWu@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <BLUPR0501MB102866C5EB58E5A59367E3D8BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
	<BLUPR0501MB102866C5EB58E5A59367E3D8BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Wed, 22 Apr 2015 23:22:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 22 April 2015 20:51:08 Brian Karcz wrote:
> Thanks for pointing me to that. It sounds like exactly what I need. I can't
> believe that I've not come across that in my searches. I suppose its a
> matter of using the right search criteria.

So I do want to mention one thing - we envisaged externalsrc more for 
situations where you temporarily want to build from an external source tree 
(for example, when you're in the middle of development). The expectation is 
that when you reach production you switch over to a standard repository 
specified in SRC_URI. Having said that there aren't any actual barriers to 
using it on a more permanent basis as it sounds like you may  be considering 
(although perhaps I've misunderstood.)

> It looks like I can add those lines to either local.conf or the package
> recipe. Once I do that I have a couple question on how it works:
> 
> 1) does the version of the recipe become moot? Does it still need dummy
> versions in PV and PR to be valid? 

There isn't a requirement for PR/PV to be set whether you use externalsrc or 
not - if you don't specify these there are defaults. PV is typically specified 
through the file name (after the underscore) and PR generally doesn't need to 
be set or incremented manually these days with the advent of the PR service.

> 2) can the SRC_URI now be omitted in the recipe since there is nothing to
> fetch? 

You can leave it completely blank if you wish. In dizzy and earlier, SRC_URI 
is effectively ignored with externalsrc. In master and the just-released fido 
release, any local file:// references will still be fetched if present, remote 
URIs will be ignored.

> 3) can the "S" variable be used to drive into the source tree to find the
> applications top level makefile or should I just point the EXTERNALSRC
> variable right there and it will be fine navigating above that base? 4) can
> the recipe still inherit autotools to perform the build on the external
> source directory?

S is no longer used when externalsrc is enabled for a recipe; EXTERNALSRC 
should point to the base of where the source is (i.e. where S might have 
pointed to in the unpacked source tree  were you not using externalsrc).
 
> I'm now envisioning a package recipe that looks something like:
> 
> PV = "1.0"
> PR = "r1"

You shouldn't need these.

> DESCRIPTION = "abc package located outside build tree"
> INHERIT += "externalsrc"

INHERIT += is for conf files, in a recipe you need to use inherit instead.

> EXTERNALSRC_abc = "../../../../../abc"

I don't think a relative path will work, or at least if by some chance it does 
work I would still advise using an absolute path.

You don't need an override (_abc) here - well, unless your recipe uses 
BBCLASSEXTEND and you only want to apply to one of the variants, that is. 
There's one given in the example in the manual because there it is talking 
about setting it from a conf file rather than within the recipe, thus you need 
to set an override to make it applicable only to the desired recipe.

> S = "../../../../../abc/apps/build"

You can drop S.

> inherit autotools
> 
> Its propably unlikely, since this lends itself to being very custom, but do
> you know of any examples of a recipe implementation that use this
> mechanism?

No, there won't be any I'm afraid as typically this is used as a temporary 
measure.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

