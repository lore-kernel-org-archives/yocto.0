Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0876CE00E41; Thu, 25 Jan 2018 12:17:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DCF8E00DBD
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 12:17:53 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id x4so5766056uaj.11
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 12:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vgpV5FeSM1908PVLnhsUb7jeJTbpm+XnvSKfVJFWRfY=;
	b=kN7aJ/RK2voxjKK49ArpSR2F8fjI1DsdjClJBk+cOk3IOIq2KosCUPb7/a5Rvum1hO
	/RIoBAMlJoPda02i3pS0jivI85avKPiUTwIeBnq/MxOk0xiHAA8ipIoeaMpIXZaqD8NJ
	wtVhVUFDqe9J9ggqX52O/mpsiX2N0AyyRSmsyJsaBq9I5kzqJTo0CDNFSYq/PuYlWFOu
	Fygv2Zhya/L2iysqPdeorc2fKgp5ZdIyjayEFdjqjAoTQb8aGLuYogsKbqO4lrA+eiL8
	3JqgObqX3fG6KwthHosogekUeZqbKAcTwFxkoi5n6cdEDnvV0oVVcZyv7ZqBoiQOqp0F
	Io2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vgpV5FeSM1908PVLnhsUb7jeJTbpm+XnvSKfVJFWRfY=;
	b=JQgGMsjOO/jMLD2xPrrNa8a41Uyw60K/n9HqTlWroeSW8WFjkPBr2B//W4iiTTIsew
	InT7uCqxbnX3tXLmWso8gkw1+dVarMwSyxixWYPrCsKzLd/gL19btDvHi1RHdOJwaDof
	GFUFn6ommnH8bkP5gtUSCZlNd+EiDH/JNMMMGfSUr1Nq0CR9X8/f0LQtzc1LYmadEKg6
	S9dIbJvQsrHj5vTdFRRe5j9swTzU/P7NDlxZXvX7Pz02Q0TEGOP1Yb5m3cxwIPTWaFxb
	SA0xsm8zhYp/vwEQAzo8AZNee70DzarlzP01U/n9oIxI3kur8M6EUzyZ2GvbBGwGG4Xe
	F3PA==
X-Gm-Message-State: AKwxytfTBbVjKDVEGcTacQag/9cq9Oi0DLYhHOf2suROYrAC7MBMum+H
	J7fQJnGr26BysZkhT+WHFoWei48pFxaXOE4UEFienw==
X-Google-Smtp-Source: AH8x225IJReGBy9AWaCYWS3uK+y7jfD+CdAqIqgsljvHZtLpNQtQxm6dOgfe3gGNT4hB6s8EHB9qytFk7AKs9+4rFtg=
X-Received: by 10.176.89.210 with SMTP id k18mr8692347uad.28.1516911473020;
	Thu, 25 Jan 2018 12:17:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.48.247 with HTTP; Thu, 25 Jan 2018 12:17:12 -0800 (PST)
X-Originating-IP: [90.152.4.101]
In-Reply-To: <435939ad-64f1-a6cb-f55b-1dc1a5c83c69@gmail.com>
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
	<CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
	<CAPyrkgxm5DAU+2X7nwSpENv7534e1gDzS3uA4BHq2SX2po8Z9Q@mail.gmail.com>
	<CAPyrkgwLJGpY3_WioGifiisa0VEvTGjdBV-Jc6nRw+bJ1cGn8Q@mail.gmail.com>
	<CALw8SCVty32Ob50S8qrdxUUmm+jyG-KibHq7GV26K+yScPdLEg@mail.gmail.com>
	<CAK18fxF_mU3e9-aBEWbAW_ewce3kvOLCFXtExDK6rMJH=C2KWw@mail.gmail.com>
	<435939ad-64f1-a6cb-f55b-1dc1a5c83c69@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 25 Jan 2018 20:17:12 +0000
Message-ID: <CAK18fxFXoXo5x=V4S2uJxis5mnLOVy6ahA=PTrGym6hkW_9s+w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Thu, 25 Jan 2018 20:17:56 -0000
Content-Type: multipart/alternative; boundary="001a114668ec816ab705639f79cc"

--001a114668ec816ab705639f79cc
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 25, 2018 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On 12/21/17 7:15 AM, Andrei Gherzan wrote:
> > Nice. Good job.
> >
> > --
> > Andrei Gherzan
> >
> > On Mon, Dec 18, 2017 at 9:57 PM, Mirza Krak <mirza.krak@gmail.com
> > <mailto:mirza.krak@gmail.com>> wrote:
> >
> >     On Dec 18, 2017 20:50, "Paul Barker" <pbarker@toganlabs.com
> >     <mailto:pbarker@toganlabs.com>> wrote:
> >
> >         On Mon, Dec 11, 2017 at 12:20 PM, Paul Barker
> >         <pbarker@toganlabs.com <mailto:pbarker@toganlabs.com>> wrote:
> >         > On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak <
> mirza.krak@gmail.com <mailto:mirza.krak@gmail.com>> wrote:
> >         >> 2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.com
> <mailto:pbarker@toganlabs.com>>:
> >         >>> Hi all,
> >         >>>
> >         >>> As a quick announcement, the layer documentation for
> meta-raspberrypi
> >         >>> is now available on Read the Docs:
> >         >>> http://meta-raspberrypi.readthedocs.io/en/latest/
> >         <http://meta-raspberrypi.readthedocs.io/en/latest/>
> >         >>>
> >
> >         >>
> >         >> One little thing though, the current "theme" used which I
> assume is
> >         >> the default Sphinx theme is not optimal IMO.
> >         >>
> >
> >         >
> >         > Thanks for the feedback. The conf.py file we're using is just
> what was
> >         > generated by sphinx-quickstart with minimal tweaks. It sets
> html_theme
> >         > which is obviously overriding the default for read the docs.
> >         >
> >         > I think I should be able to get the right behaviour by
> commenting out
> >         > the html_theme setting completely. I'll give that a go and see
> what
> >         > happens.
> >         >
> >
> >         That worked. Looks much better!
> >         http://meta-raspberrypi.readthedocs.io/en/latest/index.html
> >         <http://meta-raspberrypi.readthedocs.io/en/latest/index.html>
> >
> >
> >     Great job. Agree that it looks much better.
>
>
> what is that triplebyte thing? Can this be kept off
>



Where do you see that?

--
Andrei Gherzan

--001a114668ec816ab705639f79cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jan 25, 2018 at 6:34 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 12/21/17 7:1=
5 AM, Andrei Gherzan wrote:<br>
&gt; Nice. Good job.<br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br>
&gt;<br>
&gt; On Mon, Dec 18, 2017 at 9:57 PM, Mirza Krak &lt;<a href=3D"mailto:mirz=
a.krak@gmail.com">mirza.krak@gmail.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:mirza.krak@gmail.com">mirza.krak@gmail.co=
m</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On Dec 18, 2017 20:50, &quot;Paul Barker&quot; &lt;=
<a href=3D"mailto:pbarker@toganlabs.com">pbarker@toganlabs.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:pbarker@toganlabs.com"=
>pbarker@toganlabs.com</a>&gt;<wbr>&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, Dec 11, 2017 at 12:20 PM, Pau=
l Barker<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:pbarker@toganla=
bs.com">pbarker@toganlabs.com</a> &lt;mailto:<a href=3D"mailto:pbarker@toga=
nlabs.com">pbarker@toganlabs.com</a>&gt;<wbr>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; On Mon, Dec 11, 2017 at 12:08 PM=
, Mirza Krak &lt;<a href=3D"mailto:mirza.krak@gmail.com">mirza.krak@gmail.c=
om</a> &lt;mailto:<a href=3D"mailto:mirza.krak@gmail.com">mirza.krak@gmail.=
com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; 2017-12-11 12:55 GMT+01:00 P=
aul Barker &lt;<a href=3D"mailto:pbarker@toganlabs.com">pbarker@toganlabs.c=
om</a> &lt;mailto:<a href=3D"mailto:pbarker@toganlabs.com">pbarker@toganlab=
s.com</a>&gt;<wbr>&gt;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; Hi all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; As a quick announcement,=
 the layer documentation for meta-raspberrypi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; is now available on Read=
 the Docs:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; <a href=3D"http://meta-r=
aspberrypi.readthedocs.io/en/latest/" rel=3D"noreferrer" target=3D"_blank">=
http://meta-raspberrypi.<wbr>readthedocs.io/en/latest/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://meta-raspberryp=
i.readthedocs.io/en/latest/" rel=3D"noreferrer" target=3D"_blank">http://me=
ta-raspberrypi.<wbr>readthedocs.io/en/latest/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; One little thing though, the=
 current &quot;theme&quot; used which I assume is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; the default Sphinx theme is =
not optimal IMO.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Thanks for the feedback. The con=
f.py file we&#39;re using is just what was<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; generated by sphinx-quickstart w=
ith minimal tweaks. It sets html_theme<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; which is obviously overriding th=
e default for read the docs.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I think I should be able to get =
the right behaviour by commenting out<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; the html_theme setting completel=
y. I&#39;ll give that a go and see what<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; happens.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0That worked. Looks much better!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://meta-raspberrypi.re=
adthedocs.io/en/latest/index.html" rel=3D"noreferrer" target=3D"_blank">htt=
p://meta-raspberrypi.<wbr>readthedocs.io/en/latest/<wbr>index.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://meta-raspberryp=
i.readthedocs.io/en/latest/index.html" rel=3D"noreferrer" target=3D"_blank"=
>http://meta-raspberrypi.<wbr>readthedocs.io/en/latest/<wbr>index.html</a>&=
gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Great job. Agree that it looks much better.<br>
<br>
<br>
what is that triplebyte thing? Can this be kept off<br>
=C2=A0</blockquote><div>=C2=A0</div><div><br></div><div>Where do you see th=
at?<br></div><div><br></div><div><div class=3D"gmail_signature"><div dir=3D=
"ltr"><div dir=3D"ltr"><div>--</div></div></div></div></div><div>Andrei Ghe=
rzan=C2=A0</div></div></div></div>

--001a114668ec816ab705639f79cc--
