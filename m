Subject: Re: Recipe for include-what-you-use and rpath problem #sdk
To: yocto@lists.yoctoproject.org
From: "Francesco Cusolito" <mous16@gmail.com>
X-Originating-Location: Bergamo, Lombardy, IT (5.252.241.155)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Jun 2021 07:00:23 -0700
References: <83Fh.1622711773141741245.p9im@lists.yoctoproject.org>
In-Reply-To: <83Fh.1622711773141741245.p9im@lists.yoctoproject.org>
Message-ID: <20394.1624629623473093776@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TP2OLolCAHZLeWCQ0k0I"

--TP2OLolCAHZLeWCQ0k0I
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I was able to make it work correctly enabling CMAKE_SKIP_RPATH.
Here the working full recipe:

LICENSE =3D "NCSA"
LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D59d01ad98720f3c50d6a8a0ef31=
08c88 \
                   file://iwyu-check-license-header.py;md5=3Dcdc4ab52c0b26=
e216cbf434649d30403"

SRC_URI =3D "git://github.com/include-what-you-use/include-what-you-use.gi=
t;protocol=3Dhttps;branch=3Dclang_10"

PV =3D "0.14+git${SRCPV}"
SRCREV =3D "0.14"

S =3D "${WORKDIR}/git"

DEPENDS =3D "clang"

inherit cmake python3native

EXTRA_OECMAKE_append_class-nativesdk =3D " \
	-DCMAKE_SKIP_RPATH:BOOL=3DON \
	"

BBCLASSEXTEND_append =3D " \
	nativesdk \
	"

--TP2OLolCAHZLeWCQ0k0I
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I was able to make it work correctly enabling <code>CMAKE_SKIP_RPATH</co=
de>.<br />Here the working full recipe:</p>
<pre><code>LICENSE =3D "NCSA"
LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D59d01ad98720f3c50d6a8a0ef31=
08c88 \
                    file://iwyu-check-license-header.py;md5=3Dcdc4ab52c0b2=
6e216cbf434649d30403"

SRC_URI =3D "git://github.com/include-what-you-use/include-what-you-use.gi=
t;protocol=3Dhttps;branch=3Dclang_10"

PV =3D "0.14+git${SRCPV}"
SRCREV =3D "0.14"

S =3D "${WORKDIR}/git"

DEPENDS =3D "clang"

inherit cmake python3native

EXTRA_OECMAKE_append_class-nativesdk =3D " \
	-DCMAKE_SKIP_RPATH:BOOL=3DON \
	"

BBCLASSEXTEND_append =3D " \
	nativesdk \
	"
</code></pre>

--TP2OLolCAHZLeWCQ0k0I--
