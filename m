Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1B7ECCF9E3
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 04:05:09 +0000 (UTC)
Subject: SSTATE_MIRRORS not working as expected
To: yocto@lists.yoctoproject.org
From: "Daniel" <dchvs11@gmail.com>
X-Originating-Location: =?UTF-8?B?U2FuIEpvc8OpLCBQcm92aW5jaWEgZGUgU2FuIEpvc8OpLCBDUg==?= (201.202.13.6)
X-Originating-Platform: Linux Firefox 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Nov 2025 20:05:01 -0800
Message-ID: <Jl3X.1762229101233866192.c0ZZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8b0aLxwegRIeWkDoM5A1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 04:05:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65994

--8b0aLxwegRIeWkDoM5A1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, all

I=E2=80=99ve set up my build environment to use RidgeRun's sstate-cache and=
 downloads mirrors as follows:

```
# RidgeRun's SState-Cache Mirror
SSTATE_MIRRORS ?=3D "\
file://.* https://yocto.ridgerun.ai/mirror/scarthgap/sstate-cache/PATH;down=
loadfilename=3DPATH \
"

# RidgeRun's Downloads Mirror
PREMIRRORS:prepend =3D "\
git://.*/.* https://yocto.ridgerun.ai/mirror/scarthgap/downloads/ \
"
```

However, I=E2=80=99m not seeing a significant improvement when using these =
mirrors.
It seems that native packages are *not being fetched from the cache or the =
downloads mirror* =E2=80=94only a few packages appear to be reused.

Has anyone else experienced this?
Are there specific configurations or steps needed to ensure that native pac=
kages are properly retrieved from the mirrors?

*Additional info:*

*=20

Yocto release: Scarthgap

Any guidance or suggestions would be greatly appreciated!

--8b0aLxwegRIeWkDoM5A1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi, all<br /><br />I&rsquo;ve set up my build environment to use Ridge=
Run's <code data-start=3D"387" data-end=3D"401">sstate-cache</code> and <co=
de data-start=3D"406" data-end=3D"417">downloads</code> mirrors as follows:=
<br /><br />```<br />
<div># RidgeRun's SState-Cache Mirror<br />SSTATE_MIRRORS ?=3D "\<br />&nbs=
p; &nbsp; &nbsp; &nbsp; file://.* https://yocto.ridgerun.ai/mirror/scarthga=
p/sstate-cache/PATH;downloadfilename=3DPATH \<br />"</div>
<div>&nbsp;</div>
<div># RidgeRun's Downloads Mirror<br />PREMIRRORS:prepend =3D "\<br />&nbs=
p; &nbsp; &nbsp; &nbsp; git://.*/.* https://yocto.ridgerun.ai/mirror/scarth=
gap/downloads/ \<br />"</div>
<div>```<br /><br />
<p data-start=3D"736" data-end=3D"958">However, I&rsquo;m not seeing a sign=
ificant improvement when using these mirrors.<br data-start=3D"811" data-en=
d=3D"814" />It seems that <em data-start=3D"833" data-end=3D"850">native pa=
ckages</em> are <strong data-start=3D"855" data-end=3D"915">not being fetch=
ed from the cache or the downloads mirror</strong> &mdash;only a few packag=
es appear to be reused.</p>
<p data-start=3D"960" data-end=3D"1117">Has anyone else experienced this?<b=
r data-start=3D"993" data-end=3D"996" />Are there specific configurations o=
r steps needed to ensure that native packages are properly retrieved from t=
he mirrors?</p>
<p data-start=3D"1119" data-end=3D"1141"><strong data-start=3D"1119" data-e=
nd=3D"1139">Additional info:</strong></p>
<ul data-start=3D"1142" data-end=3D"1170">
<li data-start=3D"1142" data-end=3D"1170">
<p data-start=3D"1144" data-end=3D"1170">Yocto release: <em data-start=3D"1=
159" data-end=3D"1170">Scarthgap</em></p>
</li>
</ul>
<p data-start=3D"1172" data-end=3D"1229">Any guidance or suggestions would =
be greatly appreciated!<br /><br /></p>
</div>
</div>

--8b0aLxwegRIeWkDoM5A1--

