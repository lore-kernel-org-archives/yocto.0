Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 134E5C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 15:42:37 +0000 (UTC)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web11.56196.1699026149625430695
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 08:42:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B+I0IhXU;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-45d9689b65dso328688137.0
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 08:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699026148; x=1699630948; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q64otUKW23STkMj/K3wCs/jsvBHSgdzunrBBG+Y7w0k=;
        b=B+I0IhXUPCZrDZBmsrpiKSNJXh1AEphNsOL3rWtlXKieDbp7os/f7B4xRuAa+KOsKj
         tQDrJgHG9BC8gUf0KKUMJV1LINTm5vb062i5xHhhlq0XIjdoqReEmH21bZ/StOG7Eepx
         DzTbJXhlm3fwDOI+fCBRdVuX4XLgzotAzt5Y7TiYUhX5Ny0G5vUUL3AZiiy5D3GSSNAs
         EB6R82UY6VeomeHyQUJU3mFLuMLERQvR0Salf+w1RURv2EIKVu4GDeacyuHIf9zwuCmr
         SC5Juu3GXWhxXpZak86OZNWFe0W8his8FTxw3Y6fQvQ3a1h8+FSUvIeDtjlWLpM58pDd
         kGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699026148; x=1699630948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q64otUKW23STkMj/K3wCs/jsvBHSgdzunrBBG+Y7w0k=;
        b=ToUaLzIwkgdHf0BSGstx97V7kdmSK/sV6ieTd7aqT3RD28nU7ve7EEtS+7nhkyVEIO
         RFzNlMzvaScbBZBDODYb7LKHcyx4RGHgYDiFHA88FjsF9flyI3FpnH2h6y2zSQ/O1swI
         R0AQ/Oe2X5EZeA2c2neaMZnH3w6KKJkn7fSbXLVac09BC8nH+zIJQPLLi6hThOIFSQNA
         A8im7MNUH5pf1CjTBv7bigndHvWyUOKDWnT11rwG8YjL7cgUir4zZnNChnHCnB+yEWZW
         05kjW6aBnwwrirnpLweq0c98jqGJovXn4QBt5PDzfyYQ0hvIpa6T4dOrenuNH8mk0QXm
         jsJw==
X-Gm-Message-State: AOJu0YyAdZzsj6j9bKkWasXNXwTPuY9BxPyG5u1GVc8hYnvYMwpkY4zH
	DxaZIw+DaCgOptzAu4JZ0UjsjgrE/EEYdHUScg8=
X-Google-Smtp-Source: AGHT+IHhGba6z5CFWt5YAAg2Lkotd9NAFxipOns6DFZepU9pOJvcaOurY72fINYs3MZQUZH6j7H8AoddqhZrr/yf6+E=
X-Received: by 2002:a67:cc16:0:b0:45d:962e:f17b with SMTP id
 q22-20020a67cc16000000b0045d962ef17bmr2016183vsl.30.1699026148488; Fri, 03
 Nov 2023 08:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com> <4b04aad4-03e8-462e-bd27-a1de18708083@bootlin.com>
In-Reply-To: <4b04aad4-03e8-462e-bd27-a1de18708083@bootlin.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 3 Nov 2023 15:42:17 +0000
Message-ID: <CANPvuRnM=RgoVabG4i+JZyZcybrHxsiGD4TOf+OZRyOnx4iDmQ@mail.gmail.com>
Subject: Re: [yocto] Package dependencies not generated?
To: michael.opdenacker@bootlin.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Content-Type: multipart/alternative; boundary="0000000000000b80ba0609415a06"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 15:42:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61601

--0000000000000b80ba0609415a06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Michael Opdenacker via lists.yoctoproject.org <michael.opdenacker=3D
bootlin.com@lists.yoctoproject.org> escreveu no dia sexta, 3/11/2023 =C3=A0=
(s)
15:05:

> Greetings,
>
> On 02.11.23 at 19:16, Michael Opdenacker wrote:
> > Greetings,
> >
> > I compiled rsyslog from meta-oe:
> > bitbake rsyslog
> >
> > I set up a binary feed ("bitbake package-index") and a webserver to
> > serve it, and when I try to install the rsyslog package, I get:
> > $ opkg install rsyslog
> >  * Solver encountered 1 problem(s):
> >  * Problem 1/1:
> >  *   - conflicting requests
> >  *   - nothing provides libestr0 >=3D 0.1.11 needed by
> > rsyslog-8.2306.0-r0.core2-64
> >
> > Indeed, no "*libestr*" package(s) got generated. Why not?
> >
> > I checked RDEPENDS:rsyslog and it contains "logrotate" for which a
> > package was indeed generated. I thought that shared libraries
> > dependencies were automatically detected and added to runtime
> > dependencies. That's confirmed by
> >
> https://docs.yoctoproject.org/dev/overview-manual/concepts.html#automatic=
ally-added-runtime-dependencies
> > . Why didn't it happen?
> >
> > I checked that libestr got compiled (it's part of the DEPENDS for
> > rsyslog), but I can't find any package for it, even in the working area=
.
> >
> > It sounds like a very basic misconception between my keyboard and my
> > chair. What did I get wrong?
> >
> > Thanks in advance for your insights.
>
> A simpler way to ask this...
>
> When I build rsyslogd ("bitbake rsyslog"), an ipk package is built for
> this software, but not for its shared library dependencies, for example
> for libestr.
> How to explain this?
>

Maybe because rsyslog uses dlopen to load the libestr at runtime,
if this is the case the recipe should explicitly add a runtime dependency
for them.

+RDEPENDS:${PN} +=3D "logrotate libestr"

I'm just thinking out loud and I have no idea if this is the case.

Jose


> Thanks in advance
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61599):
> https://lists.yoctoproject.org/g/yocto/message/61599
> Mute This Topic: https://lists.yoctoproject.org/mt/102348862/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000000b80ba0609415a06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Michael Opdenacker via <a href=3D"htt=
p://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;michael.opdenack=
er=3D<a href=3D"mailto:bootlin.com@lists.yoctoproject.org">bootlin.com@list=
s.yoctoproject.org</a>&gt; escreveu no dia sexta, 3/11/2023 =C3=A0(s) 15:05=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Greetings,<br>
<br>
On 02.11.23 at 19:16, Michael Opdenacker wrote:<br>
&gt; Greetings,<br>
&gt;<br>
&gt; I compiled rsyslog from meta-oe:<br>
&gt; bitbake rsyslog<br>
&gt;<br>
&gt; I set up a binary feed (&quot;bitbake package-index&quot;) and a webse=
rver to <br>
&gt; serve it, and when I try to install the rsyslog package, I get:<br>
&gt; $ opkg install rsyslog<br>
&gt; =C2=A0* Solver encountered 1 problem(s):<br>
&gt; =C2=A0* Problem 1/1:<br>
&gt; =C2=A0*=C2=A0=C2=A0 - conflicting requests<br>
&gt; =C2=A0*=C2=A0=C2=A0 - nothing provides libestr0 &gt;=3D 0.1.11 needed =
by <br>
&gt; rsyslog-8.2306.0-r0.core2-64<br>
&gt;<br>
&gt; Indeed, no &quot;*libestr*&quot; package(s) got generated. Why not?<br=
>
&gt;<br>
&gt; I checked RDEPENDS:rsyslog and it contains &quot;logrotate&quot; for w=
hich a <br>
&gt; package was indeed generated. I thought that shared libraries <br>
&gt; dependencies were automatically detected and added to runtime <br>
&gt; dependencies. That&#39;s confirmed by <br>
&gt; <a href=3D"https://docs.yoctoproject.org/dev/overview-manual/concepts.=
html#automatically-added-runtime-dependencies" rel=3D"noreferrer" target=3D=
"_blank">https://docs.yoctoproject.org/dev/overview-manual/concepts.html#au=
tomatically-added-runtime-dependencies</a> <br>
&gt; . Why didn&#39;t it happen?<br>
&gt;<br>
&gt; I checked that libestr got compiled (it&#39;s part of the DEPENDS for =
<br>
&gt; rsyslog), but I can&#39;t find any package for it, even in the working=
 area.<br>
&gt;<br>
&gt; It sounds like a very basic misconception between my keyboard and my <=
br>
&gt; chair. What did I get wrong?<br>
&gt;<br>
&gt; Thanks in advance for your insights.<br>
<br>
A simpler way to ask this...<br>
<br>
When I build rsyslogd (&quot;bitbake rsyslog&quot;), an ipk package is buil=
t for <br>
this software, but not for its shared library dependencies, for example <br=
>
for libestr.<br>
How to explain this?<br></blockquote><div><br></div><div>Maybe because rsys=
log uses dlopen to load the libestr at runtime,<br>if this is the case the =
recipe should explicitly=C2=A0add a runtime dependency</div><div>for them.<=
br><br>+RDEPENDS:${PN} +=3D &quot;logrotate libestr&quot;</div><div><br>I&#=
39;m just thinking out loud and I have no idea=C2=A0if this is the case.<br=
><br>Jose</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<br>
Thanks in advance<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61599): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61599" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61599</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102348862/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102348862/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000000b80ba0609415a06--

