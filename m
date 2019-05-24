Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA359E00BAF; Thu, 23 May 2019 21:23:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B541AE00B81
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 21:23:37 -0700 (PDT)
Received: by mail-it1-f173.google.com with SMTP id g23so9967189iti.1
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 21:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xOBTflUpTWqAXmuxgJRBw35mHYLoceFUDomJ31N6sdU=;
	b=Oj4A1wF4oFgZSnrMi6x18hvB33WXEwY0dpIhBW6XFci0CVvQOy2KfcF8CVTQdQI6xQ
	GVufx7iYKTcNAQOMPzuUMb+YUFe4fxA1LRdNgfZ9vRxFYAsA9sj0xr4f5Hx/djUKtIFq
	jPkzVPzpqM2nocqS/9DviikoAYKMZC1lS7nqUEZVpDisTVYNigw03NCc4rOArGw67NOK
	Oza0i651eT+TDTX0wqDO+N7l6pLujJO7seay7l/AKmV+sbkIrXAhWBvW4Y04MU6G4gR0
	2FjEiB4YePpFIWtZO4bvgl2VSDmpdOImsEJG+rM/PqjxFSxWaSkNcMbT7F2nDE47Ji8S
	eJ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xOBTflUpTWqAXmuxgJRBw35mHYLoceFUDomJ31N6sdU=;
	b=PqLW5bcqh0VhLJ/azqeEDVEOfE10XUyUP+I1EBhf78RmztrBCrScCG1W3hChJO8fuf
	N2FvdX2HzGqDDJw0WO0+xMzDbU8JTJIyRm+Vl5BZVYlFNAT0dcw7ngRuE4302adcUI0m
	dBzao+etH1+6JTfeK8WxZELuu8FTzcqeSvmEi0H6rp6n703Hzd1TuhbhWYbWGSCAcaPW
	kuKmktgWgoQC0sc7/Bn3/HA3VuOsZyvc6bHR2wk9cJcJHfD3k+GnJrv2FEWIusXy8cb6
	sdKlQqg7XRc5HQMDNZxAHkWM5V1GW4n88sCEbEoX7g9yXzGA6aDvlR40aKET0Hb8cY0S
	KyDw==
X-Gm-Message-State: APjAAAUl5NQ1bZ0MxQlYgv+B7e/Q0Kaz2IIhotVmBGa8587sPW4DD8+n
	dw0AWCXE6wypi60zn80ot+W9HTfyeS1USiGik+c=
X-Google-Smtp-Source: APXvYqyANYZibkXnsigEllTP9EnXyN9oSnz3NlbGGur7kczNsY9hU7L+YH1MoBtnKDtTGOdWkd2bIIqinyj+nnGxwpY=
X-Received: by 2002:a24:4569:: with SMTP id y102mr15528579ita.51.1558671817129;
	Thu, 23 May 2019 21:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
	<CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
	<cc00f116-9071-3d5e-7fa7-a14af9bd71af@cern.ch>
	<70c52f90-eba9-d67b-7d8c-55b5a249f1ae@gmail.com>
In-Reply-To: <70c52f90-eba9-d67b-7d8c-55b5a249f1ae@gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 23 May 2019 21:23:26 -0700
Message-ID: <CANx9H-D0KrzVw4d=hES-5ss2i3n5H0HhnE00mTnpxOE95GNHrw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, Ralf Spiwoks <spiwoks@cern.ch>
Subject: Re: PN is uppercase
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
X-List-Received-Date: Fri, 24 May 2019 04:23:39 -0000
Content-Type: multipart/alternative; boundary="000000000000fb454005899a8f85"

--000000000000fb454005899a8f85
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 23, 2019 at 4:55 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/21/19 12:50 AM, Ralf Spiwoks wrote:
> > Hi Ross,
> >
> > Thanks for your email. I am realising that I have not replied to your
> > email earlier. Sorry. I guess it was partly because your answer put
> > me slightly off. On the one hand, I thought that as a general approach,
> > Linux was case sensitive, unlike its big rival Windows, and I was not
> > aware  of package managers which would explicitly forbid uppercase
> > package names. I find the approach of allowing only lowercase package
> > names quite limiting, and frankly a drawback for using Yocto
> >
> > On the other hand I have a few tens of packages to maintain, which
> > have uppercase letters in the package names and which did work with
> > Yocto in previous versions. So, because of a new convention we would
> > have to rework some of the packages or ignore the warning messages.
> > And until we find the effort for reworking those package recipes we
> > will stay with the latter option.
>
> The package name rules are not new, they have been with OE/YP forever
> so it should have failed always. Similar to debian see
>
>
> https://www.debian.org/doc/debian-policy/ch-controlfields.html#list-of-fi=
elds
>

We had to pick a convention. Debian is well documented, conservative and
well thought out. My first contributions to OpenEmbedded many years ago
didn=E2=80=99t follow Debian naming, were rejected on V1 and I embarked on =
a new
learning curve. I=E2=80=99ve embraced it and never looked back.


> >
> > Thanks for your patience and your explanations. Cheers,
> >
> > Ralf.
> >
> > On 4/2/19 1:54 PM, Burton, Ross wrote:
> >> On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks <spiwoks@cern.ch> wrote:
> >>> TWO questions:
> >>>
> >>> 1) Are those two issues related?
> >>
> >> Probably not, unless you're trying to use a mixed-case override.
> >>
> >>> 2) What is the logic behind allowing only lower case package names?
> >>> This is to me
> >>>      a serious restriction on the use of Yocto.
> >>
> >> Two reasons: some package managers forbid packages with uppercase
> >> names; and for performance reasons overrides are lowercase and as
> >> package names are often embedded in overrides this implies that
> >> package names need to be lowercase.
> >>
> >> What's the problem with using lowercase names?
> >>
> >> Ross
> >>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000fb454005899a8f85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 23, 2019 at 4:55 PM Khem Raj &lt;<a href=3D"mai=
lto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><br>
<br>
On 5/21/19 12:50 AM, Ralf Spiwoks wrote:<br>
&gt; Hi Ross,<br>
&gt; <br>
&gt; Thanks for your email. I am realising that I have not replied to your<=
br>
&gt; email earlier. Sorry. I guess it was partly because your answer put<br=
>
&gt; me slightly off. On the one hand, I thought that as a general approach=
,<br>
&gt; Linux was case sensitive, unlike its big rival Windows, and I was not<=
br>
&gt; aware=C2=A0 of package managers which would explicitly forbid uppercas=
e<br>
&gt; package names. I find the approach of allowing only lowercase package<=
br>
&gt; names quite limiting, and frankly a drawback for using Yocto<br>
&gt; <br>
&gt; On the other hand I have a few tens of packages to maintain, which<br>
&gt; have uppercase letters in the package names and which did work with<br=
>
&gt; Yocto in previous versions. So, because of a new convention we would<b=
r>
&gt; have to rework some of the packages or ignore the warning messages.<br=
>
&gt; And until we find the effort for reworking those package recipes we<br=
>
&gt; will stay with the latter option.<br>
<br>
The package name rules are not new, they have been with OE/YP forever<br>
so it should have failed always. Similar to debian see<br>
<br>
<a href=3D"https://www.debian.org/doc/debian-policy/ch-controlfields.html#l=
ist-of-fields" rel=3D"noreferrer" target=3D"_blank">https://www.debian.org/=
doc/debian-policy/ch-controlfields.html#list-of-fields</a><br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">We had to pick a=
 convention. Debian is well documented, conservative and well thought out. =
My first contributions to OpenEmbedded many years ago didn=E2=80=99t follow=
 Debian naming, were rejected on V1 and I embarked on a new learning curve.=
 I=E2=80=99ve embraced it and never looked back.</div><div dir=3D"auto"><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><br>
&gt; <br>
&gt; Thanks for your patience and your explanations. Cheers,<br>
&gt; <br>
&gt; Ralf.<br>
&gt; <br>
&gt; On 4/2/19 1:54 PM, Burton, Ross wrote:<br>
&gt;&gt; On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks &lt;<a href=3D"mailto:sp=
iwoks@cern.ch" target=3D"_blank">spiwoks@cern.ch</a>&gt; wrote:<br>
&gt;&gt;&gt; TWO questions:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 1) Are those two issues related?<br>
&gt;&gt;<br>
&gt;&gt; Probably not, unless you&#39;re trying to use a mixed-case overrid=
e.<br>
&gt;&gt;<br>
&gt;&gt;&gt; 2) What is the logic behind allowing only lower case package n=
ames? <br>
&gt;&gt;&gt; This is to me<br>
&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 a serious restriction on the use of Y=
octo.<br>
&gt;&gt;<br>
&gt;&gt; Two reasons: some package managers forbid packages with uppercase<=
br>
&gt;&gt; names; and for performance reasons overrides are lowercase and as<=
br>
&gt;&gt; package names are often embedded in overrides this implies that<br=
>
&gt;&gt; package names need to be lowercase.<br>
&gt;&gt;<br>
&gt;&gt; What&#39;s the problem with using lowercase names?<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt;<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000fb454005899a8f85--
