Subject: How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: yocto@lists.yoctoproject.org
From: sayinswapna@gmail.com
X-Originating-Location: Kanata, Ontario, CA (174.112.254.83)
X-Originating-Platform: Windows Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 May 2021 15:04:10 -0700
Message-ID: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fRyDOWw2u9ocyiFfTUg7"

--fRyDOWw2u9ocyiFfTUg7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto team:

I just started with yocto and would like to know the process for switching=
 the init manager from systemd to sysvinit.

I tried this options in config file
VIRTUAL-RUNTIME_init_manager =3D "busybox"
PREFERRED_PROVIDER_udev =3D "sysvinit"
PREFERRED_PROVIDER_udev-utils =3D "sysvinit"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
DEFAULT_DISTRO_FEATURES +=3D " sysvinit"

I see a warning when building my machine:

No recipe for target:
/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend

When I run this build on my target it still shows me systemd init manager.=
..

Not sure if I am missing any options.
Could you please let me know if there are any pointers I can refer to?

Thanks,
Priya

--fRyDOWw2u9ocyiFfTUg7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto team:<br /><br />I just started with yocto and would like to kn=
ow the process for switching the init manager from systemd to sysvinit.<br =
/><br />I tried this options in config file<br />
<div>VIRTUAL-RUNTIME_init_manager =3D "busybox"</div>
<div>PREFERRED_PROVIDER_udev =3D "sysvinit"</div>
<div>PREFERRED_PROVIDER_udev-utils =3D "sysvinit"</div>
<div>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"</div>
<div>DEFAULT_DISTRO_FEATURES +=3D " sysvinit"<br /><br />I see a warning w=
hen building my machine:<br /><br />No recipe for target:<br />
<div>/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend<br /><br />When I ru=
n this build on my target it still shows me systemd init manager...<br /><b=
r />Not sure if I am missing any options. <br />Could you please let me kno=
w if there are any pointers I can refer to?</div>
<div><br />Thanks,<br />Priya</div>
<br /><br /></div>

--fRyDOWw2u9ocyiFfTUg7--
