Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 233DFE00B7D; Wed, 13 Feb 2019 16:34:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 605E2E0053F
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 16:34:35 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id 2so4971259qtb.5
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 16:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oTdqwYOjLu1L9S4uWrmnA+mIQ7TKrr3GTcoTNAAJ1ms=;
	b=lwtdQC0Zx3vw8oeFOIpCjVghJG3h+Jd57cQulB8DAQNOz3fpFP0ixoi+SNvnPetJHp
	K8e8n2LJKxMayfwhxYpDOam1t+4P5noRoZdHomwrqZmFfQBuO7oyNGBgc9IrE+wy5/Y7
	ZpGuXLSUKy8bw+zZ8k/TvQ5yw5WsfIzca0zDCguNtv3i72H0x3DGAGWhl+Dg8rs/29dt
	44gEIDwbY6lpdmhaUJbggoZGjx4PTI1W8AdqFiUED5vfuWoB/hmfwOldsnpmvFFO6Sb4
	uk+A198z0xGbp+AeTTIyMYpg3eDyh62y2SwZD9RovMaCwEpsX7UFf9BqZI6aGc6FmIiR
	st6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oTdqwYOjLu1L9S4uWrmnA+mIQ7TKrr3GTcoTNAAJ1ms=;
	b=UYSFIeNDEs02xCaeC9Ia5vxkUFbEkaULkP8vmuT1Zoi72JRHpV9QrINwfovQP94bbJ
	GDbRERbsS3K+5lUWlw+xoX8M8/AnBMDdbIB9uhFvR2BgSRgCdv+KAIpd/5H4hNNAEyy+
	9StYdOnlbihOlwMLlvnrgBHmC29LFWwWWOCqbdJZ6cFGgSiXs0skcjxctyxqAQBWgfdH
	z59DfvdGBCx7VFmbeo+qY6QiVJGXT8updI3LsrW5uKxXNriBFGbirmfVqgjvTT5mygyo
	7SkdVzvSUuzu+kwxeVsgF8fLO/kZtO4k2zbs0fYc7vCLXobwugVd5S5M8RQJ9EaSM9Wm
	FnMA==
X-Gm-Message-State: AHQUAuZB1Fi6bz5X4jhAPRUrZ6BVd7hnnjFXV/N4+sYNOf5L+u4EJuBD
	lTDBuFR/d4O0koQ7SWMVScqlkUf9Ixy64S0UA/vgM0XH00w=
X-Google-Smtp-Source: AHgI3IatVcZ4kVW7dKxgVbN4b0UVrBueIUrD5XOaPOuWVYIv5bdkuBMqlt/7xMFScWaGYM2dCwNtB29Qpf71m8fhl8Y=
X-Received: by 2002:a0c:b114:: with SMTP id q20mr760267qvc.185.1550104474627; 
	Wed, 13 Feb 2019 16:34:34 -0800 (PST)
MIME-Version: 1.0
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Wed, 13 Feb 2019 16:34:24 -0800
Message-ID: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 00:34:36 -0000
Content-Type: multipart/alternative; boundary="0000000000009341b10581cfd2ee"

--0000000000009341b10581cfd2ee
Content-Type: text/plain; charset="UTF-8"

Hi, I've been struggling a bit with this question. I want to use Yocto to
build two+ products with separate dev/prod images for each (dev including
debug-tweaks, etc.). I've ruled out separate image recipes because my dev
builds need ENABLE_UART on my RaspberryPi and that needs to be set at the
conf level (I've got it set conditionally in my base dist conf).
Multiconfig looked promising, but I'm not happy about how long the parsing
takes to start a build. "--postread" looked nice, but I've barely seen it
mentioned so I'm worried that it's not well supported.

Basically, what do most people do for controlling their builds?
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--0000000000009341b10581cfd2ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br clear=3D"all"><div>Hi, I&#39;ve been =
struggling a bit with this question. I want to use Yocto to build two+ prod=
ucts with separate dev/prod images for each (dev including debug-tweaks, et=
c.). I&#39;ve ruled out separate image recipes because my dev builds need E=
NABLE_UART on my RaspberryPi and that needs to be set at the conf level (I&=
#39;ve got it set conditionally in my base dist conf). Multiconfig looked p=
romising, but I&#39;m not happy about how long the parsing takes to start a=
 build. &quot;--postread&quot; looked nice, but I&#39;ve barely seen it men=
tioned so I&#39;m worried that it&#39;s not well supported.</div><div><br><=
/div><div>Basically, what do most people do for controlling their builds?</=
div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehli=
ch<div>Embedded Linux Engineer</div><div><a href=3D"mailto:tfroehlich@archs=
ys.io" target=3D"_blank">tfroehlich@archsys.io</a></div><div>215-218-8955</=
div></div></div></div></div>

--0000000000009341b10581cfd2ee--
