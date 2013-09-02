Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E8DEE01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 07:14:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Sep 2013 07:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1007,1367996400"; d="scan'208";a="354866034"
Received: from unknown (HELO helios.localnet) ([10.252.123.85])
	by azsmga001.ch.intel.com with ESMTP; 02 Sep 2013 07:14:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: lothar@denx.de
Date: Mon, 02 Sep 2013 15:14:20 +0100
Message-ID: <2302800.VzDlDlKCHB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <c3cd39f7562ccd925f1d7fd7d9929305@denx.de>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<2462918.0uoppbURnB@helios>
	<c3cd39f7562ccd925f1d7fd7d9929305@denx.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Mon, 02 Sep 2013 14:14:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Lothar,

On Monday 02 September 2013 15:17:28 lothar@denx.de wrote:
> I followed this very interesting thread, and have a question on the last
> statement, just for understanding:
> 
> Are the limitations you are explaining here, the same as mentioned in...
> http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html
> ...under "Checksums (Signatures)", telling that:
> "Consider a case with in-line Python, for example, where BitBake is not
> able to figure out dependencies."   ? So to speak, are those limitations
> the cases, where bitbake is not able to figure out dependencies
> correctly?

That is to do with variable dependencies so it's not exactly what is being 
discussed earlier in the thread; however if these are not able to be detected 
they can result in signatures not changing when you change the value of one of 
the variables upon which there is a missing dependency and thus items not 
being rebuilt as expected. However, there is some "magic" in 
bitbake/lib/bb/codeparser.py which picks up most of the common cases within 
python code (e.g. usage of d.getVar()), so most of the time this is not a 
concern.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

