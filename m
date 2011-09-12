Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E48F5E005A2
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2011 20:08:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2011 14:57:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,370,1312182000"; d="scan'208";a="52214196"
Received: from unknown (HELO [10.255.14.228]) ([10.255.14.228])
	by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2011 14:57:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Sep 2011 14:57:27 -0700
In-Reply-To: <4E6AE079.6000700@windriver.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6AE079.6000700@windriver.com>
Organization: Yocto Project / OTC / Intel
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1315864648.7424.2.camel@swold-mobl.bigsur.com>
Mime-Version: 1.0
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sgw@linux.intel.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Sep 2011 03:08:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2011-09-09 at 23:58 -0400, Bruce Ashfield wrote:
> On 11-09-09 07:09 PM, Zhang, Jessica wrote:
> > Hi,
> >
> > Has anybody ran into kernel panic when boot up core-image-sato-sdk for
> > qemux86. I’ve been having this issue with several clean build for two
> > days. And my latest build tree is a freshly cloned tree against
> > poky-master with commit:
> >
> > commit 20dbf0024385eaef61a04d8773fd7640e3c8cc6d
> >
> > Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > Date: Fri Sep 9 19:07:40 2011 +0100
> >
> > The qemu kernel panic messages are:
> >
> > INIT: version 2.88 booting
> >
> > Init[1]: segfault at 38 ip 495076c7 sp bfd9b60c error 4 in
> > libc-2.13.so[49492000+15f000]
> >
> > Init[1]: segfault at 16 ip 0804b3c7 sp bfd9b280 error 4 in
> > init.sysvinit[8048000+7000]
> >
> > Kernel panic – not syncing: Attempted to kill init!
> >
> > Pid: 1, comm: init Not tainted 3.0.4-yocto-standard+ #1
> >
> > Any idea?
> 
> Since I've been at Linux plumbers since Wednesday, I can confirm
> that nothing has changed in the kernel itself. And I just booted
> an older userspace with a brand new kernel a few minutes ago. That means
> that something else has changed which is producing the segfault
> (toolchain, libs, .. something) and tossing you out to the panic.
> 
> If you try an older filesystem with your recent kernel, do you see
> a good boot.
> 
Based on Mark's suggestion to build with out mklibs or prelinker, I did
that and found that it's the prelinker that causing the problem.  I have
not tracked it any further than that right now, but I can boot qemux86
and qemuarm gets past the Yocto Project Splash screen now to Sato now.

Sau!

> Bruce
> 
> >
> > Thanks,
> >
> > Jessica
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



