Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A3D6E014AD
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 03:34:31 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jz10so5238392veb.33
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 03:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=fOBZbuyGHHzwmf2JSERflFVtDjjP4ETHwqvU9FpE8gE=;
	b=LusR/h9T6GIzrXsEmzdB4CdsuR3wuqV1nBVWjOoQ2f//RxOosJcJQ0aERDuc1jiO12
	JkgyRrXpZ7goXs9I5gMgcFYK1pyvH+ymUt4wT/h8NROHq0YLWqMiIM7raJ6cGNSjX/Cg
	UM9lw1sC5N9y2Mc4y8KoG1f5ScqLUL9vWT8zPPlbBVUDcswodSh4TXElApRtop0d2WrD
	wyD1b1+EFWGHeNa5je9onugeak1t1wBDd3pCOfLFGaeu5uE4WQ3VviFaSN9wECZFFU7v
	LOLrn30zJOCVCOLe94fUcu2Dqwx2Ub4S8nt5Qqyq3GrBt8LC3c9nHKWonffFi+H9/ZEB
	7Tig==
X-Received: by 10.220.155.8 with SMTP id q8mr15246048vcw.42.1365417270422;
	Mon, 08 Apr 2013 03:34:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Mon, 8 Apr 2013 03:34:10 -0700 (PDT)
In-Reply-To: <009101ce343e$8db88560$a9299020$@gmail.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2013 11:34:10 +0100
Message-ID: <CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
To: Andreas Enbacka <aenbacka@gmail.com>
X-Gm-Message-State: ALoCoQlTMaOk7fGaUZ+NA9CCY9K+ZHCF4Uukz4f3XbhcwFkCzXUoOjg55jCAVXZd4qHpMgaLVw9e
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Mon, 08 Apr 2013 10:34:31 -0000
Content-Type: text/plain; charset=UTF-8

On 8 April 2013 10:50, Andreas Enbacka <aenbacka@gmail.com> wrote:
> Thanks for your reply, very much appreciated. I am currently using Poky master. I have attached the complete Xorg.0.log; it does not contain any mentions of evdev, only mouse, which would imply that evdev does not get loaded of some reason.

That's interesting, it should be loading the evdev module.  Can you
confirm that it's present in /usr/lib/xorg/modules/input?

Your log shows that it didn't load the kbd and mouse modules because
the versions don't match:

[3901748.190] (II) LoadModule: "mouse"
[3901748.191] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3901748.208] (II) Module kbd: vendor="X.Org Foundation"
[3901748.208]   compiled for 1.13.1, module version = 1.6.2
[3901748.203] (EE) module ABI major version (18) doesn't match the
server's version (11)
[3901748.204] (EE) Failed to load module "mouse" (module requirement
mismatch, 0)

This shouldn't happen in master because the server and the modules
have runtime-dependences injected to stop this happening:

$ dpkg -I xf86-input-mouse_1.8.1-r21.0.0_armv5te.ipk
...
 Depends: xorg-abi-input-19, libc6 (>= 2.17)

$ dpkg -I xserver-xorg_1.14.0-r8.0.0_armv5te.ipk
...
 Provides: xserver-xorg-extension-extmod, xserver-xorg-extension-dri,
xorg-abi-video-14, xorg-abi-input-19, xserver-xorg-extension-dbe,
xserver-xorg-extension-record, xserver-xorg-extension-dri2

Something went wrong and your drivers were built with a newer version
of the server (1.13.1) than you're actually running (1.9.3). I suspect
what's happened is that you've done a non-emenlow build (say, atom-pc)
in the same build directory and your emenlow build is re-using the
drivers.  Rebuilding the drivers should help, so "bitbake
-ccleansstate xorg-input-keyboard xorg-input-mouse" and then re-build
your image.

Ross

