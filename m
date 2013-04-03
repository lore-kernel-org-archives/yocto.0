Return-Path: <marc.ferland@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B03E013AC
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 09:04:14 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id k1so1697670oag.19
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 09:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:subject:references:date:in-reply-to
	:message-id:user-agent:mime-version:content-type;
	bh=FGSzaNCWC+DjGTeC0vZHskQVYXi5GEOUEXRrikQ6uKc=;
	b=psKTWyUVNONvgdyqGPxtITnLXMbQoJEIudlXdOJO/K4qto3o58MoHQAueu+SLe1aMx
	uF/tN7OT8BTDVcQD6c+u096VtqXTZ6u8LSbu2qKZ+iZlP7166dXMhxP+Uy0uKoGAja+t
	zEC9ad/IO2MQGL5meaeBysuFaI51UZ30aw/SLMmjMoRFKF1Uon6teLSRksVgVpciOYPZ
	2oyZzNzBT+yxkIzqBb2CqqD5vL4prO+v3QCcL5S5X1Grokq5VJR1/DdDKwEsEfbRVDpM
	FgqQH2fHePuj9fvLucAv+vR/hNt6eg40pXXcWdzBh4WjjMHp+YPMjK5/rP7ZMrW3P7aa
	cYlA==
X-Received: by 10.60.92.201 with SMTP id co9mr1061229oeb.113.1365005054500;
	Wed, 03 Apr 2013 09:04:14 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id a10sm2744754oez.1.2013.04.03.09.04.12
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 03 Apr 2013 09:04:13 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 03 Apr 2013 12:04:34 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<7DD9C18F1CC445FDAE4598F91AACCA5A@PAULD>
Date: Wed, 03 Apr 2013 12:04:34 -0400
In-Reply-To: <7DD9C18F1CC445FDAE4598F91AACCA5A@PAULD> (Paul D. DeRocco's
	message of "Tue, 2 Apr 2013 16:57:58 -0700")
Message-ID: <87ip43txbh.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: This one can't be me...
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
X-List-Received-Date: Wed, 03 Apr 2013 16:04:15 -0000
Content-Type: text/plain

"Paul D. DeRocco" <pderocco@ix.netcom.com> writes:

> Followup:
>
> I figured I'd try a sato build, since that's what the example on the BSP
> page uses. But core-image-sato-cedartrail-nopvr panics in the same way as
> core-image-base-cedartrail-nopvr. For sato, I surmised maybe 1GB wasn't
> enough, so I put in a second stick. This time, instead of spewing out a lot
> of kernel startup stuff ending in a panic, it gave me a SYSLINUX signon on
> the top of the screen, sat there for about 10 seconds, then rebooted into
> the BIOS, repeatedly. So I put back core-image-base-cedartrail-nopvr, and it
> also gave me the SYSLINUX signon, and rebooted after 10 seconds.
>
> The fact that it behaves differently with 2GB suggests that maybe 1GB isn't
> enough, but that seems hard to imagine even for sato, let alone the base
> console version. I've run Ubuntu on these particular RAM modules, on a
> different motherboard, so I don't think I've got bad RAM.
>
> Any help figuring this out would be appreciated. For all my work, and
> apparently successful builds, I haven't managed to boot anything yet.

Hi Paul,

The live images boot in (roughly) the following way:

1- BIOS loads the bootloader (syslinux)
2- Bootloader loads the kernel and initrd
3- Kernel starts and executes the 'init' script from the initrd
4- The 'init' script mounts sysfs, devtmpfs and procfs filesystems and
   starts udev. It then waits for a storage device containing the
   rootfs.img file to appear (udev rules will mount the device in
   /media).
5- Once the file (rootfs.img) appears it loop-mounts and switch_root to
   it to continue the booting process.

BTW, there is only _one_ kernel. The two stage process allows more
flexibility as where your rootfs is located (CD, usb flash, network
boot, etc.).

From what I see in the kernel messages you supplied it looks like the
init script doesn't even got a chance to run. Kernel issue?

One strange thing also is the use of the 3.0 kernel on this BSP. Which
doesn't shows up in the list of available kernels (well at least on the
git.yoctoproject.org web site.) so I don't know what happens in such
cases.

It would definitely help if the maintainer of the cedartrail BSP could
drop-in and give some advice!

Good luck,

Marc

