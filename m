Subject: Re: Need to disable IPV6 completely from the yocto image for Raspberrypi
To: yocto@lists.yoctoproject.org
From: md.sadiq@exaleapsemi.com
X-Originating-Location: Guntur, Andhra Pradesh, IN (146.196.36.170)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Dec 2020 10:18:37 -0800
References: <oEzo.1608702465645988985.wT7I@lists.yoctoproject.org>
In-Reply-To: <oEzo.1608702465645988985.wT7I@lists.yoctoproject.org>
Message-ID: <20415.1609352317721051734@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="q3GRge5cGE9SqZ3jT5hG"

--q3GRge5cGE9SqZ3jT5hG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

To remove completely ipv6 from distro disable all the kernel configuration=
s related to ipv6, add the the below line in the local.conf file
DISTRO_FEATURES_remove =3D "ipv6".

If above doesnot help create your own distro file owndistro.conf and add b=
elow lines to remove unwanted features as follows

DISTRO_FEATURES_remove =3D " ipv6 x11 wayland"

and change local.conf as follows

DISTRO ?=3D "owndistro"

Regards,
Sadiq

--q3GRge5cGE9SqZ3jT5hG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />To remove completely ipv6 from distro disable all the kernel=
 configurations related to ipv6, add the the below line in the local.conf f=
ile<br />DISTRO_FEATURES_remove =3D "ipv6".<br /><br />If above doesnot hel=
p create your own distro file owndistro.conf and add below lines to remove =
unwanted features as follows<br /><br />DISTRO_FEATURES_remove =3D " ipv6 x=
11 wayland"<br /><br />and change local.conf as follows<br /><br />DISTRO ?=
=
=3D "owndistro"<br /><br /><br /><br />Regards,<br />Sadiq

--q3GRge5cGE9SqZ3jT5hG--
