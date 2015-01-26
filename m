Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D5BE00894; Mon, 26 Jan 2015 15:22:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76CA4E00837
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 15:22:23 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2015 15:22:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,471,1418112000"; d="scan'208";a="676272179"
Received: from rszwicht-mobl6.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.107])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2015 15:22:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Abernathy <jfabernathy@outlook.com>
Date: Mon, 26 Jan 2015 23:22:09 +0000
Message-ID: <4908306.bUS88zCuvA@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <BAY169-W5745C4E1B4E3F2071FB66AAE350@phx.gbl>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>
	<BAY169-W5745C4E1B4E3F2071FB66AAE350@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Mon, 26 Jan 2015 23:22:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 26 January 2015 16:37:37 Jim Abernathy wrote:
> > From: Thomas.Moore2@ATK.COM
> > To: jfabernathy@outlook.com
> > CC: opensource@keylevel.com; yocto@yoctoproject.org; gary@mlbassoc.com
> > Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
> > Date: Mon, 26 Jan 2015 21:04:54 +0000
> > 
> > For now, I'd just get everything working with the local.conf:
> > 
> > DISTRO_FEATURES += "wifi"
> > 
> > bitbake core-image-base
> > 
> > Ultimately, you may want to make a custom machine and distro config and
> > incorporate all of the things you've specified in local.conf in those
> > configs. For example, I have a system that's an intel-based single-board
> > computer with several expansion cards. I've created a machine
> > configuration to define the basic hardware components (features, drivers,
> > etc). I've also created a custom distro because we prefer system over
> > systemv and to include some other non-machine specific packages. Finally,
> > I've created a custom image that includes some other extras.
> > 
> > The power of local.conf is nice, but it's a little tricky transitioning
> > from that to more of a BSP approach like I described above because most
> > people just say to add it to your local.conf, but that's not really how
> > it should be done at the end. Think global variables vs classes.
> > 
> > P.S. Never edit anything in the poky folder. If you want to modify an
> > existing recipe, create a new layer with a bbappend and modify away.
> > 
> > Thomas
> 
> I tried just adding DISTRO_FEATURES += "wifi" to the local.conf and
> bitbaking core-image-base, but I got a lot of errors:
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'glibc'
> ERROR: glibc was skipped: missing required distro feature 'ipv4' (not in
> DISTRO_FEATURES) ERROR: Required build target 'core-image-base' has no
> buildable providers. Missing or unbuildable dependency chain was:

You're getting this error because you're actually replacing the value with 
"wifi" not adding it, because the default value is actually set *after* 
local.conf is parsed using ?=, so having set a value in local.conf, it's 
already set and thus ?= has no effect. Then we get to parsing the glibc recipe 
and that immediately fails because it states that all features in 
DISTRO_FEATURES_LIBC are required, and you've removed those. (As a side note I 
really dislike how this latter bit has been implemented, but at least it 
breaks early rather than what used to happen where it would get up to 
compiling glibc and then fail). The correct way to add to DISTRO_FEATURES in 
local.conf would be to use DISTRO_FEATURES_append = " ..." (and don't forget 
the leading space in the value).

However, that said, I'd guess that if your configuration is the default poky or 
reasonably close to it, DISTRO_FEATURES already contains "wifi", so there 
shouldn't even be a need to add it; particularly as you've already suggested 
wifi was working with core-image-sato.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

