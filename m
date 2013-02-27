Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C3CBDE0070F
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 07:00:46 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id k10so691732iea.5
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 07:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=aeWGZJUy9fjvHEZTsTLH8SmNm9ZIb9s8QyLHlHo8+ik=;
	b=F4xoUOc1nPAPl72zlv/3hQBKyYhW1QtgBm3nLb+k3DjP69nUKC5aQYU9h//Z58vVoa
	7Nx73wBx5V5YOuXtQzrsqrU3+mXmI7u1CDoZfiCwIwsPjiJIFkkhCLhak0BDPcfonqFY
	CwQXl9UaoXgH8t+nS36N3qnedFJaQ6xmAiTdfia9RjFCjsoKM4LtjxAfx/NjhtxUlWEL
	O/mt7lEXLshl0RHm70RmPFLQKyme+LKcf4H+c7Ft/cZJjJDcMhMv6vKvsowQAe92vu+T
	uaYuDvAmpEvZoHf5thmAyHlSZaQUG3rhF72njYxM2pflichaaqYYPqnFxExs7i+Z9KeM
	ShmQ==
X-Received: by 10.50.56.141 with SMTP id a13mr1305731igq.24.1361977246083;
	Wed, 27 Feb 2013 07:00:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.163 with HTTP; Wed, 27 Feb 2013 07:00:16 -0800 (PST)
In-Reply-To: <CABTzgQ7HBV++G29qqgf7_Eg+iRoVpndGuBy7HSk+5LfkwTF3CA@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
	<CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
	<CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
	<CAFyqS9q3q+Ep2z2Ygk4oN5pS13DHnV0abQ3BvzV3-mq=HqBrJw@mail.gmail.com>
	<CABTzgQ6WrhzcQ4KKBG7Q3bMsgf8-uijzshHSv2FyCajHpiy-5Q@mail.gmail.com>
	<CABTzgQ7tS7+_64urm7NRBmXN+KT8M7W+8QOareJxOtXwfWt0Og@mail.gmail.com>
	<CABTzgQ54dEyDrbND5Kfy6M4mAGMoyU236V1dOZvW8oLVBWFyzg@mail.gmail.com>
	<CA+gsK-rGDzbKJjpgV7-DRQm826ErVoWNp6RsOS8eqx4m-FNDAQ@mail.gmail.com>
	<CABTzgQ4XWPOzDzM_dK6ja+3K1z=Z1M997UcWjxAZ_pkoRR6Xyg@mail.gmail.com>
	<272E9DB8-D097-42EC-A40F-ACD81E5051AD@gmail.com>
	<CABTzgQ41VHB5YmB2qicTS7YzL32gmj7TSzNLqmGc=zXFZEDeqQ@mail.gmail.com>
	<CA+gsK-ohTc6psxC-MaaaEaLBTa18OaQVxP4BhToBY3arWMQ46Q@mail.gmail.com>
	<CABTzgQ7HBV++G29qqgf7_Eg+iRoVpndGuBy7HSk+5LfkwTF3CA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Feb 2013 07:00:16 -0800
Message-ID: <CAMKF1srrh3ojXTeKBuNWE9Ozm1qF8F+KUarLqa08+-6T7Zu2QA@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Updating uboot to v2013.01
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
X-List-Received-Date: Wed, 27 Feb 2013 15:00:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 26, 2013 at 11:44 PM, Satya Swaroop Damarla
<swaroop.damarla@gmail.com> wrote:
> Hey Rudy,
>
> I think, it doesnot automatically take a kernel but we have to choose the
> kernel and I chose it v3.2 but seems it doesnot support my board and so I
> should take a kernel from the original and configure it to my need.... He=
re
> is the only error message I see about linux kernel
>
> WARNING: linux-dummy: No generic license file exists for: GPL in any
> provider
>

well it seems you are missing a whole BSP for this board. So I would sugges=
t
to go through the BSP guide and setup one for your board

> my board is Avionic Tamonten Carrier, based on NVIDIA harmony board.
> Suggestions are very much appreciated but I am also currently trying to
> solve it.. I just downloaded a git kernel from the avionic site and can y=
ou
> please tell me how to configure it to so that the build system takes this=
 as
> kernel and build it
>
> Greets,
> Satya
>
>
> On Tue, Feb 26, 2013 at 6:21 PM, Rudolf Streif <rstreif@linuxfoundation.o=
rg>
> wrote:
>>
>> Satya,
>>
>> So what exactly do you get when building the kernel? No image at all in
>> tmp/deploy/images? What do the logs for the kernel recipes say?
>>
>> Rudi
>>
>>
>> On Mon, Feb 25, 2013 at 11:36 PM, Satya Swaroop Damarla
>> <swaroop.damarla@gmail.com> wrote:
>>>
>>> hey hans,
>>>
>>> I think you are right about the kernel device tree.. I think it should
>>> come with the kernel but I have no idea why it works.. Only an expert s=
hould
>>> say why it works.. I think my work is not complete. I can generate the
>>> rootfs and the uboot.bin file but not the uImage... I have no idea... D=
iid
>>> you complete generating the image for the board?
>>>
>>> Greets,
>>> Satya
>>>
>>>
>>> On Mon, Feb 25, 2013 at 5:05 PM, Hans Beck=C3=A9rus <hans.beckerus@gmai=
l.com>
>>> wrote:
>>>>
>>>>
>>>>
>>>> 25 feb 2013 kl. 15:58 skrev Satya Swaroop DAMARLA <swaroop@weisser.at>=
:
>>>>
>>>> Guys. I found the solution to this problem....
>>>>
>>>> I think if you already install uboot-tools or uboot-mkimage packes fro=
m
>>>> Ubuntu repository then it is used instead of the one that is downloade=
d and
>>>> we should uninstall the packages and then rerun the build,,... Then IT
>>>> WORKS... So, thank you for the time and enegry... I assume this thread=
 is
>>>> closed and this is the solution and if this doesnot work for some then
>>>> please post it and we may discuss the situation depending on the probl=
em,
>>>>
>>>> Greetings & Regards,
>>>> Satya
>>>>
>>>> Same comment here as for the device tree compiler. You should use the
>>>> uboot tools/version as they come with the package. Not the one used by=
 the
>>>> host distro. To me this is not a proper solution.
>>>>
>>>>
>>>>
>>>> On Thu, Feb 21, 2013 at 5:28 PM, Rudolf Streif
>>>> <rstreif@linuxfoundation.org> wrote:
>>>>>
>>>>> Satya,
>>>>>
>>>>> I will look into it later today. I am currently at the Linux
>>>>> Foundation's Embedded Linux Conference.
>>>>>
>>>>> Rudi
>>>>>
>>>>>
>>>>> On Thu, Feb 21, 2013 at 2:10 AM, Satya Swaroop DAMARLA
>>>>> <swaroop@weisser.at> wrote:
>>>>>>
>>>>>> Hello Guys,
>>>>>>
>>>>>> I have not received any reply from you. If you can help me to figure
>>>>>> out what the errors mean when adding a new .bb or recipe file then I=
 can
>>>>>> learn the mistake and take care in the new recipes.... I request you=
r time
>>>>>>
>>>>>>
>>>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla
>>>>>> <swaroop.damarla@gmail.com> wrote:
>>>>>>>
>>>>>>> hey Guys... I get the following error... which I attached.. Its
>>>>>>> completely greek and latin to me.. Can you please help me..
>>>>>>>
>>>>>>>
>>>>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop DAMARLA
>>>>>>> <swaroop@weisser.at> wrote:
>>>>>>>>
>>>>>>>> hey Guys... I get the following error... which I attached.. Its
>>>>>>>> completely greek and latin to me.. Can you please help me..
>>>>>>>>
>>>>>>>>
>>>>>>>> On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=C3=A9rus
>>>>>>>> <hans.beckerus@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>> On Wed, Feb 20, 2013 at 6:12 PM, Satya Swaroop Damarla
>>>>>>>>> <swaroop.damarla@gmail.com> wrote:
>>>>>>>>> > Hey hans, this is what he meant,
>>>>>>>>> >
>>>>>>>>> > In the machine config file add the following
>>>>>>>>> >
>>>>>>>>> > PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or
>>>>>>>>> > PREFERRED_VERSION_u-boot ?=3D
>>>>>>>>> > "v2013.01.01%"
>>>>>>>>> >
>>>>>>>>> > By the way did you already complete the first part... There is
>>>>>>>>> > also other
>>>>>>>>> > file called "u-boot-fw-utils_2012.04.01.bb" ... I think we shou=
ld
>>>>>>>>> > do the
>>>>>>>>> > same...
>>>>>>>>> >
>>>>>>>>> > Hans bytheway,  are you also working on the same board or
>>>>>>>>> > diffferent board
>>>>>>>>> > with same problem?
>>>>>>>>> >
>>>>>>>>>
>>>>>>>>> Different board, same core, similar problem ;)
>>>>>>>>> Now I get it. Thanks. But still question remains how in earth I
>>>>>>>>> managed to build the kernel if not also having copied/renamed the
>>>>>>>>> mkimage .bb?
>>>>>>>>> Is the PREFERRED_VERSION_u-boot used to determine what mkimage an=
d
>>>>>>>>> fw
>>>>>>>>> utils it picks up?
>>>>>>>>> Then it might be that since I/we build u-boot as a separate
>>>>>>>>> package,
>>>>>>>>> but kernel lifts in the mkimage stuff, it works but the wrong
>>>>>>>>> package
>>>>>>>>> was used.
>>>>>>>>> In my case obviously compatible, but not recommended I guess. Als=
o,
>>>>>>>>> I
>>>>>>>>> agree that the fw utils should probably be in sync similar to
>>>>>>>>> mkimage.
>>>>>>>>>
>>>>>>>>> Hans
>>>>>>>>>
>>>>>>>>> >
>>>>>>>>> >
>>>>>>>>> >
>>>>>>>>> >
>>>>>>>>> >
>>>>>>>>> > On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=C3=A9rus
>>>>>>>>> > <hans.beckerus@gmail.com>
>>>>>>>>> > wrote:
>>>>>>>>> >>
>>>>>>>>> >> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
>>>>>>>>> >> <rstreif@linuxfoundation.org> wrote:
>>>>>>>>> >> > Satya,
>>>>>>>>> >> >
>>>>>>>>> >> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot
>>>>>>>>> >> > such as
>>>>>>>>> >> > u-boot_2012.04.01.bb. You can simply copy it and name it
>>>>>>>>> >> > u-boot_2013.01.bb
>>>>>>>>> >> > and then modify SRCREV to the revision that corresponds to t=
he
>>>>>>>>> >> > tag
>>>>>>>>> >> > 2013.01
>>>>>>>>> >> > or 2013.01.01 in git.denx.de:
>>>>>>>>> >> >
>>>>>>>>> >> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
>>>>>>>>> >> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>>>>>>>>> >> >
>>>>>>>>> >> > Do the same for u-boot-mkimage and include the u-boot versio=
n
>>>>>>>>> >> > with your
>>>>>>>>> >> > bsp.
>>>>>>>>> >> >
>>>>>>>>> >> > Rudi
>>>>>>>>> >> >
>>>>>>>>> >> >
>>>>>>>>> >> Hi Rudi, sorry to chime in , but I have a similar problem but =
do
>>>>>>>>> >> not
>>>>>>>>> >> really get the last thing you said.
>>>>>>>>> >> What do you mean by including the u-boot version in the bsp?
>>>>>>>>> >> Also is
>>>>>>>>> >> it a must to also copy the mkimage .bb or will the system find=
 a
>>>>>>>>> >> suitable one automatically?
>>>>>>>>> >> The thing is that I only copied/edited the u-boot .bb but neve=
r
>>>>>>>>> >> the
>>>>>>>>> >> mkimage. Still my kernel successfully builds the kernel uImage=
!?
>>>>>>>>> >> Some magic that I have missed :)
>>>>>>>>> >>
>>>>>>>>> >> Hans
>>>>>>>>> >>
>>>>>>>>> >>
>>>>>>>>> >> > On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
>>>>>>>>> >> > <swaroop.damarla@gmail.com> wrote:
>>>>>>>>> >> >>
>>>>>>>>> >> >> Hi Guys,
>>>>>>>>> >> >>
>>>>>>>>> >> >> I need support for uboot on Tamonten board but the version =
on
>>>>>>>>> >> >> it is
>>>>>>>>> >> >> v2012.04 but I came to know that v2012.10 or v2013.01
>>>>>>>>> >> >> supports the
>>>>>>>>> >> >> Tamontenboard through some guys here..
>>>>>>>>> >> >>
>>>>>>>>> >> >> It would be great if you can tell me how can I accomplish
>>>>>>>>> >> >> v2013.01 or
>>>>>>>>> >> >> v2012.10 into the build system and make it available so tha=
t
>>>>>>>>> >> >> I can
>>>>>>>>> >> >> compile
>>>>>>>>> >> >> the and get uImage
>>>>>>>>> >> >>
>>>>>>>>> >> >> (Tamonten board is a derivative of harmony board with some
>>>>>>>>> >> >> changes and
>>>>>>>>> >> >> has
>>>>>>>>> >> >> arm cortexa9 processor without neon extentions )
>>>>>>>>> >> >>
>>>>>>>>> >> >> I am kind of new to add new .bb files and help is really
>>>>>>>>> >> >> appreciated as
>>>>>>>>> >> >> I
>>>>>>>>> >> >> am not able to figure out how to add
>>>>>>>>> >> >>
>>>>>>>>> >> >> Greetings & Regards,
>>>>>>>>> >> >> Swaroop
>>>>>>>>> >> >>
>>>>>>>>> >> >> _______________________________________________
>>>>>>>>> >> >> yocto mailing list
>>>>>>>>> >> >> yocto@yoctoproject.org
>>>>>>>>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>> >> >>
>>>>>>>>> >> >
>>>>>>>>> >> >
>>>>>>>>> >> >
>>>>>>>>> >> > --
>>>>>>>>> >> > --
>>>>>>>>> >> > Rudolf J. Streif
>>>>>>>>> >> > Director of Embedded Solutions
>>>>>>>>> >> > The Linux Foundation
>>>>>>>>> >> >
>>>>>>>>> >> > rudolf.streif@linux.com
>>>>>>>>> >> > Phone: +1.619.631.5383
>>>>>>>>> >> > Skype: rudolfstreif
>>>>>>>>> >> > PGP: RSA 2048/2048 D6E7D28B
>>>>>>>>> >> >
>>>>>>>>> >> > Linux Foundation Events Schedule:  events.linuxfoundation.or=
g
>>>>>>>>> >> > Linux Foundation Training Schedule:
>>>>>>>>> >> > training.linuxfoundation.org
>>>>>>>>> >> >
>>>>>>>>> >> >
>>>>>>>>> >> > _______________________________________________
>>>>>>>>> >> > yocto mailing list
>>>>>>>>> >> > yocto@yoctoproject.org
>>>>>>>>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>> >> >
>>>>>>>>> >
>>>>>>>>> >
>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> --
>>>>> Rudolf J. Streif
>>>>> Director of Embedded Solutions
>>>>> The Linux Foundation
>>>>>
>>>>> rudolf.streif@linux.com
>>>>> Phone: +1.619.631.5383
>>>>> Skype: rudolfstreif
>>>>> PGP: RSA 2048/2048 D6E7D28B
>>>>>
>>>>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>>>>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>>
>> --
>> --
>> Rudolf J. Streif
>> Director of Embedded Solutions
>> The Linux Foundation
>>
>> rudolf.streif@linux.com
>> Phone: +1.619.631.5383
>> Skype: rudolfstreif
>> PGP: RSA 2048/2048 D6E7D28B
>>
>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

