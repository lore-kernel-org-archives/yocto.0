Return-Path: <aenbacka@gmail.com>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49FE6E014B5
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 22:58:57 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id w20so2328095lbh.32
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 22:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=ikITMhy1r789cdgDbEwD3pMkW+MZDAxhSgbkupolqcs=;
	b=IJhgrL9tgHL5nmcRgXq21x2s7akpBSS7rl8hpc4QQN4qc54GeiUoi0005uGehk+zzX
	+/BybdV1JpDTiPqQr/vlFtdyIP7ygHVq3fWoOxmPg2m4qKBGk6R/eIQ6UVY6YMzquTzN
	uLqJhz8MNEws4dTaicQG3p0XGU8wlktJOFCpxY0bRjTqorJ3cUtUSfY+p30AL1DswuUz
	9SR7QjqRWFEp09iYGJX4vtn6Knb8mFdsIv9tRl8tTrzd3CwSu/M8Oi0nKrrh2RhwgNRo
	AFCZKCJsWUjgoKsBr/VmdpS0IW3MFZ6EYn1z2yQ1ayUIoYeANuaQx4ZUHgsq8cEm72qY
	Lduw==
X-Received: by 10.112.173.70 with SMTP id bi6mr4723395lbc.116.1365746336035;
	Thu, 11 Apr 2013 22:58:56 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id i3sm2757188lbn.0.2013.04.11.22.58.54
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 22:58:55 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Bruce Ashfield'" <bruce.ashfield@windriver.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
	<001b01ce3480$ac63e850$052bb8f0$@gmail.com>
	<CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
	<001701ce35b5$708f5f40$51ae1dc0$@gmail.com>
	<51657C37.9000901@windriver.com>
In-Reply-To: <51657C37.9000901@windriver.com>
Date: Fri, 12 Apr 2013 08:58:40 +0300
Message-ID: <000d01ce3742$c91dddb0$5b599910$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34AgDMcSEB8hSHPAG+DacFAnO58k8Bg/s4BQILAWEjApttcRIC2X9PiZfb+Dvw
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
X-List-Received-Date: Fri, 12 Apr 2013 05:58:57 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: fi

Hello,

I tried to execute zcat /proc/config.gz | grep EVDEV, and it produced the
following output:

#  CONFIG_INPUT_EVDEV is not set
CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y

Does the above shed some light what could be the problem with the image? 

//Andreas

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com] 
Sent: 10. huhtikuuta 2013 17:51
To: Andreas Enbacka
Cc: 'Burton, Ross'; yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto
(core-image-sato on emenlow)

On 13-04-10 02:34 AM, Andreas Enbacka wrote:
> Ross,
>
> Tried to dig around a little more in the core-image-sato image; dmesg
output does not list anything at all related to evdev. The evdev_drv.so
module is present in the image, but e.g., lsmod | grep evdev does not
produce any output (modprobe evdev reports fatal error: cannot load module).
Is the evdev support missing from the kernel of some reason, and can it be
fixed easily somehow?

EVDEV is typically built into our images, not as a module. If you zcat
/proc/config.gz, and grep for EVDEV, what do you see ?

Bruce

>
> //Andreas
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: 9. huhtikuuta 2013 13:07
> To: Andreas Enbacka
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Problem with mouse and keyboard detection in 
> yocto (core-image-sato on emenlow)
>
> Hi Andreas,
>
> On 8 April 2013 18:44, Andreas Enbacka <aenbacka@gmail.com> wrote:
>> I tried to rebuild the xf86-input-evdev; however the core-image-sato
still insists on using the default mouse / keyboard drivers instead of
evdev. Also no /dev/input/event* entries exist (only /dev/input/mice and
/dev/input/mouse0).
>
> So in that case evdev won't help anyway.  I wonder why that is.  I guess
you'll need to try evtest and look at dmesg.
>
>> Concerning removing xf86-input-mouse / xf86-input-keyboard from the
image, what is the easiest way to achieve this using yocto? I have created a
custom bitbake recipe already, inheriting from core-image-sato, which adds a
few packages. Can removal of packages be easily specified in the custom
recipe as well?
>
> They're pulled in through the machine configuration, eventually reaching
XSERVER_IA32_BASE.  The packages are tiny and the choice of what ones to use
can be made by xorg.conf anyway.
>
> Ross
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



