Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0924AE00C1B; Mon,  8 Apr 2019 03:21:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 753FFE006D8
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 03:21:00 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id d201so10535389iof.7
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 03:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=DJWdN9Ob51/CitL4Az81IheEEjLuVTzb1uUlWNvBbm4=;
	b=clOg8/JmYbunb6AwnltpwuAk7tSpId89tLsVShsh0OVEoe3VIoIb22OAccSgl/mkis
	1Na6MLlNA6kw8C+/VlgJbnC5gwO9+rvRZJUxIcbfI5oLqf/IYow+Xe6KpT0ug4ZmHfdg
	7ejosKETFG4BRk3jWdDd7fEm/Yhd05igfGAbA6pNm/TgOnCqt9lrrUmtD/XcroAT/jcj
	0JiTYUzuGpC7epTXtrcoIEZAbO/xqySMceRBWoLUEHc8Xnbs/t6AGBclFfLCCz+1YUx7
	sYE0DPQeSI8RJNmJ6stIdlWKOEaMgM2QJWU7ojxK4fzMr3nDLTFdfcNLQuzQAvFzOnKh
	JfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=DJWdN9Ob51/CitL4Az81IheEEjLuVTzb1uUlWNvBbm4=;
	b=NQ9Y9/xcXRuX+GwPpbRaLjeULA3rXHMFlcf7w58+hgblzzIzrvIL5vxLKwyvSsnuXR
	Cnc5rWjSAoMXDPwuXgom3ktlIWJXF++mFpmRgyJfo9Edt4m1LAbf0SE7ZIEqAgfA+bgv
	3EZjoySh2ut5+T1CDEvVbOe6YDzVRoR5wIulXhfx3WQ0s5q3Jm9k6ivHkTPtjATfK4Uf
	KxqrozYaREOwaA+OwT62rzbre0Q54cdCLspCmtVqyBTicB1R2eYER8YSvTmI8GxGN6Mk
	B5Lm+C2BRXL66/d0dfq1O8jKVhAebzLI8aJDe7Bzd571mAIDDiI7zUjcpbRMcAl5JJwI
	jmdw==
X-Gm-Message-State: APjAAAWhYG1phu9yY3RV52E8dx4enECjMfGs370psXHnBq9zAiPKSXrC
	jrx1Y0/9HmReNO12KX53Y2eQSUyyQcLFl4NS2u1a5w==
X-Google-Smtp-Source: APXvYqxzFuOtLpbHBt/8La7vsj0ZZ2qXd/vBjazx5QyYoD2cPCadLv5dLg0vYrpSi3BRixzn1Kp4WQHaZUsMJ3X2Bto=
X-Received: by 2002:a6b:7112:: with SMTP id q18mr5280579iog.5.1554718859735;
	Mon, 08 Apr 2019 03:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <5677a277a1a9466c96062287a1754c8f@ifm.com>
In-Reply-To: <5677a277a1a9466c96062287a1754c8f@ifm.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2019 11:20:48 +0100
Message-ID: <CAJTo0LY-XUUyerxQrQXkgOyL_JtnL-wm8NLQ0z=MzkzTYk=bMA@mail.gmail.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FileExistsError: [Errorno 17] File Exists
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
X-List-Received-Date: Mon, 08 Apr 2019 10:21:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 8 Apr 2019 at 07:17, Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:
> Hi I was trying to compile Weston-6.0 using yocto recipe. For this I back=
ported some of the packages from master branch of poky to my own layer. Dur=
ing this process, there was one package xorgproto which was used in master =
branch of poky but in rocko branch this package is not there. However a sim=
ilar package is there called xproto. Now there is a conflict between these =
two packages for installing the same headers. I appended xorgproto recipe a=
nd removed the installation of similar header files. But after this I am ge=
tting this error. However If I continue to compile these errors are ignored=
.

xproto !=3D xorgproto.

https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DXorgproto-Debut-Rel=
ease

All of the xorg-proto/*proto.bb recipes were replaced by xorgproto.
As part of the backporting you can most likely just replace xorgproto
with the name of the relevant proto recipe.

Ross

