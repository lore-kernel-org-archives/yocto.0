Subject: adding modules to nginx #yocto
To: yocto@lists.yoctoproject.org
From: rkthebest@gmail.com
X-Originating-Location: Graz, Styria, AT (192.102.17.24)
X-Originating-Platform: Linux Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Feb 2020 03:18:26 -0800
Message-ID: <6P1I.1581074306513776950.vcUM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wRd3COU0ryd1AoPVnfL4"

--wRd3COU0ryd1AoPVnfL4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Guys i am trying to add a lua module into my nginx by yocto recipe.

for this i added one bbappend file to add module to nginx recipe
and secondly i added a bb file fetch sources and placing=C2=A0 it to nginx=
 sysroot directory

*nginx_%.bbappend*

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

DEPENDS +=3D "ngx-lua-module"

EXTRA_OECONF +=3D " --add-module=3D${STAGING_DIR_ TARGET}/ngx-lua-module "

*and ngx-lua-module.bb ( http://ngx-lua-module.bb )*

SUMMARY =3D "lua module for nginx"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/ MIT;md5=3D 0835ade698e=
0bcf8506ecda2f7b4f3 02"

SRC_URI =3D "git:// github.com/openresty/ lua-nginx-module.git;protocol=3D=
 https ( http://github.com/openresty/lua-nginx-module.git;protocol=3Dhttps =
) "

PV =3D "1.5+git${SRCPV}"
SRCREV =3D " c06793c3e1431b24332b8b0239cc43 df43361941"

S =3D "${WORKDIR}/git"
SYSROOT_DIRS +=3D "/${PN}"

DEPENDS +=3D "luajit"

do_configure[noexec] =3D "1"
do_compile[noexec] =3D "1"

do_install () {
cd ${S}
git checkout-index -a --prefix=3D${D}/${PN}/
cd -
}
FILES_${PN} =3D "${PN}/* ${S}/*.*"

So when i build nginx it tries to add the module but it complains that

>=20
> ./configure: error: unsupported LuaJIT version; ngx_http_lua_module
> requires LuaJIT 2.x.
>=20

i checked the configuration file of nginx and it tries to look for header =
file for luajit and it can not find it hence complains.
but when i checked the recipe-sysroot of nginx the the header files are pr=
esent at location
recipe-sysroot/usr/include/ luajit-2.0

and i think recipe does not include this location automatically and only l=
ooks in recipe-sysroot/usr/include

*so my question is how can i include this directory so that recipe looks i=
nto above mentioned folder also..*
*and similar question is for library also*

Any inputs would be highly appriciated

--wRd3COU0ryd1AoPVnfL4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello Guys i am trying to add a lua module into my nginx by yocto reci=
pe.</div>
<div>&nbsp;</div>
<div>for this i added one bbappend file to add module to nginx recipe</div=
>
<div>and secondly i added a bb file fetch sources and placing&nbsp; it to =
nginx sysroot directory</div>
<div>&nbsp;</div>
<div><strong>nginx_%.bbappend</strong></div>
<div>&nbsp;</div>
<div><em>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<br /><br />DEPEN=
DS +=3D "ngx-lua-module"<br /><br />EXTRA_OECONF +=3D " --add-module=3D${ST=
AGING_DIR_<wbr />TARGET}/ngx-lua-module "</em></div>
<div>&nbsp;</div>
<div><strong>and <a href=3D"http://ngx-lua-module.bb" target=3D"_blank" re=
l=3D"noopener" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp:=
//ngx-lua-module.bb&amp;source=3Dgmail&amp;ust=3D1581160273604000&amp;usg=
=3DAFQjCNHgROr_zFA2BEGbtBZWBI3nZ898iQ">ngx-lua-module.bb</a></strong></div=
>
<div>&nbsp;</div>
<div><em>SUMMARY =3D "lua module for nginx"<br />LICENSE =3D "GPLv2"<br />=
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/<wbr />MIT;md5=3D<wbr />=
0835ade698e0bcf8506ecda2f7b4f3<wbr />02"<br /><br />SRC_URI =3D "git://<a h=
ref=3D"http://github.com/openresty/lua-nginx-module.git;protocol=3Dhttps" t=
arget=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https://www.googl=
e.com/url?q=3Dhttp://github.com/openresty/lua-nginx-module.git;protocol%3Dh=
ttps&amp;source=3Dgmail&amp;ust=3D1581160273604000&amp;usg=3DAFQjCNFWfDae98=
8JVkgNupie_GeKqkgCiA">github.com/openresty/<wbr />lua-nginx-module.git;prot=
ocol=3D<wbr />https</a>"<br /><br />PV =3D "1.5+git${SRCPV}"<br />SRCREV =
=3D "<wbr />c06793c3e1431b24332b8b0239cc43<wbr />df43361941"<br /><br />S =
=
=3D "${WORKDIR}/git"<br />SYSROOT_DIRS +=3D "/${PN}"<br /><br />DEPENDS +=
=3D "luajit"<br /><br />do_configure[noexec] =3D "1"<br />do_compile[noexe=
c] =3D "1"<br /><br />do_install () {<br />cd ${S}<br />git checkout-index =
-a --prefix=3D${D}/${PN}/<br />cd -<br />}<br />FILES_${PN} =3D "${PN}/* ${=
S}/*.*"</em></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>So when i build nginx it tries to add the module but it complains tha=
t </div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; bord=
er-left: 1px solid #cccccc; padding-left: 1ex;">
<div>./configure: error: unsupported LuaJIT version; ngx_http_lua_module r=
equires LuaJIT 2.x.</div>
</blockquote>
<div>&nbsp;</div>
<div>i checked the configuration file of nginx and it tries to look for he=
ader file for luajit and it can not find it hence complains.</div>
<div>but when i checked the <em>recipe-sysroot </em>of nginx the the heade=
r files are present at location </div>
<div><em>recipe-sysroot/usr/include/<wbr />luajit-2.0</em></div>
<div><em>&nbsp;</em></div>
<div>and i think recipe does not include this location automatically and o=
nly looks in<em> <em>recipe-sysroot/usr/include</em></em></div>
<div><em><em>&nbsp;</em></em></div>
<div><strong>so my question is how can i include this directory so that re=
cipe looks into above mentioned folder also..</strong></div>
<div><em><em><strong>and similar question is for library also</strong><br =
/></em></em></div>
<div><em><em>&nbsp;</em></em></div>
<div><em><em>Any inputs would be highly appriciated</em></em></div>

--wRd3COU0ryd1AoPVnfL4--
