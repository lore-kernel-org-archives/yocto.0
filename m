Subject: Re: Empty source package when using devtool
To: yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Toulouse, Occitanie, FR (88.163.88.103)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Jun 2021 22:41:40 -0700
References: <hzlH.1623994222244566542.d6vx@lists.yoctoproject.org>
In-Reply-To: <hzlH.1623994222244566542.d6vx@lists.yoctoproject.org>
Message-ID: <379.1623994900446573953@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ldps5NMV1V7MNsxUzGyo"

--ldps5NMV1V7MNsxUzGyo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It it can help to understand, I rechecked the full content of source packag=
es and glib-2.0 / networkamanager are not ok like I said earlire.
There are not empty but they seem to contain only build generated files (f=
or example glib/glibconfig.h which, in the glib source repository, is glib/=
glibconfig.h. *in* ).

--ldps5NMV1V7MNsxUzGyo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It it can help to understand, I rechecked the full content of source packag=
es and glib-2.0 / networkamanager are not ok like I said earlire.<br />Ther=
e are not empty but they seem to contain only build generated files (for ex=
ample glib/glibconfig.h which, in the glib source repository, is glib/glibc=
onfig.h.<strong>in</strong>).

--ldps5NMV1V7MNsxUzGyo--
