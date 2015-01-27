Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4783AE00906; Tue, 27 Jan 2015 10:36:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D547E008FF
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 10:36:39 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 27 Jan 2015 10:30:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,476,1418112000"; d="scan'208";a="518496343"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by orsmga003.jf.intel.com with ESMTP; 27 Jan 2015 10:29:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: ezekiel@sanborndeasis.net
Date: Tue, 27 Jan 2015 18:36:36 +0000
Message-ID: <474132244.EHUv1zaDLv@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <20150127105003.8c4e4b9406b77e1e78d5069819454ed7.4ff308449e.wbe@email14.secureserver.net>
References: <20150127105003.8c4e4b9406b77e1e78d5069819454ed7.4ff308449e.wbe@email14.secureserver.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: force flag and taint logging
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
X-List-Received-Date: Tue, 27 Jan 2015 18:36:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ezekiel,

On Tuesday 27 January 2015 10:50:03 ezekiel@sanborndeasis.net wrote:
> Since picking up Dizzy I have noticed 
> 
> "... is tainted from a forced run"
> 
> log line appears to stick forever once I have forced a fetch or compile on a
> component. The change to bring this in is here:
> 
> https://code.amazon.com/packages/Zeus-poky/commits/60c40e5db57da094ab5ecfadf
> 8e07dc6251bec66 
> 
> It appears to me that the resultant taint file for a component, once made,
> never goes away.  It only effectively forces a fetch or recompile once, but
> the file itself remains. So in effect, with the new log message, once I
> taint a task I will forever see this log message even though it does not
> appear to actually do anything.
> 
> In other words, from core image-minimal
> 
> $ bitbake zlib -f -c fetch
> $ bitbake zlib
> 
> ---> at this stage I see the log and I see all the dependent tasks of fetch
> rerun as expected. WARNING:  .../meta/recipes-core/zlib_1.2.8.bb.do_fetch
> is tainted from a forced run
> 
> ---> but if I bitbake zlib again, zlib has already been built post the force
> fetch, so I dont see bitbake actually rebuild anything. BUT I still get the
> warning message. The warning message fires based on the presence of the
> taint file and it is still there in he component folder within stamps. $
> bitbake zlib
> 
> WARNING:  .../meta/recipes-core/zlib_1.2.8.bb.do_fetch is tainted from a
> forced run
> 
> Is there something I am missing here? It appears to be a misleading log
> message.

When you force a task, the means by which we do that is adjusting (tainting) 
the task's signature; this is so that other tasks that depend upon that tasks 
also get forced to re-execute, which is almost always what you want. However, 
unless you want those other tasks to just spring back to the previous output 
on the next build, that tainted state needs to be preserved across builds, so 
it doesn't go away, no. The only way to get rid of it is to do a clean on the 
recipe e.g. bitbake -c clean zlib. I'll grant you that this is not obvious and 
it's arguable that the tainted state should possibly go away if the task re-
executes by itself. (The idea of this being a "taint" and the need for a 
warning stems from the usage where you're modifying some intermediate state of 
the build e.g. temporary source code in the workdir, and then re-running the 
task with -f, in which case the result of the build is potentially not 
reproducible from the metadata).

The question I would have is, why do you feel the need to force the task in 
this case, particularly with a task like do_fetch? In general I view -f (and 
also -C) as something you use when the system's normal ability to figure out 
task dependencies hasn't worked, and thus it ought to be viewed more as a 
debugging tool, but I may be missing what you're trying to do.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

