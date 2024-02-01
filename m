Return-Path: <timotheus.giuliani@philips.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD18FC47DDF
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 13:01:41 +0000 (UTC)
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: timotheus.giuliani@philips.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (155.190.35.4)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Feb 2024 05:01:32 -0800
References: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
In-Reply-To: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
Message-ID: <23652.1706792492588535839@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mRIbxt7beIP41lspQhZr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 13:01:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62360

--mRIbxt7beIP41lspQhZr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s not possible to keep the download directory, since the build r=
uns on cloud runners that are shared resources. Every time a PR is created =
a new runner instance with an empty workspace will be assigned. Therefore, =
I can=E2=80=99t reuse anything local from previous builds.

--mRIbxt7beIP41lspQhZr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">It=E2=80=99s not possible to keep the do=
wnload directory, since the build runs on cloud runners that are shared res=
ources. Every time a PR is created a new runner instance with an empty work=
space will be assigned. Therefore, I can=E2=80=99t reuse anything local fro=
m previous builds.</span></p>

--mRIbxt7beIP41lspQhZr--

