Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01971E00A2F; Thu, 22 May 2014 08:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF540E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 08:10:49 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DFE73F811F7; Thu, 22 May 2014 09:10:48 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3B2C0F811F6;
	Thu, 22 May 2014 09:10:48 -0600 (MDT)
Message-ID: <537E1390.1090909@mlbassoc.com>
Date: Thu, 22 May 2014 09:11:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <537E111B.3010506@jenslucius.de>
In-Reply-To: <537E111B.3010506@jenslucius.de>
Subject: Re: Building pjproject with python module
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
X-List-Received-Date: Thu, 22 May 2014 15:10:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-22 09:00, Jens Lucius wrote:
> Hi
>
> I already asked this question before (got no answer) and thought I had it running,
> but since I had to re-setup my yocto installation it runs into errors again.
> Maybe somebody can help me with this issue?
>
> I am trying to bitbake pjproject including the python module. I manged
> to write a working .bb recipe for the latest pjproject, which compiles
> and installes correctly. But I also want to build the python module.
>
> The documentation of pjproject says about building the python module:
>
>   1. Build the PJSIP libraries first with the usual "./configure && make
>      dep && make" commands.
>   2. Go to pjsip-apps/src/python directory.
>   3. Run *'sudo python ./setup.py install'* or just *'sudo make'*
>
> So I guess with the working recipe I got part 1. I tried to do stepts 2
> and 3 by adding the following:
>
> do_compile_append() {
> export BUILD_SYS
> export HOST_SYS
> export STAGING_INCDIR
> export STAGING_LIBDIR
>
> cd ${S}/pjsip-apps/src/python
> oe_runmake
> }
>
> which starts the building process but then terminates with:
>
> |/  cc1: warning: include location "/usr/include/python2.7" is unsafe for
> /cross-compilation [-Wpoison-system-directories]
> |/  In file included from _pjsua.c:20:0:
> /|/  _pjsua.h:25:20: fatal error: Python.h: No such file or directory
> /
> So can I build them both in one recipe and how? And if built correctly
> how to install the modules? I also tried to split the build into two .bb files.
>
> Thanks for your help.

Try adding 'inherit pythonnative' to your recipe

>
> (Here is the pjproject bb)
> --------
> DESCRIPTION = "Open source SIP stack and media stack for presence, im/instant \
>                 messaging, and multimedia communication"
> SECTION = "libs"
> HOMEPAGE ="http://www.pjsip.org/"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM ="file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> DEPENDS = "alsa-lib openssl python"
>
> PARALLEL_MAKE = ""
>
> SRC_URI ="http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2"
> SRC_URI[md5sum] = "6ed4bb7750c827dc1d881e209a3b62db"
> SRC_URI[sha256sum] = "da1933336b38b65ff2254bed05ea1076531b16915777a252ea999cf7f3284cb3"
> S = "${WORKDIR}/pjproject-${PV}"
>
> inherit autotools pkgconfig
>
> EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"
>
> do_configure_prepend () {
>          export LD="${CC}"
> }
>
> do_compile_prepend() {
>          oe_runmake dep
> }
>
>
> do_install_prepend() {
>      install -d ${D}/usr/bin
>      install -m 755 ${S}/pjsip-apps/bin/pj* ${D}/usr/bin
> }
>
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

