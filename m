Return-Path: <swaroop@weisser.at>
Received: from smtp02.udag.de (smtp02.udag.de [89.31.137.30])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 13F4FE006C3
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 02:10:47 -0800 (PST)
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by smtp02.udag.de (Postfix) with ESMTPSA id 32F3F36F0
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 11:10:44 +0100 (CET)
Received: by mail-ve0-f174.google.com with SMTP id pb11so7711680veb.5
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 02:10:43 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.52.30.48 with SMTP id p16mr27141747vdh.118.1361441443796;
	Thu, 21 Feb 2013 02:10:43 -0800 (PST)
Received: by 10.58.155.102 with HTTP; Thu, 21 Feb 2013 02:10:43 -0800 (PST)
In-Reply-To: <CABTzgQ7tS7+_64urm7NRBmXN+KT8M7W+8QOareJxOtXwfWt0Og@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
	<CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
	<CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
	<CAFyqS9q3q+Ep2z2Ygk4oN5pS13DHnV0abQ3BvzV3-mq=HqBrJw@mail.gmail.com>
	<CABTzgQ6WrhzcQ4KKBG7Q3bMsgf8-uijzshHSv2FyCajHpiy-5Q@mail.gmail.com>
	<CABTzgQ7tS7+_64urm7NRBmXN+KT8M7W+8QOareJxOtXwfWt0Og@mail.gmail.com>
Date: Thu, 21 Feb 2013 11:10:43 +0100
Message-ID: <CABTzgQ54dEyDrbND5Kfy6M4mAGMoyU236V1dOZvW8oLVBWFyzg@mail.gmail.com>
From: Satya Swaroop DAMARLA <swaroop@weisser.at>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
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
X-List-Received-Date: Thu, 21 Feb 2013 10:10:48 -0000
Content-Type: multipart/alternative; boundary=20cf307f3b2ca3d79004d6394962

--20cf307f3b2ca3d79004d6394962
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Guys,

I have not received any reply from you. If you can help me to figure out
what the errors mean when adding a new .bb or recipe file then I can learn
the mistake and take care in the new recipes.... I request your time


On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <
swaroop.damarla@gmail.com> wrote:

> hey Guys... I get the following error... which I attached.. Its completel=
y
> greek and latin to me.. Can you please help me..
>
>
> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop DAMARLA <swaroop@weisser.a=
t
> > wrote:
>
>> hey Guys... I get the following error... which I attached.. Its
>> completely greek and latin to me.. Can you please help me..
>>
>>
>> On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m>wrote:
>>
>>> On Wed, Feb 20, 2013 at 6:12 PM, Satya Swaroop Damarla
>>> <swaroop.damarla@gmail.com> wrote:
>>> > Hey hans, this is what he meant,
>>> >
>>> > In the machine config file add the following
>>> >
>>> > PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or PREFERRED_VERSION_u-boo=
t ?=3D
>>> > "v2013.01.01%"
>>> >
>>> > By the way did you already complete the first part... There is also
>>> other
>>> > file called "u-boot-fw-utils_2012.04.01.bb" ... I think we should do
>>> the
>>> > same...
>>> >
>>> > Hans bytheway,  are you also working on the same board or diffferent
>>> board
>>> > with same problem?
>>> >
>>>
>>> Different board, same core, similar problem ;)
>>> Now I get it. Thanks. But still question remains how in earth I
>>> managed to build the kernel if not also having copied/renamed the
>>> mkimage .bb?
>>> Is the PREFERRED_VERSION_u-boot used to determine what mkimage and fw
>>> utils it picks up?
>>> Then it might be that since I/we build u-boot as a separate package,
>>> but kernel lifts in the mkimage stuff, it works but the wrong package
>>> was used.
>>> In my case obviously compatible, but not recommended I guess. Also, I
>>> agree that the fw utils should probably be in sync similar to mkimage.
>>>
>>> Hans
>>>
>>> >
>>> >
>>> >
>>> >
>>> >
>>> > On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus <
>>> hans.beckerus@gmail.com>
>>> > wrote:
>>> >>
>>> >> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
>>> >> <rstreif@linuxfoundation.org> wrote:
>>> >> > Satya,
>>> >> >
>>> >> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot such =
as
>>> >> > u-boot_2012.04.01.bb. You can simply copy it and name it
>>> >> > u-boot_2013.01.bb
>>> >> > and then modify SRCREV to the revision that corresponds to the tag
>>> >> > 2013.01
>>> >> > or 2013.01.01 in git.denx.de:
>>> >> >
>>> >> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
>>> >> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>>> >> >
>>> >> > Do the same for u-boot-mkimage and include the u-boot version with
>>> your
>>> >> > bsp.
>>> >> >
>>> >> > Rudi
>>> >> >
>>> >> >
>>> >> Hi Rudi, sorry to chime in , but I have a similar problem but do not
>>> >> really get the last thing you said.
>>> >> What do you mean by including the u-boot version in the bsp? Also is
>>> >> it a must to also copy the mkimage .bb or will the system find a
>>> >> suitable one automatically?
>>> >> The thing is that I only copied/edited the u-boot .bb but never the
>>> >> mkimage. Still my kernel successfully builds the kernel uImage!?
>>> >> Some magic that I have missed :)
>>> >>
>>> >> Hans
>>> >>
>>> >>
>>> >> > On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
>>> >> > <swaroop.damarla@gmail.com> wrote:
>>> >> >>
>>> >> >> Hi Guys,
>>> >> >>
>>> >> >> I need support for uboot on Tamonten board but the version on it =
is
>>> >> >> v2012.04 but I came to know that v2012.10 or v2013.01 supports th=
e
>>> >> >> Tamontenboard through some guys here..
>>> >> >>
>>> >> >> It would be great if you can tell me how can I accomplish v2013.0=
1
>>> or
>>> >> >> v2012.10 into the build system and make it available so that I ca=
n
>>> >> >> compile
>>> >> >> the and get uImage
>>> >> >>
>>> >> >> (Tamonten board is a derivative of harmony board with some change=
s
>>> and
>>> >> >> has
>>> >> >> arm cortexa9 processor without neon extentions )
>>> >> >>
>>> >> >> I am kind of new to add new .bb files and help is really
>>> appreciated as
>>> >> >> I
>>> >> >> am not able to figure out how to add
>>> >> >>
>>> >> >> Greetings & Regards,
>>> >> >> Swaroop
>>> >> >>
>>> >> >> _______________________________________________
>>> >> >> yocto mailing list
>>> >> >> yocto@yoctoproject.org
>>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>>> >> >>
>>> >> >
>>> >> >
>>> >> >
>>> >> > --
>>> >> > --
>>> >> > Rudolf J. Streif
>>> >> > Director of Embedded Solutions
>>> >> > The Linux Foundation
>>> >> >
>>> >> > rudolf.streif@linux.com
>>> >> > Phone: +1.619.631.5383
>>> >> > Skype: rudolfstreif
>>> >> > PGP: RSA 2048/2048 D6E7D28B
>>> >> >
>>> >> > Linux Foundation Events Schedule:  events.linuxfoundation.org
>>> >> > Linux Foundation Training Schedule: training.linuxfoundation.org
>>> >> >
>>> >> >
>>> >> > _______________________________________________
>>> >> > yocto mailing list
>>> >> > yocto@yoctoproject.org
>>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>> >> >
>>> >
>>> >
>>>
>>
>>
>

--20cf307f3b2ca3d79004d6394962
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Guys,<div><br></div><div style>I have not received a=
ny reply from you. If you can help me to figure out what the errors mean wh=
en adding a new .bb or recipe file then I can learn the mistake and take ca=
re in the new recipes.... I request your time=A0</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.damarla@g=
mail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im HOEnZb"><div dir=3D"ltr"><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">hey Guys... I get=
 the following error... which I attached.. Its completely greek and latin t=
o me.. Can you please help me..</span><br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_ext=
ra">
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

--20cf307f3b2ca3d79004d6394962--
