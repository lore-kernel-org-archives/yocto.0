Subject: Re: [meta-rockchip] Question about OVERRIDES in meta-rockchip
To: yocto@lists.yoctoproject.org
From: "Markus Volk" <f_l_k@t-online.de>
X-Originating-Location: Gunzenhausen, Bavaria, DE (79.219.231.19)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Feb 2021 06:50:38 -0800
References: <NEHY.1612328655346942369.Z7Sn@lists.yoctoproject.org>
In-Reply-To: <NEHY.1612328655346942369.Z7Sn@lists.yoctoproject.org>
Message-ID: <1795.1612363838081851866@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YKxqjnwaAKUl88b1nsvS"

--YKxqjnwaAKUl88b1nsvS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Learned something new today :)

It could be done in local.conf like this:

OVERRIDES .=3D "${@bb.utils.contains_any('SOC_FAMILY', 'rk3066 rk3188 rk32=
88 rk3399', ':rockchip', '', d)}"
DISTRO_FEATURES_remove_rockchip =3D

--YKxqjnwaAKUl88b1nsvS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Learned something new today :)<br /><br />It could be done in local.conf li=
ke this:<br /><br />
<pre><code>OVERRIDES .=3D "${@bb.utils.contains_any('SOC_FAMILY', 'rk3066 =
rk3188 rk3288 rk3399', ':rockchip', '', d)}"
DISTRO_FEATURES_remove_rockchip =3D </code></pre>

--YKxqjnwaAKUl88b1nsvS--
