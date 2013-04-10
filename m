Return-Path: <aenbacka@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6851EE01496
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 23:34:35 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id d4so49820eek.15
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 23:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=ZKOJYLdDVyuGdsiVLXbLOe+HO2pemn0JPsKqMHCLYJ8=;
	b=qwtKQuylBEKPC553EohINGVpRE+ZeyuqKkTgrcmRaxKNX3QDlfu1BymV73X7431/Vj
	jsB7g5tG4xfhQuFGNxaK9aqL8jCUWGLCqBqSjWLoNi1BDCCZvOe4wwypjL+3nQvA3sUY
	5YTHsfd639eULYK+U/xKMZbrfjpnj+d6Y2SUMo2X05el7TTsDgOGirtij2c6llOptVae
	blTTIJ5uK7/H9eGSk0fD0BkNE+sFu5TNtw3+qTnqYoKDoOvYkD4rIAgQlknq8ouhsdg1
	n+sFuptGUGXUwyAurynEVPbnin3PjOza98CU3QmWE1xvuAVH0jSQAV0olnxtk/G5Fss+
	XXVA==
X-Received: by 10.15.94.200 with SMTP id bb48mr2257978eeb.21.1365575674139;
	Tue, 09 Apr 2013 23:34:34 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id
	cb50sm20044378eeb.14.2013.04.09.23.34.32
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 09 Apr 2013 23:34:33 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
	<001b01ce3480$ac63e850$052bb8f0$@gmail.com>
	<CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
In-Reply-To: <CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
Date: Wed, 10 Apr 2013 09:34:21 +0300
Message-ID: <001701ce35b5$708f5f40$51ae1dc0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34AgDMcSEB8hSHPAG+DacFAnO58k8Bg/s4BQILAWEjmASFXwA=
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
X-List-Received-Date: Wed, 10 Apr 2013 06:34:35 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

Ross,

Tried to dig around a little more in the core-image-sato image; dmesg =
output does not list anything at all related to evdev. The evdev_drv.so =
module is present in the image, but e.g., lsmod | grep evdev does not =
produce any output (modprobe evdev reports fatal error: cannot load =
module). Is the evdev support missing from the kernel of some reason, =
and can it be fixed easily somehow?

//Andreas

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 9. huhtikuuta 2013 13:07
To: Andreas Enbacka
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto =
(core-image-sato on emenlow)

Hi Andreas,

On 8 April 2013 18:44, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I tried to rebuild the xf86-input-evdev; however the core-image-sato =
still insists on using the default mouse / keyboard drivers instead of =
evdev. Also no /dev/input/event* entries exist (only /dev/input/mice and =
/dev/input/mouse0).

So in that case evdev won't help anyway.  I wonder why that is.  I guess =
you'll need to try evtest and look at dmesg.

> Concerning removing xf86-input-mouse / xf86-input-keyboard from the =
image, what is the easiest way to achieve this using yocto? I have =
created a custom bitbake recipe already, inheriting from =
core-image-sato, which adds a few packages. Can removal of packages be =
easily specified in the custom recipe as well?

They're pulled in through the machine configuration, eventually reaching =
XSERVER_IA32_BASE.  The packages are tiny and the choice of what ones to =
use can be made by xorg.conf anyway.

Ross


