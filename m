Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4854E00F62; Mon, 18 Apr 2016 19:17:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F518E00B70
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 19:17:40 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id g185so5137582ioa.2
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 19:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JaM7UPcMV19lpmPo8wXUSKbW+780asOElM6OrMByUJc=;
	b=egTMfOOlmw2JcRF4hmB7Qu8ofcTP/ko5KND/U7waB2tie6GUD5ggUklFdBoTj/M12W
	WdmgYrZoJJASnAry+hVNWDD9pF7UYV9r3LrN+AowR516hUwqhH8J9ts6a0622ZxGtaHg
	dOsRWtnxNfMmziTYTji1s6+uK3SiJVpo6E+8uZ1iHHY0M8tAJ3MjonVu+SIcdNRZ49RP
	HD3N8DyRbAXE7XhpkTHM/ciiehI/oxnaZUdkTEEjswL/kLh/e/nqv+iDtCt3UrcV2+NH
	iwYRfu5veMHxCQ3fJ8mtlRBF8Q2xuzmhrGdo1skeBhOFg7IjS/M2F6qsgrHtzavVNgaM
	Z+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JaM7UPcMV19lpmPo8wXUSKbW+780asOElM6OrMByUJc=;
	b=Ux+Q5k7OejZZ6ARtfvuuYDoRtJHlitN3dzH9YyZtsjsMj+FPJt3zypYc3p5emTX8FB
	jODoHgjSajEb+f9wmB6bobu2Vf0kaD9BfN0STazmhwy8IZU5j0O+IKHM7yin1eVa6e47
	uFrPH/zcyj549rGfIv+o+XCEcJd9NiYkPtUFiFB7ACbRGd4XyPTAOCi+gKhXELYI9Es/
	hXL1L45+g6WZIJQPGaebV08fam2BQ4X0yoeDsb+w5Ngskso9HUIH6irAmGCz5+pCtUCi
	y5t+XvSiqg8HIR3Wh8q9zIFPIOXAr6qhME0qc2h29pNPUh7KrgQutHnSFWOn5LQJZRiw
	wqsw==
X-Gm-Message-State: AOPr4FWMK5TGz4pLDK+ixR/A5Wckai8bop5nM8NOQLBgrXrCvllSmjMjiFqmmWj9qQc23dlqvgdQh5O0D7ETgg==
X-Received: by 10.107.131.12 with SMTP id f12mr957101iod.126.1461032260419;
	Mon, 18 Apr 2016 19:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
	<CAMKF1spGMHQMVP_-mrHYmDnjM+DPk0mktK_e+9G1bekuP6PnUA@mail.gmail.com>
	<1461019868.9308.224.camel@linuxfoundation.org>
	<CAMKF1spKB=HXLipbo_qFBY6mo67LOWAB-uQxRA25ghZTwD=i5Q@mail.gmail.com>
In-Reply-To: <CAMKF1spKB=HXLipbo_qFBY6mo67LOWAB-uQxRA25ghZTwD=i5Q@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 19 Apr 2016 02:17:30 +0000
Message-ID: <CABcZANm7+ewyU8d2iMkMM6uNB7ZSBhcToE3g=rKWkAxrGCP85w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Tue, 19 Apr 2016 02:17:43 -0000
Content-Type: multipart/alternative; boundary=001a113f31c2e345e40530cd1414

--001a113f31c2e345e40530cd1414
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 18, 2016 at 5:50 PM Khem Raj <raj.khem@gmail.com> wrote:

>
> On Apr 18, 2016 3:51 PM, "Richard Purdie" <
> richard.purdie@linuxfoundation.org> wrote:
> >
> > On Mon, 2016-04-18 at 10:35 -0700, Khem Raj wrote:
> > > Can we have a possibility to select  field like "affected version"
> > > and have it such that multiple versions can be specified
> >
> > That doesn't really allow us to mark version X as merged and version Y
> > as pending review though and as I understand it, that is the real issue
> > atm :/.
>
> May be bugzilla can be programmed to have such triggers. Having separate
> bug is not a good looking solution
>

I'd agree that it's not ideal, but it's definitely a *common* solution in
many bug tracking systems, since it's usually the only way to maintain
separate states for each version. I know I've seen it done that way in
bugzilla, jira, and others over the years.

There may be something better out there, and if we can find it, great, but
I think separate issues is better than not addressing the issue at all, but
only if the tooling is good enough to help reduce overhead on the part of
the devs dealing with it. Issue tracker overhead gets pretty frustrating at
times.

--001a113f31c2e345e40530cd1414
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Apr 18, 2016 at 5:50 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com=
">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><p dir=3D"ltr"><br>
On Apr 18, 2016 3:51 PM, &quot;Richard Purdie&quot; &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfo=
undation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, 2016-04-18 at 10:35 -0700, Khem Raj wrote:<br>
&gt; &gt; Can we have a possibility to select=C2=A0 field like &quot;affect=
ed version&quot;<br>
&gt; &gt; and have it such that multiple versions can be specified<br>
&gt;<br>
&gt; That doesn&#39;t really allow us to mark version X as merged and versi=
on Y<br>
&gt; as pending review though and as I understand it, that is the real issu=
e<br>
&gt; atm :/.</p>
<p dir=3D"ltr">May be bugzilla can be programmed to have such triggers. Hav=
ing separate bug is not a good looking solution</p></blockquote><div><br></=
div><div>I&#39;d agree that it&#39;s not ideal, but it&#39;s definitely a *=
common* solution in many bug tracking systems, since it&#39;s usually the o=
nly way to maintain separate states for each version. I know I&#39;ve seen =
it done that way in bugzilla, jira, and others over the years.</div><div><b=
r></div><div>There may be something better out there, and if we can find it=
, great, but I think separate issues is better than not addressing the issu=
e at all, but only if the tooling is good enough to help reduce overhead on=
 the part of the devs dealing with it. Issue tracker overhead gets pretty f=
rustrating at times.</div></div></div>

--001a113f31c2e345e40530cd1414--
