Return-Path: <ryan.a.lovelett@saic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90CBC282C5
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 22:10:56 +0000 (UTC)
Subject: Re: [yocto] Help needed with combining host and guest VM images in Yocto #qemu #qemux86-64
To: "Ryan Lovelett" <ryan.a.lovelett@saic.com>, yocto@lists.yoctoproject.org
From: "Ryan Lovelett" <ryan.a.lovelett@saic.com>
X-Originating-Location: Merritt Island, Florida, US (72.239.251.203)
X-Originating-Platform: Mac Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Feb 2025 14:10:53 -0800
References: <31891.1740669254230825149@lists.yoctoproject.org>
In-Reply-To: <31891.1740669254230825149@lists.yoctoproject.org>
Message-ID: <8570.1740780653126056250@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qywNu8G3b22FGNfdiOdo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 22:10:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64896

--qywNu8G3b22FGNfdiOdo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just wanted to provide an update if anyone stumbles on this in the future. =
This is more or less what I've done to get it working. I created a recipe c=
alled core-image-minimal-disk-image_1.0.bb. The contents of that recipe is =
below:

SUMMARY =3D "Installs the disk image generated from core-image-minimal"
LICENSE =3D "CLOSED"
SRC_URI =3D ""

DEPENDS +=3D "core-image-minimal"

do_install () {
   install -d ${D}/usr/share/vm
   cp ${DEPLOY_DIR_IMAGE}/core-image-minimal-latest.ext4 ${D}/usr/share/vm/=
rootfs.raw || \
       bbnote "Guest image not found. Make sure core-image-minimal is built=
."
}

FILES:${PN} +=3D "/usr/share/vm/rootfs.raw"

The only other "extra" thing was I had to add a core-image-minimal.bbappend=
 that added IMAGE_FSTYPES:append =3D " ext4" and IMAGE_LINK_NAME =3D "${PN}=
-latest".

I am still trying to improve it in 2 key ways:

* I would really love it if the rootfs.raw was just included as a partition=
 on the final disk image. That way I could grow it with systemd-growfs or s=
imilar.
* Currently it is using the same machine, and thus the same, kernel as the =
host OS. Not a deal breaker but not ideal.

I do not think this is "right", or maybe it is, either way I'm still open t=
o further constructive criticism.

--qywNu8G3b22FGNfdiOdo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Just wanted to provide an update if anyone stumbles on this in the futur=
e. This is more or less what I've done to get it working. I created a recip=
e called <code>core-image-minimal-disk-image_1.0.bb</code>. The contents of=
 that recipe is below:</p>
<pre><code>SUMMARY =3D "Installs the disk image generated from core-image-m=
inimal"
LICENSE =3D "CLOSED"
SRC_URI =3D ""

DEPENDS +=3D "core-image-minimal"

do_install () {
    install -d ${D}/usr/share/vm
    cp ${DEPLOY_DIR_IMAGE}/core-image-minimal-latest.ext4 ${D}/usr/share/vm=
/rootfs.raw || \
        bbnote "Guest image not found. Make sure core-image-minimal is buil=
t."
}

FILES:${PN} +=3D "/usr/share/vm/rootfs.raw"
</code></pre>
<p>The only other "extra" thing was I had to add a <code>core-image-minimal=
.bbappend</code> that added <code>IMAGE_FSTYPES:append =3D " ext4"</code> a=
nd <code>IMAGE_LINK_NAME =3D "${PN}-latest"</code>.</p>
<p>I am still trying to improve it in 2 key ways:</p>
<ol>
<li>I would really love it if the <code>rootfs.raw</code> was just included=
 as a partition on the final disk image. That way I could grow it with syst=
emd-growfs or similar.</li>
<li>Currently it is using the same machine, and thus the same, kernel as th=
e host OS. Not a deal breaker but not ideal.</li>
</ol>
<p>I do not think this is "right", or maybe it is, either way I'm still ope=
n to further constructive criticism.</p>

--qywNu8G3b22FGNfdiOdo--

