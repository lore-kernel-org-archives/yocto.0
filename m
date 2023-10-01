Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4924BE748ED
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 08:14:12 +0000 (UTC)
Subject: Re: Pre-built binaries
To: yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Oct 2023 01:14:08 -0700
References: <1995C01E-EA18-4CCA-8473-7092D69CAA27@patricknet.net>
In-Reply-To: <1995C01E-EA18-4CCA-8473-7092D69CAA27@patricknet.net>
Message-ID: <27529.1696148048708819485@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aS5dFPzbke9rn1wY8Hk8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 08:14:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61177

--aS5dFPzbke9rn1wY8Hk8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Patrick,
very likely you moved this recipe from an arm-32bit to Aarch64, therefore y=
ou should use a different source SRC_URI.
Test locally the architecture of the files you have in *libtorchtrt.tar.gz*=
 with: *file libtorchtrt.so*
However the mere binary copy is now doing a QA task and facing to an archit=
ecture mismatch.
You can ignore the error adding *INSANE_SKIP_${PN} +=3D "arch"* in the reci=
pe.
--
Marco Cavallini | KOAN sas
Bergamo - Italia
embedded software engineering
Phone : +39 351-9518710
https://KoanSoftware.com

--aS5dFPzbke9rn1wY8Hk8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Patrick,<br />very likely you moved this recipe from an arm-32bit to Aar=
ch64, therefore you should use a different source SRC_URI.<br />Test locall=
y the architecture of the files you have in <strong>libtorchtrt.tar.gz</str=
ong> with: <strong>file libtorchtrt.so</strong><br />However the mere binar=
y copy is now doing a QA task and facing to an architecture mismatch.<br />=
You can ignore the error adding <strong>INSANE_SKIP_${PN} +=3D "arch"</stro=
ng>&nbsp; in the recipe.<br />--<br />Marco Cavallini | KOAN sas<br />Berga=
mo - Italia<br />embedded software engineering<br />Phone : +39 351-9518710=
<br />https://KoanSoftware.com<br />

--aS5dFPzbke9rn1wY8Hk8--

