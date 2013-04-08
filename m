Return-Path: <aenbacka@gmail.com>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57D0AE00597
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 10:44:20 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id r10so6008740lbi.36
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 10:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=ofNUlzNRp1HROOFSBb2aVNrx+y4Z5oGE6/SvMgMCreM=;
	b=B/H8hstBK4DEz6PhaXpLYxha4iqaP9kn3BQ0ylZuaweieBYUlG4UbsCkkUvzF68LDZ
	xU5Eu4Wl+E2UcLg2fDQTJ/gU5b/u7s+eMr1zxDH7/iZDWciuQXegEkkJKfS/WltCb8el
	voo7EniH8ZmGaOewxR9PlWBIJ3vmWJIWoFQDSymRzJx0aPpIwJOOL0O2DvD5ztfutbuj
	vGerCR2PhJfhILxcrABaPcCAAKmBk8aRh/A7LhWQyu4ooqyjliWuoeeKrJaU7fXt/QRj
	EunAQxF16odgKTs8udxgK5lFUJAAqx9A5CXWUHJ/4mAoKIFKMNxgn7D4kmPaVOaQ3BAf
	1gQQ==
X-Received: by 10.152.87.212 with SMTP id ba20mr12345521lab.0.1365443058393;
	Mon, 08 Apr 2013 10:44:18 -0700 (PDT)
Received: from LAPTOP (a88-115-129-147.elisa-laajakaista.fi. [88.115.129.147])
	by mx.google.com with ESMTPS id or9sm5723139lbb.8.2013.04.08.10.44.16
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 08 Apr 2013 10:44:17 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
In-Reply-To: <CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
Date: Mon, 8 Apr 2013 20:44:07 +0300
Message-ID: <001b01ce3480$ac63e850$052bb8f0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34AgDMcSEB8hSHPAG+DacFAnO58k+YHpNIQA==
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
X-List-Received-Date: Mon, 08 Apr 2013 17:44:20 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

I tried to rebuild the xf86-input-evdev; however the core-image-sato =
still insists on using the default mouse / keyboard drivers instead of =
evdev. Also no /dev/input/event* entries exist (only /dev/input/mice and =
/dev/input/mouse0).=20

Concerning removing xf86-input-mouse / xf86-input-keyboard from the =
image, what is the easiest way to achieve this using yocto? I have =
created a custom bitbake recipe already, inheriting from =
core-image-sato, which adds a few packages. Can removal of packages be =
easily specified in the custom recipe as well?

//Andreas

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 8. huhtikuuta 2013 15:19
To: Andreas Enbacka
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto =
(core-image-sato on emenlow)

On 8 April 2013 13:12, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I rebuilt xf86-input-keyboard and xf86-input-mouse (as well as the =
core-image-sato image), and now the mouse / keyboard works ok in X. =
Thanks for the assistance.
>
> I checked the Xorg log file, it seems to add the mouse using the =
mouse_drv.so module, not evdev_drv.so. Do I need to rebuild =
xf86-input-evdev as well to get the mouse added using evdev? This =
because I have a custom application that handles the touch screen =
calibration running on top of X, and itexpects the mouse to be added via =
evdev.

Probably - you could try removing the mouse and keyboard drivers and =
leaving just evdev if it still prefers mouse/keyboard over evdev.

Ross


