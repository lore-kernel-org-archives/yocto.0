Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42B9DE00CAB; Wed,  2 Aug 2017 00:36:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B73EFE00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 00:36:57 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Aug 2017 00:36:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,310,1498546800"; d="scan'208";a="134952624"
Received: from tmrank-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.52.92])
	by fmsmga006.fm.intel.com with ESMTP; 02 Aug 2017 00:36:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 02 Aug 2017 09:36:53 +0200
Message-ID: <2034571.TdFMnuGDQV@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAHUNapSbUEvxWjn4AOgO3JyrfYRe_LoV=t=vkN_Yv+O+R1w+Cg@mail.gmail.com>
References: <CAHUNapSbUEvxWjn4AOgO3JyrfYRe_LoV=t=vkN_Yv+O+R1w+Cg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bitbake memres usecase
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
X-List-Received-Date: Wed, 02 Aug 2017 07:36:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Trevor,

On Wednesday, 2 August 2017 12:09:48 AM CEST Trevor Woerner wrote:
> I'm trying to understand if memres is right for me.
> 
> Every night my machine, via jenkins, grinds away doing about a dozen
> builds. Each of these builds is for a separate MACHINE, in separate
> directories, with separate layers, configurations, etc. My jenkins
> instance has two executors (on the same machine). So if one build runs
> long, two builds could be running at the same time.
> 
> Should I enable memres?
> 
> Also, sometimes I kick off a jenkins job or two during the day, while
> at the same time doing manual builds somewhere else on the same
> machine. Maybe all I want to do manually is to run "bitbake -e" and
> investigate some packageconfig setting. Would having one
> memres-bitbake running cause issues with multiple builds running at
> the same time?
> 
> Is it possible to have one memres-bitbake running for the jenkins
> jobs, but have my own bitbake running for my manual jobs?
> 
> Or maybe none of the above is the use-case for memres?

It's really not going to save you much - it's not intended to help automated 
builds, it's really to improve interactive usage for repeated bitbake runs 
where a few seconds delay on each command is annoying. With regard to 
simultaneous access, there are certain operations that can internally be done 
whilst a normal build is running, and bitbake's command structure does support 
that, but I don't think bitbake is set up to actually enable that kind of 
usage at the moment.

Another thing to consider is that whilst it wasn't labelled as such, memres 
was fairly buggy until just recently in master, and we've just changed things 
so that it's effectively replaced by the default mode of operation where it 
can optionally remain resident by setting a timeout variable.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

