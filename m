Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D76544C80334
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 18:57:16 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jun 2011 16:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,340,1304319600"; d="scan'208";a="11469784"
Received: from unknown (HELO [10.255.13.41]) ([10.255.13.41])
	by orsmga001.jf.intel.com with ESMTP; 08 Jun 2011 16:57:15 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Wed, 08 Jun 2011 16:57:16 -0700
In-Reply-To: <BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
References: <BANLkTikOugs9Yi93zVgMe0vhizJfBN3ZaA@mail.gmail.com>
	<1307507940.2123.9.camel@scimitar> <4DEF5A32.3060109@mlbassoc.com>
	<BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
X-Mailer: Evolution 3.0.2 (3.0.2-1.fc15) 
Message-ID: <1307577439.31471.4.camel@scimitar>
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: undefined reference to `pthread_getspecific' in perl-native_5.12.2.bb task do_compile?
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
X-List-Received-Date: Wed, 08 Jun 2011 23:57:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-08 at 06:48 -0700, Daryl Spitzer wrote:
> >>> Does this look familiar?  Why would I be getting these errors when
> >>> following the Yocto Project Quick Start instructions, without changes?
> >>>  Did I miss something?
> >>
> >> It does not. However this is when trying to build perl-native, i.e. Poky
> >> is trying to build its own version of Perl but linked against your
> >> system libraries etc and is unable to find some pthread functions to
> >> link to.
> >>
> >> Can you tell us which distribution/version combination you are using?
> >>
> >> Could be that we need to patch perl-native to -lpthread ?
> >
> > Is your host Ubuntu 11.04 on x86 (not x86_64)?  There was a patch for this
> > that I'm not sure got back ported into Bernard.
> 
> Oops.  I forgot to provide those details...
> 
> My host is Ubuntu 11.04 64 bit:
> 
> $ cat /etc/lsb-release
> DISTRIB_ID=Ubuntu
> DISTRIB_RELEASE=11.04
> DISTRIB_CODENAME=natty
> DISTRIB_DESCRIPTION="Ubuntu 11.04"
> $ uname -m
> x86_64
> 
> I ran `wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2`
> (as directed in the Yocto Project Quick Start).  Does that 5.0
> correspond to Yocto Project 1.0.1?

Hi Daryl,

Looks like we fixed this issue in our recent point release. Could you
try
http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2 ? 

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


