Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7024AE01662
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 08:04:06 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id w8so754364qac.15
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 08:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=N5rZI7yia5NUhJjn9FvJqdyFIkoT0kkUqNJgeP1kokc=;
	b=Wdy7oD1uX4NHsAINNeKbFEiRO4u7dVCu2r8amkN1AjDx+auXpbcuFJe//2vWpiwkpg
	5FHr427YED9mdL9FAahiu5i1dO62a8ZCweejEQ6hOsrlazXMbcXyM29u5tl5WR6IzAsz
	nCVjdNwyg+XYXIZ8tAC7vlXakMu1C2KHFUIj61yAd+tqLr9e2I5WF4WJOBf6N0VFXTQA
	IoDCocF4HYTQwAbTc/es0wsByL4xEwK1jajl54tpNQyRDsK+X1Wc3xv52RzBOE6mw0Hc
	qrglqyjj5k0phRXID6u5gc2OpSE0r0VI9MqZGM035Ntg6iv4u0R5vxMja03fJIjWeTCQ
	HDWQ==
MIME-Version: 1.0
X-Received: by 10.224.135.131 with SMTP id n3mr3252763qat.109.1382108645300;
	Fri, 18 Oct 2013 08:04:05 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Fri, 18 Oct 2013 08:04:05 -0700 (PDT)
Date: Fri, 18 Oct 2013 09:04:05 -0600
Message-ID: <CANwz6nzWhGoeO8RsfokpmvbUV1VCotW77JwK_5yVCkmbgZJ5JA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: uImage instead of zImage
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
X-List-Received-Date: Fri, 18 Oct 2013 15:04:08 -0000
Content-Type: multipart/alternative; boundary=001a11c2e390d8258804e9053ea4

--001a11c2e390d8258804e9053ea4
Content-Type: text/plain; charset=ISO-8859-1

hello all,
I am trying to get a uImage instead of zImage
My beagleboard before created a uImage now with dora I get a zImage.

in the mega-manual I see the following .
KERNEL_IMAGETYPE

The type of kernel to build for a device, usually set by the machine
configuration files and defaults to "zImage". This variable is used when
building the kernel and is passed to make as the target to build.
.
/home/vidal/POKY/build101613_dora/poky/meta/conf/machine/include/arm/arch-arm.inc
I have tried
KERNEL_IMAGETYPE ?= "uImage"
KERNEL_IMAGETYPE = "uImage"
and nothing changes I still get a zImage.
Also tried in local.conf
Any and all help will be appreciated.


Thanks

--001a11c2e390d8258804e9053ea4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>hello all,<br></div>I am trying t=
o get a uImage instead of zImage <br></div><div>My beagleboard before creat=
ed a uImage now with dora I get a zImage. <br></div><div><br></div><div><dl=
>
<dt>in the mega-manual I see the following .<br></dt><dt><span class=3D""><=
/span></dt><dt><span class=3D"">KERNEL_IMAGETYPE</span></dt><dd class=3D"">=
<p>The type of kernel to build for a device, usually set by the
                    machine configuration files and defaults to &quot;zImag=
e&quot;.
                    This variable is used
                    when building the kernel and is passed to <code class=
=3D"">make</code> as the target to
                    build.</p></dd></dl>.<br>/home/vidal/POKY/build101613_d=
ora/poky/meta/conf/machine/include/arm/arch-arm.inc<br></div>I have tried <=
br></div>KERNEL_IMAGETYPE ?=3D &quot;uImage&quot; <br>KERNEL_IMAGETYPE =3D =
&quot;uImage&quot;<br>
</div>and nothing changes I still get a zImage.<br></div><div>Also tried in=
 local.conf<br></div>Any and all help will be appreciated.<br>=A0<br><div><=
div><br></div><div>Thanks <br><br></div></div></div>

--001a11c2e390d8258804e9053ea4--
