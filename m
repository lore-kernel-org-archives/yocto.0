Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE07AE00280
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 08:09:24 -0700 (PDT)
Received: by lagz14 with SMTP id z14so3870142lag.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 08:09:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=XvKUCqBLdvBL7+z8JNk6eBenoLB68D8UxhWE/8iyuhk=;
	b=ig42k5e4qaauL9jYBlwROpzgJ+Nkygys7Iti/O+3khIo2DmiV3HJYl+xCIej2jL1Pw
	bi6e/l40WSknCHFucr1r2rWK7MhAifSzGyozqoy68YLfKNcjX4CPB5dCXRM6aLOfqapu
	Rtusv4+bd6MFiVsNQ1Rdl/o6VSq2XoS2id5iC8xswcB9DQwaUHHK4Vs17BV9suI44dj6
	wD26sOH5QkG2ThzjfUOBTYo9++ts5KYKuGW9hOOkPY8EGCXtCJxHCe+tO1g96/qARrQF
	mBviFQS3o010S0UxpzkxKhNwHzuqae0Cf5xITr0O7JjfHXiG3XrSYn35vqcMG17uLyoj
	KPbQ==
Received: by 10.152.109.198 with SMTP id hu6mr11706914lab.21.1343660963425;
	Mon, 30 Jul 2012 08:09:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Mon, 30 Jul 2012 08:09:03 -0700 (PDT)
In-Reply-To: <103362898.T6h1MoqcIn@helios>
References: <CANsUPaMnm2UdcbmdHkQoRD3sgvG+bkOqezMopS8DcuoK=31B2A@mail.gmail.com>
	<103362898.T6h1MoqcIn@helios>
From: Giovanni Foiani <fnognn@unife.it>
Date: Mon, 30 Jul 2012 17:09:03 +0200
Message-ID: <CANsUPaOQ1Pp_jeO5gfcKMN-G9s1VV3_Onxsx5dxm0MS1ouSqVQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQlxxgB5JtHpC43pP2eWIPW/KzOXizS7xaxsamA4TnHhkiNVPwdcDiSHUwn+K8SkR2FZ42vz
Cc: yocto@yoctoproject.org
Subject: Re: Delete unused hob images
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
X-List-Received-Date: Mon, 30 Jul 2012 15:09:25 -0000
Content-Type: multipart/alternative; boundary=bcaec54b49d66c6be504c60d7227

--bcaec54b49d66c6be504c60d7227
Content-Type: text/plain; charset=ISO-8859-1

Ok, thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Mon, Jul 30, 2012 at 4:42 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 30 July 2012 15:18:37 Giovanni Foiani wrote:
> > I read this section in Poky Reference manual:
> >
> > *A.2.13. build/tmp/deploy/images/*
> > *
> > *
> > *This directory receives complete filesystem images. If you want to flash
> > the resulting image from a build onto a device, look here for the image.*
> > *
> > *
> > *Note, you should not remove any files from this directory by hand in an
> > attempt to rebuild an image. If you want to clean out the cache, re-run
> the
> > build using the following BitBake command: *
> > *     $ bitbake -c cleanall <target>*
> >
> > I built many images using hob and in my *build/tmp/deploy/images/ *folder
> > there are a lot of rootfs images (like
> > hob-image-imx53qsb-<timestamp>.rootfs.ext3 etc..) and I want to remove
> the
> > unused ones to free some space..
> >
> > I tried tp run:
> >
> > *bitbake -c cleanall * hob-image-imx53qsb-<timestamp>
> >
> > but I got:
> > ERROR: Nothing PROVIDES 'hob-image-imx53qsb-<timestamp>'
>
> I'm not sure where this came from originally, but it is not correct. I'll
> talk
> to Scott R about fixing this part of the manual.
>
> > Can I safely remove these files by hand?
>
> The hob-image-*, yes. In fact any actual image files in deploy/images are
> OK to
> delete (excluding *zImage*, *uImage*, etc. - those are kernels). All the
> warnings are trying to prevent is people deleting the entire contents of
> deploy/images and then wondering why the kernel, bootloader etc. that get
> produced as part of the process of building an image but are not part of
> the
> image itself aren't re-created when they build the image again afterwards.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--bcaec54b49d66c6be504c60d7227
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Ok, thanks<div><br></div><div>Giovanni<br clear=3D"all">
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Mon, Jul 30, 2012 at 4:42 PM, Paul Eg=
gleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.co=
m" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">

<div class=3D"im">On Monday 30 July 2012 15:18:37 Giovanni Foiani wrote:<br=
>
&gt; I read this section in Poky Reference manual:<br>
&gt;<br>
</div>&gt; *A.2.13. build/tmp/deploy/images/*<br>
&gt; *<br>
&gt; *<br>
&gt; *This directory receives complete filesystem images. If you want to fl=
ash<br>
&gt; the resulting image from a build onto a device, look here for the imag=
e.*<br>
&gt; *<br>
&gt; *<br>
&gt; *Note, you should not remove any files from this directory by hand in =
an<br>
<div class=3D"im">&gt; attempt to rebuild an image. If you want to clean ou=
t the cache, re-run the<br>
</div>&gt; build using the following BitBake command: *<br>
&gt; * =A0 =A0 $ bitbake -c cleanall &lt;target&gt;*<br>
&gt;<br>
&gt; I built many images using hob and in my *build/tmp/deploy/images/ *fol=
der<br>
<div class=3D"im">&gt; there are a lot of rootfs images (like<br>
&gt; hob-image-imx53qsb-&lt;timestamp&gt;.rootfs.ext3 etc..) and I want to =
remove the<br>
&gt; unused ones to free some space..<br>
&gt;<br>
&gt; I tried tp run:<br>
&gt;<br>
</div>&gt; *bitbake -c cleanall * hob-image-imx53qsb-&lt;timestamp&gt;<br>
<div class=3D"im">&gt;<br>
&gt; but I got:<br>
&gt; ERROR: Nothing PROVIDES &#39;hob-image-imx53qsb-&lt;timestamp&gt;&#39;=
<br>
<br>
</div>I&#39;m not sure where this came from originally, but it is not corre=
ct. I&#39;ll talk<br>
to Scott R about fixing this part of the manual.<br>
<div class=3D"im"><br>
&gt; Can I safely remove these files by hand?<br>
<br>
</div>The hob-image-*, yes. In fact any actual image files in deploy/images=
 are OK to<br>
delete (excluding *zImage*, *uImage*, etc. - those are kernels). All the<br=
>
warnings are trying to prevent is people deleting the entire contents of<br=
>
deploy/images and then wondering why the kernel, bootloader etc. that get<b=
r>
produced as part of the process of building an image but are not part of th=
e<br>
image itself aren&#39;t re-created when they build the image again afterwar=
ds.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--bcaec54b49d66c6be504c60d7227--
