Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E5AAE0030B
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 21:37:55 -0700 (PDT)
Received: by eekb45 with SMTP id b45so65606eek.35
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 21:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1OSi9KPzfMUqS2m+4B1eOnUgTJQImiZYs5qnVj2IhRI=;
	b=P+5lWkmcH8p9DanVUx5Oew0Va3hzd+L6gLFuhApbBJoq7uVp4LTr0YVqvtaEOHGt+9
	SIT7gu+F1ei1r68oEUiRmfsxjByHg5AYNLGw1lC0odLqN0inbBagtPOg8ILgb59umYUn
	cxunW00+p/qQUuBaZ1oDy74g9Pj8N3lJVHuVsYB6nJdbQc5I1AUfabsFjr0u0h/TsloN
	epmOsXvrtsBkC94hKHMU4l/YniKWmGQ/Q3UIRmCKgBVBJc4wLY2NLfexBp3TM0o8WLfG
	uPVB2kyxt3HV3XQb58HT0hU3QnZojI2kMyTKzoXdkr0zkGectY2sPplHvSorh/n32Uyl
	Wscg==
MIME-Version: 1.0
Received: by 10.14.99.129 with SMTP id x1mr190965eef.108.1337143074445; Tue,
	15 May 2012 21:37:54 -0700 (PDT)
Received: by 10.14.2.132 with HTTP; Tue, 15 May 2012 21:37:54 -0700 (PDT)
In-Reply-To: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
References: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
Date: Tue, 15 May 2012 21:37:54 -0700
Message-ID: <CAMKF1srwhxNcOkqouicvy9C4HviCLH3k0n+FjSHnP5NV-5ArpQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How is the list in package.manifest derived?
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
X-List-Received-Date: Wed, 16 May 2012 04:37:56 -0000
Content-Type: multipart/alternative; boundary=bcaec53968c8f75b0a04c01fe133

--bcaec53968c8f75b0a04c01fe133
Content-Type: text/plain; charset=UTF-8

On Tuesday, May 15, 2012, Rudolf Streif <rudolf.streif@linux.com> wrote:
> I used poky-denzil-7.0 to build a core-image-minimal for the BeagleBoard.
Now I am looking for a list of everything that went into my image together
with the license information. The logical thing seems to be
${TMPDIR}/deploy/licenses/core-image-minimal-beagleboard-<timestamp>/package.manifest:
> base-files
> base-passwd
> bash
> busybox
> busybox-syslog
> busybox-udhcpc
> initscripts
> libc6
> libgcc1
> libtinfo5
> libusb-1.0-0
> libusb-compat
> modutils-initscripts
> ncurses-terminfo-base
> netbase
> pciutils-ids
> sysvinit
> sysvinit-inittab
> sysvinit-pidof
> task-core-boot
> tinylogin
> udev
> udev-extraconf
> udev-utils
> update-alternatives-cworth
> update-rc.d
> usbutils-ids
> However, I don't think this is everything that went into the image. I
would expect the kernel to be in the list as well as module-init-tools and
u-boot. Apparently package.manifest and the corresponding license.manifest
for an image target do not contain all the licensing information that a
device builder would need to give to the end customer. How is that list
created?

I think kernel and uboot  are not bundled into image but kernel modules are
why module-init-tools does not appear there might be a bug
> Rudi

--bcaec53968c8f75b0a04c01fe133
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Tuesday, May 15, 2012, Rudolf Streif &lt;<a href=3D"mailto:rudol=
f.streif@linux.com">rudolf.streif@linux.com</a>&gt; wrote:<br>&gt; I used p=
oky-denzil-7.0 to build a core-image-minimal for the BeagleBoard. Now I am =
looking for a list of everything that went into my image together with the =
license information. The logical thing seems to be ${TMPDIR}/deploy/license=
s/core-image-minimal-beagleboard-&lt;timestamp&gt;/package.manifest:<br>
&gt; base-files<br>&gt; base-passwd<br>&gt; bash<br>&gt; busybox<br>&gt; bu=
sybox-syslog<br>&gt; busybox-udhcpc<br>&gt; initscripts<br>&gt; libc6<br>&g=
t; libgcc1<br>&gt; libtinfo5<br>&gt; libusb-1.0-0<br>&gt; libusb-compat<br>
&gt; modutils-initscripts<br>&gt; ncurses-terminfo-base<br>&gt; netbase<br>=
&gt; pciutils-ids<br>&gt; sysvinit<br>&gt; sysvinit-inittab<br>&gt; sysvini=
t-pidof<br>&gt; task-core-boot<br>&gt; tinylogin<br>&gt; udev<br>&gt; udev-=
extraconf<br>
&gt; udev-utils<br>&gt; update-alternatives-cworth<br>&gt; update-rc.d<br>&=
gt; usbutils-ids<br>&gt; However, I don&#39;t think this is everything that=
 went into the image. I would expect the kernel to be in the list as well a=
s module-init-tools and u-boot. Apparently package.manifest and the corresp=
onding license.manifest for an image target do not contain all the licensin=
g information that a device builder would need to give to the end customer.=
 How is that list created?<br>
<br>I think kernel and uboot =C2=A0are not bundled into image but kernel mo=
dules are why module-init-tools does not appear there might be a bug <br>&g=
t; Rudi

--bcaec53968c8f75b0a04c01fe133--
