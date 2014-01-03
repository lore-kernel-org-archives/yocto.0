Return-Path: <wutengss@gmail.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF9DE007E6
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 05:29:33 -0800 (PST)
Received: by mail-ve0-f173.google.com with SMTP id oz11so7807527veb.4
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 05:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/2vM+Qz6y5OPQIPdAdXzZfsI1FNI1891bGvFQSywtIc=;
	b=fmILM7Ob6/54Nn43VohJGDwUR2kWBwqH2PIX3/Shrf0oEKdvVZlGPkyRWdAtsGS803
	8D7EYB7NBtzP4tPJWr5Cfh4qLxLbc8n+Dx/IG7ayFuf0lCs+U7pGy8pGULUpXuZ2Nk2I
	w6gp0DhnkAgS8jpO52LtUTj+HnUye/o/PBSOMavyPHOMNhmExDXoVYfxsFQxZoqTuf60
	K379fpzIL7KhqP7OO/uSpgwdJplUNVv1lp4Z7VPoTWD+53uDQoHWdHAZOtbzYsA+cCbR
	PIP1dcB/j1ZSnSXUnbToNuBuJMRgkdzyEDbT2cA2kyqsMXPlSkJwWBkokVfMpwKnICml
	9luQ==
MIME-Version: 1.0
X-Received: by 10.58.223.137 with SMTP id qu9mr29701975vec.10.1388755772305;
	Fri, 03 Jan 2014 05:29:32 -0800 (PST)
Received: by 10.52.37.39 with HTTP; Fri, 3 Jan 2014 05:29:32 -0800 (PST)
In-Reply-To: <2898237.6VA6PFO9Mg@koontz>
References: <CAOJdAdVfPGaSMcvB7-8LJ=oYDKwi1j_oKRbChNXGzwGV+zfT=Q@mail.gmail.com>
	<2898237.6VA6PFO9Mg@koontz>
Date: Fri, 3 Jan 2014 15:29:32 +0200
Message-ID: <CAOJdAdVekJ6VV5ea=ZfQJsBSb4YwTUnWG1r_swBVyoWaBfb8pg@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Jan 2014 13:29:33 -0000
Content-Type: multipart/alternative; boundary=089e011835447cfb2104ef10e68d

--089e011835447cfb2104ef10e68d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi, could you tell me how to clean and rebuild the kernel?
I'm newbie to yocto, i have done something like linux-menuconfig when i
used the build-root, bu which i can config the kernel configuration, but i
don't know how to do it in yocto, at least i didn't find any reference in
ref-manual.


2014/1/3 S=F8ren Holm <sgh@sgh.dk>

> Hi Wuteng
>
> I've attached a working defconfig for you to look at.
>
> But it seems alright what you are doing. Have you tried doing a cleanall =
to
> ensure a complete rebuild with your configuration?
>
> Fredag den 3. januar 2014 15:11:56 skrev wuteng wu:
> > Hi,
> >
> > I have cross compiled the canutils and installed it into the target
> rootfs,
> > but when i tried to test the CAN bus by using the candump command as
> below:
> >
> > candump can0
> > interface =3D can0, family =3D 29, type =3D 3, proto =3D 1
> > *socket: Protocol not supported*
> >
> > I got the "socket: Protocol not supported" error msg, i have searched a=
nd
> > found the related solution somewhere said that the 'can-raw protocol
> > module' need to be included into the kernel. but how should i do that i=
n
> > yocto ?
> >
> > the needed driver has to be loaded by executing the commands:
> >
> >
> >
> >
> > *modprobe canmodprobe can-devmodprobe can-raw*
> >
> > but only the module can is build-in.
> >
> > It might be possible that the can-dev is also necessary.
> >
> > anyone have experience to share with me ?
> >
>
> --
> S=F8ren Holm

--089e011835447cfb2104ef10e68d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, could you tell me how to clean and rebuild the ke=
rnel? <br></div>I&#39;m newbie to yocto, i have done something like linux-m=
enuconfig when i used the build-root, bu which i can config the kernel conf=
iguration, but i don&#39;t know how to do it in yocto, at least i didn&#39;=
t find any reference in ref-manual.<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014/1/=
3 S=F8ren Holm <span dir=3D"ltr">&lt;<a href=3D"mailto:sgh@sgh.dk" target=
=3D"_blank">sgh@sgh.dk</a>&gt;</span><br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi Wuteng<br>
<br>
I&#39;ve attached a working defconfig for you to look at.<br>
<br>
But it seems alright what you are doing. Have you tried doing a cleanall to=
<br>
ensure a complete rebuild with your configuration?<br>
<br>
Fredag den 3. januar 2014 15:11:56 skrev wuteng wu:<br>
<div class=3D"im">&gt; Hi,<br>
&gt;<br>
&gt; I have cross compiled the canutils and installed it into the target ro=
otfs,<br>
&gt; but when i tried to test the CAN bus by using the candump command as b=
elow:<br>
&gt;<br>
&gt; candump can0<br>
&gt; interface =3D can0, family =3D 29, type =3D 3, proto =3D 1<br>
</div>&gt; *socket: Protocol not supported*<br>
<div class=3D"im">&gt;<br>
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
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; but only the module can is build-in.<br>
&gt;<br>
&gt; It might be possible that the can-dev is also necessary.<br>
&gt;<br>
&gt; anyone have experience to share with me ?<br>
&gt;<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
S=F8ren Holm</font></span></blockquote></div><br></div>

--089e011835447cfb2104ef10e68d--
