Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 209D3E01453
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 14:35:48 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so6060533lah.35
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2012 14:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=Hisj45EHfn+rMiIqdqsC3IO4DRc/0ZCzd7RcOJ43zEk=;
	b=Feo6itV1Q47Zbioy6E4FEFmRNry4UWioU4TYsRMXHbEz35Fn85ePhvFIZVOUIB+vjJ
	KN7GDQUu2UFmmA1sUAqP+T7UcX+gmIzvbdqfdkBlHxG62Lhk4ReFmfNPW8UXHWuo9bV/
	OQc1j2zQ2kVhT5J9rur9KNZRT+UHMjv72zZJDcwgVZU8LulYajOD95f8Kz5d5vOCAJaD
	SuyqxaOHnAgVSYaoSvCVddOXKOyEICbpOEpWYMGcC1n1i14KoMsurYTETVTI05V8aDQy
	Ic8Sz3e6kMIQaGZfbJ3MBKoK7no82N8vMELf3W8tAE6boD5GAXPSKwrdYCc/ukI5DB+1
	QIsA==
Received: by 10.152.124.68 with SMTP id mg4mr3369729lab.51.1354833348044; Thu,
	06 Dec 2012 14:35:48 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Thu, 6 Dec 2012 14:35:27 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212061731550.4523@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
	<alpine.DEB.2.02.1212061731550.4523@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 6 Dec 2012 15:35:27 -0700
X-Google-Sender-Auth: G41LDw46rRgMpsPSAdatjgQPPZE
Message-ID: <CABcZANkhN-Nx_TfeRDnt2+96HtAwyb_Lp-fM7GBkKWs=a0Ad8A@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 22:35:49 -0000
Content-Type: multipart/alternative; boundary=f46d043bd8fe70a92104d036b8f0

--f46d043bd8fe70a92104d036b8f0
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 6, 2012 at 3:32 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Thu, 6 Dec 2012, Chris Larson wrote:
>
> >
> >
> > On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >         in addition, there is absolutely no need to add a ":" to the
> value
> >       as the processing adds that for you, so the many, many examples of
> >
> >       FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >
> >       is potentially confusing to folks reading the code.  (that trailing
> >       ":" doesn't hurt, but it has no value.)
> >
> >
> > This is wrong. You only don't need the leading : if FILESEXTRAPATHS
> > was empty to begin with, which is only the case if that is the first
> > and only bbappend adding to it. As soon as you get more than one,
> > you'll end up with concatenated values and no separator.
>
>   i'm confused, not sure what this means.  what is the *proper* usage
> of that variable?


As I'm pretty sure you've already been told in one of the other 2 threads
about this, it's a colon separated list of paths. If you go appending to it
without a separator, you're going to end up with something useless.

layer1/.../foo.bbappend
FILESEXTRAPATHS_prepend = "${THISDIR}/foo"

layer2/.../foo.bbappend
FILESEXTRAPATHS_prepend = "${THISDIR}/bar"

resulting FILESEXTRAPATHS: layer1/.../foo/layer2/.../bar
-- 
Christopher Larson

--f46d043bd8fe70a92104d036b8f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Dec 6=
, 2012 at 3:32 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto=
:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb adM"><div class=3D"h5">=
On Thu, 6 Dec 2012, Chris Larson wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day &lt;<a href=3D"mailto=
:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 in addition, there is absolutely no need t=
o add a &quot;:&quot; to the value<br>
&gt; =C2=A0 =C2=A0 =C2=A0 as the processing adds that for you, so the many,=
 many examples of<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${P=
N}:&quot;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 is potentially confusing to folks reading the cod=
e. =C2=A0(that trailing<br>
&gt; =C2=A0 =C2=A0 =C2=A0 &quot;:&quot; doesn&#39;t hurt, but it has no val=
ue.)<br>
&gt;<br>
&gt;<br>
&gt; This is wrong. You only don&#39;t need the leading : if FILESEXTRAPATH=
S<br>
&gt; was empty to begin with, which is only the case if that is the first<b=
r>
&gt; and only bbappend adding to it. As soon as you get more than one,<br>
&gt; you&#39;ll end up with concatenated values and no separator.<br>
<br>
</div></div>=C2=A0 i&#39;m confused, not sure what this means. =C2=A0what i=
s the *proper* usage<br>
of that variable?</blockquote></div><br>As I&#39;m pretty sure you&#39;ve a=
lready been told in one of the other 2 threads about this, it&#39;s a colon=
 separated list of paths. If you go appending to it without a separator, yo=
u&#39;re going to end up with something useless.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">layer1/.../=
foo.bbappend</div><div class=3D"gmail_extra">FILESEXTRAPATHS_prepend =3D &q=
uot;${THISDIR}/foo&quot;</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">

layer2/.../foo.bbappend</div><div class=3D"gmail_extra">FILESEXTRAPATHS_pre=
pend =3D &quot;${THISDIR}/bar&quot;</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">resulting FILESEXTRAPATHS: layer1/.../foo/lay=
er2/.../bar<br>

-- <br>Christopher Larson<br>
</div>

--f46d043bd8fe70a92104d036b8f0--
