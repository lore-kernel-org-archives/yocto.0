Return-Path: <kfa@deif.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD4C3DA4B
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 09:40:23 +0000 (UTC)
Subject: Native causes installation of static linked libraries.
To: yocto@lists.yoctoproject.org
From: "Kjeld Flarup" <kfa@deif.com>
X-Originating-Location: Skive, Central Jutland, DK (87.54.42.99)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jul 2024 02:40:20 -0700
Message-ID: <323O.1721209220834479878.aRt8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="emE93HFeIjKYgLhyidzg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 09:40:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63522

--emE93HFeIjKYgLhyidzg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I may just be me who do not understand something, I got this recipe below w=
hich needs some native tools to build.
It compiles but WHY does glibc suddenly start to install .a files in my roo=
tfs?

>=20
> rootfs/usr/lib/aarch64-oe-linux/12.3.0/libgcc.a
> rootfs/usr/lib/aarch64-oe-linux/12.3.0/libgcc_eh.a
> rootfs/usr/lib/aarch64-oe-linux/12.3.0/libgcov.a
> rootfs/usr/lib/libanl.a
> rootfs/usr/lib/libc_nonshared.a
> rootfs/usr/lib/libdl.a
> rootfs/usr/lib/libpthread.a
> rootfs/usr/lib/libutil.a
>=20

This is my recipe

>=20
> SECTION =3D "devel"
> DESCRIPTION =3D "*eprosima Fast DDS* (formerly Fast RTPS) is a C++
> implementation of the DDS (Data Distribution Service) standard of the OMG
> (Object Management Group). eProsima Fast DDS implements the RTPS (Real
> Time Publish Subscribe) protocol, which provides publisher-subscriber
> communications over unreliable transports such as UDP, as defined and
> maintained by the Object Management Group (OMG) consortium. RTPS is also
> the wire interoperability protocol defined for the Data Distribution
> Service (DDS) standard. *eProsima Fast DDS* expose an API to access
> directly the RTPS protocol, giving the user full access to the protocol
> internals."
> AUTHOR =3D "Miguel Company <miguelcompany@eprosima.com>"
> HOMEPAGE =3D "https://www.eprosima.com/"
> LICENSE =3D "Apache-2.0"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3b83ef96387f14655fc854ddc3c6bd=
57"
> inherit pkgconfig cmake
> DEPENDS =3D " \
> asio \
> fastcdr \
> foonathan-memory-vendor \
> libtinyxml2 \
> openssl \
> cmake-native \
> foonathan-memory-vendor-native \
> fastcdr-native \
> "
> BBCLASSEXTEND =3D+ "native nativesdk"
> SRC_URI =3D
> "git://github.com/eProsima/Fast-DDS.git;protocol=3Dhttp;branch=3D${PV}"
> SRCREV =3D "aa7f2bf7bed5e24878ed4d87c66422b909784243"
> S =3D "${WORKDIR}/git"
> INSANE_SKIP:${PN}=3D"dev-deps"
> FILES:${PN} +=3D "${bindir} ${prefix}/tools"
> FILES:${PN}-dev +=3D "${datadir} ${prefix}/tools"
> FILES:${PN}-dev +=3D "${bindir}/fast-discovery-server-1.0.1"
>=20

Any hints of this behaviour is appreciated.

--
--
Regards
Kjeld Flarup
DEIF A/S

--emE93HFeIjKYgLhyidzg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I may just be me who do not understand something, I got this recipe be=
low which needs some native tools to build.</div>
<div>It compiles but WHY does glibc suddenly start to install .a files in m=
y rootfs?</div>
<blockquote>
<div>rootfs/usr/lib/aarch64-oe-linux/12.3.0/libgcc.a<br />rootfs/usr/lib/aa=
rch64-oe-linux/12.3.0/libgcc_eh.a<br />rootfs/usr/lib/aarch64-oe-linux/12.3=
.0/libgcov.a<br />rootfs/usr/lib/libanl.a<br />rootfs/usr/lib/libc_nonshare=
d.a<br />rootfs/usr/lib/libdl.a<br />rootfs/usr/lib/libpthread.a<br />rootf=
s/usr/lib/libutil.a</div>
</blockquote>
<div>This is my recipe</div>
<div>&nbsp;</div>
<div>
<blockquote>
<div>SECTION =3D "devel"</div>
<div>DESCRIPTION =3D "*eprosima Fast DDS* (formerly Fast RTPS) is a C++ imp=
lementation of the DDS (Data Distribution Service) standard of the OMG (Obj=
ect Management Group). eProsima Fast DDS implements the RTPS (Real Time Pub=
lish Subscribe) protocol, which provides publisher-subscriber communication=
s over unreliable transports such as UDP, as defined and maintained by the =
Object Management Group (OMG) consortium. RTPS is also the wire interoperab=
ility protocol defined for the Data Distribution Service (DDS) standard. *e=
Prosima Fast DDS* expose an API to access directly the RTPS protocol, givin=
g the user full access to the protocol internals."<br />AUTHOR =3D "Miguel =
Company &lt;miguelcompany@eprosima.com&gt;"<br />HOMEPAGE =3D "https://www.=
eprosima.com/"</div>
<div>LICENSE =3D "Apache-2.0"<br />LIC_FILES_CHKSUM =3D "file://LICENSE;md5=
=3D3b83ef96387f14655fc854ddc3c6bd57"</div>
<div>inherit pkgconfig cmake</div>
<div>DEPENDS =3D " \<br />&nbsp; &nbsp; asio \<br />&nbsp; &nbsp; fastcdr \=
<br />&nbsp; &nbsp; foonathan-memory-vendor \<br />&nbsp; &nbsp; libtinyxml=
2 \<br />&nbsp; &nbsp; openssl \<br />&nbsp; &nbsp; cmake-native \<br />&nb=
sp; &nbsp; foonathan-memory-vendor-native \<br />&nbsp; &nbsp; fastcdr-nati=
ve \<br />"</div>
<div>BBCLASSEXTEND =3D+ "native nativesdk"</div>
<div>SRC_URI =3D "git://github.com/eProsima/Fast-DDS.git;protocol=3Dhttp;br=
anch=3D${PV}"<br />SRCREV =3D "aa7f2bf7bed5e24878ed4d87c66422b909784243"</d=
iv>
<div>S =3D "${WORKDIR}/git"</div>
<div>INSANE_SKIP:${PN}=3D"dev-deps"</div>
<div>FILES:${PN} +=3D "${bindir} ${prefix}/tools"<br />FILES:${PN}-dev +=3D=
 "${datadir} ${prefix}/tools"<br />FILES:${PN}-dev +=3D "${bindir}/fast-dis=
covery-server-1.0.1"</div>
</blockquote>
</div>
<div>Any hints of this behaviour is appreciated.</div>
<div>&nbsp;</div>
<div>--</div>
<div>--<br />Regards&nbsp;<br />Kjeld Flarup<br />DEIF A/S</div>

--emE93HFeIjKYgLhyidzg--

