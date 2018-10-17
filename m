Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61114E00AB9; Wed, 17 Oct 2018 15:39:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42904E00A0C
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 15:39:38 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id r20so5419950uam.5
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 15:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=uFekLiOXWLrAsG915c3WcT9I98oDD9hx1iCzq7iquAc=;
	b=fNXNT1vpVRsy1jy5b+2uloj6Guhtd5nyn+CZ8BJ7GES5tFO+ZJfcGpT81qetKhCWkp
	62QrRRihT+Aqr6vkC0SLBZvWDR+NlH3eWU3BpT8f8eDlMHS2hrDt0wNXDJzXhc1lH4N1
	U20AOfH7Fg8R9TWoeOt4GmoRJ82S1ZaNnqF6Pa484Snwookxmm3mO5eMplxaZeOR8HWY
	kRQ/kw+JLRllA5+YpVRkNnu2b4oOqI/946ZpxhU0Q3BJB6ekmhudrTTwrZX58TklAZFu
	81H/y9c65CwRiw1paCLzs+hlZnHK463Amyg1kw7OmvgEwI0qSXZeNaXQbBuLoqJTEMNz
	FEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=uFekLiOXWLrAsG915c3WcT9I98oDD9hx1iCzq7iquAc=;
	b=LrWmYlvGTh+L3L/t7MpbZef+aJVoCeZG097H/HHBK7CQhUa1vOuy9I348rSPF9xKLI
	hSjNXIxSsFuaxBoFiBAiBZWVWvxCe5gKpkx2ZcL/bM3DAtnB9ecvbkFBY8lL8GvzTWQk
	ToEpsvvj7FRDS9QTOE7oel9z1IwRRrQ701hO1IpzdsP6H8MdpMVJM9xFuvAoRj9esVBY
	Ii2AE+gAj86jW8UNhq3FSJpiNc5fpu+AxsDriyIAvQ5ayi8CAp0E64Y3Yz4yPN8sZCaq
	uKmARTjH1tan5b6N/iloCUXBozPSZFvpsXdNFxJD9J64EIPebM+tfS2twAjjaw/EF05f
	yOCw==
X-Gm-Message-State: ABuFfohQyRiI+7MhNnCSejPPzQj1m2b0mR29yGe9KhUM4xS6WU3VlUSl
	S0NzkeBqPTy0MOr/YBvr5ZyYDOD6JBmhK/Om/hE=
X-Google-Smtp-Source: ACcGV60vhA3wlNYwridMjbX3lfcozSfT7faj3fOPKrj1w7zCi0MIAUU4nU8nwj01KTH9Y77qxi/UgtsyJkGoLEHM/kw=
X-Received: by 2002:ab0:350:: with SMTP id 74mr12458825uat.135.1539815977191; 
	Wed, 17 Oct 2018 15:39:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2748:0:0:0:0:0 with HTTP; Wed, 17 Oct 2018 15:39:36
	-0700 (PDT)
In-Reply-To: <CAKPYHZ54PdoWPYKw4OAGto_7So0X26+0fZZTcyFyzMVWaFS63A@mail.gmail.com>
References: <CAKPYHZ54PdoWPYKw4OAGto_7So0X26+0fZZTcyFyzMVWaFS63A@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 17 Oct 2018 15:39:36 -0700
Message-ID: <CAJ86T=U_+jGD71e6aqJ5G_sVV=6yOQar30egJuKhWcv40BXAJQ@mail.gmail.com>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Bitbake Build Configurations
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
X-List-Received-Date: Wed, 17 Oct 2018 22:39:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 17, 2018 at 5:12 AM, Dhanush K.S <dhanush.ks@gmail.com> wrote:
> Hi Yocto,
>
> I have my bitbake environment set up on the host system CentOS 7 and
> building images for the target ARM cortex A8 with the following BUILD
> CONFIGURATION,
>
> Build Configuration:
> BB_VERSION           =3D "1.37.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal-4.8"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "arm-cortex-a8"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "2.5"
> TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard cortexa=
8"
> TARGET_FPU           =3D "hard"
> meta-networking
> meta-python          =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2=
"
> meta-userbsp-ti
> meta
> meta-poky
> meta-yocto-bsp
> meta-user-common      =3D "<unknown>:<unknown>"
> meta-oe              =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2=
"
>
> What I don't understand is how exactly are these Variables set?
> For the NATIVELSBSTRING which should actually be displaying the HOST OS
> according to the Yocto Manual, isn't doing that. What could be the reason
> for that? (Earlier, with Poky Fido, this wasn't the case. It displays
> "CentOS-Linux-7.1.1503".)

The documentation for NATIVELSBSTRING perhaps hasn't caught up with
recent changes in it's definition and usage. If you see "universal" it
means native recipes are being compiled against a version of glibc
distributed by the Yocto project rather than the version of glibc
provided by your host distro. It's the default approach in recent
versions of poky and has the advantage that native recipes are always
built against a known and up to date version of glibc. It also allows
sstate for native recipes to be shared between hosts with different
versions of glibc (which wasn't previously possible).

> Also how is the TARGET_FPU variable set?

The answer to the question "how is variable XXX set" is always the
same... "bitbake -e" will tell you :-)

The reason this variable changed compared to older versions of poky is
likely to be that your machine config uses the default value of
DEFAULTTUNE set by tune-cortexa8.inc. That's the recommended approach,
but it does mean your builds will follow any change in the default
value. ie you are seeing the result of:

  http://git.openembedded.org/openembedded-core/commit/?id=3D2b3ae58f5eaecc=
8474761c543ff5347aa0e3c4c8

If you don't like the new default and need to compile for softfloat
then your machine config should explicitly set DEFAULTTUNE.

> Could someone please shed some light on this.
>
> Thanks!
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush Keshava Reddy Soppahalli
> Mob: +4915216144064
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

