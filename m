Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C53E8E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 04:59:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jun 2013 04:59:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,851,1363158000"; d="scan'208";a="315831514"
Received: from unknown (HELO helios.localnet) ([10.252.122.12])
	by azsmga001.ch.intel.com with ESMTP; 12 Jun 2013 04:59:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Jun 2013 12:59:33 +0100
Message-ID: <1875741.cStO1T6C1g@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
MIME-Version: 1.0
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 11:59:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 June 2013 04:16:30 michael@cubic.org wrote:
> Paul D. DeRocco wrote on Tuesday, June 11, 2013 at 9:07 PM:
> > "Following is a list of toolchain recipes..." This is followed by
> > gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of these
> > things say that the toolchain runs on the host and is used to build
> > software
> > for the target. So why are there three of them? What are the differences
> > among them?
> 
> The gcc must be build multiple times when you bootstrap it.
> For building the gcc you need to build the libc and therefor you need to
> build the linux kernel headers and therefor you need the gcc. Oops.
> 
> Thats why you first build a gcc only with c support and no libc first.
> Use that to generate the kernel headers, then build the initial libc and
> then another gcc with libc support and all the frontends you need
> (c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am not
> shure, but there will be a reason and another one can clarify that.

gcc-cross-intermediate is gone as of 1.3; as I understand it current versions 
of glibc can be compiled using gcc-cross-initial so the intermediate step is 
no longer required. We should remove mention of this from the documentation 
(other than in the migration section that is).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

