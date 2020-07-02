Subject: Re: How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
From: ingemar0720@gmail.com
X-Originating-Location: Singapore, SG (116.86.81.64)
X-Originating-Platform: Mac Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 18:47:18 -0700
References: <29203.1593617239911633287@lists.yoctoproject.org>
In-Reply-To: <29203.1593617239911633287@lists.yoctoproject.org>
Message-ID: <4960.1593654438142465435@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OikhGMcLXoW5DEtzlH31"

--OikhGMcLXoW5DEtzlH31
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

ok. I've found the cause.

rrdtool-perl is empty so yocto doesn't generate rpm package for it.

I create another .bbappend file and add `ALLOW_EMPTY_${PN}-perl =3D "1"` a=
nd it works.
Thanks for all the helps.

--OikhGMcLXoW5DEtzlH31
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>ok. I've found the cause.&nbsp;</p>
<p>rrdtool-perl is empty so yocto doesn't generate rpm package for it.&nbs=
p;</p>
<p>I create another .bbappend file and add `ALLOW_EMPTY_${PN}-perl =3D "1"=
` and it works.<br />Thanks for all the helps.&nbsp;</p>

--OikhGMcLXoW5DEtzlH31--
