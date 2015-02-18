Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2DCAE00546; Wed, 18 Feb 2015 12:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D465E0033D
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 12:33:46 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Simple recipe quit working in dizzy
Thread-Index: AdBLt6+7luzrg/VxQdSZuQrlFAPr+A==
Date: Wed, 18 Feb 2015 20:33:43 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E3D34E@reactor.sldomain.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.15]
MIME-Version: 1.0
Subject: Simple recipe quit working in dizzy
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Feb 2015 20:33:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0C0108E3D34Ereactorsldoma_"

--_000_86196249137E0843B2E0673D4F731E0C0108E3D34Ereactorsldoma_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

The following recipe, spectra-postbuild_0.1.bb, quit working when I ported =
from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by adding =
it at the end of of the IMAGE_INSTALL_append variable in my local.conf file=
.  The purpose of the recipe is simply to lay down some files that will lat=
er be used by an installer script.  Two if the files are deposited in the r=
oot directory, and the rest are placed in the /install/spectra directory, w=
hich is created by the recipe.  Nothing is compiled or transformed in any w=
ay.

When I bitbake the recipe, then bitbake core-image-full-cmdline, both compl=
ete without errors.
When I look at the contents of the rpm file produced by the recipe, all the=
 files and directories are listed.
However, when I examine the file system images created, only the two files =
that I place in the root directory (/) are there, and the entire /install d=
irectory hierarchy is missing.
If I modify the recipe such that the missing files are placed in a director=
y that is already created by other recipes (/home/root), all the files are =
deposited as expected.

I have looked at section 5.6 of the Yocto reference manual, "Moving to the =
Yocto Project 1.7 Release", but did not see anything that was obviously rel=
evant.

Can someone tell me how to fix this for dizzy?

######################################################
# spectra-postbuild_0.1.bb
######################################################

SUMMARY =3D "Post processing of configuration files for SpectraOS"
SECTION =3D "base"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e181=
8b786938876a4"
PR =3D "r0"

SRC_URI =3D "file://inittab \
       file://fstab \
       file://rsyslog.conf \
           file://profile \
       file://grub.cfg \
       file://mount.sh \
       file://RELEASE-NOTES.txt \
       file://Spectra-OS-Version \
       file://initializeCustomKernelModules \
       file://firewall \
       file://sysctl.conf \
           file://InstallOS.sh \
       file://COPYRIGHT \
           file://WinCE_LCM.tar.bz \
       "

FILES_${PN} =3D  "/RELEASE-NOTES.txt \
                /Spectra-OS-Version \
                /install \
                /install/spectra \
                /install/spectra/InstallOS.sh \
                /install/spectra/fstab \
                /install/spectra/mount.sh \
                /install/spectra/grub.cfg \
                /install/spectra/rsyslog.conf \
                /install/spectra/profile \
                /install/spectra/inittab \
                /install/spectra/WinCE_LCM.tar.bz \
                /install/spectra/sysctl.conf \
                /install/spectra/init.d \
                /install/spectra/rc5.d \
                /install/spectra/init.d/initializeCustomKernelModules \
                /install/spectra/init.d/firewall \
                "

do_install () {
    install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
    install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}
        install -d ${D}/install
        install -d ${D}/install/spectra
        install -m 544 ${WORKDIR}/inittab ${D}/install/spectra
        install -m 755 ${WORKDIR}/fstab ${D}/install/spectra
        install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra
        install -m 755 ${WORKDIR}/profile ${D}/install/spectra
        install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra
        install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra
        install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra
        install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra
        install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spectra
        install -m 755 ${WORKDIR}/firewall ${D}/install/spectra
        install -m 755 ${WORKDIR}/initializeCustomKernelModules ${D}/instal=
l/spectra

}






--_000_86196249137E0843B2E0673D4F731E0C0108E3D34Ereactorsldoma_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi all,<br>
<br>
The following recipe, spectra-postbuild_0.1.bb, quit working when I ported =
from 1.6 daisy to 1.7.1 dizzy.&nbsp; I include the recipe in my image by ad=
ding it at the end of of the IMAGE_INSTALL_append variable in my local.conf=
 file.&nbsp; The purpose of the recipe is
 simply to lay down some files that will later be used by an installer scri=
pt.&nbsp; Two if the files are deposited in the root directory, and the res=
t are placed in the /install/spectra directory, which is created by the rec=
ipe.&nbsp; Nothing is compiled or transformed
 in any way.<br>
<br>
When I bitbake the recipe, then bitbake core-image-full-cmdline, both compl=
ete without errors.<br>
When I look at the contents of the rpm file produced by the recipe, all the=
 files and directories are listed.<br>
However, when I examine the file system images created, only the two files =
that I place in the root directory (/) are there, and the entire /install d=
irectory hierarchy is missing.<br>
If I modify the recipe such that the missing files are placed in a director=
y that is already created by other recipes (/home/root), all the files are =
deposited as expected.<br>
<br>
I have looked at section 5.6 of the Yocto reference manual, &quot;Moving to=
 the Yocto Project 1.7 Release&quot;, but did not see anything that was obv=
iously relevant.<br>
<br>
Can someone tell me how to fix this for dizzy?<br>
<br>
######################################################<br>
# spectra-postbuild_0.1.bb<br>
######################################################<br>
<br>
SUMMARY =3D &quot;Post processing of configuration files for SpectraOS&quot=
;<br>
SECTION =3D &quot;base&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/COPYRIGHT;md5=3D349c872e006615=
5e1818b786938876a4&quot;<br>
PR =3D &quot;r0&quot;<br>
<br>
SRC_URI =3D &quot;file://inittab \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://fstab \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://rsyslog.conf \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://profile=
 \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://grub.cfg \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://mount.sh \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://RELEASE-NOTES.txt \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://Spectra-OS-Version \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://initializeCustomKernelModules \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://firewall \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://sysctl.conf \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://Install=
OS.sh \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://COPYRIGHT \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://WinCE_L=
CM.tar.bz \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &quot;<br>
<br>
FILES_${PN} =3D&nbsp; &quot;/RELEASE-NOTES.txt \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /Spectra-OS-Version \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/InstallOS.sh \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/fstab \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/mount.sh \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/grub.cfg \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/rsyslog.conf \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/profile \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/inittab \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/WinCE_LCM.tar.bz \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/sysctl.conf \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/init.d \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/rc5.d \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/init.d/initializeCustomKernelModules \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /install/spectra/init.d/firewall \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; &quot;<br>
<br>
do_install () {<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/install<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/install/spectra<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 544 ${WORKDIR}/initta=
b ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/fstab =
${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/rsyslo=
g.conf ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/profil=
e ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/grub.c=
fg ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/mount.=
sh ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/Instal=
lOS.sh ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/sysctl=
.conf ${D}/install/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 644 ${WORKDIR}/WinCE_=
LCM.tar.bz ${D}/install/spectra<br>
&nbsp; &nbsp; &nbsp; &nbsp; install -m 755 ${WORKDIR}/firewall ${D}/install=
/spectra<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/initia=
lizeCustomKernelModules ${D}/install/spectra<br>
<br>
}<br>
<br>
<br>
<br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0C0108E3D34Ereactorsldoma_--
