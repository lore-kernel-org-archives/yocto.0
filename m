Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65549E014BC
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 07:50:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3AEocdD010006
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Apr 2013 07:50:38 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 10 Apr 2013 07:50:38 -0700
Message-ID: <51657C37.9000901@windriver.com>
Date: Wed, 10 Apr 2013 10:50:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: Andreas Enbacka <aenbacka@gmail.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
	<001b01ce3480$ac63e850$052bb8f0$@gmail.com>
	<CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
	<001701ce35b5$708f5f40$51ae1dc0$@gmail.com>
In-Reply-To: <001701ce35b5$708f5f40$51ae1dc0$@gmail.com>
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
X-List-Received-Date: Wed, 10 Apr 2013 14:50:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-10 02:34 AM, Andreas Enbacka wrote:
> Ross,
>
> Tried to dig around a little more in the core-image-sato image; dmesg output does not list anything at all related to evdev. The evdev_drv.so module is present in the image, but e.g., lsmod | grep evdev does not produce any output (modprobe evdev reports fatal error: cannot load module). Is the evdev support missing from the kernel of some reason, and can it be fixed easily somehow?

EVDEV is typically built into our images, not as a module. If you
zcat /proc/config.gz, and grep for EVDEV, what do you see ?

Bruce

>
> //Andreas
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: 9. huhtikuuta 2013 13:07
> To: Andreas Enbacka
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
>
> Hi Andreas,
>
> On 8 April 2013 18:44, Andreas Enbacka <aenbacka@gmail.com> wrote:
>> I tried to rebuild the xf86-input-evdev; however the core-image-sato still insists on using the default mouse / keyboard drivers instead of evdev. Also no /dev/input/event* entries exist (only /dev/input/mice and /dev/input/mouse0).
>
> So in that case evdev won't help anyway.  I wonder why that is.  I guess you'll need to try evtest and look at dmesg.
>
>> Concerning removing xf86-input-mouse / xf86-input-keyboard from the image, what is the easiest way to achieve this using yocto? I have created a custom bitbake recipe already, inheriting from core-image-sato, which adds a few packages. Can removal of packages be easily specified in the custom recipe as well?
>
> They're pulled in through the machine configuration, eventually reaching XSERVER_IA32_BASE.  The packages are tiny and the choice of what ones to use can be made by xorg.conf anyway.
>
> Ross
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


