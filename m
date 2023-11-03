Return-Path: <roman.leduc@univ-pau.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D85F3C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 15:01:26 +0000 (UTC)
Subject: [nanbield] meta-intel-fpga layer support
To: yocto@lists.yoctoproject.org
From: roman.leduc@univ-pau.fr
X-Originating-Location: Pau, Nouvelle-Aquitaine, FR (193.55.218.79)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Nov 2023 08:01:19 -0700
Message-ID: <YEAF.1699023679569756446.0cWP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JtdXOxLVdQ7wvKiHpPyl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 15:01:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61598

--JtdXOxLVdQ7wvKiHpPyl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello dear community,

I was trying to use django recipe with core-image-minimal system file (poky=
 langdale release) because it supports meta-intel-fpga layer.

In order to work with django I need also virtualenv library. The only virtu=
alenv available on langdale release is virtualenv v1.11.4 ( https://layers.=
openembedded.org/layerindex/recipe/341147/ ) and unfortunately, it seems no=
t compatible with python3 from the same langdale release which is python3 v=
3.10.6 ( https://layers.openembedded.org/layerindex/recipe/325778/ ) !
I say this is not compatible, because when I run "virtualenv env" in prompt=
 it outputs me the following :

>=20
>=20
>=20
> New python executable in env/bin/python3
>=20
>=20
>=20
> Not overwriting existing python script env/bin/python (you must use
> env/bin/python3)
>=20
>=20
>=20
> Traceback (most recent call last):
>=20
>=20
>=20
> File "/usr/bin/virtualenv", line 8, in <module>
>=20
>=20
>=20
> sys.exit(main())
>=20
>=20
>=20
> File "/usr/lib/python3.10/site-packages/virtualenv.py", line 815, in main
>=20
>=20
>=20
> create_environment(home_dir,
>=20
>=20
>=20
> File "/usr/lib/python3.10/site-packages/virtualenv.py", line 982, in
> create_environment
>=20
>=20
>=20
> py_executable =3D os.path.abspath(install_python(
>=20
>=20
>=20
> File "/usr/lib/python3.10/site-packages/virtualenv.py", line 1459, in
> install_python
>=20
>=20
>=20
> fix_local_scheme(home_dir, symlink)
>=20
>=20
>=20
> File "/usr/lib/python3.10/site-packages/virtualenv.py", line 1530, in
> fix_local_scheme
>=20
>=20
>=20
> if sysconfig._get_default_scheme() =3D=3D 'posix_local':
>=20
>=20
>=20
> AttributeError: module 'sysconfig' has no attribute '_get_default_scheme'=
.
> Did you mean: 'get_default_scheme'?
>=20
>=20

Especially the last line "...module 'sysconfig' has no attribute '_get_defa=
ult_scheme'..."
From this post on stack overflow ( https://stackoverflow.com/questions/7152=
2731/unable-to-activate-virtual-environment-in-python ) , it seems that vir=
tualenv version is too old and must be upgraded.

I know that pip recipe can be added, but not sure if poky is made to run "p=
ip install --upgrade virtualenv" ? Should I try this ?

Also the easiest solution would be to use poky nanbield release, because it=
 provides newest virtualenv v.20.24.5 ( https://layers.openembedded.org/lay=
erindex/recipe/352609/ ). But unfortunately I didn't find "meta-intel-fpga"=
 layer support on this release ?

What do you think I should do in order to be able to run virtualenv ?

--JtdXOxLVdQ7wvKiHpPyl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello dear community,<br /><br />I was trying to use django recipe with =
core-image-minimal system file (poky langdale release) because it supports =
meta-intel-fpga layer.<br /><br />In order to work with django I need also =
virtualenv library. The only virtualenv available on langdale release is&nb=
sp;<a href=3D"https://layers.openembedded.org/layerindex/recipe/341147/" ta=
rget=3D"_blank" rel=3D"noopener">virtualenv v1.11.4</a>&nbsp;and unfortunat=
ely, it seems not compatible with python3 from the same langdale release wh=
ich is <a href=3D"https://layers.openembedded.org/layerindex/recipe/325778/=
" target=3D"_blank" rel=3D"noopener">python3 v3.10.6</a> !<br />I say this =
is not compatible, because when I run "virtualenv env" in prompt it outputs=
 me the following :</p>
<blockquote>
<p><span style=3D"font-size: 8pt;">New python executable in env/bin/python3=
</span></p>
<p><span style=3D"font-size: 8pt;">Not overwriting existing python script e=
nv/bin/python (you must use env/bin/python3)</span></p>
<p><span style=3D"font-size: 8pt;">Traceback (most recent call last):</span=
></p>
<p><span style=3D"font-size: 8pt;">&nbsp; File "/usr/bin/virtualenv", line =
8, in &lt;module&gt;</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; &nbsp; sys.exit(main())</span></p=
>
<p><span style=3D"font-size: 8pt;">&nbsp; File "/usr/lib/python3.10/site-pa=
ckages/virtualenv.py", line 815, in main</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; &nbsp; create_environment(home_di=
r,</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; File "/usr/lib/python3.10/site-pa=
ckages/virtualenv.py", line 982, in create_environment</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; &nbsp; py_executable =3D os.path.=
abspath(install_python(</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; File "/usr/lib/python3.10/site-pa=
ckages/virtualenv.py", line 1459, in install_python</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; &nbsp; fix_local_scheme(home_dir,=
 symlink)</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; File "/usr/lib/python3.10/site-pa=
ckages/virtualenv.py", line 1530, in fix_local_scheme</span></p>
<p><span style=3D"font-size: 8pt;">&nbsp; &nbsp; if sysconfig._get_default_=
scheme() =3D=3D 'posix_local':</span></p>
<p><span style=3D"font-size: 8pt;">AttributeError: module 'sysconfig' has n=
o attribute '_get_default_scheme'. Did you mean: 'get_default_scheme'?</spa=
n></p>
</blockquote>
<div>Especially the last line "...module 'sysconfig' has no attribute '_get=
_default_scheme'..."<br />From <a href=3D"https://stackoverflow.com/questio=
ns/71522731/unable-to-activate-virtual-environment-in-python" target=3D"_bl=
ank" rel=3D"noopener">this post on stack overflow</a>, it seems that virtua=
lenv version is too old and must be upgraded.<br /><br />I know that pip re=
cipe can be added, but not sure if poky is made to run "pip install --upgra=
de virtualenv" ? Should I try this ?</div>
<div><br />Also the easiest solution would be to use poky nanbield release,=
 because it provides newest <a href=3D"https://layers.openembedded.org/laye=
rindex/recipe/352609/" target=3D"_blank" rel=3D"noopener">virtualenv v.20.2=
4.5</a>. But unfortunately I didn't find "meta-intel-fpga" layer support on=
 this release ?<br /><br /></div>
<div>What do you think I should do in order to be able to run virtualenv ?<=
/div>

--JtdXOxLVdQ7wvKiHpPyl--

