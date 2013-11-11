Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FAB6E017C4
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:19:42 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id t60so752601wes.36
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ydWVQIAvLE1ej1Qk2zcENN1eij+3mex7QkoYcp9HVDs=;
	b=bjcxXKJn6V90iRWWVzDHJiah+GgiQNwb3Tx26pyF7fYzc2QG5jHGNc0wVrZDHMYheF
	oQwClGBEP/kpTz8MTDuh19vJ+dSSNNrZlxBLJet4N2rQWY8UoZcjZDF4F/Fxwf2uarzT
	KqSxErYF0isKpBH9kWy//X2JKRpPZRRwQApLFXQyjIFSFBpZPae6id5PfXY4TQQueVRv
	chTS814ljulsDc515vU6maFPS42zFr9bbjIn1R+49lt54ud8IcRX5/v8OPDRG6Ngg1ZQ
	vdZ/P4EWnamxyWzRSDhOGvwqjmrMpqJ8z2ATv6LNCZVrW3J+Cd5DzR0yDxy1q8bOQ+bn
	NKhw==
X-Gm-Message-State: ALoCoQlEYjS3vhP9z3oNkWYO8wrUKKU92xJi2mx1UmyOr0Chm4SxyAGcJk0IUkLU6+w2krVGMWDB
X-Received: by 10.180.11.37 with SMTP id n5mr11626159wib.25.1384165181057;
	Mon, 11 Nov 2013 02:19:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Mon, 11 Nov 2013 02:19:20 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CANyK_8eRQRCS0o3b6=Y0Q=-W6AjEtb2nWyd3NEJMUVZmfQNzaw@mail.gmail.com>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-7-git-send-email-andrei@gherzan.ro>
	<CANyK_8fT9cf__rs36niVD5mkhXySbioVT16653Zr0tQvwJkh3w@mail.gmail.com>
	<20130823122632.GD3544@jama>
	<CAK18fxHeeE5UWPcNhg2pw+QPHeS-PVwkmOugDFsVivCSPe7eow@mail.gmail.com>
	<CANyK_8eRQRCS0o3b6=Y0Q=-W6AjEtb2nWyd3NEJMUVZmfQNzaw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Nov 2013 12:19:20 +0200
Message-ID: <CAK18fxFczBaAEA5mWQqT-344xjiwMnKjC3yGZ57Y9p-fDKgePA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 07/11] mesa: Use libgl from mesa for raspberrypi
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
X-List-Received-Date: Mon, 11 Nov 2013 10:19:44 -0000
Content-Type: multipart/alternative; boundary=001a11c25b48ed81ae04eae41179

--001a11c25b48ed81ae04eae41179
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 11, 2013 at 6:47 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 24 August 2013 01:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Fri, Aug 23, 2013 at 3:26 PM, Martin Jansa <martin.jansa@gmail.com>
> > wrote:
> >> On Fri, Aug 23, 2013 at 11:59:10AM +0100, Paul Barker wrote:
> >> >
> >> > This really needs to check whether MACHINE="raspberrypi" before
> >> > changing anything. I keep the same stack of layers and just change
> >> > MACHINE when building for raspberrypi and beagleboard.
> >>
> >
> > That's definitely a good idea. Already merged the patch but will rebase /
> > add a new commit.
> >
>
> Any plans to add an 'if' here? If not, I'll add it to my todo list.
>
>
Yes. Will push patch today. Thanks.

ag

--001a11c25b48ed81ae04eae41179
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Oct 11, 2013 at 6:47 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 24 August 2013 01:02, A=
ndrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a=
>&gt; wrote:<br>


&gt; On Fri, Aug 23, 2013 at 3:26 PM, Martin Jansa &lt;<a href=3D"mailto:ma=
rtin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt; On Fri, Aug 23, 2013 at 11:59:10AM +0100, Paul Barker wrote:<br>
&gt;&gt; &gt;<br>
</div><div class=3D"im">&gt;&gt; &gt; This really needs to check whether MA=
CHINE=3D&quot;raspberrypi&quot; before<br>
&gt;&gt; &gt; changing anything. I keep the same stack of layers and just c=
hange<br>
&gt;&gt; &gt; MACHINE when building for raspberrypi and beagleboard.<br>
&gt;&gt;<br>
&gt;<br>
&gt; That&#39;s definitely a good idea. Already merged the patch but will r=
ebase /<br>
&gt; add a new commit.<br>
&gt;<br>
<br>
</div>Any plans to add an &#39;if&#39; here? If not, I&#39;ll add it to my =
todo list.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Yes. Will push patch today. Thanks.=A0</div></div><br clear=
=3D"all"><div><span style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium;text-align:center">ag</span><br>

</div>
</div></div>

--001a11c25b48ed81ae04eae41179--
