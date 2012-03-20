Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D734E0044D
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 09:23:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Mar 2012 09:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="119612013"
Received: from unknown (HELO helios.localnet) ([10.252.123.195])
	by orsmga001.jf.intel.com with ESMTP; 20 Mar 2012 09:23:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Toomey <john.toomey@linux.intel.com>
Date: Tue, 20 Mar 2012 16:23:16 +0000
Message-ID: <1369360.rBu7e7v26n@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F68A6F6.8080900@linux.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc.
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
X-List-Received-Date: Tue, 20 Mar 2012 16:23:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 20 March 2012 15:49:10 John Toomey wrote:
> I'm having problems compiling iputils with uclibc -
> 
> | ping6.o: In function `niquery_option_subject_name_handler':
> /tmp/work/i586-poky-linux-uclibc/iputils-s20101006-r2/iputils-s20101006/ping
> 6.c:428: undefined reference to `dn_comp'
> 
> | collect2: ld returned 1 exit status
> | make: *** [ping6] Error 1
> | make: *** Waiting for unfinished jobs....
> | make[1]: Leaving directory
> 
> `/tmp/work/i586-poky-linux-uclibc/iputils-s20101006-r2/iputils-s20101006/doc
> '
> | ERROR: oe_runmake failed
> 
> NOTE: package iputils-s20101006-r2: task do_compile: Failed
> ERROR: Task 4 (/poky/meta/recipes-extended/iputils/iputils_s20101006.bb,
> do_compile) failed with exit code '1'
> 
> It works fine with eglibc. I posted this question before but didnt
> really get a good answer - can anyone help point me in the right direction?

IIRC the thread ended with Khem asking if UCLIBC_HAS_RESOLVER_SUPPORT='y' was 
in the uclibc configuration, the implication being that dn_comp is unavailable 
unless that is true. I'm not too familiar with how uclibc is configured and 
with only a brief glance at the recipe I can see the config seems to be 
automatically generated but I can't see exactly how additional options (beyond 
what gets added from DISTRO_FEATURES) would be added.

Khem, could you help out here?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

