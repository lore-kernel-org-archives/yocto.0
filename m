Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F408E007A2
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 05:26:35 -0800 (PST)
Received: by mail-qc0-f172.google.com with SMTP id e16so2650255qcx.3
	for <yocto@yoctoproject.org>; Mon, 09 Dec 2013 05:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rRsTE1CeMx90vCD0eVUlSPOXjHV/0utvM99Li4tsMrM=;
	b=jbyImLaj0Fpe9MVhLooisPkB9s9/pqObKCrxOm/sM2pQocf3qYvIBbLvigUZ44GVR6
	qtbmNeIkx7qOjliPxooehRjysKVNNkihSsjLGRJFp3eIiSeaem96YmWz7k+Dufmwkg+g
	zrdGOgemLzRytfPxddypQeEo8xRzPYfMmDXd/bEvzJfs6OMgU+2zBwlQ3pSb+6cK6Ygf
	q79rg7QyqVWTUz01G3xmTtPFc1YA9F2TVqs5eng+mG3HoiujnGjjlTkqi1dhV0a4a7j7
	bBi02sxywQasYw84VKfRuoRdwYe9nh1BIKDhubtuPjPuZLCfpPEZrF4qJ1GnTVgUQbhJ
	2HJg==
MIME-Version: 1.0
X-Received: by 10.49.86.169 with SMTP id q9mr33245738qez.19.1386595594844;
	Mon, 09 Dec 2013 05:26:34 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Mon, 9 Dec 2013 05:26:34 -0800 (PST)
Date: Mon, 9 Dec 2013 06:26:34 -0700
Message-ID: <CANwz6ny2azUkYX++hJv-+pgp+bis+NhwU4UaO01HQ_ah2gOCWw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: same recipe name which is correct
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
X-List-Received-Date: Mon, 09 Dec 2013 13:26:40 -0000
Content-Type: multipart/alternative; boundary=047d7b5dae26e0e83804ed19f117

--047d7b5dae26e0e83804ed19f117
Content-Type: text/plain; charset=ISO-8859-1

Hello,
meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bb and
meta-oe/meta-gnome/recipes-gnome/libgnome/libgnome-keyring_2.32.0.bb on the
dylan branch have the same name but one is r0 and the other is r3.

diff meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bbmeta-oe/meta-gnome/recipes-gnome/libgnome/
libgnome-keyring_2.32.0.bb
1,3c1,4
< DESCRIPTION = "Compatibility library for accessing secrets"
< HOMEPAGE = "http://www.gnome.org/"
< BUGTRACKER = "https://bugzilla.gnome.org/"
---
> DESCRIPTION = "Gnome keyring library"
> LICENSE = "LGPLv2 & GPLv2"
> LIC_FILES_CHKSUM =
"file://COPYING.GPL;md5=94d55d512a9ba36caa9b7df079bae19f \
>                     file://COPYING;md5=0914b9d3ebaba41ef2e3e0ae16f296cf"
5,9c6
< LICENSE = "LGPLv2 & LGPLv2+ & LGPLv2.1+"
< LIC_FILES_CHKSUM = "file://COPYING;md5=0914b9d3ebaba41ef2e3e0ae16f296cf \
<
file://library/gnome-keyring.h;endline=25;md5=68ea64f81c160d670c37da5f137be4fb
\
<
file://library/gnome-keyring.c;endline=26;md5=8d7a4fb674aaa012ea5a98e7c368b4a5
\
<
file://egg/egg-dh.h;endline=22;md5=1626c16af2a8da1f88324cf3ced33f08"
---
> SECTION = "x11/gnome"
11,16c8
< SECTION = "x11/gnome/libs"
< PR = "r3"
<
< inherit gnome gtk-doc
<
< DEPENDS = "dbus libgcrypt glib-2.0 intltool-native"
---
> inherit gnome lib_package perlnative
19a12
>
I got 55 errors similar to
ERROR: Package version for package libgnome-keyring-dbg went backwards
which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)

My custom-image still was created using the following RPMs
libgnome-keyring-dev-2.32.0-r0.armv7a_vfp_neon.rpm
libgnome-keyring-locale-en-gb-2.32.0-r0.armv7a_vfp_neon.rpm
libgnome-keyring0-2.32.0-r0.armv7a_vfp_neon.rpm
The packages I was trying to added were firefox & chromium which needed
meta-gnome.
Any and all help will be appreciated.
Thanks

--047d7b5dae26e0e83804ed19f117
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br>meta/recipes-gnome/gnome/<a =
href=3D"http://libgnome-keyring_2.32.0.bb">libgnome-keyring_2.32.0.bb</a> a=
nd meta-oe/meta-gnome/recipes-gnome/libgnome/<a href=3D"http://libgnome-key=
ring_2.32.0.bb">libgnome-keyring_2.32.0.bb</a> on the dylan branch have the=
 same name but one is r0 and the other is r3.<br>
<br>diff meta/recipes-gnome/gnome/<a href=3D"http://libgnome-keyring_2.32.0=
.bb">libgnome-keyring_2.32.0.bb</a> meta-oe/meta-gnome/recipes-gnome/libgno=
me/<a href=3D"http://libgnome-keyring_2.32.0.bb">libgnome-keyring_2.32.0.bb=
</a><br>
1,3c1,4<br>&lt; DESCRIPTION =3D &quot;Compatibility library for accessing s=
ecrets&quot;<br>&lt; HOMEPAGE =3D &quot;<a href=3D"http://www.gnome.org/">h=
ttp://www.gnome.org/</a>&quot;<br>&lt; BUGTRACKER =3D &quot;<a href=3D"http=
s://bugzilla.gnome.org/">https://bugzilla.gnome.org/</a>&quot;<br>
---<br>&gt; DESCRIPTION =3D &quot;Gnome keyring library&quot;<br>&gt; LICEN=
SE =3D &quot;LGPLv2 &amp; GPLv2&quot;<br>&gt; LIC_FILES_CHKSUM =3D &quot;fi=
le://COPYING.GPL;md5=3D94d55d512a9ba36caa9b7df079bae19f \<br>&gt;=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://COPYING;md5=3D09=
14b9d3ebaba41ef2e3e0ae16f296cf&quot;<br>
5,9c6<br>&lt; LICENSE =3D &quot;LGPLv2 &amp; LGPLv2+ &amp; LGPLv2.1+&quot;<=
br>&lt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D0914b9d3ebaba41ef2e=
3e0ae16f296cf \<br>&lt;=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 file://library/gnome-keyring.h;endline=3D25;md5=3D68ea64f81c160d6=
70c37da5f137be4fb \<br>
&lt;=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://lib=
rary/gnome-keyring.c;endline=3D26;md5=3D8d7a4fb674aaa012ea5a98e7c368b4a5 \<=
br>&lt;=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://=
egg/egg-dh.h;endline=3D22;md5=3D1626c16af2a8da1f88324cf3ced33f08&quot;<br>-=
--<br>&gt; SECTION =3D &quot;x11/gnome&quot;<br>
11,16c8<br>&lt; SECTION =3D &quot;x11/gnome/libs&quot;<br>&lt; PR =3D &quot=
;r3&quot;<br>&lt; <br>&lt; inherit gnome gtk-doc<br>&lt; <br>&lt; DEPENDS =
=3D &quot;dbus libgcrypt glib-2.0 intltool-native&quot;<br>---<br>&gt; inhe=
rit gnome lib_package perlnative<br>
19a12<br>&gt; <br></div>I got 55 errors similar to <br>ERROR: Package versi=
on for package libgnome-keyring-dbg went backwards which would break packag=
e feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br><br>My custom-image still was =
created using the following RPMs <br>
libgnome-keyring-dev-2.32.0-r0.armv7a_vfp_neon.rpm<br>libgnome-keyring-loca=
le-en-gb-2.32.0-r0.armv7a_vfp_neon.rpm<br>libgnome-keyring0-2.32.0-r0.armv7=
a_vfp_neon.rpm<br></div>The packages I was trying to added were firefox &am=
p; chromium which needed meta-gnome.<br>
</div>Any and all help will be appreciated.<br></div>Thanks<br></div>

--047d7b5dae26e0e83804ed19f117--
