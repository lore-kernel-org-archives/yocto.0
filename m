Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDA4AE00D35; Thu,  2 May 2019 10:45:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B7F3E00AD5
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 10:45:21 -0700 (PDT)
Received: by mail-ed1-f66.google.com with SMTP id b8so2847965edm.11
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 10:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8JS5XyfmZy8pMt0VEDFVTtzZpaCybtScCGxFqbDIn1U=;
	b=TFO0rYx5M0UiZ8XzEqtuT/onasbqChlmnXjbHDu3AimWv4QP4Aoy7sA0ySYlB9ByUk
	4/uMUkHIB2WqN38uU3gLdvX50w8s6tKub0w3SbeLunPUpe9alCuapsaTH9SmmV3JZiuN
	DK8yh6zNS3zvP8vlVX1ZB0RNIb39PA0nDeXNuyq47x/860Htk54A97G47EG59t/YPOsG
	7FB2UdAKkP2N+boLa/WIejYNSLXV0r7UCDe4sa3aD96Ecb8B9POjoHTRH4x08fveSE4K
	qIHN9mJgDtEXfuPe+Q7TdAv9QypIAJNUDI/UgcZN+R60hqGVjLWJ7PHTAGROl9mAFb4Z
	wwBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8JS5XyfmZy8pMt0VEDFVTtzZpaCybtScCGxFqbDIn1U=;
	b=srjwXw2NWVtkw9WTk2BZnmHW6cqoZJhQDEyYoIpFRyqSUsMmmotrJlJbUd7LCy3rpI
	7yFabp5j6bza6ZDnSF6IwujKTJtkWUaZ9k35I/EK9oqIexeGQRWR09VDoCa0mzlg4pax
	IgAXa7gaUemYMGKJ46IrG+7EfY8vsWLynrK2FyKSa5Low1h1AMl8pp4w9DuVbsgTAICR
	HDDky91LlJga5qWkNmAmUHNi2cPhksNIy96oi4h/lBJ3gu9lWEWjzCHjG/KPzpu2mNnC
	t91VvFulSHdd7kq/q27+cmrg4OyzLxLVoHPsazS655TZY5N6fxNB+G54C0HQAmmkDQZK
	mvPg==
X-Gm-Message-State: APjAAAWXY7qgNsWcd5pvFt2dYTMPjNAdyDmMX3ucbd7CCpIlz5E3hl7q
	6maUyGebSWp59YK31K7/G1fY0vJJjA3Rd+EEahc=
X-Google-Smtp-Source: APXvYqz2QBGcubCi7tU6ugqRyN23weOA+aBV4TO0WIeyCnWE30ZYKm0nY31pNG39m3QMu5+7mBS6jzAvHBfnY+erc2g=
X-Received: by 2002:a50:c315:: with SMTP id a21mr3419202edb.158.1556819120691; 
	Thu, 02 May 2019 10:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1905020916480.10974@localhost.localdomain>
	<6e58005a-83b4-a7dc-d5dd-c1533fc29ad8@mvista.com>
In-Reply-To: <6e58005a-83b4-a7dc-d5dd-c1533fc29ad8@mvista.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 2 May 2019 10:45:09 -0700
Message-ID: <CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bsp-guide: replace meta-intel with meta-xilinx as container layer
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
X-List-Received-Date: Thu, 02 May 2019 17:45:22 -0000
Content-Type: multipart/alternative; boundary="000000000000ab21a80587eb3269"

--000000000000ab21a80587eb3269
Content-Type: text/plain; charset="UTF-8"

The term "Container Layer" was put in the ref-manual by me to describe a
"meta-*" layer that had other "meta-*" layers (see
https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer
and the term "Container Layer").  Maybe this was never a good term?  I
don't know.  Nobody has said anything about that term for many releases.

The problem Robert points out needs to be fixed in the BSP manual as
"meta-intel" is not longer qualifying by my definition.  I can fix that.

Is "Container Layer" ok as I have defined it?

Thanks,
Scott

On Thu, May 2, 2019 at 10:21 AM akuster <akuster@mvista.com> wrote:

>
>
> On 5/2/19 6:19 AM, Robert P. J. Day wrote:
> > As meta-intel is no longer a container layer, use meta-xilinx as
> > an example instead.
>
> I thought "meta-virtualization" was a container layer?
>
> IMHO, a BSP should only deal with getting a MACHINE booted.
>
> - armin
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> > diff --git a/documentation/bsp-guide/bsp.xml
> b/documentation/bsp-guide/bsp.xml
> > index 0bb0b68ab..a53ff6bce 100644
> > --- a/documentation/bsp-guide/bsp.xml
> > +++ b/documentation/bsp-guide/bsp.xml
> > @@ -146,18 +146,15 @@
> >
> >      <para>
> >          Some layers function as a layer to hold other BSP layers.
> > -        These layers are knows as
> > +        These layers are known as
> >          "<ulink
> url='&YOCTO_DOCS_REF_URL;#term-container-layer'>container layers</ulink>".
> >          An example of this type of layer is the
> > -        <filename>meta-intel</filename> layer.
> > -        This layer contains BSP layers for the Intel-core2-32
> > -        <trademark class='registered'>Intel</trademark> Common Core
> > -        (Intel-core2-32) and the Intel-corei7-64
> > -        <trademark class='registered'>Intel</trademark> Common Core
> > -        (Intel-corei7-64).
> > -        the <filename>meta-intel</filename> layer also contains
> > -        the <filename>common/</filename> directory, which contains
> > -        common content across those layers.
> > +        <filename>meta-xilinx</filename> layer.
> > +        This container layer contains some basic top-level information,
> > +        as well as three actual Xilinx-related BSP layers,
> > +        <filename>meta-xilinx-bsp</filename>,
> > +        <filename>meta-xilinx-contrib</filename>, and
> > +        <filename>meta-xilinx-standalone</filename>.
> >      </para>
> >
> >      <para>
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ab21a80587eb3269
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The term &quot;Container Layer&quot; was =
put in the ref-manual by me to describe a &quot;meta-*&quot; layer that had=
 other &quot;meta-*&quot; layers (see <a href=3D"https://www.yoctoproject.o=
rg/docs/2.7/ref-manual/ref-manual.html#term-container-layer">https://www.yo=
ctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer</a>=
 and the term &quot;Container Layer&quot;).=C2=A0 Maybe this was never a go=
od term?=C2=A0 I don&#39;t know.=C2=A0 Nobody has said anything about that =
term for many releases.=C2=A0 <br></div><div dir=3D"ltr"><br></div><div>The=
 problem Robert points out needs to be fixed in the BSP manual as &quot;met=
a-intel&quot; is not longer qualifying by my definition.=C2=A0 I can fix th=
at.=C2=A0 <br></div><div><br></div><div>Is &quot;Container Layer&quot; ok a=
s I have defined it?</div><div><br></div><div>Thanks, <br></div><div>Scott<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, May 2, 2019 at 10:21 AM akuster &lt;<a href=3D"mailto:akus=
ter@mvista.com">akuster@mvista.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><br>
<br>
On 5/2/19 6:19 AM, Robert P. J. Day wrote:<br>
&gt; As meta-intel is no longer a container layer, use meta-xilinx as<br>
&gt; an example instead.<br>
<br>
I thought &quot;meta-virtualization&quot; was a container layer?<br>
<br>
IMHO, a BSP should only deal with getting a MACHINE booted.<br>
<br>
- armin<br>
&gt;<br>
&gt; Signed-off-by: Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcour=
se.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;<br>
&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide=
/bsp.xml<br>
&gt; index 0bb0b68ab..a53ff6bce 100644<br>
&gt; --- a/documentation/bsp-guide/bsp.xml<br>
&gt; +++ b/documentation/bsp-guide/bsp.xml<br>
&gt; @@ -146,18 +146,15 @@<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &lt;para&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Some layers function as a layer to h=
old other BSP layers.<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 These layers are knows as<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 These layers are known as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&lt;ulink url=3D&#39;&amp;YOCT=
O_DOCS_REF_URL;#term-container-layer&#39;&gt;container layers&lt;/ulink&gt;=
&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 An example of this type of layer is =
the<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-intel&lt;/filename&g=
t; layer.<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 This layer contains BSP layers for the In=
tel-core2-32<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;trademark class=3D&#39;registered&#39=
;&gt;Intel&lt;/trademark&gt; Common Core<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Intel-core2-32) and the Intel-corei7-64<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;trademark class=3D&#39;registered&#39=
;&gt;Intel&lt;/trademark&gt; Common Core<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Intel-corei7-64).<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 the &lt;filename&gt;meta-intel&lt;/filena=
me&gt; layer also contains<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 the &lt;filename&gt;common/&lt;/filename&=
gt; directory, which contains<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 common content across those layers.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-xilinx&lt;/filename&=
gt; layer.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 This container layer contains some basic =
top-level information,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 as well as three actual Xilinx-related BS=
P layers,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-xilinx-bsp&lt;/filen=
ame&gt;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-xilinx-contrib&lt;/f=
ilename&gt;, and<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-xilinx-standalone&lt=
;/filename&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &lt;para&gt;<br>
&gt;<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000ab21a80587eb3269--
