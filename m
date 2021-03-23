Subject: package_rpm and file conflicts.
To: yocto@lists.yoctoproject.org
From: "Randall" <randall.crook@au.ngc.com>
X-Originating-Location: Mullaloo, Western Australia, AU (220.245.126.203)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Mar 2021 18:01:59 -0700
Message-ID: <oJmL.1616461319381089258.O5Nj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LXVamxRhUhOpwxRZT4zP"

--LXVamxRhUhOpwxRZT4zP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI,

Building up a customization layer over the top of poke to install 3rd part=
y RPM files at build time. These packages contain some basic global configu=
ration changes for the destination environment.

Unfortunately I am getting RPM file conflicts (EG: /etc/network/interfaces=
) when I go to build. How can force the package installation allowing for t=
he conflicting file from the custom layer to over write the files in the ba=
se packages?

EG:

>=20
> file /etc/network/interfaces conflicts between attempted installs of
> router-1.0-r0.noarch and init-ifupdown-1.0-r7.qemuarm64
> file /etc/udhcpc.d/50default conflicts between attempted installs of
> router-1.0-r0.noarch and busybox-udhcpc-1.24.1-r0.aarch64

--LXVamxRhUhOpwxRZT4zP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI,<br /><br />Building up a customization layer over the top of poke to in=
stall 3rd party RPM files at build time. These packages contain some basic =
global configuration changes for the destination environment.&nbsp;<br /><b=
r />Unfortunately I am getting RPM file conflicts (EG: /etc/network/interfa=
ces) when I go to build. How can force the package installation allowing fo=
r the conflicting file from the custom layer to over write the files in the=
 base packages?<br /><br />EG: <br />
<blockquote>&nbsp;file /etc/network/interfaces conflicts between attempted=
 installs of router-1.0-r0.noarch and init-ifupdown-1.0-r7.qemuarm64<br />&=
nbsp;file /etc/udhcpc.d/50default conflicts between attempted installs of r=
outer-1.0-r0.noarch and busybox-udhcpc-1.24.1-r0.aarch64</blockquote>

--LXVamxRhUhOpwxRZT4zP--
