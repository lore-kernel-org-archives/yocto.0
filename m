Return-Path: <berthold-yocto@xn--hllmanns-n4a.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F6CBE0084E; Thu,  7 Nov 2019 12:03:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.133.104.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1281 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Nov 2019 12:03:15 PST
Received: from www48.your-server.de (www48.your-server.de [213.133.104.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF6CE006D2
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 12:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=xn--hllmanns-n4a.de; s=default1910;
	h=Content-Type:MIME-Version:Message-ID:
	Date:Reply-To:Subject:To:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lxJOjiAHCGZbsvF9LOsHVBvgOV6vVXImiAS6PQTjfOY=;
	b=UzaRBxyl/oRW5Qcaqo1vuXaiw4
	wmD0LZGR5f9As6uXgyNaz6U39CMM8WKnJ/tknsrejk425c8ZG2QnVEB416g6RNiUd9AHnX2hitGXo
	ohexmwsfC9CaZsjvkKEUaXaMyOhUlXN4dLsBEFONalEkbwJOXmGUl88PP7DzpBVVlWu+8hgL/JkW1
	NIk8YRDPXUNLGwgnhswgUHdMBWKica/1GpJJJ0FxvEq7u9qUbVtVXqCe+kLLisXltTKeMLBHuEHot
	kQv444F9ZW1HHGGyx8JMGtkBCRg3qbjX1BV1eeVKqy/6RDhYa8V+t9YlNSLeDPbsu4SH+/LDY/uQj
	nOGXlDMA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www48.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <berthold-yocto@xn--hllmanns-n4a.de>)
	id 1iSnfF-00051F-Fu
	for yocto@yoctoproject.org; Thu, 07 Nov 2019 20:41:53 +0100
Received: from [77.10.119.27] (helo=pchoel.xn--hllmanns-n4a.de)
	by sslproxy06.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <berthold-yocto@xn--hllmanns-n4a.de>)
	id 1iSnfF-000Ve5-8j
	for yocto@yoctoproject.org; Thu, 07 Nov 2019 20:41:53 +0100
Received: from pchoel (localhost [127.0.0.1])
	by pchoel.xn--hllmanns-n4a.de (Postfix) with ESMTP id BF89E664BA
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 20:41:52 +0100 (CET)
From: berthold-yocto@xn--hllmanns-n4a.de (Berthold =?utf-8?Q?H=C3=B6llmann?=)
To: yocto@yoctoproject.org
Date: Thu, 07 Nov 2019 20:41:47 +0100
Message-ID: <87wocb79tw.fsf@xn--hllmanns-n4a.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Authenticated-Sender: berthold@xn--hllmanns-n4a.de
X-Virus-Scanned: Clear (ClamAV 0.101.4/25626/Thu Nov  7 10:50:48 2019)
Subject: Yocto newbie: Need help with recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: berthold-yocto@xn--hllmanns-n4a.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Nov 2019 20:03:17 -0000
X-Groupsio-MsgNum: 47177
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hello,

I'm trying my way around yocto. I thought I try adding a small project
of mine to a Raspberry Pi image as a first try in writing recipes. At
least I managed to get the project compiling, but the generation of the
packages is failing:

$ bitbake  qtlissajous
...
ERROR: qtlissajous-git-r0 do_package_qa: QA Issue: non debug package contai=
ns .debug directory: qtlissajous path /work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/qtlissajous/git-r0/packages-split/qtlissajous/usr/bin/.debug/li=
ssajous_explorer [debug-files]
ERROR: qtlissajous-git-r0 do_package_qa: QA run found fatal errors. Please =
consider fixing them.
ERROR: qtlissajous-git-r0 do_package_qa:=20
ERROR: qtlissajous-git-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/build/shared/rpi/rpi2-build/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/qtlissajous/git-r0/temp/log=
.do_package_qa.4823
ERROR: Task (/home/build/shared/rpi/meta-qtlissajous/recipes-qtlissajous/qt=
lissajous/qtlissajous_git.bb:do_package_qa) failed with exit code '1'
...

$ (cd /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/qtlissajous/git-r0/packages-split/;find  -type f)
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_doubleslider.c=
pp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_phaselabel.cpp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.cpp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.h
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explorer.c=
pp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explorer.h
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.cpp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.h
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/main.cpp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.cpp
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.h
./qtlissajous-tools/usr/bin/lissajous_explorer
./qtlissajous/usr/bin/.debug/lissajous_explorer
./qtlissajous-tools.shlibdeps

My qtlissajous_git.gg file is:

=2D------------------------------------------------------
DESCRIPTION =3D "Explore Lissajous figures for Raspberry Pi"
SECTION =3D "games"
DEPENDS +=3D "qtbase"

PACKAGES =3D "${PN}"

LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D7e26fc87b2c255632232dc535ed2700b=
;sha256=3Dc8ea5a5ce0ef734ec1d0be3e214bed71673f1ffc628fe86bbd055d61abd52cc8"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"

SRCREV =3D "${AUTOREV}"
SRC_URI =3D "git://gitlab.com/bhoel/qlissajousexplorer.git;protocol=3Dhttps"

S =3D "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

FILES_${PN} =3D "${bindir}"
FILES_${PN}-dbg +=3D "${bindir}/.debug"

do_install() {
      install -d ${D}/usr/bin
      install -m 0755 lissajous_explorer ${D}/usr/bin
}

RDEPENDS_${PN} =3D "qtbase-plugins"
=2D------------------------------------------------------

Why is the release executable ending up in the tools tree?
Why is the debug executable ending up in the release tree?
Is this the right place to ask this kind of questions?

Thank you
Berthold

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEETnL22cPTRrjJNs5xt04tZQJrm0UFAl3Ec3wACgkQt04tZQJr
m0UWUhAAklVHJu3RCfNMlykfudYgcLZsxhX3iAZDAXFcfFIx3g7bNLfkIsMjEifi
ZBmrz9nX5EDVMn2fg1vzoQzPjl9AonYrN72DttbTkg2ODMmCHO3DOKYov3H5+Dju
GhOHUfFV56c4uTKJRbbWoUDpE5QEDi20xlvfiCbqYjUIVFAgENS9vtnvkfv+Pq9m
kll8ZNplGTDreLwjjjf7WtYIFohzT6b4bUO3eNDJgST8jYiEZyA/6DcrwgUD8uAn
KuG8A2lUZdA9s8LZjdXUYOk0VYgyQUF1wXU6Rt7Ib+xmTqOqZCxGk0zhISo1885z
gWUS2f0gE194xBmAPNjQnvXucJUfEJ8/9jwc8jTULaiZV/2qJiyujSoj/EBYOlZJ
x0KKxDkfzcAJFY2FhEDivet13IXhx/nUWxiQ4PgbJY2sMAgIjpxy2h4evxIw346E
r2xCNyA+ERiSlDb1AoAd7a83pWBcQETAlTvGkvmgjOyOognIvXUeUgIsfIr7cg04
qR3esRH9WvK/PImIqHF47oe4JyV2/3A3mwOlCpmDMUTLJshMyKKfr8GrYmHlfmDz
pv5osIpWKJrNARMAb0yG4dT8ZlNYgiBKPyHdq/+GVMkEN0+alR2hu70JiH2tuRnN
u3g7ZeXMGW8IyWVvz1FwZtyKDJtjt2xkBrcPY0an8LKyMZAu2Vg=
=TLt6
-----END PGP SIGNATURE-----

--=-=-=--
