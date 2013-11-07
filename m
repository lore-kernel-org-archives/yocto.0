Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22AC8E0180D
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 03:00:26 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Nov 2013 03:00:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385932812"
Received: from unknown (HELO helios.localnet) ([10.252.121.102])
	by azsmga001.ch.intel.com with ESMTP; 07 Nov 2013 03:00:24 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Thu, 07 Nov 2013 11:00:23 +0000
Message-ID: <1835654.lzj3BL3FA0@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
References: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
	<CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 07 Nov 2013 11:00:29 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Hans,

On Thursday 07 November 2013 10:56:17 Hans Beck=E9rus wrote:
> On Wed, Nov 6, 2013 at 12:32 PM, Hans Beck=E9rus <hans.beckerus@gmail=
.com>
> wrote:
> > Hi, I am getting the below error when populating the sdk for our Yo=
cto
> > 1.5 based image.
> >=20
> > WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
> > location:
> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-li=
nux-gn
> > ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
> > gcc-cross-canadian-arm: found library in wrong location:
> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-li=
nux-gnu
> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
> > gcc-cross-canadian-arm: found library in wrong location:
> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-li=
nux-gnu
> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
> >=20
> > Never got this on Yocto 1.4. I am not even planning of installing
> > anything in /opt so this really came out of nowhere. There is nothi=
ng
> > installed in /opt at the moment.
> > Did it actually expect to find something in /opt? And in that case,=

> > how can it? It can not know where the toolchain will be installed!?=

> > Somebody that can shed some light on this one? Can we safely ignore=
 it?
>=20
> Ok, I started to look some more into this but unfortunately my
> knowledge about how bitbake is picking up recipes etc. is way too
> limited to explain why this is happening. I searched for
> gcc-cross-canadian in our layers and it can be found here:
>=20
> meta/recipes-devtools/gcc/gcc-cross-canadian.inc
> meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
> meta/recipes-devtools/gcc/gcc-cross-canadian_4.8.bb
> meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cross-cana=
dian_4.
> 6.bb
>=20
> So, my question now is: why does it pickup gcc 4.6 from
> meta-openembedded when there are better alternatives in oe-core?

What makes you think it is picking up the one in toolchain-layer? I don=
't see=20
references to 4.6 in the QA error. If you haven't added meta-
openembedded/toolchain-layer to your bblayers.conf specifically it won'=
t be=20
being seen by bitbake at all.

It's more than likely that this QA error is bogus. The "found library i=
n wrong=20
location" QA check was broken originally; I "fixed" it but I think it h=
as=20
always been a little over-zealous since then.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

