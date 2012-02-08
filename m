Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71E64E01372
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 06:06:58 -0800 (PST)
Received: by dadp13 with SMTP id p13so602241dad.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 06:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nwLuySWjoPcV1lrNQ86jN4fgiACHdMwns0qZwu5kZ7g=;
	b=wxey7Hy52l0+tWw4xgu6ALEQLEy6ouac6hG+9DDuO6TYwlpl9j0rwR1RJsioILjp+n
	m5IqKcsoAsZhoeedZ5p5plph7mH1NPzqMBGYh61SJEHrib6JlyUZS3cXygYDjlseEYI9
	t8jtjWvRxl/1QUcbVCyqQ1b7CbljbKhsk/29g=
MIME-Version: 1.0
Received: by 10.68.224.9 with SMTP id qy9mr69413657pbc.102.1328710002977; Wed,
	08 Feb 2012 06:06:42 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Wed, 8 Feb 2012 06:06:42 -0800 (PST)
In-Reply-To: <4F322ECE.5060004@cnx-software.com>
References: <4F322ECE.5060004@cnx-software.com>
Date: Wed, 8 Feb 2012 09:06:42 -0500
Message-ID: <CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: cnxsoft <cnxsoft@cnx-software.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto in Virtualbox
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
X-List-Received-Date: Wed, 08 Feb 2012 14:06:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 8, 2012 at 3:14 AM, cnxsoft <cnxsoft@cnx-software.com> wrote:
> Hi,
>
> I have build x86 qemu image using "bitbake -k core-image-sato" following the
> instructions given at
> http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
> I'm running Ubuntu 11.10 in VirtualBox 4.1.6.
>
> When I run qemu, qemu starts apparently fine, but the qemu window stays
> black. So I'm suspecting that either it does not work in Virtualbox or I may
> have tochange some settings in qemu (e.g. -vga vmware).
>
> Here's the output:
>
> runqemu qemux86
>
> Continuing with the following parameters:
> KERNEL:
> [/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/bzImage-qemux86.bin]
> ROOTFS:
> [/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/core-image-minimal-qemux86.ext3]
> FSTYPE: [ext3]
> Setting up tap interface under sudo
> Acquiring lockfile for tap0...
> Starting distccd...
> Running qemu...
> /home/jaufranc/edev/edison-6.0-build/tmp/sysroots/i686-linux/usr/bin/qemu
> -kernel
> /home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/bzImage-qemux86.bin
> -net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no -hda
> /home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/core-image-minimal-qemux86.ext3
> -show-cursor -usb -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot
> -m 128 --append "vga=0 root=/dev/hda rw mem=128M
> ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 "
> Enabling opengl
>

So, what is the problem?

