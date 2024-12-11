Return-Path: <omri.sarig@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3812CE7717D
	for <webhook@archiver.kernel.org>; Wed, 11 Dec 2024 14:15:45 +0000 (UTC)
Subject: [meta-raspberrypi] linux-firmware-rpidistro: Broken links to cyfmac43455-sdio.bin
To: yocto@lists.yoctoproject.org
From: omri.sarig@prevas.dk
X-Originating-Location: =?UTF-8?B?S2FybHNrb2dhLCDDlnJlYnJvIENvdW50eSwgU0U=?= (81.216.59.226)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Dec 2024 06:15:36 -0800
Message-ID: <lAHI.1733926536496027589.TNhW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TNL76b7KOAjhznhoV8KU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2024 14:15:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64430

--TNL76b7KOAjhznhoV8KU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

When using linux-firmware-rpidistro-bcm43455 on a raspberry pi compute modu=
le 4,
to load the relevant firmware files for the brcmfmac driver, the following =
error
is reported:

>=20
> brcmfmac mmc0:0001:1: Direct firmware load for
> brcm/brcmfmac43455-sdio.raspberrypi,4-compute-module.bin failed with erro=
r
> -2
>=20

Looking at the files created by the linux-firmware-rpidistro recipe, this f=
ile
( brcmfmac43455-sdio.raspberrypi,4-compute-module.bin ) exists, but is a br=
oken
link to../cypress/cyfmac43455-sdio.bin.

The driver still works, as it reverts to the base brcmfmac43455-sdio.bin
file, which has a valid link to../cypress/cyfmac43455-sdio *-standard*.bin.

In a debian system, the file of../cypress/cyfmac43455-sdio.bin is created
postinstall, but this is not being done in the Yocto system.
The link for the base file ( brcmfmac43455-sdio.bin ) is being fixed in the
meta-layer through a patch file, which fixes this link.

Is there a reason for fixing only the base link, therefore letting all the =
other
relevant raspberrypi firmware files be broken links?

I can send a patch in case it makes sense to fix the broken links in the ot=
her
files as well.
From what I can see, the error exists for:

* brcmfmac43455-sdio.raspberrypi,3-model-a-plus.bin
* brcmfmac43455-sdio.raspberrypi,3-model-b-plus.bin
* brcmfmac43455-sdio.raspberrypi,4-compute-module.bin
* brcmfmac43455-sdio.raspberrypi,4-model-b.bin
* brcmfmac43455-sdio.raspberrypi,5-model-b.bin

Some reference links:

* The original patch, fixing the base file: https://lists.yoctoproject.org/=
g/yocto/message/58011?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsti=
cky%2C%2Clinux-firmware-rpidistro%2C20%2C2%2C0%2C93602969
* A relevant discussion in firmware-nonfree repo: https://github.com/RPi-Di=
stro/firmware-nonfree/issues/26

Regards,
Omri Sarig
omri.sarig@prevas.dk

--TNL76b7KOAjhznhoV8KU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>When using <em>linux-firmware-rpidistro-bcm43455</em> on a raspberry p=
i compute module 4,<br />to load the relevant firmware files for the <em>br=
cmfmac</em> driver, the following error<br />is reported:</div>
<div>&nbsp;</div>
<blockquote>
<div>brcmfmac mmc0:0001:1: Direct firmware load for brcm/brcmfmac43455-sdio=
.raspberrypi,4-compute-module.bin failed with error -2</div>
</blockquote>
<div>&nbsp;</div>
<div>Looking at the files created by the <em>linux-firmware-rpidistro</em> =
recipe, this file<br />(<em>brcmfmac43455-sdio.raspberrypi,4-compute-module=
.bin</em>) exists, but is a broken<br />link to <em>../cypress/cyfmac43455-=
sdio.bin</em>.</div>
<div>&nbsp;</div>
<div>The driver still works, as it reverts to the base <em>brcmfmac43455-sd=
io.bin</em><br />file, which has a valid link to <em>../cypress/cyfmac43455=
-sdio<strong>-standard</strong>.bin</em>.</div>
<div>&nbsp;</div>
<div>In a debian system, the file of <em>../cypress/cyfmac43455-sdio.bin</e=
m> is created<br />postinstall, but this is not being done in the Yocto sys=
tem.<br />The link for the base file (<em>brcmfmac43455-sdio.bin</em>) is b=
eing fixed in the<br />meta-layer through a patch file, which fixes this li=
nk.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Is there a reason for fixing only the base link, therefore letting all=
 the other<br />relevant raspberrypi firmware files be broken links?</div>
<div>&nbsp;</div>
<div>I can send a patch in case it makes sense to fix the broken links in t=
he other<br />files as well.</div>
<div>From what I can see, the error exists for:</div>
<ul>
<li>brcmfmac43455-sdio.raspberrypi,3-model-a-plus.bin</li>
<li>brcmfmac43455-sdio.raspberrypi,3-model-b-plus.bin</li>
<li>brcmfmac43455-sdio.raspberrypi,4-compute-module.bin</li>
<li>brcmfmac43455-sdio.raspberrypi,4-model-b.bin</li>
<li>brcmfmac43455-sdio.raspberrypi,5-model-b.bin</li>
</ul>
<div>&nbsp;</div>
<div>Some reference links:</div>
<ul>
<li>The original patch, fixing the base file: <a href=3D"https://lists.yoct=
oproject.org/g/yocto/message/58011?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentp=
ostdate%2Fsticky%2C%2Clinux-firmware-rpidistro%2C20%2C2%2C0%2C93602969" tar=
get=3D"_blank" rel=3D"noopener">https://lists.yoctoproject.org/g/yocto/mess=
age/58011?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Clin=
ux-firmware-rpidistro%2C20%2C2%2C0%2C93602969</a></li>
<li>A relevant discussion in firmware-nonfree repo: <a href=3D"https://gith=
ub.com/RPi-Distro/firmware-nonfree/issues/26" target=3D"_blank" rel=3D"noop=
ener">https://github.com/RPi-Distro/firmware-nonfree/issues/26</a></li>
</ul>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Regards,<br />Omri Sarig<br />omri.sarig@prevas.dk</div>

--TNL76b7KOAjhznhoV8KU--

