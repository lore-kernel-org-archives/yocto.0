Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E292AE00992; Thu, 30 Apr 2015 04:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E11FE007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 04:11:55 -0700 (PDT)
Received: by widdi4 with SMTP id di4so14868995wid.0
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 04:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=M1cHm4Ry1lOFdteAwJZCHELMqWIZVjWX5OV6FjyXpno=;
	b=en0AaJgKjlWFJz9bCvy2jPNuuMhNP8/MSpHgpUysSqsOBseOdKY77hFmV8ZCVCx5uv
	f6DhVHv5o4CL+z8aPUxMz8vLYFoYOs8SJHS1PutQjGPlCXy/4HSKKmdSXH83xGuMC/4p
	FPa+conpRSVwRWe3/gsXXK+bbEvkIcoVbPLQ0duc6kc/wc2KCVdajv0T1ydIUCKMv+PU
	8j+4BZ+3eqscfDcy+1uFjPuAy3fB7gl83U0ikTrOVlhtepS3hKONNOUW8NxCxv0Ioy86
	sn1RXSMMmfa6zShmVLZ6uH5ztVebZyTeUeskDwBwFvhsydtNMJ95FNfEAOAV5c3RsXPs
	TBHQ==
X-Gm-Message-State: ALoCoQkBogQGFJ64TZLB9oTqEdHG2jhurSw2X5TMIwtLgHXjXnZpB6hWFXQKOvaEWheGQp7xcPL7
X-Received: by 10.180.14.135 with SMTP id p7mr4303878wic.8.1430392313606; Thu,
	30 Apr 2015 04:11:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.136 with HTTP; Thu, 30 Apr 2015 04:11:32 -0700 (PDT)
X-Originating-IP: [2a02:8108:943f:e738:224:d7ff:feb4:a550]
In-Reply-To: <552BB2C6.6040001@mlbassoc.com>
References: <552BB2C6.6040001@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Apr 2015 13:11:32 +0200
Message-ID: <CAK18fxHadZWN6nxj6R8DpQhEN86jRjEj6Y-f_b0wbXhOfttT=g@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] virtual/libgles1
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
X-List-Received-Date: Thu, 30 Apr 2015 11:11:59 -0000
Content-Type: multipart/alternative; boundary=f46d040fa1d0be15660514ef29f7

--f46d040fa1d0be15660514ef29f7
Content-Type: text/plain; charset=UTF-8

Hello Gary,

I see that rpi doesn't provide gles1 in none of the graphics providers. So
the only solution that I see for now is to have a new recipe (similar to
mesa-gl) which will provide only gles1. Or, we can bbappend mesa to be used
and provide only gles1 (this could be pretty hacky).

Cheers!

On Mon, Apr 13, 2015 at 2:12 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> How can I get virtual/libgles1 on the RaspberryPi?  libgles2
> is provided by "userland" but that package does not provide
> libgles1.  If I add a dependency on libgles1 (e.g. libva),
> then there is a conflict which tries to install both mesa
> and mesa-gl.
>
> Looking for ideas...
>
> Thanks
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--f46d040fa1d0be15660514ef29f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Gary,<div><br></div><div>I see that rpi doesn&#39;t =
provide gles1 in none of the graphics providers. So the only solution that =
I see for now is to have a new recipe (similar to mesa-gl) which will provi=
de only gles1. Or, we can bbappend mesa to be used and provide only gles1 (=
this could be pretty hacky).=C2=A0</div><div><br></div><div>Cheers!</div></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Apr 1=
3, 2015 at 2:12 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gar=
y@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">How can I get virtual/libgles1 on the Rasp=
berryPi?=C2=A0 libgles2<br>
is provided by &quot;userland&quot; but that package does not provide<br>
libgles1.=C2=A0 If I add a dependency on libgles1 (e.g. libva),<br>
then there is a conflict which tries to install both mesa<br>
and mesa-gl.<br>
<br>
Looking for ideas...<br>
<br>
Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v style=3D"text-align:center"></div><div style=3D"text-align:center"><div a=
lign=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51=
,51);text-align:center">Andrei Gherzan</b><br></div><div align=3D"left"><b =
style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:c=
enter">e: </b><span style=3D"font-family:Arial;font-size:small;color:rgb(51=
,51,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"left"><span=
 style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:=
center"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" target=3D"_blank=
">www.gherzan.ro</a></span></div></div></div></div></div></div>
</div>

--f46d040fa1d0be15660514ef29f7--
