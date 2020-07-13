Subject: [poky] python-setuptools dependency loops error #yocto #python
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Monastir, Gouvernorat de Monastir, TN (41.226.168.190)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Jul 2020 02:04:33 -0700
Message-ID: <le8z.1594631073716482968.ix2I@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BXMmrfXg5827VWxl092S"

--BXMmrfXg5827VWxl092S
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I have a problem using *python-setuptools* with yocto when bitbaking any r=
ecipe that inherits *setuptools* , or even when I execute "bitbake setuptoo=
ls"
but there is no problem with setuptools3, but I need to use python2 for no=
w.
Here is the log:

------------------------------

*ERROR: 176 unbuildable tasks were found.
##########################################=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 =
0:00:00*
*These are usually caused by circular dependencies and any circular depend=
ency chains found will be printed below. Increase the debug level to see a =
list of unbuildable tasks.*

*Identifying dependency loops (this may take a short while)...*

*ERROR:*
*Dependency loop #1 found:*
*Task virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devt=
ools/python/python-setuptools_40.0.0.bb:do_compile (dependent Tasks ['pytho=
n-setuptools_40.0.0.bb:do_configure'])*
*Task virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devt=
ools/python/python-setuptools_40.0.0.bb:do_install (dependent Tasks ['pytho=
n-setuptools_40.0.0.bb:do_compile'])*
*Task virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devt=
ools/python/python-setuptools_40.0.0.bb:do_populate_sysroot (dependent Task=
s ['python-setuptools_40.0.0.bb:do_install'])*
*Task virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devt=
ools/python/python-setuptools_40.0.0.bb:do_prepare_recipe_sysroot (dependen=
t Tasks ['python-setuptools_40.0.0.bb:do_populate_sysroot', 'python-native_=
2.7.15.bb:do_populate_sysroot', 'python-setuptools_40.0.0.bb:do_fetch'])*
*Task virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devt=
ools/python/python-setuptools_40.0.0.bb:do_configure (dependent Tasks ['pyt=
hon-setuptools_40.0.0.bb:do_prepare_recipe_sysroot', 'python-setuptools_40.=
0.0.bb:do_patch'])*

*ERROR: Command execution failed: 1

* ------------------------------

Thansk, Talel

--BXMmrfXg5827VWxl092S
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br />I have a problem using <strong>python-setuptools</strong> with=
 yocto when bitbaking any recipe that inherits <strong>setuptools</strong> =
, or even when I execute "bitbake setuptools"<br />but there is no problem =
with setuptools3, but I need to use python2 for now.<br />Here is the log:<=
br /><br />------------------------------<br /><br /><strong>ERROR: 176 unb=
uildable tasks were found.<br />##########################################&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
| ETA:&nbsp; 0:00:00</strong><br /><strong>These are usually caused by circ=
ular dependencies and any circular dependency chains found will be printed =
below. Increase the debug level to see a list of unbuildable tasks.</strong=
><br /><br /><strong>Identifying dependency loops (this may take a short wh=
ile)...</strong><br /><br /><strong>ERROR: </strong><br /><strong>Dependenc=
y loop #1 found:</strong><br /><strong>&nbsp; Task virtual:native:/media/ta=
lel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_4=
0.0.0.bb:do_compile (dependent Tasks ['python-setuptools_40.0.0.bb:do_confi=
gure'])</strong><br /><strong>&nbsp; Task virtual:native:/media/talel/data/=
sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:=
do_install (dependent Tasks ['python-setuptools_40.0.0.bb:do_compile'])</st=
rong><br /><strong>&nbsp; Task virtual:native:/media/talel/data/sumo/source=
s/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_populate=
_sysroot (dependent Tasks ['python-setuptools_40.0.0.bb:do_install'])</stro=
ng><br /><strong>&nbsp; Task virtual:native:/media/talel/data/sumo/sources/=
poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_prepare_re=
cipe_sysroot (dependent Tasks ['python-setuptools_40.0.0.bb:do_populate_sys=
root', 'python-native_2.7.15.bb:do_populate_sysroot', 'python-setuptools_40=
.0.0.bb:do_fetch'])</strong><br /><strong>&nbsp; Task virtual:native:/media=
/talel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptool=
s_40.0.0.bb:do_configure (dependent Tasks ['python-setuptools_40.0.0.bb:do_=
prepare_recipe_sysroot', 'python-setuptools_40.0.0.bb:do_patch'])</strong><=
br /><br /><br /><strong>ERROR: Command execution failed: 1<br /><br /></st=
rong>------------------------------<br /><br />Thansk, Talel

--BXMmrfXg5827VWxl092S--
