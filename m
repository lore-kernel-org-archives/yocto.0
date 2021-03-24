Subject: Change (and remove unused) init system on a per-image basis #yocto #bitbake #systemd #sysvinit
To: yocto@lists.yoctoproject.org
From: lel@iesy.com
X-Originating-Location: Lüdenscheid, North Rhine-Westphalia, DE (79.219.125.63)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 07:12:07 -0700
Message-ID: <cZz1.1616595127408925958.SGte@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EojCqgJRfg9HgA5ojsP4"

--EojCqgJRfg9HgA5ojsP4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I would like to change the init system (systemd / SysVinit) on a per-image=
 basis.
Therefore I added both "systemd" and "sysvinit" to my DISTRO_FEATURES.

I set this inside my *image-systemd.bb* to make sure that systemd is avail=
able as a distro feature:

REQUIRED_DISTRO_FEATURES =3D "systemd"

Now I want to prevent the "unused" init system (in this case sysvinit) fro=
m being added to the rootfs.
Therefore I tried something like this inside my *distro.conf* :

DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "${@bb.utils.contains('REQUIRED_DI=
STRO_FEATURES', 'systemd', 'sysvinit', '', d)}"

As expected, this leads into the following. So far so good:

$ bitbake image-systemd -e | grep DISTRO_FEATURES_BACKFILL_CONSIDERED=3D
DISTRO_FEATURES_BACKFILL_CONSIDERED=3D"sysvinit"

But the final rootfs still contains sysvinit scripts (/etc/init.d/*)

Now the strange thing:
If I instead do this inside my *distro.conf* , /etc/init.d is not being cr=
eated, exactly as I wanted:

DISTRO_FEATURES_BACKFILL_CONSIDERED=3D"sysvinit"

So I don't really understand why this solution doesn't work.
Any help would be appreciated.

Thanks and Regards,
Stefan

--EojCqgJRfg9HgA5ojsP4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />
<p><span style=3D"color: #242729; font-family: Arial, 'Helvetica Neue', He=
lvetica, sans-serif; font-size: 10pt;">I would like to change the init syst=
em (systemd / SysVinit) on a per-image basis.<br />Therefore I added both "=
systemd" and "sysvinit" to my DISTRO_FEATURES.<br /><br />I set this inside=
 my <strong>image-systemd.bb</strong> to make sure that systemd is availabl=
e as a distro feature:<br /></span></p>
<pre class=3D"moz-signature" style=3D"line-height: 1.42857;">REQUIRED_DIST=
RO_FEATURES =3D "systemd"</pre>
<p><br />Now I want to prevent the "unused" init system (in this case sysv=
init) from being added to the rootfs.<br />Therefore I tried something like=
 this inside my <strong>distro.conf</strong>:</p>
<pre class=3D"moz-signature" style=3D"line-height: 1.42857;">DISTRO_FEATUR=
ES_BACKFILL_CONSIDERED =3D "${@bb.utils.contains('REQUIRED_DISTRO_FEATURES'=
, 'systemd', 'sysvinit', '', d)}"</pre>
<p><br />As expected, this leads into the following. So far so good:</p>
<pre class=3D"moz-signature" style=3D"line-height: 1.42857;">$ bitbake ima=
ge-systemd -e | grep DISTRO_FEATURES_BACKFILL_CONSIDERED=3D
DISTRO_FEATURES_BACKFILL_CONSIDERED=3D"sysvinit"</pre>
<p>But the final rootfs still contains sysvinit scripts (/etc/init.d/*)<br=
 /><br />Now the strange thing:<br />If I instead do this inside my <strong=
>distro.conf</strong>, /etc/init.d is <span style=3D"text-decoration: under=
line;">not</span> being created, exactly as I wanted:</p>
<pre class=3D"moz-signature" style=3D"line-height: 1.42857;">DISTRO_FEATUR=
ES_BACKFILL_CONSIDERED=3D"sysvinit"</pre>
<p><br />So I don't really understand why this solution doesn't work.<br /=
>Any help would be appreciated.<br /><br /><br />Thanks and Regards,<br />S=
tefan</p>

--EojCqgJRfg9HgA5ojsP4--
