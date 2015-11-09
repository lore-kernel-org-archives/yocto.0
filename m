Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6D68E0088C; Mon,  9 Nov 2015 14:46:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Nov 2015 14:46:20 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA6CE007C9
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 14:46:20 -0800 (PST)
Received: from aragorn.localnet ([95.89.252.196]) by mail.gmx.com (mrgmx003)
	with ESMTPSA (Nemesis) id 0MOOdZ-1a1AK40La9-005nDm;
	Mon, 09 Nov 2015 23:41:13 +0100
From: Jan-Simon Moeller <dl9pf@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 09 Nov 2015 23:40:07 +0100
Message-ID: <1576239.ihu6CIn72A@aragorn>
Organization: priv
User-Agent: KMail/4.14.9 (Linux/3.16.7-24-desktop; KDE/4.14.9; x86_64; ; )
MIME-Version: 1.0
X-Provags-ID: V03:K0:qHgJ0TkGBjLVKQgA7hewWb6WjdhdpIFDnc/ocQMBDUL3tdRi+8r
	Dhc4fM09A2DKt9aGZSG3LLOqU2hSaL+8y8UMYq4FcMOeybXpmV9t3wkwfxsJd9ywYsY3wMP
	5on508aFknw/AM3COO8pTbJwl4cGSQyj8/53oSrtg22DcPKPndWUfbbpif55F/XofA3mysh
	Ak6Dm4KkxqCwg0/qtWzVw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:yE7Oew/G/XE=:ZqmXIwl2hh9UqEJs2RMYEN
	8075e6NA+2tQ0qsbaZIX8r8Fz8Ai6mT/gM1lr61rlL2yy5anD6cEXXHL6p/KmJ9nh9Q7CI/28
	YJpNKAhiUeRl0mnrcqAbuu3BvpWdZfUG98QEK5rOWYX04YzIGwtFtTtp7disj87xyKmYC8boa
	DJ2BZySuxwSW3tEdgk7rm8Aa8d5j7xR5NR6O2pcCoz2aZqAoIJILdS+Neb3ZxCDO8hzSfeJ4T
	I57iEA7V1iERHFP9nYy1nhbuQrmNB3gKDPafSyu+pg/N6NciKzpBogjerVfBkeSiCTxC5oFuw
	S73DNy6oAqUmAiy2slMaHpbCY98MJ+KwzpNk3XNA+UcNYs/tj6z+0fKY1+muQTFg4dKn8Beds
	ZtaXAn7tU8gUws8Wwc9Ywnf1jSsu9T8rwdKDdvLpchUj1hhFFhyKt8WDgWskshd8w5KScGuAW
	6r2EqFjOnDRB/7K2J2qXCcPITFOPuMwTNHL2Vz6PX93LHlydF9LJTnO4Gal0b901Jxr6DN7Y6
	aeW1Rc4gA90nLoWRbyrBV2l6pGLwPtad99vgVtg92+ri4CCu1NL3qbZyhjhCTOFMV4zawxLQx
	7QWieqKJ5gUZS/YTbAnOOWrAptabpTh96w2dr1JDwVubnB3TsK5P7rFFqNVxGdZR6B/ouaAkO
	j91vU3sWwWzYhRgDO1RxWQ5jocOLOVpV4826XzuVoYEIwqmSS4DrBGCDbFNR4FDn9SICS0RQ2
	4Zt+yFoZooAgpxAqk/ttWwvle4d2b2NZDkzmpPwo8Wt6EtUGTnUV5ybyav0=
Subject: Add SUSE 42.1 "Leap" to SANITY_TESTED_DISTROS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Nov 2015 22:46:23 -0000
X-Groupsio-MsgNum: 27246
Content-Type: multipart/mixed; boundary="nextPart1527303.HbPuSFYS8v"
Content-Transfer-Encoding: 7Bit

--nextPart1527303.HbPuSFYS8v
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi !

Here is a patch to add "Leap" to the tested distros. I ran a couple of=20=

builds since the update and all is normal. Please consider for=20
inclusion.

Best,
Jan-Simon M=F6ller
---
commit f729ca343849d2e0692caf18ba1789da408ceba3
Author: Jan-Simon M=F6ller <dl9pf@gmx.de>
Date:   Mon Nov 9 23:36:41 2015 +0100

    Add SUSE Leap (SUSE-LINUX-42.1) to SANITY_TESTED_DIST
   =20
    Signed-off-by: Jan-Simon M=F6ller <dl9pf@gmx.de>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yoct
index 2c99da8..06209fc 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -84,6 +84,7 @@ SANITY_TESTED_DISTROS ?=3D " \
             Debian-7.* \n \
             Debian-8.* \n \
             openSUSE-project-13.2 \n \
+            SUSE-LINUX-42.1
             "
=20
 # Default hash policy for distro

--nextPart1527303.HbPuSFYS8v
Content-Disposition: attachment; filename="0001-Add-SUSE-Leap-SUSE-LINUX-42.1-to-SANITY_TESTED_DISTR.patch"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/x-patch; charset="UTF-8"; name="0001-Add-SUSE-Leap-SUSE-LINUX-42.1-to-SANITY_TESTED_DISTR.patch"

From f729ca343849d2e0692caf18ba1789da408ceba3 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Jan-Simon=3D20M=3DC3=3DB6ller?=3D <dl9pf@gmx.de>
Date: Mon, 9 Nov 2015 23:36:41 +0100
Subject: [PATCH] Add SUSE Leap (SUSE-LINUX-42.1) to SANITY_TESTED_DISTROS.
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Jan-Simon M=C3=B6ller <dl9pf@gmx.de>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky=
.conf
index 2c99da8..06209fc 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -84,6 +84,7 @@ SANITY_TESTED_DISTROS ?=3D " \
             Debian-7.* \n \
             Debian-8.* \n \
             openSUSE-project-13.2 \n \
+            SUSE-LINUX-42.1
             "
=20
 # Default hash policy for distro
--=20
2.6.2


--nextPart1527303.HbPuSFYS8v--
