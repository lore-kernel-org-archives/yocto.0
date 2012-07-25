Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EA2E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:56:24 -0700 (PDT)
Received: by yenl5 with SMTP id l5so502795yen.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:56:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=J7p3XC02x3xfk3P7zIDIK8tn1rzKQSuJN7CzwEgJRWQ=;
	b=RY8cuMv2jO7X2R8eyCHav6MuGdXAzhLtuEuzWAeM56TG9F3D8iT4TSJBOLLhj3f9vD
	DWqJCn1ca0sHSGMv31M6yBc3oi0GDfQGJDdHC29MvWwIZuho/QyxQ5BzgDnSEemLk4P3
	8GJEpyFIH/qX28ky6g+jVvnhzQf4Ae4C47Y8C15XtFM+KicFaaNCUii+ptvB8TJZ+QCY
	kAX2lf98qForHGBqHd56VHCAw76jFh8y8GK+Iw9sERBZApUTN8AYbywztjqifo2Zv8o9
	FMMlr7dmP6Cq8wI8Z8m53xiVTuhR/KkVgWcgLgxO+QtlzEwUYTG85Gvww2V9yR99pvOh
	N9CQ==
Received: by 10.43.70.71 with SMTP id yf7mr22647745icb.14.1343206583677; Wed,
	25 Jul 2012 01:56:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.139.164 with HTTP; Wed, 25 Jul 2012 01:56:03 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CANsUPaM2Vc4MsrjfXy4sgsM=5i3-UFpg=T3sdG43rP_cKQ-HbQ@mail.gmail.com>
References: <CANsUPaM2Vc4MsrjfXy4sgsM=5i3-UFpg=T3sdG43rP_cKQ-HbQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 25 Jul 2012 11:56:03 +0300
Message-ID: <CAK18fxEz8R5ighVjaQPAFXMK021Jom8VGshPYqkz2KKjfjXw5A@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
X-Gm-Message-State: ALoCoQmCgF+1SWqIE7l367lqy968FzuccAn3Sq1v7fg5tuQprexHjPimYI2D/eDqJkM3pDggctiU
Cc: yocto@yoctoproject.org
Subject: Re: Yocto .sdcard file missing after build
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
X-List-Received-Date: Wed, 25 Jul 2012 08:56:25 -0000
Content-Type: multipart/alternative; boundary=bcaec51d221247b3ac04c5a3a7a7

--bcaec51d221247b3ac04c5a3a7a7
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 25, 2012 at 11:43 AM, Giovanni Foiani <fnognn@unife.it> wrote:

> Hi,
>
> I built some images using the latest Yocto release (with Hob) on a Ubuntu
> 10.04 32 bit, but when the process finishes (with success) I can't find
> .sdcard files into "*tmp/deploy/images*" folder.
>

Not all images create .sdcard files. What image are you talking about? sd
images are used for machines like imx / rpi where rootfs and/or kernel
and/or boot-loader are used from sd. In qemu ext3 images are used for
rootfs and kernel loaded separately.


> Some time ago I built some other images using a Ubuntu 11.04 32 bit and
> .sdcard files were created properly.
> Could it be a problem of max file size in Ubuntu 10.04?
> Another question...sdcard files that I built using Ubuntu 11.04 (32 bit)
> were about 3 GByte, is there a way or configuration to reduce this size?
>
> Yes. Use a compression extension. For example sdcard.xz.

ag

--bcaec51d221247b3ac04c5a3a7a7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Wed, Jul 25, 2012 at 11:43 AM, Giovanni Foian=
i <span dir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it" target=3D"_blank=
">fnognn@unife.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

Hi,<div><br></div><div>I built some images using the latest Yocto release (=
with Hob) on a Ubuntu 10.04 32 bit, but when the process finishes (with suc=
cess) I can&#39;t find .sdcard files into &quot;<i>tmp/deploy/images</i>&qu=
ot; folder.</div>

</blockquote><div><br></div><div>Not all images create .sdcard files. What =
image are you talking about? sd images are used for machines like imx / rpi=
 where rootfs and/or kernel and/or=A0boot-loader=A0are used from sd. In qem=
u ext3 images are used for rootfs and kernel loaded separately.=A0</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">

<div>Some time ago I built some other images using=A0a Ubuntu 11.04 32 bit =
and .sdcard files were created properly.</div><div>Could it be a problem of=
 max file size in Ubuntu 10.04?</div><div>Another question...sdcard files t=
hat I built using=A0Ubuntu 11.04 (32 bit) were about 3 GByte, is there a wa=
y or configuration to reduce this size?</div>



<div><br></div></blockquote><div>Yes. Use a compression extension. For exam=
ple sdcard.xz.</div><div>=A0</div><div>ag</div></div>

--bcaec51d221247b3ac04c5a3a7a7--
