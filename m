Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122DDE011AF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:43:05 -0700 (PDT)
Received: from mail-qa0-f72.google.com ([209.85.216.72])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2012 14:43:05 -0700
Received: by mail-qa0-f72.google.com with SMTP id s11so1831244qaa.11
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=i1nEr/OtSEjdOqfdDxUCVLNYEcOSH9hJEwIYAbJWwU0=;
	b=BJfJaVhqiRv85UOsmA8P2jJqMR/fWLNzazc5j16XddjLOwtwidHFmRHIXZjVTVkDqI
	J25U4fe3sItXGUwqmlc2ZkFszEmhUeJuJubX6J4tcAkvYfDi8sxb0/AQ/+0s/INqv8RQ
	0D3DYxwDfMSCJ0iqRMQqrWNGMSpmcBemAy0oRRn8uh0qDbrQgZh3G9DF7Q8Jiw7stbIY
	KE0oJXtqCEsgWZGg02JIPtBeJp4IpWBSTAo3LDjiWQqIxAi8RXxp90ujdUm7+YyrW1r+
	9gycjKzohakgxbFCt7g1cSuBhaqopweEqXiXE2sqz+hOH5m1Iq8MzDWGfgyy9B3YdHSn
	36sg==
Received: by 10.224.58.146 with SMTP id g18mr33458770qah.76.1350510184060;
	Wed, 17 Oct 2012 14:43:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.58.146 with SMTP id g18mr33458765qah.76.1350510183828;
	Wed, 17 Oct 2012 14:43:03 -0700 (PDT)
Received: by 10.229.94.206 with HTTP; Wed, 17 Oct 2012 14:43:03 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B1D41C@ORSMSX101.amr.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC191988ED@IRSMSX102.ger.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B1D41C@ORSMSX101.amr.corp.intel.com>
Date: Wed, 17 Oct 2012 14:43:03 -0700
Message-ID: <CAPhnLPAUn3x8OXGyu-tRx7g-0sML76usZq9KYOUos7uhE8enRw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQn6od70YBFUSquVSS/8CWKiErFMn0Odly8IUIKuBiv3f240/N1nyaNUNPjFo6qoFbQDzRGTLlyc4kZvemVJppC5Ng0YJOMnrJdVB9qsHwr5cmMUAsk7Run5/enMb3gsjx8hFz72ScX5jqPmrTCT+9J9EpIugA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.3 RC4 full pass results
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
X-List-Received-Date: Wed, 17 Oct 2012 21:43:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 17, 2012 at 1:52 PM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
>
> As to sato-sdk for qemuarm issue (3290), I think Beth has regenerated it.=
  Can we have a quick check to ensure it=92s working now?

Yes, this was due to us needing to regenerate qemuarm. Only the main
builder populates the adtrepo. As the images for the first run were
incorrectly generated for qemuarm, they had to be done by hand. This
was finished yesterday and the bug report updated.

-b

>
>
>
> Thanks,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Serban, Laurentiu
> Sent: Wednesday, October 17, 2012 12:48 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] 1.3 RC4 full pass results
>
>
>
>
>
> Hello guys,
>
>
>
> Here are the test results for the 1.3 RC4 full pass.
>
> The commit id is:  1b1b83651af33ffcb204031e2790719e3b0b45bb
>
>
>
> For the performance tests: the build for sato x86 took 88 minutes (same a=
s for RC3)
>
>
>
> The following issue are encountered. I also updated with comments from Je=
ssica and Saul:
>
> -          For the BSPs:
>
> o   For qemu x86_64 images =96 the zypper refresh fails (2694),
>
> -          For core build system:
>
> o   There are still errors with the do_rootfs fails for lib64-core-image-=
sato-sdk (2918)
>
> -          For ADT
>
> o   ADT couldn't be installed properly for RC4 because sato sdk for qemua=
rm does not exist (3290)
>
> o   GL support still available on qemuarm (3287)
>
>
>
>
>
>
>
> Test Result Summary
>
> Component
>
> Target
>
> Status
>
> Comments
>
> Boards
>
> p1022ds
>
> GOOD
>
> Everything runs well
>
> Beagleboard
>
> GOOD
>
> Everything runs well
>
> Routerstationpro
>
> GOOD
>
> Everything runs well
>
> Mpc8315e-rdb
>
> GOOD
>
> Sudoku-savant issue (2878)
>
> eMenlow-sato-sdk
>
> BUGGY
>
> Usb mount fails (2643)
>
> Blacksand-sato-sdk
>
> GOOD
>
> Everything runs well
>
> Sugarbay sato-sdk
>
> GOOD
>
> Everything runs well
>
> Crownbay-emgd-sato-sdk
>
> GOOD
>
> Standby fails (2792), Xorg issue (1258),
>
> FRI2-sato
>
> BUGGY
>
> Blocked (3294)
>
> HuronRiver-sato
>
> GOOD
>
> Everything runs well
>
> Jasperforest-lsb
>
> BUGGY
>
> zypper is not installed in core-image-lsb-sdk (3098)
>
> QEMU
>
>
>
>
>
>
>
> Qemuarm
>
> GOOD
>
> Everything runs well
>
> Qemuppc
>
> GOOD
>
> Everything runs well
>
> Qemumips
>
> GOOD
>
> Everything runs well
>
> qemux86
>
> GOOD
>
> Everything runs well
>
> qemux86-64
>
> BUGGY
>
> Zypper issue (2694)
>
> Core build system
>
>
>
> BUGGY
>
> lib64-core-image-sato-sdk fails due to do_rootfs issue (2918)
>
> HOB
>
>
>
> GOOD
>
> Everything runs well
>
> ADT
>
>
>
> BUGGY
>
> ADT couldn't be installed properly for RC4 because sato sdk for qemuarm d=
oes not exist (3290)
>
> GL support still available on qemuarm (3287)
>
> Stress Testing
>
> GOOD
>
> Both Crashme and Helltest on Jasperforest could pass 24 hours stress test=
ing
>
> Distribution Support
>
> GOOD
>
> Everything runs well for Ubuntu 12.04, Ubuntu 12.10 =96 nightly, OpenSuse=
 12.1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3, Fedora 16
>
> Power and Performance
>
> GOOD
>
> one qemux86 sato build on a Core i7 machine costs 88 minutes with the pac=
kages previously fetched.
>
> Compliance
>
> GOOD
>
> Tests on Huron River and BlackSand passed
>
> Build Appliance
>
> GOOD
>
> Everything runs well on VMWare Player (on Ubuntu). The relevant tests wer=
e performed also for qemu-kvm on Fedora 17 libvirt and
>
> VMWare Workstation.(Ubuntu)
>
>
>
>
>
> Detailed Test Result for each component
>
> Target
>
> Total TCs
>
> Not Run
>
> Passed
>
> Failed
>
> Not testable (Blocked)
>
> Beagleboard Sato-SDK
>
> 42
>
> 0
>
> 42
>
> 0
>
> 0
>
> Routerstationpro Sato-SDK
>
> 35
>
> 0
>
> 35
>
> 0
>
> 0
>
> p1022ds-sato-sdk
>
> 37
>
> 0
>
> 37
>
> 0
>
> 0
>
> Mpc8315e-rdb Sato-SDK
>
> 37
>
> 0
>
> 37
>
> 0
>
> 0
>
> eMenlow Sato-sdk
>
> 67
>
> 0
>
> 66
>
> 1 (bug 2643)
>
> 0
>
> n450 Sato-sdk
>
> 67
>
> 0
>
> 67
>
> 0
>
> 0
>
> Crownbay-Sato-sdk
>
> 65
>
> 0
>
> 62
>
> 2 (1258, 2792)
>
> 1 (2792)
>
> FRI2 Sato-sdk
>
> 85
>
> 0
>
> 0
>
> 0
>
>             85 (3294)
>
> HuronRiver Sato-sdk
>
> 68
>
> 0
>
> 68
>
> 0
>
> 0
>
> Sugarbay sato-sdk
>
> 68
>
> 0
>
> 68
>
> 0
>
> 0
>
> Jasperforest lsb-sdk
>
> 34
>
> 0
>
> 27
>
> 7 (3098)
>
> 0
>
> Qemuarm Sato
>
> 31
>
> 0
>
> 31
>
> 0
>
> 0
>
> Qemuarm Sato-SDK
>
> 36
>
> 0
>
> 36
>
> 0
>
> 0
>
> Qemumips Sato
>
> 31
>
> 0
>
> 31
>
> 0
>
> 0
>
> Qemumips Sato-SDK
>
> 36
>
> 0
>
> 36
>
> 0
>
> 0
>
> Qemuppc Sato
>
> 31
>
> 0
>
> 31
>
> 0
>
> 0
>
> Qemuppc Sato-SDK
>
> 36
>
> 0
>
> 36
>
> 0
>
> 0
>
> Qemux86-64 Sato
>
> 30
>
> 0
>
> 27
>
> 3 (bug 2694)
>
> 0
>
> Qemux86-64 Sato-SDK
>
> 36
>
> 0
>
> 32
>
> 4 (bug 2694)
>
> 0
>
> Qemux86 Sato
>
> 30
>
> 0
>
> 30
>
> 0
>
> 0
>
> Qemux86 Sato-SDK
>
> 36
>
> 0
>
> 36
>
> 0
>
> 0
>
> Core build system
>
> 59
>
> 0
>
> 57
>
> 2 (2918)
>
> 0
>
> HOB
>
> 38
>
> 0
>
> 38
>
> 0
>
> 0
>
> ADT
>
> 52
>
> 0
>
> 45
>
> 7(3290, 3287)
>
> 0
>
> Build Appliance
>
> 42
>
> 0
>
> 34
>
> 7 (3290)
>
> 1 (centos gtk issue)
>
> Total
>
> 1129
>
> 0
>
> 1009
>
> 33
>
> 87
>
>
>
>
>
> Component
>
> Bug Number
>
> Target Milestone
>
> System & Core OS
>
> System Usage
>
> Bug 2694 [QEMU-X86_64]zypper refresh fail
>
> Core build system
>
> Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue.
>
> ADT
>
> Bug 3287  GL support still available on qemuarm
>
> Bug 3290 ADT couldn't be installed properly for RC4 because sato sdk for =
qemuarm does not exist
>
>
>
>
>
>
>
>
>
> Laurentiu Serban
>
> QA Engineer
>
> Open Source Technology Center
>
> System Software Division Romania
>
> Desk: +40 31 8604742
>
> iNET: 88451042
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--
Elizabeth Flanagan
Yocto Project
Build and Release

