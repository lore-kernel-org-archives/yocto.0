Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D77C1E00BEA; Fri, 13 Jun 2014 15:03:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72F84E00AFD
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 15:02:57 -0700 (PDT)
From: Jim Rafert <jimr@spectralogic.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How do I create a recipe for laying down post-build config files?
Thread-Index: Ac+EKkd3vwrVsXp6TcSh5ralFOydogDJ1l1r
Date: Fri, 13 Jun 2014 22:02:54 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0CAB521BE4@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [97.118.34.124]
MIME-Version: 1.0
Subject: Re: How do I create a recipe for laying down post-build config files?
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
X-List-Received-Date: Fri, 13 Jun 2014 22:03:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0CAB521BE4reactorsldomain_"

--_000_86196249137E0843B2E0673D4F731E0CAB521BE4reactorsldomain_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Well, now that I've resolved my spelling error, the build succeeds, but my =
pkg_postinst_${PN} () function doesn't seem to run.

I suppose I'm resigned to making .bbappend recipes to lay down my revised v=
ersion of the config files.
at least they can all be localized in a layer.  Sometimes you just have to =
bite the bullet and do things
the right way.

However, I don't know how to go about removing files and links after the bu=
ild is done, and running transformative scripts on other files. For example=
, see the following code examples that I want to
replicate.


    #Remove unneeded services from startup
    echo Remove unneeded services from startup
    rm ${D}/etc/rc5.d/S20nfsserver
    rm ${D}/etc/rc5.d/S20syslog
    rm ${D}/etc/rc5.d/S70lighttpd

    #Remove /var/log link to /var/volatile/log, persist log.
    rm ${D}/var/log
    mkdir ${D}/var/log
    mv ${D}/etc/default/volatiles/00_core ${D}/etc/default/volatiles/00_cor=
e.orig
    grep -v volatile/log ${D}/etc/default/volatiles/00_core.orig |  tee ${D=
}/etc/default/volatiles/00_core >/dev/null
    rm ${D}/etc/default/volatiles/00_core.orig

Any ideas how to do this?

-Jim-
________________________________
From: Jim Rafert
Sent: Monday, June 09, 2014 3:44 PM
To: yocto@yoctoproject.org
Subject: How do I create a recipe for laying down post-build config files?

I'm trying to gather all my post-build tweaks into a recipe that will be bu=
ilt as part of an upper-level layer, so that they are installed after the m=
eta layer is processed.  Many of these could be accomplished as part of .bb=
append files for the recipes that originally supply the config files, but I=
 wanted to gather all my customizations in one spot, so that they're easy t=
o find.

The recipe doesn't actually build anything, so there's no do_build task.

This is surely something that is commonly wanted.

Here's my current recipe, in spectra-postbuild_0.1.bb.

When I try to build an image, the build fails with
ERROR: QA Issue: spectra-postbuild: Files/directories were installed but no=
t shipped
  /RELEASE-NOTES.txt

When I disable the installed-vs-shipped QA test,  it fails later when it ca=
n't find a package file.

I must be missing something critical here?
SUMMARY =3D "Post processing of configuration files for SpectraOS"
SECTION =3D "base"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e181=
8b786938876a4"
RDEPENDS_${PN} =3D "initscripts"
PR =3D "r0"

SRC_URI =3D "file://inittab \
       file://fstab \
       file://rsyslog.conf \
       file://grub.cfg \
       file://mount.sh \
       file://RELEASE-NOTES.txt \
       file://Spectra-OS-Version \
       file://initializeCustomKernelModules \
       file://firewall \
       file://sysctl.conf \
       file://COPYRIGHT \
       "

CONFFILES_${PN} +=3D "${sysconfdir}/init.d/firewall "
CONFFILES_${PN} +=3D "${sysconfdir}/init.d/initializeCustomKernelModules "
FILES_${PN} =3D  "/RELEASE_NOTES.txt /Spectra-OS-Version "

#INSANE_SKIP_${PN} =3D "installed-vs-shipped"

do_install () {
    install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
    install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}
}

pkg_postinst_${PN} () {
    install -d ${D}${sysconfdir}/init.d
    install -d ${D}${sbindir}

    #Install our inittab and fstab
    echo Install our inittab and fstab
    install -m 544 ${WORKDIR}/inittab ${D}/etc/inittab
    install -m 755 ${WORKDIR}/fstab ${D}/etc/fstab
    install -m 755 ${WORKDIR}/rsyslog.conf ${D}/etc/rsyslog.conf
    mkdir -p ${D}/boot/grub
    install -m 755 ${WORKDIR}/grub.cfg ${D}/boot/grub/grub.cfg
        install -d ${D}/etc/udev/scripts
    install -m 755 ${WORKDIR}/mount.sh ${D}/etc/udev/scripts/mount.sh
    chmod 755 ${D}/etc/udev/scripts/mount.sh
    install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
    install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}

    #Remove unneeded services from startup
    echo Remove unneeded services from startup
    rm ${D}/etc/rc5.d/S20nfsserver
    rm ${D}/etc/rc5.d/S20syslog
    rm ${D}/etc/rc5.d/S70lighttpd

    #Add /dev/sdd to the auto mount blacklist
    chmod 777 ${D}/etc/udev/mount.blacklist
    echo "/dev/sda*" >> ${D}/etc/udev/mount.blacklist
    echo "/dev/sdd*" >> ${D}/etc/udev/mount.blacklist
    echo "/dev/sde*" >> ${D}/etc/udev/mount.blacklist
    chmod 644 ${D}/etc/udev/mount.blacklist

    #Remove /var/log link to /var/volatile/log, persist log.
    rm ${D}/var/log
    mkdir ${D}/var/log
    mv ${D}/etc/default/volatiles/00_core ${D}/etc/default/volatiles/00_cor=
e.orig
    grep -v volatile/log ${D}/etc/default/volatiles/00_core.orig |  tee ${D=
}/etc/default/volatiles/00_core >/dev/null
    rm ${D}/etc/default/volatiles/00_core.orig

    #Create directory for SCST
    mkdir -p ${D}/var/lib/scst/pr
    mkdir -p ${D}/usr/local/bin
    mkdir -p ${D}/etc/logrotate.d
    #Install drivers load script
    echo Install drivers load script
    install -m 755 ${WORKDIR}initializeCustomKernelModules ${D}/etc/init.d
    ln -s ${D}/etc/init.d/initializeCustomKernelModules ${D}/etc/rc5.d/S70i=
nitializeCustomKernelModules
    echo Install firewall configuration boot script
    install -m 755 ${WORKDIR}firewall ${D}/etc/init.d
    chmod +x ${D}/etc/init.d/firewall
    ln -s ${D}/etc/init.d/firewall ${D}/etc/rc5.d/S80firewall
    #copy config change for console log level
    install -m 755 ${WORKDIR}sysctl.conf ${D}/etc/sysctl.conf
}



--_000_86196249137E0843B2E0673D4F731E0CAB521BE4reactorsldomain_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
-->=0A=
P {margin-top:0;margin-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Well, now that I've resolved my spelling error, the build succeeds, =
but my
<font color=3D"black" face=3D"Tahoma" size=3D"2"><span style=3D"font-size:1=
0pt;" dir=3D"ltr">pkg_postinst_${PN} () function doesn't seem to run.<br>
<br>
</span></font>
<div>I suppose I'm resigned to making .bbappend recipes to lay down my revi=
sed version of the config files.<br>
at least they can all be localized in a layer.&nbsp; Sometimes you just hav=
e to bite the bullet and do things
<br>
the right way.<br>
<br>
However, I don't know how to go about removing files and links after the bu=
ild is done, and running transformative scripts on other files. For example=
, see the following code examples that I want to
<br>
replicate.<br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
<br>
&nbsp;&nbsp;&nbsp; #Remove unneeded services from startup<br>
&nbsp;&nbsp;&nbsp; echo Remove unneeded services from startup<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/rc5.d/S20nfsserver<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/rc5.d/S20syslog<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/rc5.d/S70lighttpd<br>
<br>
&nbsp;&nbsp;&nbsp; #Remove /var/log link to /var/volatile/log, persist log.=
<br>
&nbsp;&nbsp;&nbsp; rm ${D}/var/log<br>
&nbsp;&nbsp;&nbsp; mkdir ${D}/var/log<br>
&nbsp;&nbsp;&nbsp; mv ${D}/etc/default/volatiles/00_core ${D}/etc/default/v=
olatiles/00_core.orig<br>
&nbsp;&nbsp;&nbsp; grep -v volatile/log ${D}/etc/default/volatiles/00_core.=
orig |&nbsp; tee ${D}/etc/default/volatiles/00_core &gt;/dev/null<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/default/volatiles/00_core.orig<br>
<br>
Any ideas how to do this?<br>
<br>
-Jim-<br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF370445"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> Jim Rafert<br>
<b>Sent:</b> Monday, June 09, 2014 3:44 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> How do I create a recipe for laying down post-build config =
files?<br>
</font><br>
</div>
<div></div>
<div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">I'm trying to gather all my post-build tweaks into a recipe that will =
be built as part of an upper-level layer, so that they are installed after =
the meta layer is processed.&nbsp; Many
 of these could be accomplished as part of .bbappend files for the recipes =
that originally supply the config files, but I wanted to gather all my cust=
omizations in one spot, so that they're easy to find.<br>
<br>
The recipe doesn't actually build anything, so there's no do_build task.<br=
>
<br>
This is surely something that is commonly wanted.<br>
<br>
Here's my current recipe, in spectra-postbuild_0.1.bb.<br>
<br>
When I try to build an image, the build fails with <br>
ERROR: QA Issue: spectra-postbuild: Files/directories were installed but no=
t shipped<br>
&nbsp; /RELEASE-NOTES.txt<br>
<br>
When I disable the installed-vs-shipped QA test,&nbsp; it fails later when =
it can't find a package file.<br>
<br>
I must be missing something critical here?<br>
<div>SUMMARY =3D &quot;Post processing of configuration files for SpectraOS=
&quot;<br>
SECTION =3D &quot;base&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/COPYRIGHT;md5=3D349c872e006615=
5e1818b786938876a4&quot;<br>
RDEPENDS_${PN} =3D &quot;initscripts&quot;<br>
PR =3D &quot;r0&quot;<br>
<br>
SRC_URI =3D &quot;file://inittab \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://fstab \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://rsyslog.conf \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://grub.cfg \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://mount.sh \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://RELEASE-NOTES.txt \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://Spectra-OS-Version \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://initializeCustomKernelModules \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://firewall \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://sysctl.conf \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; file://COPYRIGHT \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &quot;<br>
<br>
CONFFILES_${PN} &#43;=3D &quot;${sysconfdir}/init.d/firewall &quot;<br>
CONFFILES_${PN} &#43;=3D &quot;${sysconfdir}/init.d/initializeCustomKernelM=
odules &quot;<br>
FILES_${PN} =3D&nbsp; &quot;/RELEASE_NOTES.txt /Spectra-OS-Version &quot;<b=
r>
<br>
#INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;<br>
<br>
do_install () {<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}<br>
}<br>
<br>
pkg_postinst_${PN} () {<br>
&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/init.d<br>
&nbsp;&nbsp;&nbsp; install -d ${D}${sbindir}<br>
<br>
&nbsp;&nbsp;&nbsp; #Install our inittab and fstab<br>
&nbsp;&nbsp;&nbsp; echo Install our inittab and fstab<br>
&nbsp;&nbsp;&nbsp; install -m 544 ${WORKDIR}/inittab ${D}/etc/inittab<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/fstab ${D}/etc/fstab<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/rsyslog.conf ${D}/etc/rsyslog.=
conf<br>
&nbsp;&nbsp;&nbsp; mkdir -p ${D}/boot/grub<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/grub.cfg ${D}/boot/grub/grub.c=
fg<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/etc/udev/scripts=
<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/mount.sh ${D}/etc/udev/scripts=
/mount.sh<br>
&nbsp;&nbsp;&nbsp; chmod 755 ${D}/etc/udev/scripts/mount.sh<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}<br>
<br>
&nbsp;&nbsp;&nbsp; #Remove unneeded services from startup<br>
&nbsp;&nbsp;&nbsp; echo Remove unneeded services from startup<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/rc5.d/S20nfsserver<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/rc5.d/S20syslog<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/rc5.d/S70lighttpd<br>
<br>
&nbsp;&nbsp;&nbsp; #Add /dev/sdd to the auto mount blacklist<br>
&nbsp;&nbsp;&nbsp; chmod 777 ${D}/etc/udev/mount.blacklist<br>
&nbsp;&nbsp;&nbsp; echo &quot;/dev/sda*&quot; &gt;&gt; ${D}/etc/udev/mount.=
blacklist<br>
&nbsp;&nbsp;&nbsp; echo &quot;/dev/sdd*&quot; &gt;&gt; ${D}/etc/udev/mount.=
blacklist<br>
&nbsp;&nbsp;&nbsp; echo &quot;/dev/sde*&quot; &gt;&gt; ${D}/etc/udev/mount.=
blacklist<br>
&nbsp;&nbsp;&nbsp; chmod 644 ${D}/etc/udev/mount.blacklist<br>
<br>
&nbsp;&nbsp;&nbsp; #Remove /var/log link to /var/volatile/log, persist log.=
<br>
&nbsp;&nbsp;&nbsp; rm ${D}/var/log<br>
&nbsp;&nbsp;&nbsp; mkdir ${D}/var/log<br>
&nbsp;&nbsp;&nbsp; mv ${D}/etc/default/volatiles/00_core ${D}/etc/default/v=
olatiles/00_core.orig<br>
&nbsp;&nbsp;&nbsp; grep -v volatile/log ${D}/etc/default/volatiles/00_core.=
orig |&nbsp; tee ${D}/etc/default/volatiles/00_core &gt;/dev/null<br>
&nbsp;&nbsp;&nbsp; rm ${D}/etc/default/volatiles/00_core.orig<br>
<br>
&nbsp;&nbsp;&nbsp; #Create directory for SCST<br>
&nbsp;&nbsp;&nbsp; mkdir -p ${D}/var/lib/scst/pr<br>
&nbsp;&nbsp;&nbsp; mkdir -p ${D}/usr/local/bin<br>
&nbsp;&nbsp;&nbsp; mkdir -p ${D}/etc/logrotate.d<br>
&nbsp;&nbsp;&nbsp; #Install drivers load script<br>
&nbsp;&nbsp;&nbsp; echo Install drivers load script<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}initializeCustomKernelModules $=
{D}/etc/init.d<br>
&nbsp;&nbsp;&nbsp; ln -s ${D}/etc/init.d/initializeCustomKernelModules ${D}=
/etc/rc5.d/S70initializeCustomKernelModules<br>
&nbsp;&nbsp;&nbsp; echo Install firewall configuration boot script<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}firewall ${D}/etc/init.d<br>
&nbsp;&nbsp;&nbsp; chmod &#43;x ${D}/etc/init.d/firewall<br>
&nbsp;&nbsp;&nbsp; ln -s ${D}/etc/init.d/firewall ${D}/etc/rc5.d/S80firewal=
l<br>
&nbsp;&nbsp;&nbsp; #copy config change for console log level<br>
&nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}sysctl.conf ${D}/etc/sysctl.con=
f<br>
}<br>
<br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0CAB521BE4reactorsldomain_--
