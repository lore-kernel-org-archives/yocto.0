Subject: Re: How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
From: ingemar0720@gmail.com
X-Originating-Location: Singapore, SG (116.86.81.64)
X-Originating-Platform: Mac Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 07:26:00 -0700
References: <f148084c-81a8-aa23-5581-735b30dd054b@rsi-elektrotechnik.de>
In-Reply-To: <f148084c-81a8-aa23-5581-735b30dd054b@rsi-elektrotechnik.de>
Message-ID: <3093.1593613560762629137@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D4TjMe7tGKFMP8sdXWwE"

--D4TjMe7tGKFMP8sdXWwE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 1, 2020 at 05:27 AM, "Josef Holzmayr" <holzmayr@rsi-elektrotech=
nik.de> wrote:

>=20
> Howdy!
>=20
> Am 01.07.2020 um 14:05 schrieb ingemar0720@gmail.com:
>=20
>> On Wed, Jul 1, 2020 at 04:46 AM, Josef Holzmayr wrote:
>>=20
>> The correct place to do this is your DISTRO conf file.
>>=20
>> Is this the correct way to set up it?
>>=20
>> PACKAGECONFIG_pn-rrdtool=3D"rrdtool rrdtool-perl"
>=20
> Please see
>=20
> https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#var-PAC=
KAGECONFIG
>=20
>=20
> Section "configuration file"
>=20
>=20

I've added "PACKAGECONFIG_pn-rrdtool" into my distro conf file but still g=
et same result.

I also tried adding .bbappend but it doesn't help.

My distro conf file is in below, could you see any issue in it?

*include conf/distro/poky.conf*
*DISTRO =3D "rpi"*
*DISTRO_NAME =3D "rpi"*
*DISTRO_VERSION =3D "1.0"*

*PACKAGECONFIG_pn-rrdtool =3D "perl systemd"*

*# Use systemd as init manager*
*DISTRO_FEATURES_append =3D " virtualization systemd bluez5 bluetooth wifi=
 ssh-server-openssl"*
*DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"*
*VIRTUAL-RUNTIME_init_manager =3D "systemd"*
*VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"*

>=20
> Greetz
>=20
> --
> _____________________________________________________________
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> Fon: +49 8444 9204-0
> Fax: +49 8444 9204-50
> www.rsi-elektrotechnik.de
>=20
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548

--D4TjMe7tGKFMP8sdXWwE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 1, 2020 at 05:27 AM, "Josef Holzmayr" &lt;holzmayr@rsi-elektrot=
echnik.de&gt; wrote:<br />
<blockquote>Howdy!<br /><br />Am 01.07.2020 um 14:05 schrieb ingemar0720@g=
mail.com:<br />
<blockquote>On Wed, Jul 1, 2020 at 04:46 AM, Josef Holzmayr wrote:<br /><b=
r />The correct place to do this is your DISTRO conf file.<br /><br />Is th=
is the correct way to set up it?<br /><br />PACKAGECONFIG_pn-rrdtool=3D"rrd=
tool rrdtool-perl"</blockquote>
Please see<br /><br /><a href=3D"https://www.yoctoproject.org/docs/3.1/ref=
-manual/ref-manual.html#var-PACKAGECONFIG" target=3D"_blank" rel=3D"noopene=
r">https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#var-PAC=
KAGECONFIG</a><br /><br />Section "configuration file"<br /><br /></blockqu=
ote>
<p>I've added "PACKAGECONFIG_pn-rrdtool" into my distro conf file but stil=
l get same result.</p>
<p>I also tried adding .bbappend but it doesn't help.</p>
<p>My distro conf file is in below, could you see any issue in it?</p>
<div><br /><strong>include conf/distro/poky.conf</strong></div>
<div><strong>DISTRO =3D "rpi"</strong></div>
<div><strong>DISTRO_NAME =3D "rpi"</strong></div>
<div><strong>DISTRO_VERSION =3D "1.0"</strong></div>
<div>&nbsp;</div>
<div><strong>PACKAGECONFIG_pn-rrdtool =3D "perl systemd"</strong></div>
<div>&nbsp;</div>
<div><strong># Use systemd as init manager</strong></div>
<div><strong>DISTRO_FEATURES_append =3D " virtualization systemd bluez5 bl=
uetooth wifi ssh-server-openssl"</strong></div>
<div><strong>DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"</strong><=
/div>
<div><strong>VIRTUAL-RUNTIME_init_manager =3D "systemd"</strong></div>
<div><strong>VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"</stron=
g><br /><br /><br /></div>
<blockquote>Greetz<br /><br />-- <br />___________________________________=
__________________________<br />R-S-I Elektrotechnik GmbH &amp; Co. KG<br /=
>Woelkestrasse 11<br />D-85301 Schweitenkirchen<br />Fon: +49 8444 9204-0<b=
r />Fax: +49 8444 9204-50<br />www.rsi-elektrotechnik.de<br /><br />_______=
______________________________________________________<br />Amtsgericht Ing=
olstadt - GmbH: HRB 191328 - KG: HRA 170363<br />Gesch&auml;ftsf&uuml;hrer:=
 Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br />USt-IdNr.: DE 128592548<=
/blockquote>

--D4TjMe7tGKFMP8sdXWwE--
