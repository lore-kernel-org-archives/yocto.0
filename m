Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC84CE009E2; Thu, 24 May 2018 08:08:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1559E009CA
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 08:07:59 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l41-v6so3774179wre.7
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 08:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=jZwUz2Z81dptT/5ubkunSg8E4yYgSjMHCTjzrSpa3zg=;
	b=l1tLdyT+0oOhCB4iAP1HKEHFxoly+z84ed8jbbM4A5tp+wXI+VisXqqyWW7Q4P29Et
	9Nq3/MyGQj5CpmZIxMdrF0cqDBLO8aL5QAEIgbTp6leg29w36AZqI4LFAtj0Fdnmmgei
	uhqfuu2N5u2bJIPLnrjVtpQmDOZwJprunOHedsUA85Flh9CzEQhW35+4rHQaSirbQmO+
	fFxHiW7iyHXt7pZqoey3vX7mt1/uaDYyGgT0Z7vC2TAxfv3Nob9GHfe4K9U4/0GwDp27
	pUy8OHFi6XBa4ipOvJhXyi50cXQDvzVw3TJOTa5mVTXORu25jbFBXu8mESd9vo1gDj4S
	xZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=jZwUz2Z81dptT/5ubkunSg8E4yYgSjMHCTjzrSpa3zg=;
	b=Ozyzud1lmvsk+Wbg8rqTS459yoLGffqX125NddDaa731CHxTz40kGhCHlV3YdLNzj3
	l4ADQ9PjoMmZ2HwIC2rPToPdVXPKioPiHK62+oOD9vngv/oCIA2mAx0CIRAsV0ZF+9/o
	MoL0Wd9uG94iulZV6nH43/FDQtDrQmVsjVrG3e8Dn2KqIDXzkAGKHSguRQpJE0YpFpyA
	sNzn31JABpXFvdv7he4W3sju3TXcZI2t3uLOJvJZn8oDjzImjG2/dg5Ixc6vGRhqXQc7
	W4DGpaUoZldhvylZ5KR0emFB+QZ/KpXYX3APjv4WP7DoEoK6KbvazuqbvHTmFjdj2lNJ
	ZLuA==
X-Gm-Message-State: ALKqPwfwJqtwIfz4gLDxcVpCKvY5HwspYpfLKbn8h4LTtayLfw24kpoL
	/ZjSKaj5yIl7s6ibdR86zpc=
X-Google-Smtp-Source: AB8JxZonWZFLyKUWIeci6p9WLBlciF6d5YAo0UF8G3D8/xzablVSmoGqMXcijklAvsOWgU/7KrBL8w==
X-Received: by 2002:adf:9ae5:: with SMTP id
	a92-v6mr6237541wrc.180.1527174478248; 
	Thu, 24 May 2018 08:07:58 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	184-v6sm5228785wmv.33.2018.05.24.08.07.56
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 24 May 2018 08:07:57 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 24 May 2018 17:08:05 +0200
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20180524150805.GC1395@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama> <20180517104640.GA1398@jama>
MIME-Version: 1.0
In-Reply-To: <20180517104640.GA1398@jama>
User-Agent: Mutt/1.9.5 (2018-04-13)
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 24 May 2018 15:08:00 -0000
X-Groupsio-MsgNum: 41231
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline

--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> That leaves only few issues in our internal components and strange failur=
e with perf which fails to include various header files:
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:1:28: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:2:26: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:3:25: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:5:41: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:1:28: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:2:26: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:3:25: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:5:41: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:1:28: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:2:26: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:3:25: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:5:41: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:1:28: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:2:26: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:3:25: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.=
h:5:41: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal =
error: ../../../../include/uapi/linux/swab.h: No such file or directory
> perf/1.0-r9/perf-1.0/tools/perf/arch/arm/include/../../../../include/asm-=
generic/bitops/fls.h:1:56: error: #include nested too deeply
> perf/1.0-r9/perf-1.0/tools/perf/arch/arm/include/../../../../include/asm-=
generic/bitops/fls.h:1:56: error: #include nested too deeply
> ...

This issue wasn't caused by gcc upgrade, it was caused by:
https://patchwork.openembedded.org/patch/150269/
which was included in the same batch of updates when I've included
these RFT changes.

I've sent separate fix for perf with slightly longer explanation what
was wrong:
https://patchwork.openembedded.org/patch/151017/

Now I got a bit further with testing again, remaining 3 issues in public
recipes:

gcc-sanitizers/8.1.0-r0 fails to build with qemuarm (with thumb
enabled):
{standard input}: Assembler messages:
{standard input}:5724: Error: lo register required -- `ldr ip,[sp],#8'
make[2]: *** [sanitizer_linux.lo] Error 1

qtbase/5.6.3+gitAUTOINC+e6f8b072d2-r0 fails to build with qemuarm (with
thumb
enabled):
{standard input}: Assembler messages:
{standard input}: Error: unaligned opcodes detected in executable segment
make[2]: *** [.obj/qdrawhelper.o] Error 1

lib32-glibc-initial/2.27-r0 fails to build with multilib
checking installed Linux kernel header files... missing or too old!
configure: error: GNU libc requires kernel header files from
Linux 3.2.0 or later to be installed before configuring.
The kernel header files are found usually in /usr/include/asm and
/usr/include/linux; make sure these directories use files from
Linux 3.2.0 or later.  This check uses <linux/version.h>, so
make sure that file was built correctly when installing the kernel header
files.  To use kernel headers not from /usr/include/linux, use the
configure option --with-headers.
WARNING: exit code 1 from a shell command.

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWwbVVAAKCRA3VSO3ZXaA
HA50AKCBm3S+4YFWAbPKqmLCkbwbEbdbZwCfY9P+WzbKZhe22O+XbYjulm6WHFA=
=r+WF
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--
