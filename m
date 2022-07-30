Return-Path: <kuzemkoyocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE65AC04A68
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 10:20:03 +0000 (UTC)
Subject: Re: [Need help] How to add one package to build directory of another
 package
To: yocto@lists.yoctoproject.org
From: "Kuzemko Aleksandr" <kuzemkoyocto@gmail.com>
X-Originating-Location: Vinnytsia, Vinnytsya Oblast, UA (178.74.234.29)
X-Originating-Platform: Linux Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 30 Jul 2022 03:20:01 -0700
References: <6148E1EA-62EF-485E-BEE1-035DB5CBF79E@hxcore.ol>
In-Reply-To: <6148E1EA-62EF-485E-BEE1-035DB5CBF79E@hxcore.ol>
Message-ID: <1559.1659176401576369562@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QbIYKWeKqucwAI34vbCs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 10:20:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57692

--QbIYKWeKqucwAI34vbCs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have fixed one problem ("No package 'dotconf' found" error) by coping .pc=
 file
https://github.com/Kuzma30/meta-myconf/commit/6b01df5f7adaa3fec1fd1a34d74d9=
be5d4b9cdbf

But now I has problem with main package (speech-dispatcher)
Log here
https://github.com/Kuzma30/meta-myconf/commit/7c5e3a070f526dafe01b43aa5ba95=
573dd55d07d

ERROR: speech-dispatcher-git-r0 do_package_qa: QA Issue: -dev package speec=
h-dispatcher-dev contains non-symlink .so '/usr/lib/libvoxin.so'

--QbIYKWeKqucwAI34vbCs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have fixed one problem ("No package 'dotconf' found" error) by coping .pc=
 file<br /><a href=3D"https://github.com/Kuzma30/meta-myconf/commit/6b01df5=
f7adaa3fec1fd1a34d74d9be5d4b9cdbf" target=3D"_blank" rel=3D"noopener">https=
://github.com/Kuzma30/meta-myconf/commit/6b01df5f7adaa3fec1fd1a34d74d9be5d4=
b9cdbf</a><br /><br />But now I has problem with main package (speech-dispa=
tcher)<br />Log here<br /><a href=3D"https://github.com/Kuzma30/meta-myconf=
/commit/7c5e3a070f526dafe01b43aa5ba95573dd55d07d" target=3D"_blank" rel=3D"=
noopener">https://github.com/Kuzma30/meta-myconf/commit/7c5e3a070f526dafe01=
b43aa5ba95573dd55d07d</a><br /><br /><span class=3D"blob-code-inner blob-co=
de-marker js-code-nav-pass " data-code-marker=3D"+">ERROR: speech-dispatche=
r-git-r0 do_package_qa: QA Issue: -dev package speech-dispatcher-dev contai=
ns non-symlink .so '/usr/lib/libvoxin.so'<br /></span>

--QbIYKWeKqucwAI34vbCs--

