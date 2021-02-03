Subject: [meta-rockchip] Question about OVERRIDES in meta-rockchip
To: yocto@lists.yoctoproject.org
From: "Markus Volk" <f_l_k@t-online.de>
X-Originating-Location: Gunzenhausen, Bavaria, DE (79.219.231.19)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Feb 2021 21:04:15 -0800
Message-ID: <NEHY.1612328655346942369.Z7Sn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ICpmVNrelOqm699QLsyW"

--ICpmVNrelOqm699QLsyW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building an image for rock-pi-4c using meta-rockchip layer and need to =
remove a DISTRO_FEATURE in local.conf. That would be needed for all rockchi=
p based boards, but i only found overrides based on soc_family. I ended up =
adding a line for every soc_family:

DISTRO_FEATURES_remove_rk3066 =3D
DISTRO_FEATURES_remove_rk3188 =3D
DISTRO_FEATURES_remove_rk3288 =3D
DISTRO_FEATURES_remove_rk3399 =3D

So my question is: Is there any better way to achieve this or would it be =
thinkable to add an override for the complete rockchip family (maybe in roc=
kchip-defaults.inc) like this?

MACHINEOVERRIDES .=3D ":rockchip"

Kind regards,
Markus Volk

--ICpmVNrelOqm699QLsyW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building an image for rock-pi-4c using meta-rockchip layer and need to =
remove a DISTRO_FEATURE in local.conf. That would be needed for all rockchi=
p based boards, but i only found overrides based on soc_family. I ended up =
adding a line for every soc_family:<br /><br />DISTRO_FEATURES_remove_rk306=
6 =3D<br />DISTRO_FEATURES_remove_rk3188 =3D<br />DISTRO_FEATURES_remove_rk=
3288 =3D<br />DISTRO_FEATURES_remove_rk3399 =3D<br /><br />So my question i=
s: Is there any better way to achieve this or would it be thinkable to add =
an override for the complete rockchip family (maybe in rockchip-defaults.in=
c) like this?<br /><br />MACHINEOVERRIDES .=3D ":rockchip"<br /><br />Kind =
regards,<br />Markus Volk

--ICpmVNrelOqm699QLsyW--
