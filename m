Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FE45E009C5; Thu,  1 May 2014 06:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99FEEE009BA
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 06:54:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 May 2014 06:54:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,965,1389772800"; d="scan'208";a="531880445"
Received: from abamaras-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.26])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2014 06:54:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Thu, 01 May 2014 14:54:05 +0100
Message-ID: <5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <5362171B.8010000@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Thu, 01 May 2014 13:54:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Thursday 01 May 2014 10:42:51 Alex J Lennon wrote:
> I have an issue with the build of an old u-boot (2009.08) which is
> failing a check in poky as both UBOOT_CONFIG and UBOOT_MACHINE are being
> defined for some reason.
> 
> poky/meta/classes/uboot-config.bbclass
> 
>  ubootmachine = d.getVar("UBOOT_MACHINE", True)
>  ubootconfigflags = d.getVarFlags('UBOOT_CONFIG')
> 
> ..
> 
>  if ubootmachine and ubootconfigflags:
>        raise bb.parse.SkipPackage("You cannot use UBOOT_MACHINE and
> UBOOT_CONFIG at the same time.")
> 
> 
> I have a .bbappend on the original u-boot recipe and could solve the
> problem by undefining UBOOT_MACHINE if I could work out how to do this
> in the .bbappend
> 
> I've tried setting it to None or an empty string, and I tried an
> anonymous python function but those approaches didn't help,
> 
> e.g. (in the .bbappend
> 
> UBOOT_MACHINE = ""

This should work - the python code above is checking if the value evaluates to 
True, and that shouldn't be the case for an empty string. I suspect something 
else is at work here - either the check is running before your value gets set, 
or the value is being set using an override somewhere and therefore your value 
isn't being used.

(adding Otavio on CC since these are his checks and his layer)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

