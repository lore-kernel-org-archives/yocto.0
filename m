Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A7BE00C03
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:31:25 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id ec20so8201731lab.39
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=paC4OSdV+KXxdR30FsItwCkBOYBJ7+EGCwuCLCum3ZA=;
	b=azM/anX3xKMpg+4bIW2EDbCsCm8AVdAgDCmHXB8SBGVR9qYWnSwk7sJ8s4HgVHEyVT
	do0tafMhkWsWUZWhbAaAViJsDL/2VAytzIU/EbNZM2nfljRkyZQ7VcWYYNUV+9YrXRwm
	SEqtmZWh2wPJ1NDqGJSmGhpTMC1a4dz16K9kXXzdz6GxShmPCSr2erx7OuVNlEsPBmOA
	P6NfKFpuVQ96379UjGYIJLDUARSSCQtVoCY1cP7mp+pwXzMGIO+HFgJMXOJL4zJoHp+V
	V2M/onDm3XvdFDVAEdmwDM+2zT7B8mMeOEr7FZFUb6HogVaaLXcySwbFfsExy4BSILNs
	WuCg==
X-Received: by 10.152.22.37 with SMTP id a5mr6141244laf.4.1397665883716; Wed,
	16 Apr 2014 09:31:23 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Wed, 16 Apr 2014 09:31:03 -0700 (PDT)
In-Reply-To: <4ADBDA85-43D0-4BFA-87FF-4440BCBF289B@gmail.com>
References: <4ADBDA85-43D0-4BFA-87FF-4440BCBF289B@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 16 Apr 2014 09:31:03 -0700
X-Google-Sender-Auth: kSHefOWBiOC712yizWjJzKPhDJ8
Message-ID: <CABcZAN=gmYTK0-rv8ZpA1pUK6ahb7UhyPCaz3MjzO2JYeiha6g@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [poky] ERROR: Function failed: do_rootfs, when using ipk package class
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
X-List-Received-Date: Wed, 16 Apr 2014 16:31:28 -0000
Content-Type: multipart/alternative; boundary=089e0158b54e8381c604f72b72c3

--089e0158b54e8381c604f72b72c3
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 16, 2014 at 9:28 AM, Elvis Dowson <elvis.dowson@gmail.com>wrote:

> I just tries a build with poky master, and meta-xilinx master branch, and
> got the following build error.
>
> For some reason the yocto build process fails is PACKAGE_CLASSES is set to
> package_ipk.
>
> ERROR: Unable to install packages. Command
> '/tool/yocto/build/zc706/tmp/sysroots/x86_64-lux/usr/bin/opkg-cl -f
> /tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image-minimal/1.0-r0/opkg.conf
> -o
> /tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs
> --force_postinstall --prefer-arch-to-version   install run-postinsts
> packagegroup-core-boot' returned 255:
> Installing run-postinsts (1.0-r9) to root...
> Downloading
> file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/run-postinsts_1.0-r9_all.ipk.
> Installing update-rc.d (0.7-r5) to root...
> Downloading
> file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk.
> sh: 1: /tmp/opkg-RUBbug/run-postinsts-mxgou5/preinst: Permission denied
>

Sounds like your /tmp is mounted disallowing execution there, and opkg must
assume it's able to execute its scripts there. Either use a different
package manager, fix opkg to change this behavior, or change your /tmp
mount to no longer be noexec.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0158b54e8381c604f72b72c3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Apr 16, 2014 at 9:28 AM, Elvis Dowson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:elvis.dowson@gmail.com" target=3D"_blank">elvis.dowson@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>I just tries a build with poky master, =
and meta-xilinx master branch, and got the following build error.</div><div=
>

<br></div><div>For some reason the yocto build process fails is PACKAGE_CLA=
SSES is set to package_ipk.=C2=A0</div><div><br></div><div><span style=3D"f=
ont-family:Monaco;font-size:x-small">ERROR: Unable to install packages. Com=
mand &#39;/tool/yocto/build/zc706/tmp/sysroots/x86_64-lux/usr/bin/opkg-cl -=
f /tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/opkg.conf -o /tool/yocto/build/zc706/tmp/work/zc706_zynq7-=
poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs --force_postinstall --p=
refer-arch-to-version =C2=A0 install run-postinsts packagegroup-core-boot&#=
39; returned 255:</span></div>

<div><div><font face=3D"Monaco" size=3D"1">Installing run-postinsts (1.0-r9=
) to root...</font></div><div><font face=3D"Monaco" size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/run-postinsts_1.0-r9_all.ip=
k.</font></div>

<div><font face=3D"Monaco" size=3D"1">Installing update-rc.d (0.7-r5) to ro=
ot...</font></div><div><font face=3D"Monaco" size=3D"1">Downloading file:/t=
ool/yocto/build/zc706/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk.</font>=
</div>

<div><font color=3D"#ff2600" face=3D"Monaco" size=3D"1">sh: 1: /tmp/opkg-RU=
Bbug/run-postinsts-mxgou5/preinst: Permission denied</font></div></div></bl=
ockquote></div><br>Sounds like your /tmp is mounted disallowing execution t=
here, and opkg must assume it&#39;s able to execute its scripts there. Eith=
er use a different package manager, fix opkg to change this behavior, or ch=
ange your /tmp mount to no longer be noexec.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--089e0158b54e8381c604f72b72c3--
