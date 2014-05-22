Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73283E00A2F; Thu, 22 May 2014 08:07:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.216 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 376 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 08:07:15 PDT
Received: from mo4-p00-ob.smtp.rzone.de (unknown [81.169.146.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFE18E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 08:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1400771234; l=5575;
	s=domk; d=jenslucius.de;
	h=Content-Type:Subject:To:MIME-Version:From:Date:X-RZG-CLASS-ID:
	X-RZG-AUTH; bh=QeMHWzPrH0GOCS91f53O3S2RZ3k=;
	b=ZGm1SVqBhcvoav2xJsNCEUkwKe+4ueS9XEPFIU8Z4aMlXVpiL/warMK9IeRXE8OcuWl
	CYUJd8NpVYmd8q2zzHxCDMYkYl1ggtm/9dOKrqmc7sGmQrHCMuowXLxZvsy32EsvLOuVE
	enPcDlq6/ee9IRM1AtGMix/tGIZf3I1nU6E=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwAfms93SyA==
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E2E7F.dip0.t-ipconnect.de [91.14.46.127])
	by smtp.strato.de (RZmta 34.2 DYNA|AUTH)
	with ESMTPSA id u06d52q4MF0vVM5
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Thu, 22 May 2014 17:00:57 +0200 (CEST)
Message-ID: <537E111B.3010506@jenslucius.de>
Date: Thu, 22 May 2014 17:00:43 +0200
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building pjproject with python module
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
X-List-Received-Date: Thu, 22 May 2014 15:07:20 -0000
Content-Type: multipart/alternative;
	boundary="------------030007080309030006000806"

--------------030007080309030006000806
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I already asked this question before (got no answer) and thought I had it running,
but since I had to re-setup my yocto installation it runs into errors again.
Maybe somebody can help me with this issue?

I am trying to bitbake pjproject including the python module. I manged
to write a working .bb recipe for the latest pjproject, which compiles
and installes correctly. But I also want to build the python module.

The documentation of pjproject says about building the python module:

  1. Build the PJSIP libraries first with the usual "./configure && make
     dep && make" commands.
  2. Go to pjsip-apps/src/python directory.
  3. Run *'sudo python ./setup.py install'* or just *'sudo make'*

So I guess with the working recipe I got part 1. I tried to do stepts 2
and 3 by adding the following:

do_compile_append() {
export BUILD_SYS
export HOST_SYS
export STAGING_INCDIR
export STAGING_LIBDIR

cd ${S}/pjsip-apps/src/python
oe_runmake
}

which starts the building process but then terminates with:

|/  cc1: warning: include location "/usr/include/python2.7" is unsafe for
/cross-compilation [-Wpoison-system-directories]
|/  In file included from _pjsua.c:20:0:
/|/  _pjsua.h:25:20: fatal error: Python.h: No such file or directory
/
So can I build them both in one recipe and how? And if built correctly
how to install the modules? I also tried to split the build into two .bb files.

Thanks for your help.

(Here is the pjproject bb)
--------
DESCRIPTION = "Open source SIP stack and media stack for presence, im/instant \
                messaging, and multimedia communication"
SECTION = "libs"
HOMEPAGE = "http://www.pjsip.org/"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
DEPENDS = "alsa-lib openssl python"

PARALLEL_MAKE = ""

SRC_URI = "http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2 "
SRC_URI[md5sum] = "6ed4bb7750c827dc1d881e209a3b62db"
SRC_URI[sha256sum] = "da1933336b38b65ff2254bed05ea1076531b16915777a252ea999cf7f3284cb3"
S = "${WORKDIR}/pjproject-${PV}"

inherit autotools pkgconfig

EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"

do_configure_prepend () {
         export LD="${CC}"
}

do_compile_prepend() {
         oe_runmake dep
}


do_install_prepend() {
     install -d ${D}/usr/bin
     install -m 755 ${S}/pjsip-apps/bin/pj* ${D}/usr/bin
}
  


--------------030007080309030006000806
Content-Type: text/html; charset=ISO-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>Hi

I already asked this question before (got no answer) and thought I had it running, 
but since I had to re-setup my yocto installation it runs into errors again.
Maybe somebody can help me with this issue?

I am trying to bitbake pjproject including the python module. I manged 
to write a working .bb recipe for the latest pjproject, which compiles 
and installes correctly. But I also want to build the python module.

The documentation of pjproject says about building the python module:

 1. Build the PJSIP libraries first with the usual "./configure &amp;&amp; make
    dep &amp;&amp; make" commands.
 2. Go to pjsip-apps/src/python directory.
 3. Run *'sudo python ./setup.py install'* or just *'sudo make'*

So I guess with the working recipe I got part 1. I tried to do stepts 2 
and 3 by adding the following:

do_compile_append() {
export BUILD_SYS
export HOST_SYS
export STAGING_INCDIR
export STAGING_LIBDIR

cd ${S}/pjsip-apps/src/python
oe_runmake
}

which starts the building process but then terminates with:

|<i> cc1: warning: include location "/usr/include/python2.7" is unsafe for 
</i>cross-compilation [-Wpoison-system-directories]
|<i> In file included from _pjsua.c:20:0:
</i>|<i> _pjsua.h:25:20: fatal error: Python.h: No such file or directory
</i>
So can I build them both in one recipe and how? And if built correctly 
how to install the modules? I also tried to split the build into two .bb files.

Thanks for your help.

(Here is the pjproject bb)
--------
DESCRIPTION = "Open source SIP stack and media stack for presence, im/instant \
               messaging, and multimedia communication"
SECTION = "libs"
HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="http://www.pjsip.org/">"http://www.pjsip.org/"</a>
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263">"file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"</a>
DEPENDS = "alsa-lib openssl python"

PARALLEL_MAKE = ""

SRC_URI = <a class="moz-txt-link-rfc2396E" href="http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2">"http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2 "</a>
SRC_URI[md5sum] = "6ed4bb7750c827dc1d881e209a3b62db"
SRC_URI[sha256sum] = "da1933336b38b65ff2254bed05ea1076531b16915777a252ea999cf7f3284cb3"
S = "${WORKDIR}/pjproject-${PV}"

inherit autotools pkgconfig

EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"

do_configure_prepend () {
        export LD="${CC}"
}

do_compile_prepend() {
        oe_runmake dep
}


do_install_prepend() {
    install -d ${D}/usr/bin
    install -m 755 ${S}/pjsip-apps/bin/pj* ${D}/usr/bin
}
 
</pre>
  </body>
</html>

--------------030007080309030006000806--
