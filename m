Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C043E00D31; Mon,  2 May 2016 21:51:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8239AE00D21
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 21:51:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 02 May 2016 21:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,571,1455004800"; d="scan'208";a="967426118"
Received: from cwtan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.219])
	by orsmga002.jf.intel.com with ESMTP; 02 May 2016 21:51:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 03 May 2016 16:51:31 +1200
Message-ID: <1736594.NP63oMXEmq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.8-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <CAOsp8o9u4CdCgH4SruASbyvKY_iDbG07wgPECg5ntSE5mSTTqg@mail.gmail.com>
References: <CAOsp8o9u4CdCgH4SruASbyvKY_iDbG07wgPECg5ntSE5mSTTqg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Build toolchain only (crosstools substitute?)
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
X-List-Received-Date: Tue, 03 May 2016 04:51:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Mon, 02 May 2016 16:38:16 Michael Habibi wrote:
> I have been a few months out of researching Yocto, so I'm having trouble
> caching it all back in (a lot to absorb!). Excuse me if this is answered
> clearly in the documentation (I glanced around and I know you can build
> relocatable toolchains, etc, but I suppose I'm asking more of a
> philosophical question).
> 
> I have long-term plans to change our distribution at work over from a
> custom distribution to one built by Yocto - but this is a few months to a
> year out.
> 
> In the mean time, we need a new toolchain simply to update our glibc and
> gcc packages. I understand that yocto 2.1 can build gcc 5.3 w/ glibc 2.23
> support. I was wondering if this would be considered an appropriate
> exercise to use the yocto framework to build solely a toolchain to be used
> with a custom distribution (understanding that the custom distribution
> would have to be modified to source and use the new toolchain).
> 
> We typically use crosstools to generate the toolchain, but it is a bit
> outdated and only builds gcc 5.2 (which has some bugs that were fixed in
> 5.3). Essentially I want to use Yocto recipes as a substitute for
> crosstools-ng.

If you build (or download) our SDK that should give you what you need:

  http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#sdk-building-an-sdk-installer

If it's just the toolchain you need you can ignore the bits about
the extensible SDK - the standard SDK is what you want. There's
some more explanatory stuff towards the top of that manual as well.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

