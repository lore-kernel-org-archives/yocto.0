Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95DD0E01489
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 04:05:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 May 2013 04:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,728,1363158000"; d="scan'208";a="245611882"
Received: from unknown (HELO helios.localnet) ([10.255.12.23])
	by AZSMGA002.ch.intel.com with ESMTP; 23 May 2013 04:04:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Johan Thelin <johan.thelin@pelagicore.com>
Date: Thu, 23 May 2013 12:04:58 +0100
Message-ID: <2768871.Kj44iKgpRq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-21-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CADGWk0rtNhS2pMUqhXGjLL469FxCFvkdk-3SnUSWQ4uXP60AGw@mail.gmail.com>
References: <CADGWk0rtNhS2pMUqhXGjLL469FxCFvkdk-3SnUSWQ4uXP60AGw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: eo_filter_out not working
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
X-List-Received-Date: Thu, 23 May 2013 11:05:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Johan,

On Thursday 23 May 2013 08:59:03 Johan Thelin wrote:
> I'm trying to build the packagegroup-core-p1 from the meta-ivi layer,
> but I would like to remove the RRECOMMENDS as I don't want X11. To do
> this, I've added a packagegroup-core-p1.bbappend to my own layer. In
> this file I've tried the following options:
> 
> Attempt #1
> 
> RRECOMMENDS_packagegroup-core-p1 :=
> "${@oe_filter_out('packagegroup-xserver-ivi',
> '${RRECOMMENDS_packagegroup-core-p1}', d)}"
> 
> ERROR: ExpansionError during parsing
> /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/p
> ackagegroups/packagegroup-core-p1.bb: Failure expanding variable
> RRECOMMENDS_packagegroup-core-p1[:=],
> expression was ${@oe_filter_out('packagegroup-xserver-ivi',
> '${RRECOMMENDS_packagegroup-core-p1}', d)} which triggered exception
> SyntaxError: EOL while scanning string literal
> (RRECOMMENDS_packagegroup-core-p1[:=], line 1)
> 
> 
> I read this as RECOMMENDS_packagegroup-core-p1 is not yet set, so the
> oe_filter_out part fails.
> 
> 
> 
> Attempt #2
> 
> RRECOMMENDS_packagegroup-core-p1 := "foo"
> 
> WARNING: Variable key RRECOMMENDS_${PN} (    packagegroup-xserver-ivi
>    ) replaces original key RRECOMMENDS_packagegroup-core-p1 (foo).
> 
> 
> This sort of explains why attempt #1 fails, as it seems that the bb is
> evaluated after the bbappend.

It's not specifically about the order of evaluation between the bb and the 
bbappend, what this is saying is assignment statements where the variable name 
on the LHS contains references to other variables will be evaluated after 
assignment statements that don't. 

Unfortunately I think this means this kind of expression can't work, because 
at the time of the immediate evaluation, RDEPENDS_packagegroup-core-p1 (which 
is what RDEPENDS_${PN} is later expanded to) isn't available. I tried to get 
the value specifically of RDEPENDS_${PN} in an anonymous python function but 
that doesn't seem to work either.

I think for this case you're probably better off just setting the value as 
desired rather than trying to mangle the original value. When this kind of 
situation arises it usually indicates the recipe being appended needs to be 
changed to be more flexible instead of trying to work around its inflexibility 
in the bbappend.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

