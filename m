Return-Path: <joao.jfgoncalves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C5BDE00D01; Thu, 24 Jan 2019 07:24:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joao.jfgoncalves[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8900AE00CEE
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 07:24:12 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id i145so5495657ita.4
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 07:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hHN8vPcgmrvH2c8tyllKmKS+DEVGYr7hld8ifYglb9g=;
	b=hmR4/ds9yhFHrgfZa9w1giTZQSb+RvsvX4S+KttJyGMvM2rFKckG7OstAtQYUxoCwE
	SdiR2AMptCYKtw5BNZuUcwFM/5CtAaYgFiWhiM1WkpNOLYiACG1u78BILaZQed2fWyNE
	UE4Xl1JgkV0OT11EhqjqOykJVJXakTgLDjdSbHplDxicqRKBruBY1lJss488wlrp783A
	E9MwR2dAVeW8vW2bBDGlWENYHMGCvXXx7SUf77TZ8cS2tvHyleYhLQSTPKTds3CSCI2g
	Q+rfGf95KjPyu4aH1TIyepA8S0SrEgK2mApDcUtCzF88d4EXYaPdMQfbI9d/Q2d7T7ai
	I/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hHN8vPcgmrvH2c8tyllKmKS+DEVGYr7hld8ifYglb9g=;
	b=OFET5rJJa/HYiq3NOaeRgbSDHwA+3XlPj1V5oYA21NM26VmCIsdZUgCUyrwXshP6v7
	HV+3Vc6o+rIXAsmsEiyJAjyfDky0tsCqJ+jcmRmIEFSK60VNtvHellVfuThd2+Gs2f9s
	lkJIz6pPaNFzkCaa7sahoF+Mzg+Ewr0j36do3ZZgBpgFoDywTaocjlRp6yXe6FxSpvUQ
	QGsnSvRLhVphQGF4mMh4M5TAbkQ+rgYBXCSUp9FdzE+ys+3+vhU7Hkm1MV17ViGYZb6Q
	18KyZX2aHZ1j9T10oyozhP6f1qj+nzrXStuMrt7phdOVXv5ivi98zgv+c50gT9OzU42R
	VRCA==
X-Gm-Message-State: AJcUuke5xQ0PQlFOQ5Mn677PBvYlWyXmOHsmDI2BxRDrnAB4I6it93Y2
	IcTSINAk6BFKhMd0kKaycoZKZHhl1ILt0jtwKbVRVs8xQRw=
X-Google-Smtp-Source: ALg8bN5mzQbiO0nCDUNpyPz/KagwWer509z7brgcBTiWLveWhOvEOcAo40mktpQGRY6H25tZqiSkLhleKT+VBCTizVY=
X-Received: by 2002:a24:874a:: with SMTP id f71mr1595320ite.120.1548343451504; 
	Thu, 24 Jan 2019 07:24:11 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Date: Thu, 24 Jan 2019 15:24:00 +0000
Message-ID: <CAHXEV+n8iBw3ymYCm38CSKXS=ySgarQmrwf=XCT6yYp94FiOKg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: libstdc++fs on toolchain
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
X-List-Received-Date: Thu, 24 Jan 2019 15:24:13 -0000
Content-Type: multipart/alternative; boundary="0000000000006ad648058035cd28"

--0000000000006ad648058035cd28
Content-Type: text/plain; charset="UTF-8"

Hello,
I'm trying to build a c++ cross toolchain to compile to imx6 (armv7). But I
need libstdc++fs library, which does not come with it. Until gcc 8.0 this
is an experimental library.

I've tested with gcc 7.3 and with gcc 8.2 and and none have the libstdc++fs
library.
On my host machine the library is at
/usr/lib/gcc/x86_64-linux-gnu/7/libstdc++fs.a

Does anyone know how to include this library on a yocto generated toolchain?

Thank you,
Joao Goncalves

--0000000000006ad648058035cd28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,=C2=A0<div>I&#39;m trying to build =
a c++ cross toolchain to compile to imx6 (armv7). But I need libstdc++fs li=
brary, which does not come with it. Until=C2=A0gcc=C2=A08.0 this is an expe=
rimental library.</div><div><br></div><div>I&#39;ve tested with gcc=C2=A07.=
3 and with gcc=C2=A08.2 and and none have the libstdc++fs library.</div><di=
v>On my host machine the library is at /usr/lib/gcc/x86_64-linux-gnu/7/libs=
tdc++fs.a</div><div><br></div><div>Does anyone=C2=A0know how to include thi=
s library on a yocto generated toolchain?</div><div><br></div><div>Thank yo=
u,</div><div>Joao Goncalves</div><div><br></div></div></div>

--0000000000006ad648058035cd28--
