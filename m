Return-Path: <brduffy@gmail.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83127E017EC
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 16:22:04 -0800 (PST)
Received: by mail-ve0-f169.google.com with SMTP id jy13so199921veb.0
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 16:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gHFHfRjA41FBmZAnvk2ct2kheUPydZA/z1yTkdBNvdU=;
	b=KjoysTtGufUoEwFawJv1hGcBEXqxe2aS8MOFOiVSNa4m/z0nX4lBUxLXR6rq7A6u9t
	1pAVT4zNEb45mfF1Q31XU91EAeHCqM81qMQyuBHqpX2MFhCEXeTYcT3fIY5dJRB/w7MH
	gTzgFIw+yi3pXVgQPzdP2iEJx3Jd6kWpmxthX5dCdCkOr3W7Kz5Ar4qbJaebVhDVUUdW
	miLutSHlT5JSHFaagnw3eJEeBWyKqVPoFjeHbUsvZqxZPKq9+UVWZaxmZUZijkYH0gJb
	iksCcGmENpe8+TvxV9HQ1ghTAe4CmrOG0W4/8Fgn4Q3pb7Xzug2rWi29w0dkxqp2ho3b
	QVGQ==
MIME-Version: 1.0
X-Received: by 10.52.26.69 with SMTP id j5mr3716691vdg.21.1383783723718; Wed,
	06 Nov 2013 16:22:03 -0800 (PST)
Received: by 10.220.203.200 with HTTP; Wed, 6 Nov 2013 16:22:03 -0800 (PST)
In-Reply-To: <4C79E62053892D47A6419B29F941677A6E61B40B@EXMBX203A.mmeprod.cbeyond>
References: <4C79E62053892D47A6419B29F941677A6E61B40B@EXMBX203A.mmeprod.cbeyond>
Date: Wed, 6 Nov 2013 19:22:03 -0500
Message-ID: <CAHrDPkp6j_JKc8Z0G1mBAHg3bnZyqM3WUa+LXq0NWXde+h41iA@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: Andy Gikling <agikling@lasx.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: My first Yocto Project
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
X-List-Received-Date: Thu, 07 Nov 2013 00:22:11 -0000
Content-Type: multipart/alternative; boundary=20cf307f32464c5dc904ea8b4158

--20cf307f32464c5dc904ea8b4158
Content-Type: text/plain; charset=ISO-8859-1

Great, I'll give meta-nuc a shot. I need to learn about things first, but
it is nice to have a plan and some hope that I can make something work
before buying the hardware. Thanks for your help everyone.


On Wed, Nov 6, 2013 at 7:02 PM, Andy Gikling <agikling@lasx.com> wrote:

> >> Brian,
> >>
> >> Yes the meta-intel x86-64 should work.  I wouldn't count on the
> infrared working out of the box though.  Chances are getting the
> appropriated graphics drivers to work with Yocto will also be difficult and
> probably won't work out of the box.  All the NUC's peripherals might work
> if you install Ubuntu - but I'd even give that a 40% chance of failing to
> support everything you need for your home theater computer.
> >>
> >> If this is your first go at Yocto, I'd try getting the build system to
> run on an older x86 computer that you're not interested in using as your
> home theater PC.  Otherwise you're going to probably get frustrated if/when
> Yocto doesn't totally support the NUC...
> >>
>
> >Or you could try the Yocto NUC BSP:
>
> >http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-nuc
>
> >I don't know about IR, but everything else works fine out of the box,
> including graphics.
>
> >Tom
>
> First of all, sorry for top-posting in my last response!
> Tom, I had no idea there was a NUC BSP - very cool.
> Brian, if you get a NUC Yocto should have full support for it with the NUC
> BSP - try it out!
>
> ~Andy
>
> >> But if you're not planning on this being a home theater PC, by all
> means, have at it!  If Yocto has issues now, many of them will get fixed
> eventually as more of the NUC devices come online.
> >>
> >> Just my 2 cents.
> >>
> >> ~Andy Gikling
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Duff

--20cf307f32464c5dc904ea8b4158
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great, I&#39;ll give meta-nuc a shot. I need to learn abou=
t things first, but it is nice to have a plan and some hope that I can make=
 something work before buying the hardware. Thanks for your help everyone.<=
/div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Nov 6=
, 2013 at 7:02 PM, Andy Gikling <span dir=3D"ltr">&lt;<a href=3D"mailto:agi=
kling@lasx.com" target=3D"_blank">agikling@lasx.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
&gt;&gt; Brian,<br>
&gt;&gt;<br>
&gt;&gt; Yes the meta-intel x86-64 should work. =A0I wouldn&#39;t count on =
the infrared working out of the box though. =A0Chances are getting the appr=
opriated graphics drivers to work with Yocto will also be difficult and pro=
bably won&#39;t work out of the box. =A0All the NUC&#39;s peripherals might=
 work if you install Ubuntu - but I&#39;d even give that a 40% chance of fa=
iling to support everything you need for your home theater computer.<br>

&gt;&gt;<br>
&gt;&gt; If this is your first go at Yocto, I&#39;d try getting the build s=
ystem to run on an older x86 computer that you&#39;re not interested in usi=
ng as your home theater PC. =A0Otherwise you&#39;re going to probably get f=
rustrated if/when Yocto doesn&#39;t totally support the NUC...<br>

&gt;&gt;<br>
<br>
&gt;Or you could try the Yocto NUC BSP:<br>
<br>
&gt;<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/me=
ta-nuc" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-in=
tel/tree/meta-nuc</a><br>
<br>
&gt;I don&#39;t know about IR, but everything else works fine out of the bo=
x, including graphics.<br>
<br>
&gt;Tom<br>
<br>
First of all, sorry for top-posting in my last response!<br>
Tom, I had no idea there was a NUC BSP - very cool.<br>
Brian, if you get a NUC Yocto should have full support for it with the NUC =
BSP - try it out!<br>
<br>
~Andy<br>
<br>
&gt;&gt; But if you&#39;re not planning on this being a home theater PC, by=
 all means, have at it! =A0If Yocto has issues now, many of them will get f=
ixed eventually as more of the NUC devices come online.<br>
&gt;&gt;<br>
&gt;&gt; Just my 2 cents.<br>
&gt;&gt;<br>
&gt;&gt; ~Andy Gikling<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Duff
</div>

--20cf307f32464c5dc904ea8b4158--
