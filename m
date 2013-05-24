Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5657DE01493
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 02:27:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2013 02:27:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,734,1363158000"; d="scan'208";a="246067058"
Received: from unknown (HELO helios.localnet) ([10.255.12.195])
	by AZSMGA002.ch.intel.com with ESMTP; 24 May 2013 02:27:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hartmut Behrens <hartmut.behrens@gmail.com>
Date: Fri, 24 May 2013 10:27:43 +0100
Message-ID: <4377649.fQ6yIoxMjl@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-21-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CA+69FtDG3-WW7vTU7snmf+HjjxVLFpk8+1fLMyycz7tiaSgyRw@mail.gmail.com>
References: <CA+69FtB6Y0MCaynMcVPWAx8YK2WX+9gK5hfz+LOO51JxfUOccw@mail.gmail.com>
	<CA+69FtDG3-WW7vTU7snmf+HjjxVLFpk8+1fLMyycz7tiaSgyRw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: QA rdepends issue when building xerces-c
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
X-List-Received-Date: Fri, 24 May 2013 09:27:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 23 May 2013 21:55:13 Hartmut Behrens wrote:
> On Thu, May 23, 2013 at 6:53 PM, Hartmut Behrens
> <hartmut.behrens@gmail.com> wrote:
> > I also tried INSANE_SKIP_${PN} += "dev-so" without any luck.
> > 
> > Might you know how to solve this?
> 
> So including INSANE_SKIP_${PN} = "dev-deps" does the trick.
> 
> I tried playing around with FILES (shown below), but can't quite get
> it right. The error that is issued then is "ERROR: QA Issue: non
> -dev/-dbg/-nativesdk package contains symlink .so ..."
> 
> FILES_${PN} = "${bindir}/* ${libdir}/*"
> FILES_${PN}-dev = "${includedir} ${libdir}/libxerces-c.so"

FYI, files are selected for each package by looking through the PACKAGES 
variable and for each package in turn the value of FILES is checked. The first 
package whose FILES matches a file, gets the file.

The default value of PACKAGES is "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-
doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"; thus FILES_${PN} can be broad if 
the earlier packages pick out the files they need to specifically.

In most cases the default values work perfectly. What you really need to do is 
determine which file it is that gets added to the -dev package and put that 
elsewhere. You should not need to change FILES_${PN}, just FILES_${PN}-dev (or 
other packages as appropriate).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

