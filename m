Return-Path: <wutengss@gmail.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A14CEE007EB
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 05:34:07 -0800 (PST)
Received: by mail-ve0-f174.google.com with SMTP id pa12so7739843veb.5
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 05:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Lru+U11VAKiHH0MgL0eSSMtF2T+b4a70HraVYlCL6OQ=;
	b=02T0ygLWSXiRsd+oqY01IVN2C7J1WqCXB0zCyOXjvHM2XWPGupX+hv6ezXKHJEpH7A
	nbI1tNXw66ZpjAQvGRM2+Ysya6ZEgdOpP118og9Ivc0CuqpXsWLhle72zqY/QNYnX5FT
	XGqev2ATq/ydGGTpuBYuzMZ6aBHT+5oSpekBuDgRtw0sqkEWjENE3tH4hhAxx6R/Dz7Q
	zjqJIg7u812nouBVKwHL2Q+W2e6a3NPmpn27bSwk1cibkGFup1KFtq7AIvH1v/PZYYy+
	qLgboyDWZUWiW+MSWZpuPJjGZzWaGI1p3Wk71Nr/Sll07DKHwrGu3//GbqQ2G31+5vQ6
	xwxA==
MIME-Version: 1.0
X-Received: by 10.58.108.196 with SMTP id hm4mr2167272veb.28.1388756047572;
	Fri, 03 Jan 2014 05:34:07 -0800 (PST)
Received: by 10.52.37.39 with HTTP; Fri, 3 Jan 2014 05:34:07 -0800 (PST)
In-Reply-To: <CAOJdAdVekJ6VV5ea=ZfQJsBSb4YwTUnWG1r_swBVyoWaBfb8pg@mail.gmail.com>
References: <CAOJdAdVfPGaSMcvB7-8LJ=oYDKwi1j_oKRbChNXGzwGV+zfT=Q@mail.gmail.com>
	<2898237.6VA6PFO9Mg@koontz>
	<CAOJdAdVekJ6VV5ea=ZfQJsBSb4YwTUnWG1r_swBVyoWaBfb8pg@mail.gmail.com>
Date: Fri, 3 Jan 2014 15:34:07 +0200
Message-ID: <CAOJdAdX0O9bE1+9ovwNy-ySA-oXaHktNOTHm6EYajE+eWHFfRw@mail.gmail.com>
From: wuteng wu <wutengss@gmail.com>
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>
Cc: yocto@yoctoproject.org
Subject: Re: CAN bus protocol error
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
X-List-Received-Date: Fri, 03 Jan 2014 13:34:10 -0000
Content-Type: multipart/alternative; boundary=001a11c3b4ace5351a04ef10f686

--001a11c3b4ace5351a04ef10f686
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

I think i have just found where to do the configure, under the dir:
/poky/meta-atmel/recipes-kernel/linux/files/sama5d3xek, i will try out your
config file, thanks alot.


2014/1/3 wuteng wu <wutengss@gmail.com>

> Hi, could you tell me how to clean and rebuild the kernel?
> I'm newbie to yocto, i have done something like linux-menuconfig when i
> used the build-root, bu which i can config the kernel configuration, but =
i
> don't know how to do it in yocto, at least i didn't find any reference in
> ref-manual.
>
>
> 2014/1/3 S=F8ren Holm <sgh@sgh.dk>
>
>> Hi Wuteng
>>
>> I've attached a working defconfig for you to look at.
>>
>> But it seems alright what you are doing. Have you tried doing a cleanall
>> to
>> ensure a complete rebuild with your configuration?
>>
>> Fredag den 3. januar 2014 15:11:56 skrev wuteng wu:
>> > Hi,
>> >
>> > I have cross compiled the canutils and installed it into the target
>> rootfs,
>> > but when i tried to test the CAN bus by using the candump command as
>> below:
>> >
>> > candump can0
>> > interface =3D can0, family =3D 29, type =3D 3, proto =3D 1
>> > *socket: Protocol not supported*
>> >
>> > I got the "socket: Protocol not supported" error msg, i have searched
>> and
>> > found the related solution somewhere said that the 'can-raw protocol
>> > module' need to be included into the kernel. but how should i do that =
in
>> > yocto ?
>> >
>> > the needed driver has to be loaded by executing the commands:
>> >
>> >
>> >
>> >
>> > *modprobe canmodprobe can-devmodprobe can-raw*
>> >
>> > but only the module can is build-in.
>> >
>> > It might be possible that the can-dev is also necessary.
>> >
>> > anyone have experience to share with me ?
>> >
>>
>> --
>> S=F8ren Holm
>
>
>

--001a11c3b4ace5351a04ef10f686
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I think i have just found where=
 to do the configure, under the dir: /poky/meta-atmel/recipes-kernel/linux/=
files/sama5d3xek, i will try out your config file, thanks alot.<br></div></=
div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014/1/3 wute=
ng wu <span dir=3D"ltr">&lt;<a href=3D"mailto:wutengss@gmail.com" target=3D=
"_blank">wutengss@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<div dir=3D"ltr"><div>Hi, could you tell me how to clean and rebuild the ke=
rnel? <br></div>I&#39;m newbie to yocto, i have done something like linux-m=
enuconfig when i used the build-root, bu which i can config the kernel conf=
iguration, but i don&#39;t know how to do it in yocto, at least i didn&#39;=
t find any reference in ref-manual.<br>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">2014/1/3 S=F8ren Holm <span dir=3D"ltr">&l=
t;<a href=3D"mailto:sgh@sgh.dk" target=3D"_blank">sgh@sgh.dk</a>&gt;</span>=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">

Hi Wuteng<br>
<br>
I&#39;ve attached a working defconfig for you to look at.<br>
<br>
But it seems alright what you are doing. Have you tried doing a cleanall to=
<br>
ensure a complete rebuild with your configuration?<br>
<br>
Fredag den 3. januar 2014 15:11:56 skrev wuteng wu:<br>
<div>&gt; Hi,<br>
&gt;<br>
&gt; I have cross compiled the canutils and installed it into the target ro=
otfs,<br>
&gt; but when i tried to test the CAN bus by using the candump command as b=
elow:<br>
&gt;<br>
&gt; candump can0<br>
&gt; interface =3D can0, family =3D 29, type =3D 3, proto =3D 1<br>
</div>&gt; *socket: Protocol not supported*<br>
<div>&gt;<br>
&gt; I got the &quot;socket: Protocol not supported&quot; error msg, i have=
 searched and<br>
&gt; found the related solution somewhere said that the &#39;can-raw protoc=
ol<br>
&gt; module&#39; need to be included into the kernel. but how should i do t=
hat in<br>
&gt; yocto ?<br>
&gt;<br>
&gt; the needed driver has to be loaded by executing the commands:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div>&gt; *modprobe canmodprobe can-devmodprobe can-raw*<br>
<div><div>&gt;<br>
&gt; but only the module can is build-in.<br>
&gt;<br>
&gt; It might be possible that the can-dev is also necessary.<br>
&gt;<br>
&gt; anyone have experience to share with me ?<br>
&gt;<br>
<br>
</div></div><span><font color=3D"#888888">--<br>
S=F8ren Holm</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c3b4ace5351a04ef10f686--
