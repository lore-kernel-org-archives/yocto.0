Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28A4BE006C1
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 10:25:50 -0800 (PST)
Received: by mail-qa0-f46.google.com with SMTP id j5so1967897qaq.5
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 10:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fP5/kelk7ZdLSVGuiRJdtFhW0rPFpSseS8ZFYVjbt/I=;
	b=nVi7PnIgCkPHd2m6vND12zziLeTHIJDIrzuRI/bfPyBpDJ+eqqvWIM5irXRAfZ/xn1
	n6LWJh0dQpGbwJiFupUxE9gLiIqGNrzkexqRa0dYmWg7PGBrm6IQ4oyScKcmg3XN8jth
	xlBUlZeks6jwI14SmYLpo7OSov1b75Qt4vYKl7KqMHxdBoWnYSgsldytrGD8VyW7IUY4
	jw2eyFdrEYdDNG3E/WmcoYmqe7AT2mPaQ+3xOVuzXoc0MhBR9Fdo5B/XSMv6VslAhA5m
	L05pe4LsNP0Ovat8LvG+Nu+6Hn8ofFQWfFHSCmHKAybxaNWbzY2tqt3GNyMRuOuTzHc7
	hRjg==
MIME-Version: 1.0
X-Received: by 10.49.84.195 with SMTP id b3mr211999253qez.32.1389205550487;
	Wed, 08 Jan 2014 10:25:50 -0800 (PST)
Received: by 10.96.81.104 with HTTP; Wed, 8 Jan 2014 10:25:50 -0800 (PST)
In-Reply-To: <2104439.ERPX2TAWut@helios>
References: <CAB3sqtY8VkwaU8fLT3C28a-WWkW6rTHST6WEv+ijZj6_moT-_w@mail.gmail.com>
	<8631278.WqvAtfDsah@helios>
	<CAB3sqtaURWiPHOBHe4a5n3SGEskGrohRseT6S1X97K0SNcqZnw@mail.gmail.com>
	<2104439.ERPX2TAWut@helios>
Date: Wed, 8 Jan 2014 18:25:50 +0000
Message-ID: <CAB3sqtZ3B1jTN+wy-0Leh9S36SHxF3oS66nZJD1LOb6D5iuyKg@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Smart PM for upgrade the full image
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
X-List-Received-Date: Wed, 08 Jan 2014 18:25:52 -0000
Content-Type: multipart/alternative; boundary=047d7bb04c005b78ff04ef799f64

--047d7bb04c005b78ff04ef799f64
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,
Thanks for your reply.

As a work around I think I can dump a list of the installed packages from a
target that is running the latest SW.
$smart query --installed --hide-version > file.txt

Then on customer targets I could run the  install command:
$smart install `echo $(cat file.txt)` -y

At least this is going to update currently installed packages as well as
 install new ones.

I still need to write a script to remove unwanted ones.

Thanks,
Tarek



On Wed, Jan 8, 2014 at 3:39 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Wednesday 08 January 2014 14:07:57 Tarek El-Sherbiny wrote:
> > On Wed, Jan 8, 2014 at 1:33 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com
> > > wrote:
> > > On Wednesday 08 January 2014 12:52:42 Tarek El-Sherbiny wrote:
> > > > I have several targets deployed in multiple sites. Each target might
>  be
> > > > running  a different version of the product rootfs image. When I
> release
> > > > a new rootfs image I would like to use the smart command on each
> target
> > > > at the customer site to upgrade the software to the latest image.
> Going
> > > > through each package and install it separately is inefficient way of
> > > > handling the upgrade and I don't expect the customer to have the
> > > > knowledge for doing so.
> > > >
> > > > What we really need is a smart command to compare the latest rootfs
> > > > image and install, remove or un-change packages based on what is
> > > > currently installed.
> > > >
> > > > Can the smart command achieve that or do I need to write my own
> script?
> > >
> > > Isn't this the same question you asked the other day? i.e., this is
> "smart
> > > upgrade".
> >
> > Smart upgrade only upgrades packages that is currently installed. It
> > doesn't install new packages nor remove unwanted packages.
> > Is that not true?
>
> That is true, yes. As far as I know, smart has no capabilities in this area
> beyond what is offered through conflicts - and for situations where one
> package
> replaces another, with any of the package management backends we support
> you
> should use RPROVIDES + RREPLACES + RCONFLICTS to ensure that the old name
> is
> redirected to the new name, new package is installed automatically, and the
> old package is removed (respectively).
>
> If it's a straight old image -> new image upgrade, you'll probably have to
> look at other tools; package managers don't really handle this situation
> well
> - at least not out of the box.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
*Tarek*

--047d7bb04c005b78ff04ef799f64
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div>Thanks for your reply.</div><div><br></div><d=
iv>As a work around I think I can dump a list of the installed packages fro=
m a target that is running the latest SW.=A0</div><div>$smart query --insta=
lled --hide-version &gt; file.txt</div>
<div><br></div><div>Then on customer targets I could run the =A0install com=
mand:</div><div>$smart install `echo $(cat file.txt)` -y</div><div><br></di=
v><div>At least this is going to update currently installed packages as wel=
l as =A0install new ones.</div>
<div><br></div><div>I still need to write a script to remove unwanted ones.=
</div><div><br></div><div>Thanks,</div><div>Tarek</div><div><br></div></div=
><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jan =
8, 2014 at 3:39 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
aul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 08 January 20=
14 14:07:57 Tarek El-Sherbiny wrote:<br>
&gt; On Wed, Jan 8, 2014 at 1:33 PM, Paul Eggleton &lt;<a href=3D"mailto:pa=
ul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a><br>
&gt; &gt; wrote:<br>
</div><div class=3D"im">&gt; &gt; On Wednesday 08 January 2014 12:52:42 Tar=
ek El-Sherbiny wrote:<br>
&gt; &gt; &gt; I have several targets deployed in multiple sites. Each targ=
et might =A0be<br>
&gt; &gt; &gt; running =A0a different version of the product rootfs image. =
When I release<br>
&gt; &gt; &gt; a new rootfs image I would like to use the smart command on =
each target<br>
&gt; &gt; &gt; at the customer site to upgrade the software to the latest i=
mage. Going<br>
&gt; &gt; &gt; through each package and install it separately is inefficien=
t way of<br>
&gt; &gt; &gt; handling the upgrade and I don&#39;t expect the customer to =
have the<br>
&gt; &gt; &gt; knowledge for doing so.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What we really need is a smart command to compare the latest=
 rootfs<br>
&gt; &gt; &gt; image and install, remove or un-change packages based on wha=
t is<br>
&gt; &gt; &gt; currently installed.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Can the smart command achieve that or do I need to write my =
own script?<br>
&gt; &gt;<br>
&gt; &gt; Isn&#39;t this the same question you asked the other day? i.e., t=
his is &quot;smart<br>
&gt; &gt; upgrade&quot;.<br>
&gt;<br>
</div><div class=3D"im">&gt; Smart upgrade only upgrades packages that is c=
urrently installed. It<br>
&gt; doesn&#39;t install new packages nor remove unwanted packages.<br>
&gt; Is that not true?<br>
<br>
</div>That is true, yes. As far as I know, smart has no capabilities in thi=
s area<br>
beyond what is offered through conflicts - and for situations where one pac=
kage<br>
replaces another, with any of the package management backends we support yo=
u<br>
should use RPROVIDES + RREPLACES + RCONFLICTS to ensure that the old name i=
s<br>
redirected to the new name, new package is installed automatically, and the=
<br>
old package is removed (respectively).<br>
<br>
If it&#39;s a straight old image -&gt; new image upgrade, you&#39;ll probab=
ly have to<br>
look at other tools; package managers don&#39;t really handle this situatio=
n well<br>
- at least not out of the box.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><i><font color=3D"#666666" face=3D"arial, helvetica, sans-=
serif">Tarek</font></i></div>
</div>

--047d7bb04c005b78ff04ef799f64--
