Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D160E00723
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 00:28:51 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so788591obb.35
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 00:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4rLxtdbIeo9YaZfoveRhyO2+J+IW6vzuBFrFziRpYxU=;
	b=NlY2Y2BCn++vF5crZPqHFRB2IyUoFJxVyxm+HWxEgXnBEtFul9hhg0ZHF7OP+xR14m
	JHo8UyIE/CCHMvEhmS+rKcNPTN4crJcjE9f73Ev2lKGwMy15GxMxqIcLm5kw4b8dBuAs
	lu8cJACEHNbt2gwI7AwZHK5oDpgXqDVTOGM/UqY0rm/118WlK33khXHqp5G4xs9nkDuM
	S5EdnewgNt9wIk1K4mxl9YsnN4iCEr1tb52wCm0Lbw+SINrxGUiNKGBnCGg8XFsPhg/5
	B7Pg6qnmf/8iAOIyj8B5/bVfHSpPo3tICeSqoA0ERSQUYlPS4P9i4v8kb2xp2SQl4Jy/
	4W8g==
MIME-Version: 1.0
Received: by 10.60.172.231 with SMTP id bf7mr32951873oec.45.1335943729332;
	Wed, 02 May 2012 00:28:49 -0700 (PDT)
Received: by 10.60.11.98 with HTTP; Wed, 2 May 2012 00:28:49 -0700 (PDT)
Date: Wed, 2 May 2012 09:28:49 +0200
Message-ID: <CACW_hTaEwdB1uiYRkboek=24bm4FNoRwSVEyboKG-FnB7ndQgg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: yocto 1.2 first experiences
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
X-List-Received-Date: Wed, 02 May 2012 07:28:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

I have build core-image-minimal with yocto 1.2
Worked quite nice, but it did give 10 warnings

Four of these were non-fetchers:
WARNING: Failed to fetch URL
http://kernel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.tar.gz
WARNING: Failed to fetch URL
http://kernel.org/pub/linux/utils/kernel/module-init-tools/module-init-tools-3.16.tar.bz2
WARNING: Failed to fetch URL
http://kernel.org/pub/linux/utils/usb/usbutils/usbutils-0.91.tar.gz
WARNING: Failed to fetch URL
http://kernel.org/pub/linux/utils/kernel/hotplug/udev-164.tar.gz

The other 6 were QA related:
bash:
WARNING: QA Issue: bash: Found a reference to /usr/ in
/home/frans/poky-denzil-7.0-build/tmp/work/i586-poky-linux/bash-4.2-r2/packages-split/bash/bin/bashbug
WARNING: QA Issue: Shell scripts in base_bindir and base_sbindir
should not reference anything in exec_prefix

and 4 in sysvinit:

WARNING: QA Issue: udev:
/home/frans/poky-denzil-7.0-build/tmp/work/i586-poky-linux/udev-164-r13/packages-split/libgudev/lib/libgudev-1.0.so.0.0.1
links to something under exec_prefix
WARNING: QA Issue: ldd reports:     libudev.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libudev.so.0
(0xdead1000)
    libgobject-2.0.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libgobject-2.0.so.0
(0xdead2000)
    libffi.so.5 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libffi.so.5
(0xdead3000)
    libgthread-2.0.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libgthread-2.0.so.0
(0xdead4000)
    libpthread.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libpthread.so.0
(0xdead5000)
    libglib-2.0.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libglib-2.0.so.0
(0xdead6000)
    librt.so.1 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/librt.so.1
(0xdead7000)
    libc.so.6 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libc.so.6
(0xdead8000)
    /lib/ld-linux.so.2 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/ld-linux.so.2
(0xdead9000)

WARNING: QA Issue: udev:
/home/frans/poky-denzil-7.0-build/tmp/work/i586-poky-linux/udev-164-r13/packages-split/udev-acl/lib/udev/udev-acl
links to something under exec_prefix
WARNING: QA Issue: ldd reports:     libacl.so.1 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libacl.so.1
(0xdead1000)
    libpthread.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libpthread.so.0
(0xdead2000)
    libglib-2.0.so.0 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/usr/lib/libglib-2.0.so.0
(0xdead3000)
    libc.so.6 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libc.so.6
(0xdead4000)
    libattr.so.1 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/libattr.so.1
(0xdead5000)
    /lib/ld-linux.so.2 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/ld-linux.so.2
(0xdead6000)
    librt.so.1 =>
/home/frans/poky-denzil-7.0-build/tmp/sysroots/qemux86/lib/librt.so.1
(0xdead7000)

Not too sure if these are really harmful, and I guess they are already
known, but decided to report them anyway (better safe than sorry :-)
).

Best regards, Frans

