Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45ECDE017FC
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 01:56:18 -0800 (PST)
Received: by mail-oa0-f42.google.com with SMTP id l6so548149oag.29
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 01:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=VwGjl47QE8k7KKOv9hN31fqvWbIfie51Kyg1ld0Y6ho=;
	b=H3aKw1kmSVXHYQhfvFMLtJzIe6ydtcirXfg22kzs+x8YIYOIqo+xD/DKKBR4J/qEI8
	j0v2uOzvJmo8GgnsQwOrExoBFRkoM2P5ZepK8G7OVvEj5CgIcCTStw+p/5E/+oczwuYK
	0pK2zJJ9higxBFgj24t3mQigTaMfsIeSBuCUdff7Dwir/VY3QfINywk1Kz5YrpGhJ7ft
	kv7jDnscs9f++oU54wwR/+T8xCvEu0Q8Qil/hEpCg+ZBgv6CcetDqy0Z6GELh0PH0lwz
	vsLeJZRZbvzdee/FbCxfZI5gqIP2BxRs7hM6drBSEop232WBO3UtvgK3vTHTLP1ifZBv
	0RDw==
MIME-Version: 1.0
X-Received: by 10.60.93.67 with SMTP id cs3mr6096183oeb.12.1383818177906; Thu,
	07 Nov 2013 01:56:17 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Thu, 7 Nov 2013 01:56:17 -0800 (PST)
In-Reply-To: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
References: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
Date: Thu, 7 Nov 2013 10:56:17 +0100
Message-ID: <CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc-cross-canadian-arm: found library in wrong location
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
X-List-Received-Date: Thu, 07 Nov 2013 09:56:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 6, 2013 at 12:32 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> Hi, I am getting the below error when populating the sdk for our Yocto
> 1.5 based image.
>
> WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
> location: /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
>
> Never got this on Yocto 1.4. I am not even planning of installing
> anything in /opt so this really came out of nowhere. There is nothing
> installed in /opt at the moment.
> Did it actually expect to find something in /opt? And in that case,
> how can it? It can not know where the toolchain will be installed!?
> Somebody that can shed some light on this one? Can we safely ignore it?

Ok, I started to look some more into this but unfortunately my
knowledge about how bitbake is picking up recipes etc. is way too
limited to explain why this is happening. I searched for
gcc-cross-canadian in our layers and it can be found here:

meta/recipes-devtools/gcc/gcc-cross-canadian.inc
meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
meta/recipes-devtools/gcc/gcc-cross-canadian_4.8.bb
meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cross-canadian_4=
.6.bb

So, my question now is: why does it pickup gcc 4.6 from
meta-openembedded when there are better alternatives in oe-core?

We do not tell our bitbake to search in meta-opemembedded/toolchain-layer?
This is our current setting of BBLAYERS in bblayers.conf:

BBLAYERS ?=3D " \
  /home/user/poky/meta \
  /home/user/poky/meta-yocto \
  /home/user/poky/meta-yocto-bsp \
  /home/user/poky/meta-openembedded/meta-oe \
  "

Even if we can get some understanding of why the wrong gcc is picked
up, the QA issue might still be there of course.
But the selection of gcc version from meta-openembedded currently
seems even more strange at the moment.


> Thanks.
> Hans
>
> ---
>
> Build Configuration:
> BB_VERSION        =3D "1.20.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "SUSE-LINUX-11"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "zynq-zc706"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.5"
> TUNE_FEATURES     =3D "armv7a vfp cortexa9"
> TARGET_FPU        =3D "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "dora:75bed4086eb83f1d24c31392f3dd54aa5c3679b1"
> meta-oe           =3D "dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"

