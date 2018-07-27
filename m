Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BEDBE00CE0; Fri, 27 Jul 2018 06:02:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f178.google.com (mail-yb0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471BBE00C8B
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 06:02:50 -0700 (PDT)
Received: by mail-yb0-f178.google.com with SMTP id s8-v6so1954459ybe.8
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 06:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=4roaAYzIrB7w9PIJkhoVVhDjYmkC5cB2cF++g69bpS4=;
	b=i1ncec8ShBskZY5+ayuWfZ5SqX+N8acYQUAwjTO1QOrU3ullTECVjOoHQ3NNkd5xFI
	y33jZKl3EuwCIAWiJ4eje+qfc4M3dKJTrWgrPLRPwBlFp7Zv4HrbFKkGNozODKwETYD2
	ggh38GzSDMbLCc6wc7+jQ2MO4F+a7AXlaOOkna7EEkeSKf3UAUkkD4Jyg6j8d+Vs8UoG
	ptvYaxGn8t+EOs9eCc+hBelJQTiWvm+AANbEnTZ6YsOMjH23NZ77/0otjN5OHsZdHrg5
	0wITiYS/99YkxN0tdfLV8R8eIXqPidWWaZFkntOU84h9uZ67r5ynm1YMoaHDkodOi9DA
	cuTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=4roaAYzIrB7w9PIJkhoVVhDjYmkC5cB2cF++g69bpS4=;
	b=tPhlH78wCpu1zx9NNbEIx8+AiVPCtM0aAcwvYN7zsST5wAsP+nM3zerYFKsVwTn98a
	jE9mVduGnqFH6WlB7qfqLwfOaCvxxcSqWk/eNoZbGuo/a/XX+sEHSjOJRaXhXVAB+yO2
	ClkzRoBhCdLKoCNLvjF0klSyRl+Faj7feY6Zq/LWwAEUz0+nt1REqIE4wPVBZ9B25Vox
	ZJyGgBdCy7tVxl0Ux3i9KSuhC06bHjPUI1rnh1o0x2+Dw0vAqSalk6iE0y4r1/I5A5jl
	4ThR7w7eDFpOLIqbY8K4+HVxq2InzB+4Fi9mP/lbmeIPbgMoJ3fIg3j0Tz7LKPBy13CW
	bz5w==
X-Gm-Message-State: AOUpUlF5cCx/vKnTsOD9LbRNi0gZOqwJ9zk9PgIepRPAYzEv9DPKcb6Q
	2p1GkgMowRxzKipzAOAHTUKZDwmahxE=
X-Google-Smtp-Source: AAOMgpdQaEbooL4AjcHSB4gqhnQGvm35zt3frGTkVqvbNlKoBrAWFV3ZhcPJWo04wvHCRLhf/vAh+g==
X-Received: by 2002:a25:b4f:: with SMTP id 76-v6mr3417015ybl.394.1532696568596;
	Fri, 27 Jul 2018 06:02:48 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	c74-v6sm1711969ywh.17.2018.07.27.06.02.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 06:02:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <e1e4423a-640f-4fcc-b5fe-2c9695fc7b0f@windriver.com>
Date: Fri, 27 Jul 2018 09:02:46 -0400
Message-Id: <3DF09C77-2F0A-4C0D-B5F2-D25DBFAE224B@korgrd.com>
References: <4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com>
	<e1e4423a-640f-4fcc-b5fe-2c9695fc7b0f@windriver.com>
To: ChenQi <Qi.Chen@windriver.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: custom linux kernel recipe fails
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
X-List-Received-Date: Fri, 27 Jul 2018 13:02:51 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_98CC42F5-FFAA-4B9C-A475-1275700D40DC"

--Apple-Mail=_98CC42F5-FFAA-4B9C-A475-1275700D40DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 26, 2018, at 9:57 PM, ChenQi <Qi.Chen@windriver.com> wrote:
>=20
> On 07/27/2018 12:56 AM, Steve Pavao wrote:
>> Hello -
>>=20
>> I=E2=80=99m trying to build using a custom 64-bit kernel at head of =
sumo, but I get an error.  It seems that SRCPV cannot be resolved.    =
Please send any ideas you may have about how I may adapt my recipe to =
get it to work.
>>=20
>> Normally, I use the default meta-raspberrypi kernel, but for this =
build, I am using PREFERRED_PROVIDER_virtual/kernel =3D =
"linux-yocto-custom=E2=80=9D in my local.conf
>>=20
>> My simple kernel recipe is in linux-yocto-custom.bb.  (It is based on =
the example recipe).
>>=20
>> inherit kernel
>> require recipes-kernel/linux/linux-yocto.inc
>>=20
>> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>> PR =3D "r0"
>>=20
>> LINUX_VERSION ?=3D "4.14.4"
>> LINUX_VERSION_EXTENSION_append =3D "-xenomai-ipipe-arm64"
>>=20
>> SRC_URI =3D =
"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1" =
<http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1>
>> SRCREV =3D "133bbf97672ff6e72fc21784b8ae44b194b76626"
>=20
> Try:
> SRC_URI =3D =
"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1;name=3Dmachine" =
<http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1>
> SRCREV_machine =3D "133bbf97672ff6e72fc21784b8ae44b194b76626"
> Best Regards,
> Chen Qi

Thanks for the idea, Chean Qui.  I tried it, but I still got the same =
WARNINGS and ERROR.

- Steve

>=20
>> SRC_URI[md5sum] =3D "a5cb3babd85a94fda2905cc3db5e7825"
>>=20
>> COMPATIBLE_MACHINE =3D "raspberrypi3-64"
>>=20
>> the error:
>>=20
>> WARNING: =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb: Exception during build_dependencies for =
PKG_kernel-base
>> WARNING: =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb: Error during finalise of =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb
>> ERROR: ExpansionError during parsing =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb
>> Traceback (most recent call last):
>> bb.data_smart.ExpansionError: Failure expanding variable =
PKG_kernel-base, expression was =
kernel-${@legitimize_package_name('${@get_kernelversion_headers('/data/dev=
elopment/lfs/yocto/build/spark/raspberrypi3-64/tmp/work/raspberrypi3_64-po=
ky-linux/linux-yocto-custom/4.14.4+git${SRCPV}-r0/linux-raspberrypi3_64-st=
andard-build')}')} which triggered exception SyntaxError: invalid syntax =
(PKG_kernel-base, line 1)
>>=20
>=20


--Apple-Mail=_98CC42F5-FFAA-4B9C-A475-1275700D40DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 26, 2018, at 9:57 PM, ChenQi &lt;<a =
href=3D"mailto:Qi.Chen@windriver.com" =
class=3D"">Qi.Chen@windriver.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta content=3D"text/html; charset=3Dutf-8" =
http-equiv=3D"Content-Type" class=3D"">
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    <div class=3D"moz-cite-prefix">On 07/27/2018 12:56 AM, Steve Pavao
      wrote:<br class=3D"">
    </div>
    <blockquote =
cite=3D"mid:4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com" type=3D"cite"=
 class=3D"">
      <pre wrap=3D"" class=3D"">Hello -

I=E2=80=99m trying to build using a custom 64-bit kernel at head of =
sumo, but I get an error.  It seems that SRCPV cannot be resolved.    =
Please send any ideas you may have about how I may adapt my recipe to =
get it to work.

Normally, I use the default meta-raspberrypi kernel, but for this build, =
I am using PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-custom=E2=80=
=9D in my local.conf

My simple kernel recipe is in linux-yocto-custom.bb.  (It is based on =
the example recipe).

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

PV =3D "${LINUX_VERSION}+git${SRCPV}"
PR =3D "r0"

LINUX_VERSION ?=3D "4.14.4"
LINUX_VERSION_EXTENSION_append =3D "-xenomai-ipipe-arm64"

SRC_URI =3D <a class=3D"moz-txt-link-rfc2396E" =
href=3D"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3D=
master;nocheckout=3D1">"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=
=3Dhttp;branch=3Dmaster;nocheckout=3D1"</a>
SRCREV =3D "133bbf97672ff6e72fc21784b8ae44b194b76626"</pre>
    </blockquote>
    <br class=3D"">
    Try:<br class=3D"">
    <pre wrap=3D"" class=3D"">SRC_URI =3D <a =
class=3D"moz-txt-link-rfc2396E" =
href=3D"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3D=
master;nocheckout=3D1">"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=
=3Dhttp;branch=3Dmaster;nocheckout=3D1;name=3Dmachine"</a>
SRCREV_machine =3D "133bbf97672ff6e72fc21784b8ae44b194b76626"</pre>
    Best Regards,<br class=3D"">
    Chen Qi<br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>Thanks for the idea, Chean Qui. &nbsp;I tried it, =
but I still got the same WARNINGS and ERROR.</div><div><br =
class=3D""></div><div>- Steve</div><div><br class=3D""></div><blockquote =
type=3D"cite" class=3D""><div class=3D""><div bgcolor=3D"#FFFFFF" =
text=3D"#000000" class=3D"">
    <br class=3D"">
    <blockquote =
cite=3D"mid:4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com" type=3D"cite"=
 class=3D"">
      <pre wrap=3D"" class=3D"">SRC_URI[md5sum] =3D =
"a5cb3babd85a94fda2905cc3db5e7825"

COMPATIBLE_MACHINE =3D "raspberrypi3-64"

the error:

WARNING: =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb: Exception during build_dependencies for =
PKG_kernel-base
WARNING: =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb: Error during finalise of =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb
ERROR: ExpansionError during parsing =
/data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linu=
x-yocto-custom.bb
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable =
PKG_kernel-base, expression was =
kernel-${@legitimize_package_name('${@get_kernelversion_headers('/data/dev=
elopment/lfs/yocto/build/spark/raspberrypi3-64/tmp/work/raspberrypi3_64-po=
ky-linux/linux-yocto-custom/4.14.4+git${SRCPV}-r0/linux-raspberrypi3_64-st=
andard-build')}')} which triggered exception SyntaxError: invalid syntax =
(PKG_kernel-base, line 1)

</pre>
    </blockquote><p class=3D""><br class=3D"">
    </p>
  </div>

</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_98CC42F5-FFAA-4B9C-A475-1275700D40DC--
