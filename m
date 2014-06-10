Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BE43E00BBA; Tue, 10 Jun 2014 01:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.217 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5792EE00B0B
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 01:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1402389032; l=12534;
	s=domk; d=jenslucius.de;
	h=Content-Type:In-Reply-To:References:Subject:To:MIME-Version:From:
	Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=CYpRb3pBNtDYS10ocFlcjsug3CM=;
	b=jCwjDLVAY5C4iEbAIv5yKnRGwSQ9w7HCJAM9Vf0SVCD6R4ZV20yTX7RaWWXzQYWOWs5
	KZDgK00TL8q29Pdwvr3iFyXd7NM055aE6QKQxz97xi5nL5gh8rjk4wyYbxfIsshuXUdps
	L/WYHjIpBadLX5jtq70ldsI5zxyk8DBUSWs=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgBcHsubAgpjk8lA//2k=
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p57915D6B.dip0.t-ipconnect.de [87.145.93.107])
	by smtp.strato.de (RZmta 34.2 DYNA|AUTH)
	with ESMTPSA id 00718eq5A8UWHZt
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Tue, 10 Jun 2014 10:30:32 +0200 (CEST)
Message-ID: <5396C22F.2040204@jenslucius.de>
Date: Tue, 10 Jun 2014 10:30:39 +0200
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
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
X-List-Received-Date: Tue, 10 Jun 2014 08:30:46 -0000
Content-Type: multipart/alternative;
	boundary="------------020207060102080203040407"

--------------020207060102080203040407
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I am using a very minimal .bb for this.

DESCRIPTION = "Install additional files"
LICENSE = "CLOSED"
SECTION = "base"
PR = "r0"

SRC_URI = "file://autoinstaller.sh"

S = "${WORKDIR}"

do_install () {
     install -d ${D}/usr/bin
     install -m 755 ${S}/autoinstaller.sh ${D}/usr/bin
}

Am 09.06.2014 23:44, schrieb Jim Rafert:
> I'm trying to gather all my post-build tweaks into a recipe that will 
> be built as part of an upper-level layer, so that they are installed 
> after the meta layer is processed.  Many of these could be 
> accomplished as part of .bbappend files for the recipes that 
> originally supply the config files, but I wanted to gather all my 
> customizations in one spot, so that they're easy to find.
>
> The recipe doesn't actually build anything, so there's no do_build task.
>
> This is surely something that is commonly wanted.
>
> Here's my current recipe, in spectra-postbuild_0.1.bb.
>
> When I try to build an image, the build fails with
> ERROR: QA Issue: spectra-postbuild: Files/directories were installed 
> but not shipped
>   /RELEASE-NOTES.txt
>
> When I disable the installed-vs-shipped QA test,  it fails later when 
> it can't find a package file.
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
>     grep -v volatile/log ${D}/etc/default/volatiles/00_core.orig |  
> tee ${D}/etc/default/volatiles/00_core >/dev/null
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
>


--------------020207060102080203040407
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi<br>
    <br>
    I am using a very minimal .bb for this.<br>
    <br>
    DESCRIPTION = "Install additional files"<br>
    LICENSE = "CLOSED"<br>
    SECTION = "base"<br>
    PR = "r0"<br>
    <br>
    SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://autoinstaller.sh">"file://autoinstaller.sh"</a><br>
    <br>
    S = "${WORKDIR}"<br>
    <br>
    do_install () {<br>
    &nbsp;&nbsp;&nbsp; install -d ${D}/usr/bin<br>
    &nbsp;&nbsp;&nbsp; install -m 755 ${S}/autoinstaller.sh ${D}/usr/bin<br>
    }<br>
    <br>
    <div class="moz-cite-prefix">Am 09.06.2014 23:44, schrieb Jim
      Rafert:<br>
    </div>
    <blockquote
      cite="mid:86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <style id="owaParaStyle" type="text/css">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">I'm trying to gather all my post-build
        tweaks into a recipe that will be built as part of an
        upper-level layer, so that they are installed after the meta
        layer is processed.&nbsp; Many of these could be accomplished as part
        of .bbappend files for the recipes that originally supply the
        config files, but I wanted to gather all my customizations in
        one spot, so that they're easy to find.<br>
        <br>
        The recipe doesn't actually build anything, so there's no
        do_build task.<br>
        <br>
        This is surely something that is commonly wanted.<br>
        <br>
        Here's my current recipe, in spectra-postbuild_0.1.bb.<br>
        <br>
        When I try to build an image, the build fails with <br>
        ERROR: QA Issue: spectra-postbuild: Files/directories were
        installed but not shipped<br>
        &nbsp; /RELEASE-NOTES.txt<br>
        <br>
        When I disable the installed-vs-shipped QA test,&nbsp; it fails later
        when it can't find a package file.<br>
        <br>
        I must be missing something critical here?<br>
        <div>SUMMARY = "Post processing of configuration files for
          SpectraOS"<br>
          SECTION = "base"<br>
          LICENSE = "GPLv2"<br>
          LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4">"file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4"</a><br>
          RDEPENDS_${PN} = "initscripts"<br>
          PR = "r0"<br>
          <br>
          SRC_URI = "<a class="moz-txt-link-freetext" href="file://inittab">file://inittab</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://fstab">file://fstab</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://rsyslog.conf">file://rsyslog.conf</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://grub.cfg">file://grub.cfg</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://mount.sh">file://mount.sh</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://RELEASE-NOTES.txt">file://RELEASE-NOTES.txt</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://Spectra-OS-Version">file://Spectra-OS-Version</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://initializeCustomKernelModules">file://initializeCustomKernelModules</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://firewall">file://firewall</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://sysctl.conf">file://sysctl.conf</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://COPYRIGHT">file://COPYRIGHT</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "<br>
          <br>
          CONFFILES_${PN} += "${sysconfdir}/init.d/firewall "<br>
          CONFFILES_${PN} +=
          "${sysconfdir}/init.d/initializeCustomKernelModules "<br>
          FILES_${PN} =&nbsp; "/RELEASE_NOTES.txt /Spectra-OS-Version "<br>
          <br>
          #INSANE_SKIP_${PN} = "installed-vs-shipped"<br>
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
          &nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/rsyslog.conf
          ${D}/etc/rsyslog.conf<br>
          &nbsp;&nbsp;&nbsp; mkdir -p ${D}/boot/grub<br>
          &nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/grub.cfg ${D}/boot/grub/grub.cfg<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/etc/udev/scripts<br>
          &nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}/mount.sh
          ${D}/etc/udev/scripts/mount.sh<br>
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
          &nbsp;&nbsp;&nbsp; echo "/dev/sda*" &gt;&gt; ${D}/etc/udev/mount.blacklist<br>
          &nbsp;&nbsp;&nbsp; echo "/dev/sdd*" &gt;&gt; ${D}/etc/udev/mount.blacklist<br>
          &nbsp;&nbsp;&nbsp; echo "/dev/sde*" &gt;&gt; ${D}/etc/udev/mount.blacklist<br>
          &nbsp;&nbsp;&nbsp; chmod 644 ${D}/etc/udev/mount.blacklist<br>
          <br>
          &nbsp;&nbsp;&nbsp; #Remove /var/log link to /var/volatile/log, persist log.<br>
          &nbsp;&nbsp;&nbsp; rm ${D}/var/log<br>
          &nbsp;&nbsp;&nbsp; mkdir ${D}/var/log<br>
          &nbsp;&nbsp;&nbsp; mv ${D}/etc/default/volatiles/00_core
          ${D}/etc/default/volatiles/00_core.orig<br>
          &nbsp;&nbsp;&nbsp; grep -v volatile/log
          ${D}/etc/default/volatiles/00_core.orig |&nbsp; tee
          ${D}/etc/default/volatiles/00_core &gt;/dev/null<br>
          &nbsp;&nbsp;&nbsp; rm ${D}/etc/default/volatiles/00_core.orig<br>
          <br>
          &nbsp;&nbsp;&nbsp; #Create directory for SCST<br>
          &nbsp;&nbsp;&nbsp; mkdir -p ${D}/var/lib/scst/pr<br>
          &nbsp;&nbsp;&nbsp; mkdir -p ${D}/usr/local/bin<br>
          &nbsp;&nbsp;&nbsp; mkdir -p ${D}/etc/logrotate.d<br>
          &nbsp;&nbsp;&nbsp; #Install drivers load script<br>
          &nbsp;&nbsp;&nbsp; echo Install drivers load script<br>
          &nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}initializeCustomKernelModules
          ${D}/etc/init.d<br>
          &nbsp;&nbsp;&nbsp; ln -s ${D}/etc/init.d/initializeCustomKernelModules
          ${D}/etc/rc5.d/S70initializeCustomKernelModules<br>
          &nbsp;&nbsp;&nbsp; echo Install firewall configuration boot script<br>
          &nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}firewall ${D}/etc/init.d<br>
          &nbsp;&nbsp;&nbsp; chmod +x ${D}/etc/init.d/firewall<br>
          &nbsp;&nbsp;&nbsp; ln -s ${D}/etc/init.d/firewall ${D}/etc/rc5.d/S80firewall<br>
          &nbsp;&nbsp;&nbsp; #copy config change for console log level<br>
          &nbsp;&nbsp;&nbsp; install -m 755 ${WORKDIR}sysctl.conf ${D}/etc/sysctl.conf<br>
          }<br>
          <br>
          <div style="font-family:Tahoma; font-size:13px"><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------020207060102080203040407--
