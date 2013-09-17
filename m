Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D98E8E015A4
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 00:42:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Sep 2013 00:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,921,1371106800"; d="scan'208";a="404483806"
Received: from unknown (HELO helios.localnet) ([10.252.123.194])
	by orsmga002.jf.intel.com with ESMTP; 17 Sep 2013 00:42:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>, Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Tue, 17 Sep 2013 08:42:05 +0100
Message-ID: <4616187.FgK0ETbC70@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1E7EC87B-ADCA-44D9-805E-7CA4ADA3EA6A@gmail.com>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F898A52@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<1E7EC87B-ADCA-44D9-805E-7CA4ADA3EA6A@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 17 Sep 2013 07:42:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 16 September 2013 23:16:51 Khem Raj wrote:
> On Sep 16, 2013, at 10:54 PM, Rohit2 Jindal <rohit2.jindal@aricent.com>
> wrote:
> > Please suggest me the way to git clone from two repos parallel in the same
> > recipe Is possible in yocto .If yes how to do that. Eg
> > SRC_URI =
> > "git://ep-code.xyz.com/sysconfig.git;branch=xxx-ep-20130823-3.0-alpha;pro
> > tocol=ssh SRC_URI =
> > "git://ep-code.xyz.com/xload.git;branch=xxx-ep-20130823-3.0-alpha;protoco
> > l=ssh When I tries to do this it unpacks the source downloaded to
> > WORKDIR/git so overwrites the first unpack with the other. So please
> > suggest me the way that two download two repos in same recipes with their
> > detstined cloned folder changed to folder with my required naming
> > convention instead of generic git name folder in workdir.
> 
> you could try using 'subpath' param to git fetcher.
> 
> try something like
> 
> SRC_URI =
> "git://ep-code.xyz.com/sysconfig.git;branch=xxx-ep-20130823-3.0-alpha;proto
> col=ssh;subpath=git1" SRC_URI =
> "git://ep-code.xyz.com/xload.git;branch=xxx-ep-20130823-3.0-alpha;protocol=
> ssh;subpath=git2"
> 
> and see if that helps

"subpath" isn't the right thing here; that will also copy only a subdirectory 
out of the git repository instead of the root. "destsuffix" is what you should 
set if you want to use something other than "git"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

