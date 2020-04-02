Subject: Re: Building dependencies in yocto for GO language project
To: yocto@lists.yoctoproject.org
From: salman.isd@gmail.com
X-Originating-Location: Bielefeld, North Rhine-Westphalia, DE (37.201.144.70)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Apr 2020 14:24:45 -0700
References: <g3dN.1585859789125968899.BrNs@lists.yoctoproject.org>
In-Reply-To: <g3dN.1585859789125968899.BrNs@lists.yoctoproject.org>
Message-ID: <7289.1585862685016013384@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kV4qgAMRchZmVvqGtoL8"

--kV4qgAMRchZmVvqGtoL8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Solved... I had to add the following to the recipe and then it works.

DEPENDS +=3D "go-dep-native"

do_compile_prepend() {
cd ${WORKDIR}/build/src/${GO_ IMPORT}
dep init
dep ensure
}

--kV4qgAMRchZmVvqGtoL8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">Solved... I had to add the following to the recipe and the=
n it works.<br /><br />DEPENDS +=3D "go-dep-native"</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">do_compile_prepend() {</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp; &nbsp; &nbsp; &nbsp; cd ${WORKDIR}/build/src/${GO_=
<wbr />IMPORT}</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp; &nbsp; &nbsp; &nbsp; dep init</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp; &nbsp; &nbsp; &nbsp; dep ensure</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">}</div>

--kV4qgAMRchZmVvqGtoL8--
