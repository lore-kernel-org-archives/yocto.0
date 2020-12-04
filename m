Subject: Writing a simple python recipe to add pydevd support to a personnal layer #yocto #zeus #make python recipe
To: yocto@lists.yoctoproject.org
From: anthony.marchand@navocap.com
X-Originating-Location: Suresnes, Île-de-France, FR (159.180.227.154)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Dec 2020 02:37:37 -0800
Message-ID: <zdSV.1607078257639478763.nltE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kaZ6d1oNMbDYF1JsZsnz"

--kaZ6d1oNMbDYF1JsZsnz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I have to add a python module named "pydevd" in my personnal image machine=
.
Pydevd is a python module that can be used for remote debbuging with the E=
cipse IDE.

So normally, I used to go to the site: http://layers.openembedded.org/laye=
rindex/branch/zeus/recipes to see what are the recipes available for the yo=
cto version I use (zeus version), and then, I add the name of the recipe to=
 my image in:

IMAGE_INSTALL +=3D " \
recipe_1\
recipe_2\
...
"

As the recipe for the python 3 module: "pydevd" does not exists in zeus br=
anch, I decided to create one by observing their structures and how python =
recipes are made.
So there is my recipe for the latest version of pydevd I got from python.o=
rg:

------------------------------------ pydevd_2.1.0.bb ---------------------=
----------------------------------
SUMMARY =3D "Pydevd, a python module for eclipse remote debugging"
HOMEPAGE =3D "https://pypi.org/project/pydevd"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D30b3836521b3d65bef598bbc358a3af=
a"

SRC_URI =3D "https://files.pythonhosted.org/packages/51/8c/4ebdb28a4b2f8ce=
dc17a2fc68c38c545b12c2a861ac2bbd3cd5fdb5971a7/pydevd-2.1.0.tar.gz"
SRC_URI[md5sum] =3D "74f4336ce09c5fab228a8ff4285e519a"
SRC_URI[sha256sum] =3D "9f76aa4f82e43faba7c243d4c9678eb93e96848ba1e5dba610=
54bec2794e994b"

RDEPENDS_${PN}_class-target +=3D "\
${PYTHON_PN}-threading \
"

inherit pypi setuptools3 ptest
BBCLASSEXTEND =3D "native nativesdk"

RDEPENDS_${PN}-ptest +=3D " \
${PYTHON_PN}-pytest \
"

fakeroot do_install_test() {

install -d ${D}${PTEST_PATH}/pydevd/tests
cp -rf ${S}/pydevd/* ${D}/pydevd/
cp -f ${S}/README.rst ${D}${PTEST_PATH}/
}
--------------------------------------------------------------------------=
-----------------

So I'm sure about md5 checksum, Licence and SRC_URI, but from the line: "R=
DEPENDS_${PN}_class-target" to the end, I'm not sure about what I'm doing :=
-)
After a test of compilation with the command "bitbake pydevd", bitbake see=
ms to parse and extract the tar.gz package well, but I have an error at the=
 end when it tried to do install.

My goal is simply to extract the content of the pydevd.tar.gz and installe=
d it on my target path: "/usr/lib/python3.7/site-packages"

When I do that manually on my target machine (by extracting the tar.gz in =
"/usr/lib/python3.7/site-packages" ), it works fine and python can import t=
he module pydevd. I would like to do the same thing with a yocto recipe, bu=
t i've never made any recipes, I just know the basic theory about it.

Does someone know or have ideas about how can I do that? Maybe it's not as=
 simple as that, but as I'm pretty new, I don't realize the level of diffic=
ulty it represents.

Thanks for all and best reguards.

--kaZ6d1oNMbDYF1JsZsnz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,<br /><br />I have to add a python module named "pydevd" in =
my personnal image machine. <br />Pydevd is a python module that can be use=
d for remote debbuging with the Ecipse IDE.<br /><br />So normally, I used =
to go to the site: <a href=3D"http://layers.openembedded.org/layerindex/bra=
nch/zeus/recipes" target=3D"_blank" rel=3D"noopener">http://layers.openembe=
dded.org/layerindex/branch/zeus/recipes</a> to see what are the recipes ava=
ilable for the yocto version I use (zeus version), and then, I add the name=
 of the recipe to my image in:<br /><br />IMAGE_INSTALL +=3D " \<br />&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recipe_1\<br />&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recipe_2\<br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; ...<br />"<br /><br />As the recipe for the python 3 =
module: "pydevd" does not exists in zeus branch, I decided to create one by=
 observing their structures and how python recipes are made.<br />So there =
is my recipe for the latest version of pydevd I got from python.org:<br /><=
br />------------------------------------ pydevd_2.1.0.bb -----------------=
--------------------------------------<br />SUMMARY =3D "Pydevd, a python m=
odule for eclipse remote debugging"<br />HOMEPAGE =3D "https://pypi.org/pro=
ject/pydevd"<br />LICENSE =3D "MIT"<br />LIC_FILES_CHKSUM =3D "file://LICEN=
SE;md5=3D30b3836521b3d65bef598bbc358a3afa"<br /><br />SRC_URI =3D "https://=
files.pythonhosted.org/packages/51/8c/4ebdb28a4b2f8cedc17a2fc68c38c545b12c2=
a861ac2bbd3cd5fdb5971a7/pydevd-2.1.0.tar.gz"<br />SRC_URI[md5sum] =3D "74f4=
336ce09c5fab228a8ff4285e519a"<br />SRC_URI[sha256sum] =3D "9f76aa4f82e43fab=
a7c243d4c9678eb93e96848ba1e5dba61054bec2794e994b"<br /><br />RDEPENDS_${PN}=
_class-target +=3D "\<br />&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-threading \<br /=
>"<br /><br />inherit pypi setuptools3 ptest<br />BBCLASSEXTEND =3D "native=
 nativesdk"<br /><br />RDEPENDS_${PN}-ptest +=3D " \<br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-pytest \<br />"<br /><br />fakeroot =
do_install_test() {<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i=
nstall -d ${D}${PTEST_PATH}/pydevd/tests<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; cp -rf ${S}/pydevd/* ${D}/pydevd/<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; cp -f ${S}/README.rst ${D}${PTEST_PATH}/<br />}<br />-=
---------------------------------------------------------------------------=
---------------<br /><br />So I'm sure about md5 checksum, Licence and SRC_=
URI, but from the line: "RDEPENDS_${PN}_class-target" to the end, I'm not s=
ure about what I'm doing :-) <br />After a test of compilation with the com=
mand "bitbake pydevd", bitbake seems to parse and extract the tar.gz packag=
e well, but I have an error at the end when it tried to do install.<br /><b=
r />My goal is simply to extract the content of the pydevd.tar.gz and insta=
lled it on my target path: "/usr/lib/python3.7/site-packages"<br /><br />Wh=
en I do that manually on my target machine (by extracting the tar.gz in "/u=
sr/lib/python3.7/site-packages" ), it works fine and python can import the =
module pydevd. I would like to do the same thing with a yocto recipe, but i=
've never made any recipes, I just know the basic theory about it.<br /><br=
 /><br />Does someone know or have ideas about how can I do that? Maybe it'=
s not as simple as that, but as I'm pretty new, I don't realize the level o=
f difficulty it represents.<br /><br />Thanks for all and best reguards.

--kaZ6d1oNMbDYF1JsZsnz--
