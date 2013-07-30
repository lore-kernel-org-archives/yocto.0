Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08193E01493
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 08:29:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Jul 2013 08:29:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,778,1367996400"; d="scan'208";a="339067745"
Received: from unknown (HELO helios.localnet) ([10.252.122.217])
	by azsmga001.ch.intel.com with ESMTP; 30 Jul 2013 08:29:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Tue, 30 Jul 2013 16:29:55 +0100
Message-ID: <2010302.ipSdHH7rJ3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAE8H0+WMNPphz89i8WUeAwExPDxgFHHgc4FuLxVyx8pMR2esvw@mail.gmail.com>
References: <CAE8H0+WMNPphz89i8WUeAwExPDxgFHHgc4FuLxVyx8pMR2esvw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: denzil to dylan, netbase recipe broken?
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
X-List-Received-Date: Tue, 30 Jul 2013 15:30:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi John,

On Tuesday 30 July 2013 11:15:26 r10kindsofpeople wrote:
> Under Denzil 7.0.1, I had a recipe
> mylayer/recipes-core/netbase/netbase_4.47.bbappend that contained:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> SRC_URI += " file://interfaces \
>             "
> To put my own interface file in the root file system from
> mylayer/recipes-core/netbase/netbase/interfaces
> 
> Under Dylan 9.0.1, I tried the same technique, except renaming to
> netbase_5.0.bbappend, but I don't get my copy of interfaces, I get some
> default.
> 
> I've hacked at the recipe a bit, trying to add a do_install step (based on
> the recipe in meta), and know at least that the recipe is getting parsed,
> because of the errors I created.  I was able to clear up the errors, but
> still don't get my copy.  Right now, the recipe reads:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> SRC_URI_prepend = " file://interfaces \
>             "
> 
> do_install_append () {
> install -d ${D}/${sysconfdir}/network
> install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interfaces
> }
> 
> PRINC := "${@int(PRINC) + 1}"
> 
> Can anyone help me understand why the old recipe no longer works, and what
> needs to be done to remedy?

The functionality for starting interfaces has been moved to a separate 
init-ifupdown recipe for dylan. This should have been noted in the migration 
information in the reference manual but did not make it in in time; I hadn't 
realised it still hasn't been updated in the "current" version of the 
documentation on the website and the dylan branch so I will now make sure that 
happens.

Basically you just need to move your bbappend across to init-ifupdown and it 
should work.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

