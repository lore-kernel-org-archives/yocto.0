Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE45AE01630
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 06:01:16 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2013 06:01:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1013,1371106800"; d="scan'208";a="368217604"
Received: from unknown (HELO [10.255.15.164]) ([10.255.15.164])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2013 06:01:13 -0700
Message-ID: <1380632473.23361.2.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Dilip Kumar <008dilip@gmail.com>
Date: Tue, 01 Oct 2013 08:01:13 -0500
In-Reply-To: <CABmxB3MiTszCC4f0c9zKzy-obwtj2oNEueS1npsE8FXrwaRvww@mail.gmail.com>
References: <368D4D1DD61B4E4A97BC63E95AC9EB8727005DA769@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<CABmxB3MiTszCC4f0c9zKzy-obwtj2oNEueS1npsE8FXrwaRvww@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: FW: Creating BSP without using git
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
X-List-Received-Date: Tue, 01 Oct 2013 13:01:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-10-01 at 11:48 +0530, Dilip Kumar wrote:
> 
> >  
> >
> > 
> >
> > Hi,
> >
> >             I need to create a local BSP layer using Yocto-bsp
> create command without the use of Git.
> >
> >  
> >
> >  
> >
> > yocto-bsp create mylayers qemu -s
> >
> > Which qemu architecture would you like to use? [default: i386]
> >
> >             1) i386    (32-bit)
> >
> >             2) x86_64  (64-bit)
> >
> >             3) ARM     (32-bit)
> >
> >             4) PowerPC (32-bit)
> >
> >             5) MIPS    (32-bit)
> >
> > 3
> >
> > Would you like to use the default (3.8) kernel? (y/n) [default: y] y
> >
> > Do you need a new machine branch for this BSP (the alternative is to
> re-use an existing branch)? [y/n] [default: y] n
> >
> > Getting branches from remote repo
> git://git.yoctoproject.org/linux-yocto-3.8.git...
> >
> >  

You can use the -i param with JSON to feed it the answers you want to
give it, and then it won't try to generate and display a branch list,
etc.

From the help:

yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
        [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]

The BSP-specific properties that define the values that will be
    used to generate a particular BSP can be specified on the
    command-line using the -i option and supplying a JSON object
    consisting of the set of name:value pairs needed by the BSP.

    If the -i option is not used, the user will be interactively
    prompted for each of the required property values, which will then
    be used as values for BSP generation.

    The set of properties available for a given architecture can be
    listed using the 'yocto-bsp list' command.

> >
> >  
> >
> > Thanks with Regards
> >
> >
> ---------------------------------------------------------------------------------------------
> > Dilip Kumar b
> >
> --------------------------------------------------------------------------------------------
> >
> >  
> >
> >
> > ________________________________
> > The contents of this e-mail and any attachment(s) may contain
> confidential or privileged information for the intended recipient(s).
> Unintended recipients are prohibited from taking action on the basis
> of information in this e-mail and using or disseminating the
> information, and must notify the sender and delete it from their
> system. L&T Infotech will not accept responsibility or liability for
> the accuracy or completeness of, or the presence of any virus or
> disabling code in this e-mail"
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



