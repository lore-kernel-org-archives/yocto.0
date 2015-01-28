Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F061DE0086E; Wed, 28 Jan 2015 02:25:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A7CE00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 02:25:49 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2015 02:25:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,480,1418112000"; d="scan'208";a="668905769"
Received: from nnodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.113])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2015 02:25:29 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Clemens Lang <clemens.lang@bmw-carit.de>
Date: Wed, 28 Jan 2015 10:25:29 +0000
Message-ID: <8731054.dVFh4y5ell@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <20150128085214.GC30548@ulm-bmuc496424.bmw-carit.de>
References: <20150128085214.GC30548@ulm-bmuc496424.bmw-carit.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Automated license incompatibility checks
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
X-List-Received-Date: Wed, 28 Jan 2015 10:25:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Clemens,

On Wednesday 28 January 2015 09:52:14 Clemens Lang wrote:
> I have written a bbclass that does license conflict checking before
> building images for distribution. I am wondering if that is something
> you as a project would be interested in integrating, e.g. into poky.
> 
> I am also looking for feedback to my approach and ideas on how to handle
> corner cases, such as the OpenSSL exception. To give you a short and
> rough overview and to avoid wasting your time with a code review before
> we discussed the general approach, here's the commit message for my
> 
> local change implementing this:
> > Implement automatic license conflict checking as QA check. This check
> > adds a hook to the do_rootfs task, gathers a list of packages to be
> > installed into the root file system, their licenses and dependency
> > relations. It then walks this list and removes all licenses or part of
> > license expressions that are not satisfiable using licenses from a
> > configurable whitelist. For example,
> > 
> >   (GPL-3.0 & LGPL-3.0+) | GPL-2.0
> > 
> > with a whitelist of "GPL-2.0" will be transformed to
> > 
> >   GPL-2.0
> > 
> > before running license conflict checking. This ensures none of the
> > licenses you don't want to distribute in your image is required to
> > fulfill all license constraints.
> > 
> > Afterwards, each package's license is checked against those of its
> > dependencies one by one. To detect conflicts, the two license
> > expressions are converted into conjunctive normal form, concatenated
> > with all relevant license conflicts read from a configuration file and
> > handed over to a SAT solver (currently minisat via the satispy python
> > library). If the solver indicates the expression is satisfiable, there
> > is no license conflict. If the expression cannot be solved, the
> > licenses conflict.

This sounds like something we should be handling in our INCOMPATIBLE_LICENSE 
check code, although it's not clear that we currently handle where 
alternatives to an incompatible license are available for a recipe/package, so 
that looks like it would be new functionality. You haven't mentioned 
INCOMPATIBLE_LICENSE - does your solution build on that, or replace it?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

