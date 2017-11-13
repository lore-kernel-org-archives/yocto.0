Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B30C8E00C35; Sun, 12 Nov 2017 20:05:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91EDFE00BEA
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 20:05:44 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Nov 2017 20:05:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,387,1505804400"; d="scan'208";a="148922442"
Received: from mintingh-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.67.199])
	by orsmga004.jf.intel.com with ESMTP; 12 Nov 2017 20:05:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ulf Samuelsson <yocto@emagii.com>
Date: Mon, 13 Nov 2017 17:05:38 +1300
Message-ID: <2594162.5h5Nx9R6zf@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <e6e4817d-6807-d710-2ecd-cfb79505c135@emagii.com>
References: <e6e4817d-6807-d710-2ecd-cfb79505c135@emagii.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: busybox->coreutils: How replace single Busybox program with same from coreutils
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
X-List-Received-Date: Mon, 13 Nov 2017 04:05:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ulf,

On Saturday, 11 November 2017 7:59:00 PM NZDT Ulf Samuelsson wrote:
> Adding a third party package to the rootfs, and some of their scripts
> will break due to the busybox version of certain applications
> do not support all the switches.
> 
> Rather that rewriting those scripts (forcing me to maintain them)
> I would like to replace the busybox version of selected applications
> with the coreutils version.
> 
> I would like to avoid adding other coreutils applications to the rootfs,
> since their is a requirement for a small rootfs.
> The core functionality is to be in a cramfs, so deleting files 
> postinstall is not working.
> 
> One application is "od" or octal dump.
> 
> My first try was a bbappend with
> ALTERNATIVE_PRIORITY[od]	= "100"
> 
> Since the busybox version has priority "50", the coreutils version 
> should be choosen, but the rootfs still choose the busybox version.
> 
> I then added "coreutils" to my image.
> This, I expected would add all the applications in the coreutils
> package so I set
> 
> ALTERNATIVE_PRIORITY[<app>]	= "5"
> for all applications supported by busybox,
> and
> ALTERNATIVE_PRIORITY[<app>]	= "0"
> for all applications not supported by busybox (and not needed by me)
> in the (vain) hope that this would result in the application not beeing
> included in the rootfs.
> 
> The result was that the rootfs now included the coreutils
> version of the desired application.
> 
> Unfortunately this also resulted in all applications with priority "0"
> being included in the rootfs as well.
> 
> Have not tried with any other value but a quick inspection of the python 
> code led me to believe that there is no value which will make
> 
> ===============================================================
> SUGGESTION:
> I think it would be a good addition to the class, if you could specify a 
> priority which excluded the application from the rootfs.
> "0", "-1" or "No" would be good values
> ===============================================================
> 
> Other alternatives I am thinking of is to add to the 
> coreutils_%.bbappend file.
> 
> FILES_${PN}-<app> = " ${bindir}/<app>"
> or maybe
> FILES_${PN}-<app> = " ${bindir}/<app>.coreutils"
> 
> Have not tested this yet, but this I guess may result in the application
> beeing present in two packages.
> 
> Is the following valid?
> 
> FILES_${PN} = " ${bindir}"
> FILES_${PN}-od = " ${bindir}/od.${BPN}"
> 
> Will it create two packages, each with their own "od", or will
> the second statement override the first so that "od" is only
> present in the coreutils-od package?
> 
> ===============================================================
> I could always create a do_install_append and install the applications
> as something else
> 
> do_install_append () {
> 	install	-m 0755 <x>/od		${D}/usr/local/bin/od
> }
> FILES_${PN}-od = " /usr/local/bin/od"
> ===============================================================
> Fully replacing the do_install is yet another alternative.
> Since the coreutils
> ===============================================================
> Checking the meta/recipes-core/coreutils/coreutils_8.27.bb
> it might be as easy as replacing the bindir_progs variable
> only listing those applications I want.
> 
> bindir_progs = "od install mktemp"
> ALTERNATIVE_${PN} = "od install mktemp"
> ===============================================================
> Any other ideas?
> 
> Is overriding busybox with the "real" application documented somewhere?
> If not, maybe it should be.

coreutils already does override busybox when installed, at least where the 
alternatives definitions are set up. I'm not sure if the definitions are 
complete though.

Surely the answer to your specific problem is to break up coreutils into 
smaller packages for the items you need? We've done that for some of the tools 
already, I'm sure we'd accept further patches, but failing that a bbappend 
will let you do that locally.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

