Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FACCE00A8E; Wed, 29 Jul 2015 06:21:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B18E00A80
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:21:51 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8C677F81199; Wed, 29 Jul 2015 07:21:50 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B3C46F81199;
	Wed, 29 Jul 2015 07:21:49 -0600 (MDT)
Message-ID: <55B8D37A.6020308@mlbassoc.com>
Date: Wed, 29 Jul 2015 07:22:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
In-Reply-To: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
Subject: Re: [Asterisk] recipe 13.1.1
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
X-List-Received-Date: Wed, 29 Jul 2015 13:21:57 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-29 07:14, Laurent Joli wrote:
>
> Hi everybody,
>
> I am try to build an recipe for asterisk 13.1.1 but I have some errors.
>
> I will show you my recipe :
>
> /**********************/
> DESCRIPTION = "asterisk PBX"
> DEPENDS = "openssl ncurses sqlite3 libxml2 jansson curl libxslt "
> HOMEPAGE = "http://www.asterisk.org"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=3c6764ffcbe996d1d8f919b393ccdd67"
>
> PR = "0"
>
> SRC_URI = "http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-${PV}.tar.gz
> <http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-$%7BPV%7D.tar.gz> \
>             file://asterisk.init"
>
> SRC_URI[md5sum] = "a2781693a67e008d2a3c60b756d4d4ab"
> SRC_URI[sha256sum] = "070b68238734117c0b9c1018ba192ff29964a115a71620e648d4286c92f2f02b"
>
> EXTRA_OECONF = " \
>          --without-curses \
>          --without-gtk2 \
>          --without-isdnnet \
>          --without-misdn \
>          --without-nbs \
>          --with-ncurses \
>          --without-netsnmp \
>          --without-newt \
>          --without-ogg \
>          --without-osptk \
>          --without-popt \
>          --without-pri \
>          --without-radius \
>          --without-sdl \
>          --without-spandsp \
>          --without-suppserv \
>          --without-tds \
>          --without-termcap \
>          --without-tinfo \
>          --without-vorbis \
>          --without-vpb \
>          --without-postgres \
>          --without-lua \
>          --disable-xmldoc \
> "
>
> inherit update-rc.d
>
> FILES_${PN}-dbg += "${libdir}/asterisk/modules/.debug"
>
>
> INITSCRIPT_PACKAGES = "${PN}"
> INITSCRIPT_NAME_${PN} = "asterisk"
> INITSCRIPT_PARAMS_${PN} = "defaults 29 29"
>
> PACKAGES =+ "${PN}-moh"
>
> DESCRIPTION_${PN}-moh = "Asterisk MusicOnHold sound"
> FILES_${PN}-moh = "${localstatedir}/lib/${PN}/moh"
>
>
> do_configure() {
>      echo "begin configure asterisk"
>      ./configure --host=${TARGET_SYS} --build=${BUILD_SYS}  ${EXTRA_OECONF}
> }
>
> # Install init script
> do_install_append() {
>      install -d ${D}${sysconfdir}/init.d
>      install -m 0775 ${WORKDIR}/asterisk.init   ${D}${sysconfdir}/init.d/asterisk
>
>      # Remove EN sound files from this package as they are installed by "asterisk-sounds-en"
>      rm -rf ${D}/var/lib/asterisk/sounds/en
> }
>
> FILES_${PN} += "${sysconfdir}/init.d/asterisk \
>                  /run/asterisk "
> /************************************/
>
> When I build my recipe , I have  this log :
>
> //....//
> checking for utime.h... yes
> | checking arpa/nameser.h usability... yes
> | checking arpa/nameser.h presence... yes
> | checking for arpa/nameser.h... yes
> | checking sys/io.h usability... yes
> | checking sys/io.h presence... yes
> | checking for sys/io.h... yes
> | checking for initscr in -lncurses... yes
> | checking curses.h usability... yes
> | checking curses.h presence... yes
> | checking for curses.h... yes
> | checking for uuid_generate_random in -luuid... yes
> | checking uuid/uuid.h usability... yes
> | checking uuid/uuid.h presence... yes
> | checking for uuid/uuid.h... yes
> | checking for uuid_generate_random in -le2fs-uuid... no
> | checking for uuid_generate_random... no
> | checking for json_dumps in -ljansson... yes
> | checking jansson.h usability... yes
> | checking jansson.h presence... yes
> | checking for jansson.h... yes
> | checking for arm-poky-linux-gnueabi-xml2-config... no
> | checking for xml2-config... /media/ljoli/disk_one/compile_fido/build/tmp/sysroots/cgtqmx6/usr/bin/crossscripts/xml2-config
> | configure: *** The Asterisk menuselect tool requires the 'libxml2' development package.
> | configure: *** Please install the 'libxml2' development package.
> | + bb_exit_handler
> | + ret=1
> | + echo WARNING: exit code 1 from a shell command.
> | WARNING: exit code 1 from a shell command.
> | + exit 1
>
> How to add "libxml2-dev" in my recipe ?

Adding this line should do:
   DEPENDS = "libxml2"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

