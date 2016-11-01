Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 638F9E00509; Tue,  1 Nov 2016 13:33:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20297E0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 13:33:34 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 01 Nov 2016 13:33:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,433,1473145200"; d="scan'208";a="896581550"
Received: from kgonza2-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.24])
	by orsmga003.jf.intel.com with ESMTP; 01 Nov 2016 13:33:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 02 Nov 2016 09:33:29 +1300
Message-ID: <8906607.HU35dOrijf@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <ac86ff71-d5ea-7dde-2a43-f68a6fb95d7f@mlbassoc.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<2883891.WbHxuNiGSe@peggleto-mobl.ger.corp.intel.com>
	<ac86ff71-d5ea-7dde-2a43-f68a6fb95d7f@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Tue, 01 Nov 2016 20:33:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Nov 2016 13:36:57 Gary Thomas wrote:
> On 2016-10-31 23:06, Paul Eggleton wrote:
> > FYI the eSDK will use whatever you set in DISTRO - you have your own
> > distribution, but I assume you are still referencing poky - perhaps as an
> > include from your distro configuration? At least meta-poky must be in your
> > bblayers.conf, otherwise I don't think you'd be getting this error.
> > 
> > Regardless of that, there is a bug here somewhere. What do you have under
> > layers/ in the generated SDK? Are you setting TEMPLATECONF anywhere?
> 
> I don't have meta-poky, nor any mention of poky, in any of my layers.
> I'm still relying on the poky GIT tree, but that's for historical reasons
> (started long before the OE-core split).

I think that's where the problem lies. You may not realise it, but the 
TEMPLATECONF environment variable is being set simply by using the poky 
repository, since there is a .templateconf directory at its root that sets it 
to "meta-poky/conf" if it isn't already set. This isn't a problem during 
normal operation since meta-poky/conf exists there - you'll just be using 
poky's template local.conf and bblayers.conf rather than any other. When you 
generate the eSDK though, meta-poky won't be copied into the eSDK because that 
layer is not in your bblayers.conf and thus you get the error.

I will have to try and figure a way around this. In the mean time you should 
be able to change the saved value in <builddir>/conf/templateconf.cfg to 
"meta/conf" to work around the issue, but it'll come back if you create a new 
build directory unless you set TEMPLATECONF in the external environment before 
running oe-init-build-env.

You're right in your implication that I hadn't tested this - I had tested 
alternative distros with the oe-core repo but not with the poky repo, so I 
hadn't encountered this issue. I've filed a bug [1] to track the issue.

Cheers,
Paul

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=10568

-- 

Paul Eggleton
Intel Open Source Technology Centre

