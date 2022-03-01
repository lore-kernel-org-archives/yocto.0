Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45919C433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 07:04:32 +0000 (UTC)
Subject: Re: On managing debug and production builds
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Feb 2022 23:04:31 -0800
References: 
 <CAH9dsRiArf_9GgQS4hCg5=J_Jk6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com>
In-Reply-To: 
 <CAH9dsRiArf_9GgQS4hCg5=J_Jk6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com>
Message-ID: <19024.1646118271331133648@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DP0CHtCF8CzLkBn4NKzz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 07:04:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56332

--DP0CHtCF8CzLkBn4NKzz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Vinayak

I believe that the best way to prepare debug and prod images is to create
include file (.inc) with base set of packages and features and then add two
.bb recipes, one for prod and one for debug - every of this recipes will ne=
ed
to include the `.inc` file. You could name them `base-image-prod.bb` and
`base-image-debug.bb`. This way you could run either prod or debug builds
by running `bitbake base-image-debug` or `bitbake base-image-prod`.

As for the machine, this would need to be set in local.conf every time you =
want
to switch the machine. To simplify this process, for the management of the
configuration of the entire build (including the selection of debug / prod =
image
or machine configuration), I recommend the kas[1] project with the very hel=
pful
kas-container tool.

[1] https://github.com/siemens/kas

Regards,
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--DP0CHtCF8CzLkBn4NKzz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Vinayak</p>
<p>I believe that the best way to prepare debug and prod images is to creat=
e<br />include file (.inc) with base set of packages and features and then =
add two<br />.bb recipes, one for prod and one for debug - every of this re=
cipes will need<br />to include the `.inc` file. You could name them `base-=
image-prod.bb` and<br />`base-image-debug.bb`. This way you could run eithe=
r prod or debug builds<br />by running `bitbake base-image-debug` or `bitba=
ke base-image-prod`.</p>
<p>As for the machine, this would need to be set in local.conf every time y=
ou want<br />to switch the machine.<span class=3D"VIiyi" lang=3D"en"><span =
class=3D"JLqJ4b ChMk0b" data-language-for-alternatives=3D"en" data-language=
-to-translate-into=3D"pl" data-phrase-index=3D"0" data-number-of-phrases=3D=
"1"><span>To simplify this process, for the management of the<br />configur=
ation of the entire build (including the selection of debug / prod image<br=
 />or machine configuration), I recommend the kas[1] project with the very =
helpful<br />kas-container tool.<br /><br />[1] <a href=3D"https://github.c=
om/siemens/kas" target=3D"_blank" rel=3D"noopener">https://github.com/sieme=
ns/kas</a><br /><br />Regards,</span></span></span><br />Tomasz =C5=BByjews=
ki<br />Embedded Systems Engineer<br />GPG: 5C495EA3EBEECA59<br />https://3=
mdeb.com | @3mdeb_com<br /><span class=3D"VIiyi" lang=3D"en"><span class=3D=
"JLqJ4b ChMk0b" data-language-for-alternatives=3D"en" data-language-to-tran=
slate-into=3D"pl" data-phrase-index=3D"0" data-number-of-phrases=3D"1"><spa=
n></span></span></span></p>

--DP0CHtCF8CzLkBn4NKzz--

