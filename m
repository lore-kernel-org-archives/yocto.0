Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A60D4E003BC
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 21:31:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Feb 2013 21:31:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,692,1355126400"; d="scan'208";a="288909429"
Received: from unknown (HELO [10.255.12.105]) ([10.255.12.105])
	by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2013 21:30:58 -0800
Message-ID: <1361251862.1868.3.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 18 Feb 2013 23:31:02 -0600
In-Reply-To: <CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Tue, 19 Feb 2013 05:31:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-02-18 at 18:50 -0500, Trevor Woerner wrote:
> I can't figure out what I'm doing wrong, but I can't get lab3 to work.
> 
> Following the instructions in the pdf I first tried doing lab3
> incrementally (build/test, build/test, build/test) and it didn't work.
> Then I tried deleting (tmp, sstate, etc), trying again, and it still
> didn't work.
> 
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "lab3-qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp
> meta-lab3-qemux86 = "danny:45f95b5f3381097672dd43077f267aa716a02b4c"
> 
> I then copied the meta-lab3-qemux86 layer to where I was working with
> the master branch of poky (hmm... I guess I could have just edited
> bblayers.conf without needing the hassle of the copy), retried the
> exercise, and it worked.
> 
> Build Configuration:
> BB_VERSION        = "1.17.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "SUSE-LINUX-12.2"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "lab3-qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130218"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp
> meta-lab3-qemux86 = "master:c7b23ab68aafc04d9830ef318015912e5d4f0672"
> 
> Note that the above information is a bit misleading.
> "meta-lab3-qemux86" is just a plain directory without any .git so
> there is no "master" or "danny" of "meta-lab3-qemux86". The "master"
> and "danny" branches are of the enclosing poky repository.
> 
> In the case where it doesn't work, the module is built and included in
> the image, but it isn't loaded automatically during boot. Working off
> master, the module is loaded during boot automatically.

So when you say it doesn't work, you mean the module autoload didn't
work, but everything else did?  Did you do the 'bump the PR' step after
you uncommmented the module autoload statement?

If that's not it, then I don't know what you say - I tested it with
danny and it worked fine for me.  I can try running through it again to
verify again, but it really should work...

Tom



