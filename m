Subject: [ Error ] python3-psycopg2-native recipe build error #python #yocto
To: yocto@lists.yoctoproject.org
From: dishant.arora1996@gmail.com
X-Originating-Location: New Delhi, National Capital Territory of Delhi, IN (49.207.108.22)
X-Originating-Platform: Linux Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 08 Dec 2019 21:47:18 -0800
Message-ID: <Hhck.1575870438804375389.WJ7X@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RUZUMAdXUMKuTOdCyk9s"

--RUZUMAdXUMKuTOdCyk9s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Recipe --> python3-psycopg2-native --> https://layers.openembedded.org/laye=
rindex/recipe/72275/
Added this recipe using `IMAGE_INSTALL` variable in `sjpl-image.bb` file

Got following errors while building the image :

>=20
>=20
>=20
> ERROR: Task do_populate_sdk in
> /home/ubuntu/build-torizon/meta-sjpl/recipes-sjpl/images/sjpl-image.bb
> rdepends upon non-existent task do_package_write_ipk in
> /home/ubuntu/layers/openembedded-core/meta-spdxscanner/recipes-devtools/=
python/python3-psycopg2-native_2.6.1.bb
>=20
>=20
>=20
>=20
> ERROR: Command execution failed: 1
>=20
>=20
>=20

How can this error be resolved ?

--RUZUMAdXUMKuTOdCyk9s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Recipe --&gt; python3-psycopg2-native --&gt;&nbsp;<a href=3D"https://layers=
.openembedded.org/layerindex/recipe/72275/">https://layers.openembedded.org=
/layerindex/recipe/72275/</a><br />
<div>Added this recipe using `IMAGE_INSTALL` variable in `sjpl-image.bb` f=
ile&nbsp;</div>
<br />Got following errors while building the image :&nbsp;&nbsp;<br /><br=
 />
<blockquote>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;"><span style=3D"background-color: #ffff00;">ERROR: =
Task do_populate_sdk in /home/ubuntu/build-torizon/meta-sjpl/recipes-sjpl/i=
mages/sjpl-image.bb rdepends upon non-existent task do_package_write_ipk in=
 /home/ubuntu/layers/openembedded-core/meta-spdxscanner/recipes-devtools/py=
thon/python3-psycopg2-native_2.6.1.bb</span></p>
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;"><span style=3D"background-color: #ffff00;">ERROR: =
Command execution failed: 1<br /></span></p>
</blockquote>
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;"><span style=3D"background-color: #ffffff;">How can=
 this error be resolved ? </span></p>

--RUZUMAdXUMKuTOdCyk9s--
