Return-Path: <r@cmss.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35650C0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 16:11:46 +0000 (UTC)
Subject: Installing pre-built DEB files
To: yocto@lists.yoctoproject.org
From: "R Keith Beal" <r@cmss.com>
X-Originating-Location: Irvine, California, US (72.194.76.62)
X-Originating-Platform: Windows Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Feb 2025 08:11:42 -0800
Message-ID: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WO5kc01EY5aE5JXUzlrV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 16:11:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64768

--WO5kc01EY5aE5JXUzlrV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am working with NXP's Flex-Builder.
I need to add the libraries and headers for parted.
On Ubuntu there is a package called libprated-dev I am trying to replicate.
The LAYERSCAPE SDK is using bitbake 1.5.
I know I probably shouldn't be installing DEBs directly, but, adding recipe=
s for libprated and all of its dependencies is beyond the scope of the proj=
ect.

I came-up with this recipe, it reports no errors but the files are not inst=
alled in the RFS.

>=20
> SUMMARY =3D "Development libraries and headers for libparted"
> #SECTION =3D "console/tools"
> LICENSE=3D"CLOSED"
> LIC_FILES_CHKSUM=3D""
> SRC_URI =3D " \
> file://libdevmapper-event1.02.1_1.02.155-3_arm64.deb \
> file://libudev-dev_257.2-3_arm64.deb \
> file://libdevmapper-dev_1.02.201-1_arm64.deb \
> file://libparted-dev_3.6-4+b1_arm64.deb \
> "
> SRCREV =3D ""
> PV =3D "0.1.0"
> S =3D "${WORKDIR}/git"
> DEPENDS =3D "parted"
> # inherit pkgconfig
> # Install in this order
> # libdevmapper-event1.02.1_1.02.155-3_arm64.deb
> # libudev-dev_257.2-3_arm64.deb
> # libdevmapper-dev_1.02.201-1_arm64.deb
> # libparted-dev_3.6-4+b1_arm64.deb
> do_install() {
> touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/status
> ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> -i ${WORKDIR}/libdevmapper-event1.02.1_1.02.155-3_arm64.deb
> ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> -i ${WORKDIR}/libudev-dev_257.2-3_arm64.deb
> ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> -i ${WORKDIR}/libdevmapper-dev_1.02.201-1_arm64.deb
> ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> -i ${WORKDIR}/libparted-dev_3.6-4+b1_arm64.deb
> }
>

--WO5kc01EY5aE5JXUzlrV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am working with NXP's Flex-Builder.<br />I need to add the libraries=
 and headers for parted.<br />On Ubuntu there is a package called libprated=
-dev I am trying to replicate.<br />The LAYERSCAPE SDK is using bitbake 1.5=
.</div>
<div>I know I probably shouldn't be installing DEBs directly, but, adding r=
ecipes for libprated and all of its dependencies is beyond the scope of the=
 project.<br /><br />I came-up with this recipe, it reports no errors but t=
he files are not installed in the RFS.<br /><br />
<blockquote>
<div>SUMMARY =3D "Development libraries and headers for libparted"<br />#SE=
CTION =3D "console/tools"<br />LICENSE=3D"CLOSED"<br />LIC_FILES_CHKSUM=3D"=
"<br />SRC_URI =3D " \<br />&nbsp; &nbsp; file://libdevmapper-event1.02.1_1=
.02.155-3_arm64.deb \<br />&nbsp; &nbsp; file://libudev-dev_257.2-3_arm64.d=
eb \<br />&nbsp; &nbsp; file://libdevmapper-dev_1.02.201-1_arm64.deb \<br /=
>&nbsp; &nbsp; file://libparted-dev_3.6-4+b1_arm64.deb \<br />"<br />SRCREV=
 =3D ""</div>
<div>PV =3D "0.1.0"</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>DEPENDS =3D "parted"</div>
<div># inherit pkgconfig</div>
<div># Install in this order<br /># libdevmapper-event1.02.1_1.02.155-3_arm=
64.deb<br /># libudev-dev_257.2-3_arm64.deb<br /># libdevmapper-dev_1.02.20=
1-1_arm64.deb<br /># libparted-dev_3.6-4+b1_arm64.deb</div>
<div>do_install() {<br />&nbsp; &nbsp; touch ${STAGING_DIR_NATIVE}/var/lib/=
dpkg/status<br />&nbsp; &nbsp; ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${=
D}/ \<br />&nbsp; &nbsp; --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \=
<br />&nbsp; &nbsp; &nbsp;-i ${WORKDIR}/libdevmapper-event1.02.1_1.02.155-3=
_arm64.deb<br />&nbsp; &nbsp; ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D=
}/ \<br />&nbsp; &nbsp; --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \<=
br />&nbsp; &nbsp; &nbsp;-i ${WORKDIR}/libudev-dev_257.2-3_arm64.deb<br />&=
nbsp; &nbsp; ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \<br />&nbsp; =
&nbsp; --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \<br />&nbsp; &nbsp=
; &nbsp;-i ${WORKDIR}/libdevmapper-dev_1.02.201-1_arm64.deb<br />&nbsp; &nb=
sp; ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \<br />&nbsp; &nbsp; --=
admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \<br />&nbsp; &nbsp; &nbsp;-=
i ${WORKDIR}/libparted-dev_3.6-4+b1_arm64.deb<br />}</div>
</blockquote>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>

--WO5kc01EY5aE5JXUzlrV--

