Return-Path: <maxim.radugin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FC0E00BAE; Tue, 10 Jun 2014 08:02:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxim.radugin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CAC6E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:02:52 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id t60so780232wes.18
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=n/GMC/pJkRahMSFKmlsVoDDYNixQdiPqQCAna/I6XeA=;
	b=Ml5TY2hN6gnjsTF6Bj/roodzTxoECNYjmSkuwTIfYGDr8AQUSvra/HGZDv/gJOYSgj
	eS4ioabldXqKEfcGa8p/w/2llTAMQcAue+kfKJPqCszbV9mLvuBHlVDT5q/gvVvk23E5
	mqWOXAO72hYnKL+N7KFcOJveC9F4JjNzyObh9EFIiazL5zTAwhHZ3LLlFqCcB+lzEHvw
	P7/bznbK0nJO35CsJPwp7aipBua42CU6alpsXxU8wObpq80kRDF8t2xZh2gkHIbhnc3i
	q2XK8dGQOsz2qZVnZdRumoYe8h47hFEDprWcag/vDKUkJfLNca43EHCpk03GLcEUBj9I
	IGMQ==
MIME-Version: 1.0
X-Received: by 10.180.76.137 with SMTP id k9mr8038057wiw.49.1402412567816;
	Tue, 10 Jun 2014 08:02:47 -0700 (PDT)
Received: by 10.194.88.69 with HTTP; Tue, 10 Jun 2014 08:02:47 -0700 (PDT)
In-Reply-To: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
Date: Tue, 10 Jun 2014 18:02:47 +0300
Message-ID: <CABWuD8c-2zMenNs_EEJYMUedQ0SXGfp6TSc-=T2e=mrvUyrxXA@mail.gmail.com>
From: Maxim Radugin <maxim.radugin@gmail.com>
To: Jim Rafert <jimr@spectralogic.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 10 Jun 2014 15:02:57 -0000
Content-Type: multipart/alternative; boundary=f46d0434393eeef0a804fb7c9e6c

--f46d0434393eeef0a804fb7c9e6c
Content-Type: text/plain; charset=UTF-8

Hello Jim,

I don't think this is a good idea to put all the config files for different
packages in one recipe.
IMHO you should use .bbappend file for each recipe you are
overriding/modifying files for, otherwise you can run into situation when,
you recipe gets installed before, for example, grub.
Then your config will be overwritten by grub.cfg provided in grub package
(this is just an example, I'm not sure grub provides default one).

I wonder why you don't get another QA warning that you are overwriting
files that were installed by different package.

It is OK to put your specific files in such recipe, like RELEASE-NOTES.txt,
etc.

BR,
Maxim.



On Tue, Jun 10, 2014 at 12:44 AM, Jim Rafert <jimr@spectralogic.com> wrote:

>  I'm trying to gather all my post-build tweaks into a recipe that will be
> built as part of an upper-level layer, so that they are installed after the
> meta layer is processed.  Many of these could be accomplished as part of
> .bbappend files for the recipes that originally supply the config files,
> but I wanted to gather all my customizations in one spot, so that they're
> easy to find.
>
> The recipe doesn't actually build anything, so there's no do_build task.
>
> This is surely something that is commonly wanted.
>
> Here's my current recipe, in spectra-postbuild_0.1.bb.
>
> When I try to build an image, the build fails with
> ERROR: QA Issue: spectra-postbuild: Files/directories were installed but
> not shipped
>   /RELEASE-NOTES.txt
>
> When I disable the installed-vs-shipped QA test,  it fails later when it
> can't find a package file.
>
> I must be missing something critical here?
> SUMMARY = "Post processing of configuration files for SpectraOS"
> SECTION = "base"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4"
> RDEPENDS_${PN} = "initscripts"
> PR = "r0"
>
> SRC_URI = "file://inittab \
>        file://fstab \
>        file://rsyslog.conf \
>        file://grub.cfg \
>        file://mount.sh \
>        file://RELEASE-NOTES.txt \
>        file://Spectra-OS-Version \
>        file://initializeCustomKernelModules \
>        file://firewall \
>        file://sysctl.conf \
>        file://COPYRIGHT \
>        "
>
> CONFFILES_${PN} += "${sysconfdir}/init.d/firewall "
> CONFFILES_${PN} += "${sysconfdir}/init.d/initializeCustomKernelModules "
> FILES_${PN} =  "/RELEASE_NOTES.txt /Spectra-OS-Version "
>
> #INSANE_SKIP_${PN} = "installed-vs-shipped"
>
> do_install () {
>     install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
>     install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}
> }
>
> pkg_postinst_${PN} () {
>     install -d ${D}${sysconfdir}/init.d
>     install -d ${D}${sbindir}
>
>     #Install our inittab and fstab
>     echo Install our inittab and fstab
>     install -m 544 ${WORKDIR}/inittab ${D}/etc/inittab
>     install -m 755 ${WORKDIR}/fstab ${D}/etc/fstab
>     install -m 755 ${WORKDIR}/rsyslog.conf ${D}/etc/rsyslog.conf
>     mkdir -p ${D}/boot/grub
>     install -m 755 ${WORKDIR}/grub.cfg ${D}/boot/grub/grub.cfg
>         install -d ${D}/etc/udev/scripts
>     install -m 755 ${WORKDIR}/mount.sh ${D}/etc/udev/scripts/mount.sh
>     chmod 755 ${D}/etc/udev/scripts/mount.sh
>     install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
>     install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}
>
>     #Remove unneeded services from startup
>     echo Remove unneeded services from startup
>     rm ${D}/etc/rc5.d/S20nfsserver
>     rm ${D}/etc/rc5.d/S20syslog
>     rm ${D}/etc/rc5.d/S70lighttpd
>
>     #Add /dev/sdd to the auto mount blacklist
>     chmod 777 ${D}/etc/udev/mount.blacklist
>     echo "/dev/sda*" >> ${D}/etc/udev/mount.blacklist
>     echo "/dev/sdd*" >> ${D}/etc/udev/mount.blacklist
>     echo "/dev/sde*" >> ${D}/etc/udev/mount.blacklist
>     chmod 644 ${D}/etc/udev/mount.blacklist
>
>     #Remove /var/log link to /var/volatile/log, persist log.
>     rm ${D}/var/log
>     mkdir ${D}/var/log
>     mv ${D}/etc/default/volatiles/00_core
> ${D}/etc/default/volatiles/00_core.orig
>     grep -v volatile/log ${D}/etc/default/volatiles/00_core.orig |  tee
> ${D}/etc/default/volatiles/00_core >/dev/null
>     rm ${D}/etc/default/volatiles/00_core.orig
>
>     #Create directory for SCST
>     mkdir -p ${D}/var/lib/scst/pr
>     mkdir -p ${D}/usr/local/bin
>     mkdir -p ${D}/etc/logrotate.d
>     #Install drivers load script
>     echo Install drivers load script
>     install -m 755 ${WORKDIR}initializeCustomKernelModules ${D}/etc/init.d
>     ln -s ${D}/etc/init.d/initializeCustomKernelModules
> ${D}/etc/rc5.d/S70initializeCustomKernelModules
>     echo Install firewall configuration boot script
>     install -m 755 ${WORKDIR}firewall ${D}/etc/init.d
>     chmod +x ${D}/etc/init.d/firewall
>     ln -s ${D}/etc/init.d/firewall ${D}/etc/rc5.d/S80firewall
>     #copy config change for console log level
>     install -m 755 ${WORKDIR}sysctl.conf ${D}/etc/sysctl.conf
> }
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f46d0434393eeef0a804fb7c9e6c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Jim,<div><br></div><div>I don&#39;t think this is a =
good idea to put all the config files for different packages in one recipe.=
=C2=A0</div><div>IMHO you should use .bbappend file for each recipe you are=
 overriding/modifying files for, otherwise you can run into situation when,=
 you recipe gets installed before, for example, grub.</div>
<div>Then your config will be overwritten by grub.cfg provided in grub pack=
age (this is just an example, I&#39;m not sure grub provides default one).<=
/div><div><br></div><div><div>I wonder why you don&#39;t get another QA war=
ning that you are overwriting files that were installed by different packag=
e.</div>
</div><div><br></div><div>It is OK to put your specific files in such recip=
e, like=C2=A0<span style=3D"color:rgb(0,0,0);font-family:Tahoma;font-size:1=
3px">RELEASE-NOTES.txt, etc.</span></div><div><br></div><div>BR,</div><div>=
Maxim.</div>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Jun 10, 2014 at 12:44 AM, Jim Rafert <span dir=3D"ltr">&lt;=
<a href=3D"mailto:jimr@spectralogic.com" target=3D"_blank">jimr@spectralogi=
c.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:#000000;font-size:10pt=
">I&#39;m trying to gather all my post-build tweaks into a recipe that will=
 be built as part of an upper-level layer, so that they are installed after=
 the meta layer is processed.=C2=A0 Many
 of these could be accomplished as part of .bbappend files for the recipes =
that originally supply the config files, but I wanted to gather all my cust=
omizations in one spot, so that they&#39;re easy to find.<br>
<br>
The recipe doesn&#39;t actually build anything, so there&#39;s no do_build =
task.<br>
<br>
This is surely something that is commonly wanted.<br>
<br>
Here&#39;s my current recipe, in <a href=3D"http://spectra-postbuild_0.1.bb=
" target=3D"_blank">spectra-postbuild_0.1.bb</a>.<br>
<br>
When I try to build an image, the build fails with <br>
ERROR: QA Issue: spectra-postbuild: Files/directories were installed but no=
t shipped<br>
=C2=A0 /RELEASE-NOTES.txt<br>
<br>
When I disable the installed-vs-shipped QA test,=C2=A0 it fails later when =
it can&#39;t find a package file.<br>
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
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://fstab \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://rsyslog.conf \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://grub.cfg \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://mount.sh \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://RELEASE-NOTES.txt \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://Spectra-OS-Version \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://initializeCustomKernelModules \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://firewall \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://sysctl.conf \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 file://COPYRIGHT \<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 &quot;<br>
<br>
CONFFILES_${PN} +=3D &quot;${sysconfdir}/init.d/firewall &quot;<br>
CONFFILES_${PN} +=3D &quot;${sysconfdir}/init.d/initializeCustomKernelModul=
es &quot;<br>
FILES_${PN} =3D=C2=A0 &quot;/RELEASE_NOTES.txt /Spectra-OS-Version &quot;<b=
r>
<br>
#INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;<br>
<br>
do_install () {<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}<br>
}<br>
<br>
pkg_postinst_${PN} () {<br>
=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/init.d<br>
=C2=A0=C2=A0=C2=A0 install -d ${D}${sbindir}<br>
<br>
=C2=A0=C2=A0=C2=A0 #Install our inittab and fstab<br>
=C2=A0=C2=A0=C2=A0 echo Install our inittab and fstab<br>
=C2=A0=C2=A0=C2=A0 install -m 544 ${WORKDIR}/inittab ${D}/etc/inittab<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/fstab ${D}/etc/fstab<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/rsyslog.conf ${D}/etc/rsyslog.=
conf<br>
=C2=A0=C2=A0=C2=A0 mkdir -p ${D}/boot/grub<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/grub.cfg ${D}/boot/grub/grub.c=
fg<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/etc/udev/scripts=
<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/mount.sh ${D}/etc/udev/scripts=
/mount.sh<br>
=C2=A0=C2=A0=C2=A0 chmod 755 ${D}/etc/udev/scripts/mount.sh<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}<br>
<br>
=C2=A0=C2=A0=C2=A0 #Remove unneeded services from startup<br>
=C2=A0=C2=A0=C2=A0 echo Remove unneeded services from startup<br>
=C2=A0=C2=A0=C2=A0 rm ${D}/etc/rc5.d/S20nfsserver<br>
=C2=A0=C2=A0=C2=A0 rm ${D}/etc/rc5.d/S20syslog<br>
=C2=A0=C2=A0=C2=A0 rm ${D}/etc/rc5.d/S70lighttpd<br>
<br>
=C2=A0=C2=A0=C2=A0 #Add /dev/sdd to the auto mount blacklist<br>
=C2=A0=C2=A0=C2=A0 chmod 777 ${D}/etc/udev/mount.blacklist<br>
=C2=A0=C2=A0=C2=A0 echo &quot;/dev/sda*&quot; &gt;&gt; ${D}/etc/udev/mount.=
blacklist<br>
=C2=A0=C2=A0=C2=A0 echo &quot;/dev/sdd*&quot; &gt;&gt; ${D}/etc/udev/mount.=
blacklist<br>
=C2=A0=C2=A0=C2=A0 echo &quot;/dev/sde*&quot; &gt;&gt; ${D}/etc/udev/mount.=
blacklist<br>
=C2=A0=C2=A0=C2=A0 chmod 644 ${D}/etc/udev/mount.blacklist<br>
<br>
=C2=A0=C2=A0=C2=A0 #Remove /var/log link to /var/volatile/log, persist log.=
<br>
=C2=A0=C2=A0=C2=A0 rm ${D}/var/log<br>
=C2=A0=C2=A0=C2=A0 mkdir ${D}/var/log<br>
=C2=A0=C2=A0=C2=A0 mv ${D}/etc/default/volatiles/00_core ${D}/etc/default/v=
olatiles/00_core.orig<br>
=C2=A0=C2=A0=C2=A0 grep -v volatile/log ${D}/etc/default/volatiles/00_core.=
orig |=C2=A0 tee ${D}/etc/default/volatiles/00_core &gt;/dev/null<br>
=C2=A0=C2=A0=C2=A0 rm ${D}/etc/default/volatiles/00_core.orig<br>
<br>
=C2=A0=C2=A0=C2=A0 #Create directory for SCST<br>
=C2=A0=C2=A0=C2=A0 mkdir -p ${D}/var/lib/scst/pr<br>
=C2=A0=C2=A0=C2=A0 mkdir -p ${D}/usr/local/bin<br>
=C2=A0=C2=A0=C2=A0 mkdir -p ${D}/etc/logrotate.d<br>
=C2=A0=C2=A0=C2=A0 #Install drivers load script<br>
=C2=A0=C2=A0=C2=A0 echo Install drivers load script<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}initializeCustomKernelModules $=
{D}/etc/init.d<br>
=C2=A0=C2=A0=C2=A0 ln -s ${D}/etc/init.d/initializeCustomKernelModules ${D}=
/etc/rc5.d/S70initializeCustomKernelModules<br>
=C2=A0=C2=A0=C2=A0 echo Install firewall configuration boot script<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}firewall ${D}/etc/init.d<br>
=C2=A0=C2=A0=C2=A0 chmod +x ${D}/etc/init.d/firewall<br>
=C2=A0=C2=A0=C2=A0 ln -s ${D}/etc/init.d/firewall ${D}/etc/rc5.d/S80firewal=
l<br>
=C2=A0=C2=A0=C2=A0 #copy config change for console log level<br>
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}sysctl.conf ${D}/etc/sysctl.con=
f<br>
}<br>
<br>
<div style=3D"font-family:Tahoma;font-size:13px"><br>
</div>
</div>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--f46d0434393eeef0a804fb7c9e6c--
