Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A9E9E014AD
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 05:19:31 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id c13so5225698vea.39
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 05:19:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=uNKpyPby7bFIkh6Z5SPpO+VB7piesQaXM+kzx1YuRBI=;
	b=B9CGPmc7xIeJcMef30WL+fgxeLAUQjUZDrx5c6bvRehQZdzK2IX215I/hfFj8Ox4fR
	n6MPLH3x8gad/Fd16duZg3KQDmrCobcsyjPcAC5NVkrfEVvFzhH689oQU0VtUopMLdi7
	Z7RxJzD/z1g8wA9AVkE1qh6f+EDTmko4PhPVF1g34JYPRJ3oW49qEfIBlQssMY9hPcJs
	6xahnVoVHvIIFrFDQkOnTokhdVvn6iFcXIJTap7iInjWBJ6qp8ehnu/J6vI5hAYnaZAD
	9Tt0cSKfh/dkHmNyxdvY/o1JfwKaS0tsgF+VlQHabIDfWj5bfcWv7TIaFhnF1CWV4LvM
	BTEA==
X-Received: by 10.58.188.48 with SMTP id fx16mr15604806vec.22.1365423570795;
	Mon, 08 Apr 2013 05:19:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Mon, 8 Apr 2013 05:19:10 -0700 (PDT)
In-Reply-To: <00e801ce3452$67c501d0$374f0570$@gmail.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2013 13:19:10 +0100
Message-ID: <CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
To: Andreas Enbacka <aenbacka@gmail.com>
X-Gm-Message-State: ALoCoQkx+biBGwuYDXZLSzc2KuuaUpS9221I19tPwCc35aMGSCpfQikt7ApXvJJmUfAl6gKTY4tB
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
X-List-Received-Date: Mon, 08 Apr 2013 12:19:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 April 2013 13:12, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I rebuilt xf86-input-keyboard and xf86-input-mouse (as well as the core-i=
mage-sato image), and now the mouse / keyboard works ok in X. Thanks for th=
e assistance.
>
> I checked the Xorg log file, it seems to add the mouse using the mouse_dr=
v.so module, not evdev_drv.so. Do I need to rebuild xf86-input-evdev as wel=
l to get the mouse added using evdev? This because I have a custom applicat=
ion that handles the touch screen calibration running on top of X, and itex=
pects the mouse to be added via evdev.

Probably - you could try removing the mouse and keyboard drivers and
leaving just evdev if it still prefers mouse/keyboard over evdev.

Ross

