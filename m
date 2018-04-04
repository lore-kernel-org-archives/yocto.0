Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA94FE00C54; Tue,  3 Apr 2018 21:13:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D0C6E008D2
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 21:13:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2018 21:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,404,1517904000"; d="scan'208";a="213750804"
Received: from danayien-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.66.143])
	by orsmga005.jf.intel.com with ESMTP; 03 Apr 2018 21:13:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Date: Wed, 04 Apr 2018 16:13:27 +1200
Message-ID: <3628235.utvFBA70li@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <4ac78687-69d5-a330-6b26-97aa5762e5b0@smart-home-technology.ch>
References: <4ac78687-69d5-a330-6b26-97aa5762e5b0@smart-home-technology.ch>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake problems recognizing the latest version of a repo
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
X-List-Received-Date: Wed, 04 Apr 2018 04:13:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jakob,

On Thursday, 29 March 2018 12:41:33 AM NZST Jakob Hasse wrote:
> Right now it's still a mystery for me when bitbake builds the latest 
> version of a repository and why. I make changes in my code and whether I 
> commit them or not, sometimes bitbake builds a package with the recent 
> version, sometimes with an old version.
> So my strategy is doing mock changes (adding whitespaces, "enhencing" 
> documentation) and adding signed commits as well as forcing a PR in the 
> recipe and re-running bitbake until it works somehow (I heard the 
> bitbake prefers the signed commits somehow could not verify this yet).
> 
> Hence, I would like to know what I have to do to build only the latest 
> version of a repository...
> 1. When it's local on my computer (with EXTERNALSRC_BUILD_pn-<package> = 
> "/home/some/local/location/" in local.conf),

If you are using the externalsrc class (specifically with EXTERNALSRC set, 
since EXTERNALSRC_BUILD only controls where the build is actually run) then 
you should find that any change to files within the source tree should trigger 
do_compile to rerun next time you build the recipe. If that does not happen 
then that's a bug which we should explore further.

> 2. When I build from a github or any remote repository.

In this case you need to be pulling the latest revision:

SRCREV = "${AUTOREV}"

If you need to specify a branch other than master, use ;branch=branchname in 
SRC_URI.

In order to force it to rebuild the latest version every time however, you 
will likely also need something like this:

PV = "1.0+git${SRCPV}"

The "1.0" bit can be anything you like - usually it would be whatever the 
latest release version was prior to the commit. A couple of further notes: 

1) The result of the above will be that every time you run a build, even if 
the recipe in question is not being built, bitbake will need to query the 
remote repository in order to determine the latest available version.

2) If you want to ensure that PV never appears to go backwards (which is 
important if you are using package management to perform upgrades within the 
target image) then you will need to enable the PR server - see the manual for 
information on how to do this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



