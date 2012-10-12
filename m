Return-Path: <marc.ferland@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14237E0027E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 14:47:15 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id n41so3149265qco.35
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 14:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=jgHCptB8qUki5hgeQ4FcOQrk3mLBFmElxL9NTzO9Bnc=;
	b=PTQCAFfFCrNBiUWVdBOcLP1sSfG9jwkOlQhAfZ/S7tI2OZCCrTb7pY5FFsqIxbwR3X
	ipMBLN6THa3yboetjAY8f4HqgtS+/kO+rd8ZZTULPXKRGiVZNNBia/GWA77bEfBlipVJ
	nUc5d0IdgGL9maWlF4unPls7WHWa3l4g2M6HhQlJGzZxlMMH4fC3REdJKrqA24oyICrX
	4Nlv6Am8Q/Wc1Ox+9DAJoKI8V790NV/nzfEp+a0rLjeY4fJEaFDBk+xu6hqEXx1rzmYl
	BfJwKr5QjXp+wgTjCeGBotiCbowHBoyAZNhfpCKoIIIhH/MW3rhYRQJ1sU0OJc8mNO6j
	PJGQ==
Received: by 10.224.60.17 with SMTP id n17mr9607369qah.63.1350078433310;
	Fri, 12 Oct 2012 14:47:13 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id jt10sm7396240qeb.4.2012.10.12.14.47.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 12 Oct 2012 14:47:12 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Fri, 12 Oct 2012 17:47:37 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D95AF8D@Mercury.usurf.usu.edu>
Date: Fri, 12 Oct 2012 17:47:37 -0400
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D95AF8D@Mercury.usurf.usu.edu>
	(Jonathan Haws's message of "Fri, 12 Oct 2012 21:25:08 +0000")
Message-ID: <87ipaftlae.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Writable root filesystem - disable automount of drives
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
X-List-Received-Date: Fri, 12 Oct 2012 21:47:16 -0000
Content-Type: text/plain

Jonathan Haws <Jonathan.Haws@sdl.usu.edu> writes:

> I am probably going about this the wrong way, but I am trying to
> create a new BSP for an Intel Core2 Duo PC104 board (from ADL-USA, the
> ADLGS45 to be exact).  I have the BSP and everything working (or so it
> appears) and I have checked the kernel configuration.  So far I have
> not had any issues - Poky builds the base and minimal images
> perfectly.
>
> However, where do I go from here?  I used 'dd' to dump the generated
> ISO image to a SATA SSD and I hooked that up and the system booted
> just fine - however I have a couple of problems:
>
> 1. The root filesystem is read-only - I would like it to be writable
> (especially since I cannot start SSH because the initscripts cannot
> generate the SSH keys on boot).
>
You could for example use the 'live' image type (defined with
IMAGE_FSTYPES). This will produce a hddimg file which can be dumped to
your SSD. It will also be writable. You could also just create a tar.gz
of the file system and use this to populate your SSD.

Look at: https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F

> 2. I would like to prevent the system from automatically trying to
> mount every drive it detects.  I would like it to create devices for
> any disks attached to the system, but stop there.
>
The mount.sh script from udev is responsible for mounting/unmounting
devices automagically. You can always disable it. If the hardware stack
does not change you could "hard-code" everything in your fstab.

Hope that helps!

Marc

