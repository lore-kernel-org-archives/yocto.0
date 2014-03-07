Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6840FE00717
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 15:06:55 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id hq11so4845394vcb.14
	for <yocto@yoctoproject.org>; Fri, 07 Mar 2014 15:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kOJpBF7s8eSNUdSUAqc1MA2vTcURmYNc392nEQjn6zg=;
	b=JxMp6m4+RuQQDqkJ95gUdN9Xzrk5tlArsQ4CV2p+cSLjUrWEuLJJZ811dSbdHxNjkK
	6l6sUup6WKJm3YL0GH4Slla/7FaXvBrlDzwcOoHWpEHHIUcTU0THEJDBvIHM9PNz8kfI
	U620tGHuEjpeXx2R/44tCEHqxSmxRgQ023krpy3XsL4x7f/f1VknSW9nKQ+bkkeSiu36
	z+L6ZZnfT4U/+oDIGLXKfH0opeSPzDTHE2H9uG4AcwKy2yAgFvvKFIb31Z+hNe4Hm87F
	Xp6xN3BUMXr33ufVBRuSNlbwaJaBgp9nv8tyopAmDU0U69ydAzuH4oP6ka4QVhbMCWy3
	AWHw==
MIME-Version: 1.0
X-Received: by 10.220.88.204 with SMTP id b12mr12107364vcm.3.1394233614403;
	Fri, 07 Mar 2014 15:06:54 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Fri, 7 Mar 2014 15:06:54 -0800 (PST)
In-Reply-To: <CAMKF1sosDf5UJkNwjvPFVYxSo-Jt3DHnKZ0A_B_YWQ_ET7o6Rg@mail.gmail.com>
References: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
	<CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
	<CAA7h+Eqr8bVtsoYoNA7EWhUJZ63L27botuvLiBhx5O5CwLF2+Q@mail.gmail.com>
	<CAMKF1srUeJ-Djk_ibR=PYW9MS3FVX20psJZMMguxYEVWdwoVJQ@mail.gmail.com>
	<CAA7h+Epd3vWbrH5eOm5SYzT7X97sJ6Y6yH61=21W7CnuTQzNjQ@mail.gmail.com>
	<CAMKF1sosDf5UJkNwjvPFVYxSo-Jt3DHnKZ0A_B_YWQ_ET7o6Rg@mail.gmail.com>
Date: Fri, 7 Mar 2014 16:06:54 -0700
Message-ID: <CAA7h+EqHojjHxsnDsrhuoPRi8kZCuqO7w5CLa=+=USq42nLMWg@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding headers to tool chain
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
X-List-Received-Date: Fri, 07 Mar 2014 23:06:55 -0000
Content-Type: multipart/alternative; boundary=047d7b3a92ee520c7904f40c4fab

--047d7b3a92ee520c7904f40c4fab
Content-Type: text/plain; charset=ISO-8859-1

I see.

What do I need to do to add the *kernel headers* and *kernel source* to the
gumstix-console-image?

Thanks,
Rick


On Thu, Mar 6, 2014 at 6:39 PM, Khem Raj <raj.khem@gmail.com> wrote:

> -Khem
>
> On Mar 6, 2014 4:30 PM, "Rick Bianchi" <bianchirickkutta@gmail.com> wrote:
> >
> > Khem,
> > I did the following, but still no headers and source in /usr/src:
> >
>
> yes its application sdk not kernel or device driver sdk
>
> > bitbake meta-toolchain
> >
> > bitbake -cpopulate_sdk gumstix-console-image
> >
> >
> >
> >
> > On Thu, Mar 6, 2014 at 12:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi
> >> <bianchirickkutta@gmail.com> wrote:
> >> > Khem,
> >> > Is this the same process if I needed to get the kernel headers and
> source
> >> > onto the build?
> >> >
> >>
> >> this is application development so kernel headers for userspace will be
> there.
> >>
> >> >
> >> > On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >> >>
> >> >> On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker <joelparker27@yahoo.com>
> >> >> wrote:
> >> >> > $ bitbake meta-toolchain
> >> >>
> >> >> do bitbake -cpopulate_sdk <image-to-which-you-added-sqlite>
> >> >> and install that SDK
> >> >> _______________________________________________
> >> >> yocto mailing list
> >> >> yocto@yoctoproject.org
> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >> >
> >
> >
>

--047d7b3a92ee520c7904f40c4fab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I see.=A0<br></div><div><br></div><div>What do I need=
 to do to add the <strong>kernel headers</strong> and <strong>kernel source=
</strong> to the gumstix-console-image?</div><div><br></div><div>Thanks,</d=
iv>
<div>Rick</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Mar 6, 2014 at 6:39 PM, Khem Raj <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p dir=3D"ltr"></p>
<p dir=3D"ltr">-Khem</p><div class=3D""><br>
On Mar 6, 2014 4:30 PM, &quot;Rick Bianchi&quot; &lt;<a href=3D"mailto:bian=
chirickkutta@gmail.com" target=3D"_blank">bianchirickkutta@gmail.com</a>&gt=
; wrote:<br>
&gt;<br>
&gt; Khem,<br></div><div class=3D"">
&gt; I did the following, but still no headers and source in /usr/src:<br>
&gt;</div><p></p>
<p dir=3D"ltr">yes its application sdk not kernel or device driver sdk</p><=
div class=3D"HOEnZb"><div class=3D"h5">
<p dir=3D"ltr">&gt; bitbake meta-toolchain<br>
&gt;<br>
&gt; bitbake -cpopulate_sdk gumstix-console-image<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Mar 6, 2014 at 12:34 PM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi<br>
&gt;&gt; &lt;<a href=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank=
">bianchirickkutta@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Khem,<br>
&gt;&gt; &gt; Is this the same process if I needed to get the kernel header=
s and source<br>
&gt;&gt; &gt; onto the build?<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; this is application development so kernel headers for userspace wi=
ll be there.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker &lt;<a href=
=3D"mailto:joelparker27@yahoo.com" target=3D"_blank">joelparker27@yahoo.com=
</a>&gt;<br>
&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; $ bitbake meta-toolchain<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; do bitbake -cpopulate_sdk &lt;image-to-which-you-added-sq=
lite&gt;<br>
&gt;&gt; &gt;&gt; and install that SDK<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</p>
</div></div></blockquote></div><br></div>

--047d7b3a92ee520c7904f40c4fab--
