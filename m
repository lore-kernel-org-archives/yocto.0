Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A51E4E00BC1; Mon, 19 Mar 2018 16:35:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52CCCE00547
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 16:35:23 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id c20so12033098ywa.2
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 16:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=9NV/boVJrqj+yeGBt48xowBDN4Bdvi+wi6W3XnxU3yU=;
	b=DP1aIXggUvm6Cjcu5dcCdp1N1FB9WNOBcadBEgEkvu8YQI029STDKkreKuyX0Ri0l7
	cxmNl8V6qs8RF31m3LfsiTamvFDspbS5NTdIJzuw5tGkJHrDfzusmF9neFo4w3nNALnG
	DP1a4zmsGMbsnc7DrVKtaMhf41psQiaTIB5cKCImddOjH+NynDB5QppYIkNq6R46vhWv
	46hW6HcXxMB9Zb9BKtz1+2rBov0XjlnZrrOlzAZBDEef11yk8cSOePK2ictI26XFKqGG
	8XOOjacL3TcWbfwGXNu/xi/DziLxqIuNvjlDQTYm3CYNp4l+tQpFNL8rkgFrukW/55Ti
	+FPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=9NV/boVJrqj+yeGBt48xowBDN4Bdvi+wi6W3XnxU3yU=;
	b=CYA6hM4aNvYBA4APYeIDUBGAJeuEEMK4KsR8M7bTXBHhJ6iBuFZusdvvUxnsnexsJW
	4Iw1/asHCquKZeij0R6/jTiZhF2dIlQaDULz2zoLFK3a5Flb0w16BN7pGnvcyLT3ANd0
	qGPTnPg7MB9cxbJy3oJD5BE93t2hzAE6KEFDxhDlMqDVQ8Ft8H1c5Bw7gHQlE1y0EhLx
	UBzEnuARv1uBcuMWM84kMRSHls0fn9BepzfM59uhVOK7xC3RDXI9Bu8qBHcpj+77Mq70
	/bHULt8AuVzq1eLIHa3d2G+2olqaoFrgKP1r339NApURAJSyyDnImk1WzR69scuMckW5
	JKaA==
X-Gm-Message-State: AElRT7HWYO8WoRpqvftFe/itjUkIJX1HaB28ZEd2WFpil/g0J8SVI/Zd
	Tk5YecEp2+67ld4SHi0SG16Oxg==
X-Google-Smtp-Source: AG47ELtvpQ2klovABNpYMtVA1gB1vs7cbddRovEJAXiwHbb2vspSmvdtL63tYoF4bVOtzwMO0zHwoA==
X-Received: by 10.13.211.195 with SMTP id v186mr8156330ywd.163.1521502523518; 
	Mon, 19 Mar 2018 16:35:23 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18])
	by smtp.gmail.com with ESMTPSA id c128sm173984ywb.0.2018.03.19.16.35.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Mar 2018 16:35:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <CAJ86T=UGbOp3MtiMC=rL74qHXLrnVfp0k-CTXcdPqZbeUbCytw@mail.gmail.com>
Date: Mon, 19 Mar 2018 19:35:20 -0400
Message-Id: <156ED905-4814-427E-9F21-8F92AAE0B020@korgrd.com>
References: <6C79F0E5-F966-4068-B0CA-0B2FACB4ACD3@korgrd.com>
	<CAJ86T=UGbOp3MtiMC=rL74qHXLrnVfp0k-CTXcdPqZbeUbCytw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ARM CPU version question
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
X-List-Received-Date: Mon, 19 Mar 2018 23:35:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_06C2B20C-AB2D-4E3F-BEDD-FD23DBC653C2"

--Apple-Mail=_06C2B20C-AB2D-4E3F-BEDD-FD23DBC653C2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Andre,

> On Mar 19, 2018, at 5:32 PM, Andre McCurdy <armccurdy@gmail.com> =
wrote:
>=20
> On Mon, Mar 19, 2018 at 9:49 AM, Steve Pavao <stevep@korgrd.com> =
wrote:
>> What=E2=80=99s the recommended way to be able to propogate =
target-specific compile-time CPU tune information to affect the build of =
a source file in my own custom layer?
>>=20
>> For example, if I=E2=80=99m building for an arm6-based target, I=E2=80=99=
d like to be able to have the __ARM_ARCH_6__ symbol be available when =
the Yocto system builds my custom layer.  The BSP for such a target =
obviously defines this symbol when building its files for such a target. =
 Is there an easy way to propagate this information to my own custom =
layer, to affect my own sources?  Maybe my recipe needs to include =
certain conf files from other layers such as meta or the BSP layer?
>=20
> This kind of macro is typically defined internally by gcc, depending
> on the -mcpu etc options passed on the gcc command line, ie options
> which are included in the ${CC} definition setup by OE.
>=20
> Therefore all you normally need to do is ensure that the Makefiles etc
> for the components in your custom layer all correctly respect OE's
> definition of ${CC}.
>=20
> A typical bug in handcrafted Makefiles is to force CC to (e.g. CC =3D
> "$(CROSS_COMPILE)gcc") and lose the original value passed via the
> environment.
>=20
>> Currently, I notice that architecture-level symbols are available to =
my custom layer at compile time, such as __aarch64_ and __arm__, but not =
CPU tune information, such as __ARM_ARCH_6__.
>=20
> The exact set of macros defined by gcc will vary depending on exactly
> which ARMv6 CPU you are targeting (and to some extent, which version
> of gcc you are using). If you have code which needs to be enabled for
> any ARMv6 target then you may have to test multiple macros. For
> example see the way in which openssl defines __ARM_ARCH__
>=20
>  https://github.com/openssl/openssl/blob/master/crypto/arm_arch.h =
<https://github.com/openssl/openssl/blob/master/crypto/arm_arch.h>

Thank you very much for your insight, Andre !

I think I may have discovered a specific situation which is causing the =
problem to occur for me.  It seems it occurs because I am trying to =
build a kernel module under the recipes-kernel directory in my custom =
layer.   A colleague pointed out to me that meta/classes/module.bbclass =
explicitly unsets CFLAGS and a bunch of other macros in this situation.

Maybe I need to put in some custom shell syntax in my recipe, to export =
__ARM_ARCH_6__ or to directly define the compiler macro when needed, =
based on the value of the TARGET variable.  I wonder if there is a =
better recommended solution than this, though.

BTW, my kernel module contains conditionally-compiled code for =
initializing the ARM PMU correctly for each CPU case.

- Steve




--Apple-Mail=_06C2B20C-AB2D-4E3F-BEDD-FD23DBC653C2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hi Andre,<div class=3D""><br class=3D""><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Mar 19, 2018, at 5:32 PM, =
Andre McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com" =
class=3D"">armccurdy@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">On =
Mon, Mar 19, 2018 at 9:49 AM, Steve Pavao &lt;<a =
href=3D"mailto:stevep@korgrd.com" class=3D"">stevep@korgrd.com</a>&gt; =
wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">What=E2=80=99s =
the recommended way to be able to propogate target-specific compile-time =
CPU tune information to affect the build of a source file in my own =
custom layer?<br class=3D""><br class=3D"">For example, if I=E2=80=99m =
building for an arm6-based target, I=E2=80=99d like to be able to have =
the __ARM_ARCH_6__ symbol be available when the Yocto system builds my =
custom layer. &nbsp;The BSP for such a target obviously defines this =
symbol when building its files for such a target. &nbsp;Is there an easy =
way to propagate this information to my own custom layer, to affect my =
own sources? &nbsp;Maybe my recipe needs to include certain conf files =
from other layers such as meta or the BSP layer?<br =
class=3D""></blockquote><br class=3D"">This kind of macro is typically =
defined internally by gcc, depending<br class=3D"">on the -mcpu etc =
options passed on the gcc command line, ie options<br class=3D"">which =
are included in the ${CC} definition setup by OE.<br class=3D""><br =
class=3D"">Therefore all you normally need to do is ensure that the =
Makefiles etc<br class=3D"">for the components in your custom layer all =
correctly respect OE's<br class=3D"">definition of ${CC}.<br =
class=3D""><br class=3D"">A typical bug in handcrafted Makefiles is to =
force CC to (e.g. CC =3D<br class=3D"">"$(CROSS_COMPILE)gcc") and lose =
the original value passed via the<br class=3D"">environment.<br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">Currently, =
I notice that architecture-level symbols are available to my custom =
layer at compile time, such as __aarch64_ and __arm__, but not CPU tune =
information, such as __ARM_ARCH_6__.<br class=3D""></blockquote><br =
class=3D"">The exact set of macros defined by gcc will vary depending on =
exactly<br class=3D"">which ARMv6 CPU you are targeting (and to some =
extent, which version<br class=3D"">of gcc you are using). If you have =
code which needs to be enabled for<br class=3D"">any ARMv6 target then =
you may have to test multiple macros. For<br class=3D"">example see the =
way in which openssl defines __ARM_ARCH__<br class=3D""><br class=3D""> =
&nbsp;<a =
href=3D"https://github.com/openssl/openssl/blob/master/crypto/arm_arch.h" =
class=3D"">https://github.com/openssl/openssl/blob/master/crypto/arm_arch.=
h</a><br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>Thank you very much for your insight, Andre =
!</div><div><br class=3D""></div><div>I think I may have discovered a =
specific situation which is causing the problem to occur for me. =
&nbsp;It seems it occurs because I am trying to build a kernel module =
under the recipes-kernel directory in my custom layer. &nbsp; A =
colleague pointed out to me =
that&nbsp;meta/classes/module.bbclass&nbsp;explicitly unsets CFLAGS and =
a bunch of other macros in this situation.</div><div><br =
class=3D""></div><div><div>Maybe I need to put in some custom shell =
syntax in my recipe, to export __ARM_ARCH_6__ or to directly define the =
compiler macro when needed, based on the value of the TARGET variable. =
&nbsp;I wonder if there is a better recommended solution than this, =
though.</div><div><br class=3D""></div></div><div>BTW, my kernel module =
contains conditionally-compiled code for initializing the ARM PMU =
correctly for each CPU case.</div><div><br class=3D""></div><div>- =
Steve</div><div><br class=3D""></div><div><br class=3D""></div><div><br =
class=3D""></div></div></div></body></html>=

--Apple-Mail=_06C2B20C-AB2D-4E3F-BEDD-FD23DBC653C2--
