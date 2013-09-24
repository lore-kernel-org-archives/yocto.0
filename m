Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9832CE01571
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 01:52:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Sep 2013 01:52:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,969,1371106800"; d="scan'208";a="364749448"
Received: from unknown (HELO helios.localnet) ([10.252.120.52])
	by azsmga001.ch.intel.com with ESMTP; 24 Sep 2013 01:52:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
Date: Tue, 24 Sep 2013 09:52 +0100
Message-ID: <2378070.oljIghCm7B@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
References: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Is it possible to add machine specific changes in a separate custom layer?
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
X-List-Received-Date: Tue, 24 Sep 2013 08:52:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Felix,

On Monday 23 September 2013 18:40:19 Felix01 Fischer wrote:
> My goal is to build a custom-layer which supports 2 devices building on
> top of the meta-intel and meta-ivi layer without changing anything except
> my meta-custom layer.
> 
> Is it possible to have machine specific changes in a separate layer
> building on top of  another layer?
> I want to costumise meta-intel/meta-crownbay and
> meta-intel/meta-chiefriver without changing something inside the
> meta-intel layer.
> My goal is to have modifications for the meta-intel layer in a meta-custom
> layer, which only get considered if a certain MACHINE ?= "XXXX"  (crownbay
> or chiefriver) from the meta-intel layer is set.
> Is this possible?

This is definitely possible - the key is to make use of bbappends and machine
overrides. Append files are covered here:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-bbappend-files

Overrides effectively make an assignment statement apply only when the
specified override appears in the value of the OVERRIDES variable. For
example:

VARIABLENAME = "the default value"
VARIABLENAME_crownbay = "value specific to crownbay machine"

You can use append/prepend to add to the variable value instead of just
setting it:

ANOTHERVARIABLE_append_chiefriver = " appended only for chiefriver"
ANOTHERVARIABLE_prepend_crownbay = "prepended only for crownbay "

By default, the value of OVERRIDES includes the value of MACHINE, DISTRO, etc.
If you run bitbake -e | less and then search (with /) for OVERRIDES= you can
see how how OVERRIDES is constructed.

> I have the same question regarding DISTRO. I want some changes to be
> considered if DISTRO = poky and some other changes when DISTRO =
> poky-ivi-systemd.

Same as above only you'd be using the distro name as the override e.g.

SOMETHING_append_poky = " whatever poky-specific additions are needed"

> Is it possible to maintain these modifications in ONE custom layer or do I
> need to have seperate layers (one for poky, one for poky-ivi-systemd and
> machine specific changes inside the meta-intel layer)?

You don't have to, but generally we recommend keeping the machine
customisations separate from policy (distro) customisations. This can make
things easier if you have to change the machine later.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

