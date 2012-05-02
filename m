Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF0CE0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 10:17:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 May 2012 10:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148578440"
Received: from unknown (HELO [10.255.12.167]) ([10.255.12.167])
	by fmsmga001.fm.intel.com with ESMTP; 02 May 2012 10:17:57 -0700
Message-ID: <4FA16C45.6090009@linux.intel.com>
Date: Wed, 02 May 2012 10:17:57 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTaEwdB1uiYRkboek=24bm4FNoRwSVEyboKG-FnB7ndQgg@mail.gmail.com>
In-Reply-To: <CACW_hTaEwdB1uiYRkboek=24bm4FNoRwSVEyboKG-FnB7ndQgg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto 1.2 first experiences
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
X-List-Received-Date: Wed, 02 May 2012 17:17:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2012 12:28 AM, Frans Meulenbroeks wrote:
> Dear all,
>
> I have build core-image-minimal with yocto 1.2
> Worked quite nice, but it did give 10 warnings
>
> Four of these were non-fetchers:
> WARNING: Failed to fetch URL
> http://kernel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.tar.gz
> WARNING: Failed to fetch URL
> http://kernel.org/pub/linux/utils/kernel/module-init-tools/module-init-tools-3.16.tar.bz2
> WARNING: Failed to fetch URL
> http://kernel.org/pub/linux/utils/usb/usbutils/usbutils-0.91.tar.gz
> WARNING: Failed to fetch URL
> http://kernel.org/pub/linux/utils/kernel/hotplug/udev-164.tar.gz
>
Thanks for this info, it's a good thing that we have the Mirror, these 
are all kernel.org files that do not seem to have been fully restored 
since they had their issues.

The below QA issues are known about and will be addressed in 1.3, most 
of these have to do with scripts and libraries looking into /usr from /

Thanks for the info.

Sau!

> The other 6 were QA related:
> bash:
> WARNING: QA Issue: bash: Found a reference to /usr/ in
> /home/frans/poky-denzil-7.0-build/tmp/work/i586-poky-linux/bash-4.2-r2/packages-split/bash/bin/bashbug
> WARNING: QA Issue: Shell scripts in base_bindir and base_sbindir
> should not reference anything in exec_prefix
>
> and 4 in sysvinit:
>
> WARNING: QA Issue: udev:
> /home/frans/poky-denzil-7.0-build/tmp/work/i586-poky-linux/udev-164-r13/packages-split/libgudev/lib/libgudev-1.0.so.0.0.1
> links to something under exec_prefix
> WARNING: QA Issue: ldd reports:     libudev.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libudev.so.0
> (0xdead1000)
>      libgobject-2.0.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libgobject-2.0.so.0
> (0xdead2000)
>      libffi.so.5 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libffi.so.5
> (0xdead3000)
>      libgthread-2.0.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libgthread-2.0.so.0
> (0xdead4000)
>      libpthread.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libpthread.so.0
> (0xdead5000)
>      libglib-2.0.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libglib-2.0.so.0
> (0xdead6000)
>      librt.so.1 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/librt.so.1
> (0xdead7000)
>      libc.so.6 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libc.so.6
> (0xdead8000)
>      /lib/ld-linux.so.2 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/ld-linux.so.2
> (0xdead9000)
>
> WARNING: QA Issue: udev:
> /home/frans/poky-denzil-7.0-build/tmp/work/i586-poky-linux/udev-164-r13/packages-split/udev-acl/lib/udev/udev-acl
> links to something under exec_prefix
> WARNING: QA Issue: ldd reports:     libacl.so.1 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libacl.so.1
> (0xdead1000)
>      libpthread.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libpthread.so.0
> (0xdead2000)
>      libglib-2.0.so.0 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libglib-2.0.so.0
> (0xdead3000)
>      libc.so.6 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libc.so.6
> (0xdead4000)
>      libattr.so.1 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libattr.so.1
> (0xdead5000)
>      /lib/ld-linux.so.2 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/ld-linux.so.2
> (0xdead6000)
>      librt.so.1 =>
> /home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/librt.so.1
> (0xdead7000)
>
> Not too sure if these are really harmful, and I guess they are already
> known, but decided to report them anyway (better safe than sorry :-)
> ).
>
> Best regards, Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

