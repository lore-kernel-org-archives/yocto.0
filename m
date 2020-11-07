Subject: Trying to compile hping3 from sources #devtool
To: yocto@lists.yoctoproject.org
From: "Vaijayanthi" <vaijayanthi@silver-peak.com>
X-Originating-Location: San Jose, California, US (12.203.61.114)
X-Originating-Platform: Mac Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Nov 2020 18:31:05 -0800
Message-ID: <3rpq.1604716265989001199.J0NK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XhgDVrm1UTGTZw9aJdsx"

--XhgDVrm1UTGTZw9aJdsx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am using devtool add hping3 https://github.com/antirez/hping to add h=
ping3 as part of our custom image. Here is my recipe:

# Recipe created by recipetool

# This is the basis of a recipe and may need further editing in order to b=
e fully functional.

# (Feel free to remove these comments when editing.)

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best gues=
ses - it is

# your responsibility to verify that the values are complete and correct.

#

# The following license files were not able to be identified and are

# represented as "Unknown" below, you will need to check them yourself:

#=C2=A0=C2=A0 COPYING

LICENSE =3D "GPLv2"

LIC_FILES_CHKSUM =3D " file://COPYING;md5=3D3728a6c4c9630a9e796ad4b82dacd8=
87 "

SRC_URI =3D "git://github.com/antirez/hping;protocol=3Dhttps"

# Modify these as desired

PV =3D "1.0+git${SRCPV}"

SRCREV =3D "3547c7691742c6eaa31f8402e0ccbb81387c1b99"

S =3D "${WORKDIR}/git"

#DEPENDS =3D "libpcap"

RDEPENDS_${PN} +=3D " libpcap tcl-lib tcl"

# NOTE: no Makefile found, unable to determine what needs to be done

do_configure () {

# Specify any needed configure commands here

CONFIGOSTYPE=3D"LINUX" ./configure

}

do_compile () {

# Specify compilation commands here

make

}

do_install() {

#install -Dm755 ${B}/libpcap.so.0.8 ${D}${libdir}/libpcap.so.0.8

#ln -sf libpcap.so.0.8 ${D}${libdir}/libpcap.so

#install -Dm755 ${B}/libtcl8.6.so ${D}${libdir}/libtcl8.6.so

#ln -sf libtcl8.6.so ${D}${libdir}/libtcl8.6.so

install -m 0755 -d ${D}${sbindir} ${D}/${mandir} ${D}${docdir}/hping3

install -m 0755 hping3 ${D}/${sbindir}

install -m 0644 docs/hping3.8 ${D}/${mandir}

install -m 0644 docs/HPING2-HOWTO.txt docs/HPING2-IS-OPEN \

docs/MORE-FUN-WITH-IPID docs/SPOOFED_SCAN.txt \

docs/AS-BACKDOOR docs/APD.txt ${D}${docdir}/hping3

}

#INSANE_SKIP_${PN}-dev =3D "ldflags"

#INSANE_SKIP_${PN} =3D "ldflags"

#INSANE_SKIP_${PN} +=3D "file-rdeps dev-deps"

How do I add this to my custom bitbake layer? Also, make is complaining ab=
out
ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hping3 cont=
ained in package hping3 requires libpcap.so.0.8()(64bit), but no providers =
found in RDEPENDS_hping3? [file-rdeps]
ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hping3 cont=
ained in package hping3 requires libtcl8.6.so()(64bit), but no providers fo=
und in RDEPENDS_hping3? [file-rdeps]
ERROR: hping3-1.0+git999-r0 do_package_qa: QA run found fatal errors. Plea=
se consider fixing them.

Please let me know what I should I do next to integrate this recipe with m=
y custom meta layer and also, address the make failures.

--XhgDVrm1UTGTZw9aJdsx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am using devtool add hping3 <a href=3D"https://github.com/antirez/hpi=
ng" target=3D"_blank" rel=3D"noopener">https://github.com/antirez/hping</a>=
 to add hping3 as part of our custom image. Here is my recipe:<br />
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># Recipe created by recipetool</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># This is the basis of a recipe and may need further ed=
iting in order to be fully functional.</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># (Feel free to remove these comments when editing.)</s=
pan></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># WARNING: the following LICENSE and LIC_FILES_CHKSUM v=
alues are best guesses - it is</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># your responsibility to verify that the values are com=
plete and correct.</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">#</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># The following license files were not able to be ident=
ified and are</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># represented as "Unknown" below, you will need to chec=
k them yourself:</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">#&nbsp;&nbsp; COPYING</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">LICENSE =3D "GPLv2"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">LIC_FILES_CHKSUM =3D "<a style=3D"color: #0563c1; text-=
decoration: underline;">file://COPYING;md5=3D3728a6c4c9630a9e796ad4b82dacd8=
87</a>"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">SRC_URI =3D "git://github.com/antirez/hping;protocol=3D=
https"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># Modify these as desired</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">PV =3D "1.0+git${SRCPV}"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">SRCREV =3D "3547c7691742c6eaa31f8402e0ccbb81387c1b99"</=
span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">S =3D "${WORKDIR}/git"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">#DEPENDS =3D "libpcap"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">RDEPENDS_${PN} +=3D " libpcap tcl-lib tcl"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;"># NOTE: no Makefile found, unable to determine what nee=
ds to be done</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">do_configure () {</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; # Specify any needed configure comma=
nds here</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; CONFIGOSTYPE=3D"LINUX" ./configure</=
span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">}</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">do_compile () {</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; # Specify compilation commands here<=
/span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; make</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">}</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">do_install() {</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; #install -Dm755 ${B}/libpcap.so.0.8 =
${D}${libdir}/libpcap.so.0.8</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; #ln -sf libpcap.so.0.8 ${D}${libdir}=
/libpcap.so</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; #install -Dm755 ${B}/libtcl8.6.so ${=
D}${libdir}/libtcl8.6.so</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; #ln -sf libtcl8.6.so ${D}${libdir}/l=
ibtcl8.6.so</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; install -m 0755 -d ${D}${sbindir} ${=
D}/${mandir} ${D}${docdir}/hping3</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; install -m 0755 hping3 ${D}/${sbindi=
r}</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; install -m 0644 docs/hping3.8 ${D}/$=
{mandir}</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp; install -m 0644 docs/HPING2-HOWTO.tx=
t docs/HPING2-IS-OPEN \</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; docs/MORE-FU=
N-WITH-IPID docs/SPOOFED_SCAN.txt \</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; docs/AS-BACK=
DOOR docs/APD.txt ${D}${docdir}/hping3</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">}</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">#INSANE_SKIP_${PN}-dev =3D "ldflags"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">#INSANE_SKIP_${PN} =3D "ldflags"</span></p>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">#INSANE_SKIP_${PN} +=3D "file-rdeps dev-deps"</span></p=
>
<p class=3D"p1" style=3D"margin: 0in 0in 0.0001pt; font-size: 13pt; font-f=
amily: 'Helvetica Neue'; color: #dca10d; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit=
-text-stroke-width: 0px; text-decoration: none;"><span class=3D"s1" style=
=3D"color: black;">&nbsp;<br />How do I add this to my custom bitbake laye=
r? Also, make is complaining about <br />ERROR: hping3-1.0+git999-r0 do_pac=
kage_qa: QA Issue: /usr/sbin/hping3 contained in package hping3 requires li=
bpcap.so.0.8()(64bit), but no providers found in RDEPENDS_hping3? [file-rde=
ps]<br />ERROR: hping3-1.0+git999-r0 do_package_qa: QA Issue: /usr/sbin/hpi=
ng3 contained in package hping3 requires libtcl8.6.so()(64bit), but no prov=
iders found in RDEPENDS_hping3? [file-rdeps]<br />ERROR: hping3-1.0+git999-=
r0 do_package_qa: QA run found fatal errors. Please consider fixing them.<b=
r /><br />Please let me know what I should I do next to integrate this reci=
pe with my custom meta layer and also, address the make failures.<br /><br =
/><br /></span></p>

--XhgDVrm1UTGTZw9aJdsx--
