Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2203E00404
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 14:45:59 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id w61so4895091wes.31
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 14:45:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kW70v0ooBx8lReovz0wuiKTuB7WfEbmKboJ52IyahhM=;
	b=XpYh5Ndxan/HsTggKOm7LPfGgKpWvpKNgbN3zNnMgorTFK1d2QSPjc/wlXYj5pya0V
	0RJgWKgdSDt1KMI4ePr9ZUO3e2yCCIxz3cOalMFKOt+ga+hwBgwnnmw3gdH92OpqJVgd
	2TAE2IGIH0rEx8oSpeMYjw5JvdD8GPD1iNHZGVK7gqZPRy1eh0NEqqknyRzY/dLAXAnW
	sZkC5E+90Y9WQKksfm0Z+Zq5PhasBfzNZIHDqgWU3oLe0DituafBKDNB9RQzJsdmFz+t
	/Q1YnklaOKYZ6zR6CVUoWeAxYDKJqiABDc/hj+Hzu+k7S8gsVitEe/QpFf75AX6yzD0F
	V15Q==
X-Gm-Message-State: ALoCoQkRttPX+Lk8zfK1RAvR3AfazC6lr+tcASCuIU6HvyAEn/pR9xLSY1FdVpTL10wQ/yDjzzh3
X-Received: by 10.180.85.65 with SMTP id f1mr9946757wiz.33.1378763158471; Mon,
	09 Sep 2013 14:45:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Mon, 9 Sep 2013 14:45:38 -0700 (PDT)
X-Originating-IP: [5.13.218.230]
In-Reply-To: <CANyK_8feZmbfna1Yt4+cqs4jVhkF=_+wwqkpfhE0yd+oAHZYDQ@mail.gmail.com>
References: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
	<1378211205-4866-2-git-send-email-paul@paulbarker.me.uk>
	<522C5052.8080600@philipp-wagner.com>
	<CANyK_8feZmbfna1Yt4+cqs4jVhkF=_+wwqkpfhE0yd+oAHZYDQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Sep 2013 00:45:38 +0300
Message-ID: <CAK18fxH9X2iFbx_soQRygBuSxnKh66Hv--YmOdS9Vkyi4efSsQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
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
X-List-Received-Date: Mon, 09 Sep 2013 21:46:03 -0000
Content-Type: multipart/alternative; boundary=f46d044286784a599804e5fa50ff

--f46d044286784a599804e5fa50ff
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 9, 2013 at 5:23 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 8 September 2013 11:24, Philipp Wagner <lists@philipp-wagner.com>
> wrote:
> > Hi,
> >
> > a general question to start: 3.11.0 is out now as well (and it works, at
> > least in my tests), should we add that as well?
> >
>
> I think 3.10 would be a better choice first, as Greg Kroah-Hartman has
> indicated that this will be the next Long-Term Support kernel
> (http://www.kroah.com/log/blog/2013/08/04/longterm-kernel-3-dot-10/)
> and oe-core also has a 3.10 series linux-yocto kernel. I threw in a
> recipe for 3.8 as it's what I was playing with at the time and it
> matches with oe-core also having a 3.8 series kernel.
>
>
So the main idea that i would like to have it here would be: one stable
version, and the last available one. But if people need and use more
version, i don't mind to have all here available.


> > Am 03.09.2013 14:26, Paul Barker wrote:
> >> +PR = "r6"
> >
> > I guess this does not matter, but would r1 not be more natural?
>
> We can probably drop PR completely.
>
>
+1


> >> +UDEV_GE_141 ?= "1"
> >
> > This is already part of linux.inc, is it necessary here again?
>
> I just copied the previous kernel recipe and made my changes. If this
> is unnecessary here (which it looks to be), it'll also want removing
> from the 3.6 and 3.2 recipes.
>
>
+1


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d044286784a599804e5fa50ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Sep 9, 2013 at 5:23 PM, Paul Barker <span dir=3D"ltr">&lt;<=
a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.m=
e.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 8 September 2013 11:24,=
 Philipp Wagner &lt;<a href=3D"mailto:lists@philipp-wagner.com">lists@phili=
pp-wagner.com</a>&gt; wrote:<br>


&gt; Hi,<br>
&gt;<br>
&gt; a general question to start: 3.11.0 is out now as well (and it works, =
at<br>
&gt; least in my tests), should we add that as well?<br>
&gt;<br>
<br>
</div>I think 3.10 would be a better choice first, as Greg Kroah-Hartman ha=
s<br>
indicated that this will be the next Long-Term Support kernel<br>
(<a href=3D"http://www.kroah.com/log/blog/2013/08/04/longterm-kernel-3-dot-=
10/" target=3D"_blank">http://www.kroah.com/log/blog/2013/08/04/longterm-ke=
rnel-3-dot-10/</a>)<br>
and oe-core also has a 3.10 series linux-yocto kernel. I threw in a<br>
recipe for 3.8 as it&#39;s what I was playing with at the time and it<br>
matches with oe-core also having a 3.8 series kernel.<br>
<div class=3D"im"><br></div></blockquote><div><br></div><div>So the main id=
ea that i would like to have it here would be: one stable version, and the =
last available one. But if people need and use more version, i don&#39;t mi=
nd to have all here available.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt; Am 03.09.2013 14:26, Paul Barker wrote:<br>
</div><div class=3D"im">&gt;&gt; +PR =3D &quot;r6&quot;<br>
&gt;<br>
&gt; I guess this does not matter, but would r1 not be more natural?<br>
<br>
</div>We can probably drop PR completely.<br>
<div class=3D"im"><br></div></blockquote><div>=A0</div><div>+1=A0</div><div=
>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt;&gt; +UDEV_GE_141 ?=3D &quot;1&quot;<br>
&gt;<br>
&gt; This is already part of linux.inc, is it necessary here again?<br>
<br>
</div>I just copied the previous kernel recipe and made my changes. If this=
<br>
is unnecessary here (which it looks to be), it&#39;ll also want removing<br=
>
from the 3.6 and 3.2 recipes.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div><div>+1=A0</div><div>=A0</div></div><div><br></div>-- <br=
><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text=
-align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--f46d044286784a599804e5fa50ff--
