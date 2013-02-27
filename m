Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D353CE00550
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 23:44:33 -0800 (PST)
Received: by mail-ve0-f173.google.com with SMTP id oz10so242852veb.18
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 23:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=yI5PGe5lh/bTQGo41IBlpY/insUsaQWjFqlnpGQmH1c=;
	b=iGzJGQX5XIblkytD89ykuG+oFPGZw51CCNasgF8dAQ70pAJGZSP0nf/hJDWGw1H0Ke
	xCmb8mL8rmpV5eBM9ch6Hw1aHhlf9v+Yv+dhkWlzHXubSEnZCA88fW79jNlK9osy7F2N
	jBqearSJT345mmB1g1c5QsZAOlNvuUHYdz1GOOqnsKfDdixE1/QLOVWW4n0sRLPzV9hf
	45MjbMrEPAcbTapSjXdZvZEj8pzRO1hjKTWoIYVsAIzpsjZBwprGDXSs6KUTt3ED7rUQ
	0W658JH/Ak535iYVOcBAH8yE4kuCPzWEZixyvhKLucpVbX/014Z93h7ZcKovrTQCnxww
	K3rQ==
MIME-Version: 1.0
X-Received: by 10.52.34.170 with SMTP id a10mr455714vdj.54.1361951072806; Tue,
	26 Feb 2013 23:44:32 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Tue, 26 Feb 2013 23:44:32 -0800 (PST)
In-Reply-To: <CA+gsK-ohTc6psxC-MaaaEaLBTa18OaQVxP4BhToBY3arWMQ46Q@mail.gmail.com>
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
Date: Wed, 27 Feb 2013 08:44:32 +0100
Message-ID: <CABTzgQ7HBV++G29qqgf7_Eg+iRoVpndGuBy7HSk+5LfkwTF3CA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
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
X-List-Received-Date: Wed, 27 Feb 2013 07:44:34 -0000
Content-Type: multipart/alternative; boundary=20cf3078133ce59bbe04d6aff189

--20cf3078133ce59bbe04d6aff189
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hey Rudy,

I think, it doesnot automatically take a kernel but we have to choose the
kernel and I chose it v3.2 but seems it doesnot support my board and so I
should take a kernel from the original and configure it to my need.... Here
is the only error message I see about linux kernel

WARNING: linux-dummy: No generic license file exists for: GPL in any
provider

my board is Avionic Tamonten Carrier, based on NVIDIA harmony board.
Suggestions are very much appreciated but I am also currently trying to
solve it.. I just downloaded a git kernel from the avionic site and can you
please tell me how to configure it to so that the build system takes this
as kernel and build it

Greets,
Satya


On Tue, Feb 26, 2013 at 6:21 PM, Rudolf Streif
<rstreif@linuxfoundation.org>wrote:

> Satya,
>
> So what exactly do you get when building the kernel? No image at all in
> tmp/deploy/images? What do the logs for the kernel recipes say?
>
> Rudi
>
>
> On Mon, Feb 25, 2013 at 11:36 PM, Satya Swaroop Damarla <
> swaroop.damarla@gmail.com> wrote:
>
>> hey hans,
>>
>> I think you are right about the kernel device tree.. I think it should
>> come with the kernel but I have no idea why it works.. Only an expert
>> should say why it works.. I think my work is not complete. I can generat=
e
>> the rootfs and the uboot.bin file but not the uImage... I have no idea..=
.
>> Diid you complete generating the image for the board?
>>
>> Greets,
>> Satya
>>
>>
>> On Mon, Feb 25, 2013 at 5:05 PM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m>wrote:
>>
>>>
>>>
>>> 25 feb 2013 kl. 15:58 skrev Satya Swaroop DAMARLA <swaroop@weisser.at>:
>>>
>>> Guys. I found the solution to this problem....
>>>
>>> I think if you already install uboot-tools or uboot-mkimage packes from
>>> Ubuntu repository then it is used instead of the one that is downloaded=
 and
>>> we should uninstall the packages and then rerun the build,,... Then IT
>>> WORKS... So, thank you for the time and enegry... I assume this thread =
is
>>> closed and this is the solution and if this doesnot work for some then
>>> please post it and we may discuss the situation depending on the proble=
m,
>>>
>>> Greetings & Regards,
>>> Satya
>>>
>>> Same comment here as for the device tree compiler. You should use the
>>> uboot tools/version as they come with the package. Not the one used by =
the
>>> host distro. To me this is not a proper solution.
>>>
>>>
>>>
>>> On Thu, Feb 21, 2013 at 5:28 PM, Rudolf Streif <
>>> rstreif@linuxfoundation.org> wrote:
>>>
>>>> Satya,
>>>>
>>>> I will look into it later today. I am currently at the Linux
>>>> Foundation's Embedded Linux Conference.
>>>>
>>>> Rudi
>>>>
>>>>
>>>> On Thu, Feb 21, 2013 at 2:10 AM, Satya Swaroop DAMARLA <
>>>> swaroop@weisser.at> wrote:
>>>>
>>>>> Hello Guys,
>>>>>
>>>>> I have not received any reply from you. If you can help me to figure
>>>>> out what the errors mean when adding a new .bb or recipe file then I =
can
>>>>> learn the mistake and take care in the new recipes.... I request your=
 time
>>>>>
>>>>>
>>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <
>>>>> swaroop.damarla@gmail.com> wrote:
>>>>>
>>>>>> hey Guys... I get the following error... which I attached.. Its
>>>>>> completely greek and latin to me.. Can you please help me..
>>>>>>
>>>>>>
>>>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop DAMARLA <
>>>>>> swaroop@weisser.at> wrote:
>>>>>>
>>>>>>> hey Guys... I get the following error... which I attached.. Its
>>>>>>> completely greek and latin to me.. Can you please help me..
>>>>>>>
>>>>>>>
>>>>>>> On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=E9rus <
>>>>>>> hans.beckerus@gmail.com> wrote:
>>>>>>>
>>>>>>>> On Wed, Feb 20, 2013 at 6:12 PM, Satya Swaroop Damarla
>>>>>>>> <swaroop.damarla@gmail.com> wrote:
>>>>>>>> > Hey hans, this is what he meant,
>>>>>>>> >
>>>>>>>> > In the machine config file add the following
>>>>>>>> >
>>>>>>>> > PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or
>>>>>>>> PREFERRED_VERSION_u-boot ?=3D
>>>>>>>> > "v2013.01.01%"
>>>>>>>> >
>>>>>>>> > By the way did you already complete the first part... There is
>>>>>>>> also other
>>>>>>>> > file called "u-boot-fw-utils_2012.04.01.bb" ... I think we
>>>>>>>> should do the
>>>>>>>> > same...
>>>>>>>> >
>>>>>>>> > Hans bytheway,  are you also working on the same board or
>>>>>>>> diffferent board
>>>>>>>> > with same problem?
>>>>>>>> >
>>>>>>>>
>>>>>>>> Different board, same core, similar problem ;)
>>>>>>>> Now I get it. Thanks. But still question remains how in earth I
>>>>>>>> managed to build the kernel if not also having copied/renamed the
>>>>>>>> mkimage .bb?
>>>>>>>> Is the PREFERRED_VERSION_u-boot used to determine what mkimage and
>>>>>>>> fw
>>>>>>>> utils it picks up?
>>>>>>>> Then it might be that since I/we build u-boot as a separate packag=
e,
>>>>>>>> but kernel lifts in the mkimage stuff, it works but the wrong
>>>>>>>> package
>>>>>>>> was used.
>>>>>>>> In my case obviously compatible, but not recommended I guess. Also=
,
>>>>>>>> I
>>>>>>>> agree that the fw utils should probably be in sync similar to
>>>>>>>> mkimage.
>>>>>>>>
>>>>>>>> Hans
>>>>>>>>
>>>>>>>> >
>>>>>>>> >
>>>>>>>> >
>>>>>>>> >
>>>>>>>> >
>>>>>>>> > On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus <
>>>>>>>> hans.beckerus@gmail.com>
>>>>>>>> > wrote:
>>>>>>>> >>
>>>>>>>> >> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
>>>>>>>> >> <rstreif@linuxfoundation.org> wrote:
>>>>>>>> >> > Satya,
>>>>>>>> >> >
>>>>>>>> >> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot
>>>>>>>> such as
>>>>>>>> >> > u-boot_2012.04.01.bb. You can simply copy it and name it
>>>>>>>> >> > u-boot_2013.01.bb
>>>>>>>> >> > and then modify SRCREV to the revision that corresponds to th=
e
>>>>>>>> tag
>>>>>>>> >> > 2013.01
>>>>>>>> >> > or 2013.01.01 in git.denx.de:
>>>>>>>> >> >
>>>>>>>> >> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
>>>>>>>> >> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>>>>>>>> >> >
>>>>>>>> >> > Do the same for u-boot-mkimage and include the u-boot version
>>>>>>>> with your
>>>>>>>> >> > bsp.
>>>>>>>> >> >
>>>>>>>> >> > Rudi
>>>>>>>> >> >
>>>>>>>> >> >
>>>>>>>> >> Hi Rudi, sorry to chime in , but I have a similar problem but d=
o
>>>>>>>> not
>>>>>>>> >> really get the last thing you said.
>>>>>>>> >> What do you mean by including the u-boot version in the bsp?
>>>>>>>> Also is
>>>>>>>> >> it a must to also copy the mkimage .bb or will the system find =
a
>>>>>>>> >> suitable one automatically?
>>>>>>>> >> The thing is that I only copied/edited the u-boot .bb but never
>>>>>>>> the
>>>>>>>> >> mkimage. Still my kernel successfully builds the kernel uImage!=
?
>>>>>>>> >> Some magic that I have missed :)
>>>>>>>> >>
>>>>>>>> >> Hans
>>>>>>>> >>
>>>>>>>> >>
>>>>>>>> >> > On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
>>>>>>>> >> > <swaroop.damarla@gmail.com> wrote:
>>>>>>>> >> >>
>>>>>>>> >> >> Hi Guys,
>>>>>>>> >> >>
>>>>>>>> >> >> I need support for uboot on Tamonten board but the version o=
n
>>>>>>>> it is
>>>>>>>> >> >> v2012.04 but I came to know that v2012.10 or v2013.01
>>>>>>>> supports the
>>>>>>>> >> >> Tamontenboard through some guys here..
>>>>>>>> >> >>
>>>>>>>> >> >> It would be great if you can tell me how can I accomplish
>>>>>>>> v2013.01 or
>>>>>>>> >> >> v2012.10 into the build system and make it available so that
>>>>>>>> I can
>>>>>>>> >> >> compile
>>>>>>>> >> >> the and get uImage
>>>>>>>> >> >>
>>>>>>>> >> >> (Tamonten board is a derivative of harmony board with some
>>>>>>>> changes and
>>>>>>>> >> >> has
>>>>>>>> >> >> arm cortexa9 processor without neon extentions )
>>>>>>>> >> >>
>>>>>>>> >> >> I am kind of new to add new .bb files and help is really
>>>>>>>> appreciated as
>>>>>>>> >> >> I
>>>>>>>> >> >> am not able to figure out how to add
>>>>>>>> >> >>
>>>>>>>> >> >> Greetings & Regards,
>>>>>>>> >> >> Swaroop
>>>>>>>> >> >>
>>>>>>>> >> >> _______________________________________________
>>>>>>>> >> >> yocto mailing list
>>>>>>>> >> >> yocto@yoctoproject.org
>>>>>>>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>> >> >>
>>>>>>>> >> >
>>>>>>>> >> >
>>>>>>>> >> >
>>>>>>>> >> > --
>>>>>>>> >> > --
>>>>>>>> >> > Rudolf J. Streif
>>>>>>>> >> > Director of Embedded Solutions
>>>>>>>> >> > The Linux Foundation
>>>>>>>> >> >
>>>>>>>> >> > rudolf.streif@linux.com
>>>>>>>> >> > Phone: +1.619.631.5383
>>>>>>>> >> > Skype: rudolfstreif
>>>>>>>> >> > PGP: RSA 2048/2048 D6E7D28B
>>>>>>>> >> >
>>>>>>>> >> > Linux Foundation Events Schedule:  events.linuxfoundation.org
>>>>>>>> >> > Linux Foundation Training Schedule:
>>>>>>>> training.linuxfoundation.org
>>>>>>>> >> >
>>>>>>>> >> >
>>>>>>>> >> > _______________________________________________
>>>>>>>> >> > yocto mailing list
>>>>>>>> >> > yocto@yoctoproject.org
>>>>>>>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>> >> >
>>>>>>>> >
>>>>>>>> >
>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>>
>>>> --
>>>> --
>>>> *Rudolf J. Streif*
>>>> Director of Embedded Solutions
>>>> The Linux Foundation
>>>>
>>>> rudolf.streif@linux.com
>>>> Phone: +1.619.631.5383
>>>> Skype: rudolfstreif
>>>> PGP: RSA 2048/2048 D6E7D28B
>>>>
>>>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>>>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> --
> *Rudolf J. Streif*
> Director of Embedded Solutions
> The Linux Foundation
>
> rudolf.streif@linux.com
> Phone: +1.619.631.5383
> Skype: rudolfstreif
> PGP: RSA 2048/2048 D6E7D28B
>
> Linux Foundation Events Schedule:  events.linuxfoundation.org
> Linux Foundation Training Schedule: training.linuxfoundation.org
>
>

--20cf3078133ce59bbe04d6aff189
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Rudy,<div><br></div><div style>I think, it doesnot aut=
omatically take a kernel but we have to choose the kernel and I chose it v3=
.2 but seems it doesnot support my board and so I should take a kernel from=
 the original and configure it to my need.... Here is the only error messag=
e I see about linux kernel</div>
<div style><br></div><div style><div>WARNING: linux-dummy: No generic licen=
se file exists for: GPL in any provider</div><div><br></div><div style>my b=
oard is Avionic Tamonten Carrier, based on NVIDIA harmony board. Suggestion=
s are very much appreciated but I am also currently trying to solve it.. I =
just downloaded a git kernel from the avionic site and can you please tell =
me how to configure it to so that the build system takes this as kernel and=
 build it</div>
<div style><br></div><div style>Greets,</div><div style>Satya</div></div></=
div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, F=
eb 26, 2013 at 6:21 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"mail=
to:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoundation.o=
rg</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Satya,<br><br></d=
iv>So what exactly do you get when building the kernel? No image at all in =
tmp/deploy/images? What do the logs for the kernel recipes say?<br>
<br></div>Rudi<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Mon, Feb 25, 2013 at 11:36 PM, Satya =
Swaroop Damarla <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop.damarla@gma=
il.com" target=3D"_blank">swaroop.damarla@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr">hey hans,<div><br></div><div>I think you are right about t=
he kernel device tree.. I think it should come with the kernel but I have n=
o idea why it works.. Only an expert should say why it works.. I think my w=
ork is not complete. I can generate the rootfs and the uboot.bin file but n=
ot the uImage... I have no idea... Diid you complete generating the image f=
or the board?</div>


<div><br></div><div>Greets,</div><div>Satya</div></div><div><div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Feb 25, 2013 at=
 5:05 PM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a href=3D"mailto:hans.beck=
erus@gmail.com" target=3D"_blank">hans.beckerus@gmail.com</a>&gt;</span> wr=
ote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"auto"><div><br></div><div><br>25=
 feb 2013 kl. 15:58 skrev Satya Swaroop DAMARLA &lt;<a href=3D"mailto:swaro=
op@weisser.at" target=3D"_blank">swaroop@weisser.at</a>&gt;:<br>


<br></div><div><blockquote type=3D"cite"><div><div dir=3D"ltr">Guys. I foun=
d the solution to this problem....<div><br></div><div>I think if you alread=
y install uboot-tools or uboot-mkimage packes from Ubuntu repository then i=
t is used instead of the one that is downloaded and we should uninstall the=
 packages and then rerun the build,,... Then IT WORKS... So, thank you for =
the time and enegry... I assume this thread is closed and this is the solut=
ion and if this doesnot work for some then please post it and we may discus=
s the situation depending on the problem,</div>



<div><br></div><div>Greetings &amp; Regards,</div><div>Satya</div></div><di=
v class=3D"gmail_extra"><br></div></div></blockquote></div>Same comment her=
e as for the device tree compiler. You should use the uboot tools/version a=
s they come with the package. Not the one used by the host distro. To me th=
is is not a proper solution.<div>


<div><div><br><div><div><br><blockquote type=3D"cite"><div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Thu, Feb 21, 2013 at 5:28 PM, =
Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:rstreif@linuxfoundati=
on.org" target=3D"_blank">rstreif@linuxfoundation.org</a>&gt;</span> wrote:=
<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Satya,<div><br></div><div>I=
 will look into it later today. I am currently at the Linux Foundation&#39;=
s Embedded Linux Conference.</div>



<div><br></div><div>Rudi</div></div><div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Feb 21, 2013 at 2:10 AM, Satya S=
waroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" =
target=3D"_blank">swaroop@weisser.at</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">




<div dir=3D"ltr">Hello Guys,<div><br></div><div>I have not received any rep=
ly from you. If you can help me to figure out what the errors mean when add=
ing a new .bb or recipe file then I can learn the mistake and take care in =
the new recipes.... I request your time=A0</div>





</div><div><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop=
.damarla@gmail.com</a>&gt;</span> wrote:<br>





<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div dir=3D"ltr"><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">hey Guys... I get the following error=
... which I attached.. Its completely greek and latin to me.. Can you pleas=
e help me..</span><br>





</div></div><div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Feb 20, 2013 at 7:19 PM, Satya S=
waroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" =
target=3D"_blank">swaroop@weisser.at</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">






<div dir=3D"ltr">hey Guys... I get the following error... which I attached.=
. Its completely greek and latin to me.. Can you please help me..</div><div=
><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">
On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmai=
l.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Wed, Feb 20, 2013 at 6:12 PM, Satya =
Swaroop Damarla<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.=
damarla@gmail.com</a>&gt; wrote:<br>
&gt; Hey hans, this is what he meant,<br>
&gt;<br>
&gt; In the machine config file add the following<br>
&gt;<br>
&gt; PREFERRED_VERSION_u-boot ?=3D &quot;v2013.01%&quot; =A0or PREFERRED_VE=
RSION_u-boot ?=3D<br>
&gt; &quot;v2013.01.01%&quot;<br>
&gt;<br>
&gt; By the way did you already complete the first part... There is also ot=
her<br>
&gt; file called &quot;<a href=3D"http://u-boot-fw-utils_2012.04.01.bb" tar=
get=3D"_blank">u-boot-fw-utils_2012.04.01.bb</a>&quot; ... I think we shoul=
d do the<br>
&gt; same...<br>
&gt;<br>
&gt; Hans bytheway, =A0are you also working on the same board or diffferent=
 board<br>
&gt; with same problem?<br>
&gt;<br>
<br>
</div>Different board, same core, similar problem ;)<br>
Now I get it. Thanks. But still question remains how in earth I<br>
managed to build the kernel if not also having copied/renamed the<br>
mkimage .bb?<br>
Is the PREFERRED_VERSION_u-boot used to determine what mkimage and fw<br>
utils it picks up?<br>
Then it might be that since I/we build u-boot as a separate package,<br>
but kernel lifts in the mkimage stuff, it works but the wrong package<br>
was used.<br>
In my case obviously compatible, but not recommended I guess. Also, I<br>
agree that the fw utils should probably be in sync similar to mkimage.<br>
<div><div><br>
Hans<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus &lt;<a href=3D"mailto=
:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmail.com</a>&gt;=
<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif<br>
&gt;&gt; &lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blan=
k">rstreif@linuxfoundation.org</a>&gt; wrote:<br>
&gt;&gt; &gt; Satya,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Simply look at the u-boot recipes in meta/recipes-bsp/u-boot =
such as<br>
&gt;&gt; &gt; <a href=3D"http://u-boot_2012.04.01.bb" target=3D"_blank">u-b=
oot_2012.04.01.bb</a>. You can simply copy it and name it<br>
&gt;&gt; &gt; <a href=3D"http://u-boot_2013.01.bb" target=3D"_blank">u-boot=
_2013.01.bb</a><br>
&gt;&gt; &gt; and then modify SRCREV to the revision that corresponds to th=
e tag<br>
&gt;&gt; &gt; 2013.01<br>
&gt;&gt; &gt; or 2013.01.01 in <a href=3D"http://git.denx.de" target=3D"_bl=
ank">git.denx.de</a>:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d<br>
&gt;&gt; &gt; for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Do the same for u-boot-mkimage and include the u-boot version=
 with your<br>
&gt;&gt; &gt; bsp.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Rudi<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; Hi Rudi, sorry to chime in , but I have a similar problem but do n=
ot<br>
&gt;&gt; really get the last thing you said.<br>
&gt;&gt; What do you mean by including the u-boot version in the bsp? Also =
is<br>
&gt;&gt; it a must to also copy the mkimage .bb or will the system find a<b=
r>
&gt;&gt; suitable one automatically?<br>
&gt;&gt; The thing is that I only copied/edited the u-boot .bb but never th=
e<br>
&gt;&gt; mkimage. Still my kernel successfully builds the kernel uImage!?<b=
r>
&gt;&gt; Some magic that I have missed :)<br>
&gt;&gt;<br>
&gt;&gt; Hans<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_b=
lank">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I need support for uboot on Tamonten board but the versio=
n on it is<br>
&gt;&gt; &gt;&gt; v2012.04 but I came to know that v2012.10 or v2013.01 sup=
ports the<br>
&gt;&gt; &gt;&gt; Tamontenboard through some guys here..<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; It would be great if you can tell me how can I accomplish=
 v2013.01 or<br>
&gt;&gt; &gt;&gt; v2012.10 into the build system and make it available so t=
hat I can<br>
&gt;&gt; &gt;&gt; compile<br>
&gt;&gt; &gt;&gt; the and get uImage<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; (Tamonten board is a derivative of harmony board with som=
e changes and<br>
&gt;&gt; &gt;&gt; has<br>
&gt;&gt; &gt;&gt; arm cortexa9 processor without neon extentions )<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I am kind of new to add new .bb files and help is really =
appreciated as<br>
&gt;&gt; &gt;&gt; I<br>
&gt;&gt; &gt;&gt; am not able to figure out how to add<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Greetings &amp; Regards,<br>
&gt;&gt; &gt;&gt; Swaroop<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Rudolf J. Streif<br>
&gt;&gt; &gt; Director of Embedded Solutions<br>
&gt;&gt; &gt; The Linux Foundation<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">=
rudolf.streif@linux.com</a><br>
&gt;&gt; &gt; Phone: <a href=3D"tel:%2B1.619.631.5383" value=3D"+1619631538=
3" target=3D"_blank">+1.619.631.5383</a><br>
&gt;&gt; &gt; Skype: rudolfstreif<br>
&gt;&gt; &gt; PGP: RSA 2048/2048 D6E7D28B<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Linux Foundation Events Schedule: =A0<a href=3D"http://events=
.linuxfoundation.org" target=3D"_blank">events.linuxfoundation.org</a><br>
&gt;&gt; &gt; Linux Foundation Training Schedule: <a href=3D"http://trainin=
g.linuxfoundation.org" target=3D"_blank">training.linuxfoundation.org</a><b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
--=A0<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b=
></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embedd=
ed Solutions</font></div>




<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>




<div><font face=3D"arial, helvetica, sans-serif">Phone: <a href=3D"tel:%2B1=
.619.631.5383" value=3D"+16196315383" target=3D"_blank">+1.619.631.5383</a>=
</font></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolf=
streif</font></div>



<div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 2048/2048 D6E7D28=
B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>




Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>




</span></font></div>
</div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</div></blockquote><blockquote type=3D"cite"><div><span>___________________=
____________________________</span><br><span>yocto mailing list</span><br><=
span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a></span><br>


<span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_=
blank">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></=
blockquote></div></div></div></div></div></div><br>________________________=
_______________________<br>



yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br>--=A0<br><font face=
=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><div><font =
face=3D"arial, helvetica, sans-serif">Director of Embedded Solutions</font>=
</div>

<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>

<div><font face=3D"arial, helvetica, sans-serif">Phone: <a href=3D"tel:%2B1=
.619.631.5383" value=3D"+16196315383" target=3D"_blank">+1.619.631.5383</a>=
</font></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolf=
streif</font></div>
<div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 2048/2048 D6E7D28=
B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>

Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>

</span></font></div>
</div>
</div></div></blockquote></div><br></div>

--20cf3078133ce59bbe04d6aff189--
