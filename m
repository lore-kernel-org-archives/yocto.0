Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D430E004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 08:32:12 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id b11so11180090iee.11
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 08:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nbxeMfZbFHAnasdunsPkCFkNpMfj9QN6ha2aMng7n+Q=;
	b=HZ6UWiwIYgyFx0TaFaOLJ6BBpw3f/r5U8QNULwswx37T8dvhw8lI3eOWwv7iXBVbsU
	uBbBAolIARTKughTrI7NIUgjEEOlaCKx8aChH+xdn65f/JqEWDpGx9L0wP0EwUmWBvyj
	QSBNJrzzsGSR3RcSEiYKeJh/4H9Mdi/uL0s/LWVK4LalRJgb03ootGW6GEeH1FAzP+zY
	liU3J47ilgIgp4zbbPH6D393KG0+F6TDUJW/JKdBdYHKHQSEYEIC/j8JwxKTxHx6xbSf
	QpYznj3McvmGxd50aKeLMiI+fqy9+IUuskS7NdI4iNmiQW1mi9PXauo4NwiMmh3dq8PC
	yx/A==
MIME-Version: 1.0
X-Received: by 10.50.136.201 with SMTP id qc9mr9695068igb.47.1369841531846;
	Wed, 29 May 2013 08:32:11 -0700 (PDT)
Received: by 10.50.34.163 with HTTP; Wed, 29 May 2013 08:32:11 -0700 (PDT)
In-Reply-To: <2809625.nUpYsyq62m@helios>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
Date: Wed, 29 May 2013 16:32:11 +0100
Message-ID: <CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using module_autoload
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
X-List-Received-Date: Wed, 29 May 2013 15:32:12 -0000
Content-Type: multipart/alternative; boundary=089e01229ed8e787c704dddd15bd

--089e01229ed8e787c704dddd15bd
Content-Type: text/plain; charset=ISO-8859-1

Martin, Paul, thanks for your help.
Yes, the recipe does inherit module.
Any other problem that you can think off?

Thanks a lot in advance,
Katu


2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
> > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
> > > Hi,
> > > I'm failing to load a kernel module named spike doing this:
> > > 1) add the recipe (inherit module), based in a Makefile with
> > > modules_install:
> > > $(MAKE) INSTALL_MOD_DIR=kernel/drivers/spike -C $(KERNEL_SRC) M=$(SRC)
> > > modules_install
> > > 2) Add the package to the image with IMAGE_INSTALL += "spike" in the
> > > local.conf file
> > > 3) In the machine/mymachine.conf I've added
> > >
> > >         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "spike"
> > >         module_autoload_spike = "spike"
> > >
> > > The driver gets added to the image and I can load it with insmod spike,
> > > however, I would like to load it at boot time.
> > > A workaround is to create a file with the name spike.conf and write
> spike
> > > inside. Copying that file to /etc/modules-load.d/spike.conf
> > > loads the driver correctly, but I need to do it from a recipe.
> > >
> > > Can anyone spot what am I doing wrong?
> >
> > module_autoload won't work with external module unless you inherit also
> > kernel-module-split
>
> Note that module.bbclass already does this, so if the external module
> recipe
> already does "inherit module" then that is not the problem.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e01229ed8e787c704dddd15bd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Martin, Paul, thanks for your help.=A0<div>Yes, the recipe=
 does inherit module.=A0<div style>Any other problem that you can think off=
?</div></div><div style><br></div><div style>Thanks a lot in advance,</div>=
<div style>
Katu</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">2013/5/29 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.egg=
leton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&=
gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ednesday 29 May 2013 16:39:48 Martin Jansa wrote:<br>
&gt; On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt; I&#39;m failing to load a kernel module named spike doing this:<b=
r>
&gt; &gt; 1) add the recipe (inherit module), based in a Makefile with<br>
&gt; &gt; modules_install:<br>
&gt; &gt; $(MAKE) INSTALL_MOD_DIR=3Dkernel/drivers/spike -C $(KERNEL_SRC) M=
=3D$(SRC)<br>
&gt; &gt; modules_install<br>
&gt; &gt; 2) Add the package to the image with IMAGE_INSTALL +=3D &quot;spi=
ke&quot; in the<br>
&gt; &gt; local.conf file<br>
&gt; &gt; 3) In the machine/mymachine.conf I&#39;ve added<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 =A0 =A0 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D &quot;sp=
ike&quot;<br>
&gt; &gt; =A0 =A0 =A0 =A0 module_autoload_spike =3D &quot;spike&quot;<br>
&gt; &gt;<br>
&gt; &gt; The driver gets added to the image and I can load it with insmod =
spike,<br>
&gt; &gt; however, I would like to load it at boot time.<br>
&gt; &gt; A workaround is to create a file with the name spike.conf and wri=
te spike<br>
&gt; &gt; inside. Copying that file to /etc/modules-load.d/spike.conf<br>
&gt; &gt; loads the driver correctly, but I need to do it from a recipe.<br=
>
&gt; &gt;<br>
&gt; &gt; Can anyone spot what am I doing wrong?<br>
&gt;<br>
&gt; module_autoload won&#39;t work with external module unless you inherit=
 also<br>
&gt; kernel-module-split<br>
<br>
</div></div>Note that module.bbclass already does this, so if the external =
module recipe<br>
already does &quot;inherit module&quot; then that is not the problem.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--089e01229ed8e787c704dddd15bd--
