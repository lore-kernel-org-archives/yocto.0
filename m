Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29C7AE006B4; Sun, 18 Sep 2016 13:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D22E2E006B4
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 13:38:56 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 18 Sep 2016 13:38:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,358,1470726000"; d="scan'208";a="881199740"
Received: from yewyangh-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.182.139])
	by orsmga003.jf.intel.com with ESMTP; 18 Sep 2016 13:38:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Date: Mon, 19 Sep 2016 08:38:51 +1200
Message-ID: <2124963.FPzR1hJVXe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.3-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DUB127-W12D05537BA95946E13F8FEDAF30@phx.gbl>
References: <DUB127-W74594485FCFFB10C4DC5E4DAF30@phx.gbl>
	<57DBE7CD.6060409@phytec.de>
	<DUB127-W12D05537BA95946E13F8FEDAF30@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: QA python3 runtime dependency
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
X-List-Received-Date: Sun, 18 Sep 2016 20:39:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 16 Sep 2016 13:51:55 Chris Trobridge wrote:
> ----------------------------------------
> 
> > Subject: Re: [yocto] QA python3 runtime dependency
> > To: christrobridge@hotmail.com; yocto@yoctoproject.org
> > From: s.mueller-klieser@phytec.de
> > Date: Fri, 16 Sep 2016 14:38:37 +0200
> > 
> > On 16.09.2016 13:45, Chris Trobridge wrote:
> >> My top-level python3 scripts have "#!/usr/bin/python3" and the recipe
> >> RDEDENDS on python3.> 
> > I guess this is what you need:
> > 
> > RDEPENDS_${PN} = "python3-core"
> > 
> > As the interpreter is in the -core package.
> > 
> > Regards, Stefan
> > 
> >> There's no problem in the final system as python3 is present in /usr/bin
> >> as expected. What I do not understand is why I am getting a QA warning :
> >> "requires /usr/bin/python3, but no providers found in RDEPENDS?
> >> [file-rdeps]". Any ideas why this is happening?
> >> Thanks,Chris
> 
> Thanks,
> 
> I was looking for the right package - that works.
> 
> What puzzles me a bit is that my project RDEPENDs python3 and python3
> RDEPENDs python3-core, so I would have thought this  would have propagated!

I think it does, it may just be that the code that generates the warning isn't 
smart enough to figure that out.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

