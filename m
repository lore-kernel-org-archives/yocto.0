Subject: how to reuse generated library in a nativesdk recipe #sdk #systemd
To: yocto@lists.yoctoproject.org
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
X-Originating-Location: (62.4.90.5)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 01:37:19 -0800
Message-ID: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Udz3FJUFKtoj628Z25nj"

--Udz3FJUFKtoj628Z25nj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a recipe that builds a library. The recipe specifies an additional =
package "${PN}-systemd" along with other systemd related variables and fina=
lly it instructs that the package should be built with "-DWITH_SYSTEMD=3DON=
" being passed to cmake. So far so good. But, I extended this recipe to nat=
ivesdk because I need this library on it. When trying=C2=A0to build the cor=
responding=C2=A0nativesdk package, the build fails at the configuration ste=
p (i.e. "do_configure") claiming it cannot find the package systemd.

Is there a way I can install the -already-generated libraries into my SDK =
(potentially via the corresponding nativesdk recipe) without having to rebu=
ild the package? Or do I need to somehow include such systemd package in my=
 sdk (which I don't think I need at all)?

Any hints and pointers as to were to look at are very well appreciated.
Thanks.

Armando Hernandez

--Udz3FJUFKtoj628Z25nj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: arial, helvetica, sans-serif;">Hello,</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">I have a recipe that builds a lib=
rary. The recipe specifies an additional package "${PN}-systemd" along with=
 other systemd related variables and finally it instructs that the package =
should be built with "-DWITH_SYSTEMD=3DON" being passed to cmake. So far so=
 good. But, I extended this recipe to nativesdk because I need this library=
 on it. When trying&nbsp;to build the corresponding&nbsp;nativesdk package,=
 the build fails at the configuration step (i.e. "do_configure") claiming i=
t cannot find the package systemd.</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">Is there a way I can install the =
-already-generated libraries into my SDK (potentially via the corresponding=
 nativesdk recipe) without having to rebuild the package? Or do I need to s=
omehow include such systemd package in my sdk (which I don't think I need a=
t all)?</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">Any hints and pointers as to were=
 to look at are very well appreciated.</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fo=
nt-family: arial, helvetica, sans-serif;">Thanks.<br /><br />Armando Hernan=
dez</div>

--Udz3FJUFKtoj628Z25nj--
