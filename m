Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01CCCE00746
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 03:15:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jun 2012 03:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="155354564"
Received: from unknown (HELO helios.localnet) ([10.252.120.167])
	by orsmga001.jf.intel.com with ESMTP; 19 Jun 2012 03:15:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Rucker <linux.mrjimorg@gmail.com>
Date: Tue, 19 Jun 2012 11:15:05 +0100
Message-ID: <1716213.rh1b8QEMi2@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <CAH6UwN2LBTKk97jCgq1Z07RWhY0ko3oNVGjHg9tfGW7CkoD=HQ@mail.gmail.com>
References: <CAH6UwN2LBTKk97jCgq1Z07RWhY0ko3oNVGjHg9tfGW7CkoD=HQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Dependency Tree
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jun 2012 10:15:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 18 June 2012 13:58:03 Jim Rucker wrote:
> I'm trying to build using the code sourcery external compiler and I noticed
> that it's pulling in qemu. This brings up 2 questions-
> 1. Why? Qemu is not a prerequisite for building with GCC and shouldn't be a
> prerequisite for building with CS.

What is your MACHINE set to? If you're building for a qemu* machine then that 
would explain it.

> 2. How can I easily generate a dependency tree so I can 'fix' this?

As Khem mentioned you can use -g -u depexp, or alternatively just -g to output 
dependency graphs in graphviz format which you can grep.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

