Return-Path: <vpalacio@intemotechnologies.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53A72E00BE9; Fri,  6 Apr 2018 04:05:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.116.26.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 532 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Apr 2018 04:05:02 PDT
Received: from relayout02-q01.dominioabsoluto.net
	(relayout02-q01.dominioabsoluto.net [217.116.26.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B07C5E005A9
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 04:05:02 -0700 (PDT)
Received: from relayout02-redir.dominioabsoluto.net
	(relayout02-redir.dominioabsoluto.net [217.116.26.75])
	by relayout02.dominioabsoluto.net (Postfix) with ESMTP id
	40Hc7X4LXVzlXMk
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 12:56:08 +0200 (CEST)
Received: from [192.168.1.31] (58.red-217-125-30.staticip.rima-tde.net
	[217.125.30.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: vpalacio.intemotechnologies.com)
	by relayout02-dsp.dominioabsoluto.net (Postfix) with ESMTPSA id
	40Hc7X1wTkzlXMk
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 12:56:08 +0200 (CEST)
To: yocto@yoctoproject.org
From: Victor Palacio <vpalacio@intemotechnologies.com>
Message-ID: <94147db7-3923-ae04-d8c7-23df0d6afe96@intemotechnologies.com>
Date: Fri, 6 Apr 2018 12:56:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-CTCH-Score: 0.000
X-CTCH-ScoreCust: 0.000
X-PostalOut-Country: IP: 217.125.30.58 | Country: ES
X-PostalOut-Information: AntiSPAM and AntiVIRUS on relayout02
X-PostalOut-MsgID: 40Hc7X1wTkzlXMk.A14FC
X-PostalOut-SpamCheck: no es spam, Unknown
X-PostalOut-From: vpalacio@intemotechnologies.com
X-PostalOut-Watermark: 1523616968.53177@3I4kxXS/BfGqQgs7W+Kumg
Subject: glib-initial do_install fails at 'oe_runmake csu/subdir_lib' (Rocko)
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
X-List-Received-Date: Fri, 06 Apr 2018 11:05:05 -0000
Content-Type: multipart/alternative;
	boundary="------------7D3F94E115C4094135499B95"
Content-Language: en-US

--------------7D3F94E115C4094135499B95
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I cannot buid core-image-minimal for a imx25pdk machine (rocko). 
Building stops at glibc-initial install.

Building for another machine with morty (imx25pdk is not available in 
morty)  works.

I assume is related to this part of the recipe (glibc-initial.inc):

do_install () {
     ******
         oe_runmake csu/subdir_lib
         mkdir -p ${D}${libdir}/
         install -m 644 csu/crt[1in].o ${D}${libdir}
     ******
}

Host machine is an Ubuntu 16.04...
Linux vpalacio-laptop 4.4.0-116-generic #140-Ubuntu SMP Mon Feb 12 
21:23:04 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux

Googling for the issue, I've found this post that looks like the same 
issue: https://lists.yoctoproject.org/pipermail/yocto/2015-May/025018.html

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-fsl-linux-gnueabi"
MACHINE              = "imx25pdk"
DISTRO               = "fsl-x11"
DISTRO_VERSION       = "2.4"
TUNE_FEATURES        = "arm armv5 thumb dsp"
TARGET_FPU           = "soft"
meta
meta-poky            = "HEAD:fdeecc901196bbccd7c5b1ea4268a2cf56764a62"
meta-oe
meta-multimedia      = "HEAD:dacfa2b1920e285531bec55cd2f08743390aaf57"
meta-freescale       = "HEAD:d6141ea291a1ac9ab8fb1dd1110d408f840fda57"
meta-freescale-3rdparty = "HEAD:62de01743c9233ea718de22991c47b73a78b4857"
meta-freescale-distro = "HEAD:0ec6d7e206705702b5b534611754de0787f92b72"


*********************************************************************************************************+

| NOTE: make PARALLELMFLAGS=-j 4 SHELL=/bin/bash csu/subdir_lib
| make -r PARALLELMFLAGS="-j 4" -C ../git objdir=`pwd` csu/subdir_lib
| make[1]: Entering directory 
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git'
| make -j 4 subdir=csu -C csu ..=../ subdir_lib
| make[2]: Entering directory 
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git/csu'
| /bin/bash ../scripts/gen-libc-abis \
|      arm-fsl-linux-gnueabi \
|      < ../libc-abis > 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.hT
| LC_ALL=C gawk -f ../scripts/abi-versions.awk 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/Versions.all 
 > 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/abi-versions.hT
| gawk -f ../scripts/gen-tunables.awk ../elf/dl-tunables.list > 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/dl-tunable-list.T
| .././scripts/mkinstalldirs 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu
| mv -f 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/abi-versions.hT 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/abi-versions.h
| /bin/bash ../scripts/move-if-change 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.hT 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.h

| ../Makeconfig:1137: recipe for target 
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/dl-tunable-list.stmp' 
failed
| make[2]: *** 
[/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/dl-tunable-list.stmp] 
Error 1
| mkdir -p -- 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu
| make[2]: *** Waiting for unfinished jobs....
| (files="../crypt/Banner ../libidn/Banner ../nptl/Banner 
../resolv/Banner";                \
|  if test -n "$files"; then                \
|    printf '"Available extensions:\\n"\n';        \
|    sed -e '/^#/d' -e 's/^[[:space:]]*/    /'        \
|        -e 's/^\(.*\)$/\"\1\\n\"/' $files;        \
|  fi) > 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu/version-info.hT
| mv -f 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu/version-info.hT 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu/version-info.h
| touch 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.stamp
| make[2]: Leaving directory 
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git/csu'
| Makefile:235: recipe for target 'csu/subdir_lib' failed
| make[1]: *** [csu/subdir_lib] Error 2
| make[1]: Leaving directory 
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git'
| Makefile:9: recipe for target 'csu/subdir_lib' failed
| make: *** [csu/subdir_lib] Error 2
| ERROR: oe_runmake failed
| WARNING: 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/temp/run.do_install.30316:1 
exit 1 from 'exit 1'
| ERROR: Function failed: do_install (log file is located at 
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/temp/log.do_install.30316)
ERROR: Task 
(/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/sources/poky/meta/recipes-core/glibc/glibc-initial_2.26.bb:do_install) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 731 tasks of which 699 didn't need to be 
rerun and 1 failed.
NOTE: Writing buildhistory

Summary: 1 task failed:
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/sources/poky/meta/recipes-core/glibc/glibc-initial_2.26.bb:do_install

-- 

Victor M. Palacio Tárrega

vpalacio@intemotechnologies.com <mailto:icarra@intemotechnologies.com>

**

*Intemo Technologies****- Idetech Europe, S.L.*

Mov.: (+34)  670 03 66 08

Tel:     (+34) 93 336 16 51

C/ Montserrat Roig, nº 23, Pol. Ind. Pedrosa

08908 Hospitalet de Llobregat

BARCELONA (SPAIN)

| SmartCards |RFID |NFC |Biometría |

Este correo electrónico puede contener información reservada 
y/o confidencial, destinada exclusivamente para el uso del destinatario. 
Si Vd no es el destinatario o la persona encargada de distribuirlo, no 
está autorizado a copiar o entregar esta comunicación a ninguna otra 
persona. Si ha recibido este correo electrónico por error, le rogamos 
nos lo notifique inmediatamente por  teléfono o por el mismo medio. Gracias.

Privilege/Confidential Information may be contained in this e-mail and 
is intended only for use of the addressee. If you are not  the 
addressee, or the person responsible for delivering it to the person 
addressed, you may not copy or deliver this to anyone else. If you 
receive this e-mail by mistake, please notify us immediately by 
telephone or e-mail. Thank you.


--------------7D3F94E115C4094135499B95
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,</p>
    <p>I cannot buid core-image-minimal for a imx25pdk machine (rocko).
      Building stops at glibc-initial install.</p>
    <p>Building for another machine with morty (imx25pdk is not
      available in morty)  works.<br>
    </p>
    <p>I assume is related to this part of the recipe
      (glibc-initial.inc):</p>
    <p>do_install () {<br>
          ******<br>
              oe_runmake csu/subdir_lib<br>
              mkdir -p ${D}${libdir}/<br>
              install -m 644 csu/crt[1in].o ${D}${libdir}<br>
          ******<br>
      }<br>
    </p>
    Host machine is an Ubuntu 16.04...<br>
    Linux vpalacio-laptop 4.4.0-116-generic #140-Ubuntu SMP Mon Feb 12
    21:23:04 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux<br>
    <br>
    Googling for the issue, I've found this post that looks like the
    same issue: 
    <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2015-May/025018.html">https://lists.yoctoproject.org/pipermail/yocto/2015-May/025018.html</a><br>
    <p>Build Configuration:<br>
      BB_VERSION           = "1.36.0"<br>
      BUILD_SYS            = "x86_64-linux"<br>
      NATIVELSBSTRING      = "universal"<br>
      TARGET_SYS           = "arm-fsl-linux-gnueabi"<br>
      MACHINE              = "imx25pdk"<br>
      DISTRO               = "fsl-x11"<br>
      DISTRO_VERSION       = "2.4"<br>
      TUNE_FEATURES        = "arm armv5 thumb dsp"<br>
      TARGET_FPU           = "soft"<br>
      meta                 <br>
      meta-poky            =
      "HEAD:fdeecc901196bbccd7c5b1ea4268a2cf56764a62"<br>
      meta-oe              <br>
      meta-multimedia      =
      "HEAD:dacfa2b1920e285531bec55cd2f08743390aaf57"<br>
      meta-freescale       =
      "HEAD:d6141ea291a1ac9ab8fb1dd1110d408f840fda57"<br>
      meta-freescale-3rdparty =
      "HEAD:62de01743c9233ea718de22991c47b73a78b4857"<br>
      meta-freescale-distro =
      "HEAD:0ec6d7e206705702b5b534611754de0787f92b72"<br>
    </p>
    <p><br>
    </p>
    <p>*********************************************************************************************************+</p>
    <p>| NOTE: make PARALLELMFLAGS=-j 4 SHELL=/bin/bash csu/subdir_lib<br>
      | make -r PARALLELMFLAGS="-j 4" -C ../git objdir=`pwd`
      csu/subdir_lib<br>
      | make[1]: Entering directory
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git'<br>
      | make -j 4 subdir=csu -C csu ..=../ subdir_lib<br>
      | make[2]: Entering directory
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git/csu'<br>
      | /bin/bash ../scripts/gen-libc-abis \<br>
      |      arm-fsl-linux-gnueabi \<br>
      |      &lt; ../libc-abis &gt;
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.hT<br>
      | LC_ALL=C gawk -f ../scripts/abi-versions.awk
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/Versions.all
      &gt;
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/abi-versions.hT<br>
      | gawk -f ../scripts/gen-tunables.awk ../elf/dl-tunables.list &gt;
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/dl-tunable-list.T<br>
      | .././scripts/mkinstalldirs
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu<br>
      | mv -f
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/abi-versions.hT
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/abi-versions.h<br>
      | /bin/bash ../scripts/move-if-change
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.hT
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.h<br>
    </p>
    <p>| ../Makeconfig:1137: recipe for target
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/dl-tunable-list.stmp'
      failed<br>
      | make[2]: ***
[/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/dl-tunable-list.stmp]
      Error 1<br>
      | mkdir -p --
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu<br>
      | make[2]: *** Waiting for unfinished jobs....<br>
      | (files="../crypt/Banner ../libidn/Banner ../nptl/Banner
      ../resolv/Banner";                \<br>
      |  if test -n "$files"; then                \<br>
      |    printf '"Available extensions:\\n"\n';        \<br>
      |    sed -e '/^#/d' -e 's/^[[:space:]]*/    /'        \<br>
      |        -e 's/^\(.*\)$/\"\1\\n\"/' $files;        \<br>
      |  fi) &gt;
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu/version-info.hT<br>
      | mv -f
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu/version-info.hT
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/csu/version-info.h<br>
      | touch
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/build-arm-fsl-linux-gnueabi/libc-abis.stamp<br>
      | make[2]: Leaving directory
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git/csu'<br>
      | Makefile:235: recipe for target 'csu/subdir_lib' failed<br>
      | make[1]: *** [csu/subdir_lib] Error 2<br>
      | make[1]: Leaving directory
'/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/git'<br>
      | Makefile:9: recipe for target 'csu/subdir_lib' failed<br>
      | make: *** [csu/subdir_lib] Error 2<br>
      | ERROR: oe_runmake failed<br>
      | WARNING:
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/temp/run.do_install.30316:1
      exit 1 from 'exit 1'<br>
      | ERROR: Function failed: do_install (log file is located at
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/build/tmp/work/armv5e-fsl-linux-gnueabi/glibc-initial/2.26-r0/temp/log.do_install.30316)<br>
      ERROR: Task
(/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/sources/poky/meta/recipes-core/glibc/glibc-initial_2.26.bb:do_install)
      failed with exit code '1'<br>
      NOTE: Tasks Summary: Attempted 731 tasks of which 699 didn't need
      to be rerun and 1 failed.<br>
      NOTE: Writing buildhistory<br>
      <br>
      Summary: 1 task failed:<br>
       
/media/vpalacio/LINUX_DEV/fsl-community-bsp-mx25pdk/sources/poky/meta/recipes-core/glibc/glibc-initial_2.26.bb:do_install<br>
      <br>
    </p>
    <div class="moz-signature">-- <br>
      <title></title>
      <link rel="important stylesheet"
        href="chrome://messagebody/skin/messageBody.css">
      <br>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Texto de globo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.TextodegloboCar
	{mso-style-name:"Texto de globo Car";
	mso-style-priority:99;
	mso-style-link:"Texto de globo";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="CA"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="CA"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#1F497D;mso-fareast-language:ES"
            lang="FR">Victor M. Palacio Tárrega</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:gray;mso-fareast-language:ES"><a
              href="mailto:icarra@intemotechnologies.com"><span
                style="color:gray" lang="FR">vpalacio@intemotechnologies.com</span></a></span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><b><span
              style="font-size:10.0pt;color:#99CC00;mso-fareast-language:ES"
              lang="EN-US"> </span></b><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><b><span
              style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES"
              lang="EN-US">Intemo Technologies</span></b><b><span
              style="font-size:10.0pt;color:#99CC00;mso-fareast-language:ES"
              lang="EN-US"> </span></b><b><span
              style="font-size:10.0pt;color:#262626;mso-fareast-language:ES"
              lang="EN-US">- Idetech Europe, S.L.</span></b><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES"
            lang="EN-US">Mov.: (+34)  670 03 66 08</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES"
            lang="EN-US">Tel:     (+34) 93 336 16 51</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES"
            lang="EN-US">C/ Montserrat Roig, nº 23, Pol. Ind. </span><span
style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">Pedrosa</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">08908
            Hospitalet de Llobregat </span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">BARCELONA
            (SPAIN)</span><span style="mso-fareast-language:ES"
            lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|
          </span><span
            style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES">SmartCards
          </span><span
            style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|</span><span
style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES"> RFID </span><span
style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|</span><span
style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES"> NFC </span><span
style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|</span><span
style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES">
            Biometría </span><span
            style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|     
          </span><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">    
            <!--<img border=0 width=50 height=37 id="Imagen_x0020_2" src="mailbox-message://nobody@local%20folders/Inbox#62206599?header=saveas&part=1.2&filename=image001.png" alt="cid:image003.png@01CDBD94.9106BDC0">-->
          </span><span style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#595959;mso-fareast-language:ES"> </span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES">Este
            correo electrónico puede contener información reservada
            y/o confidencial, destinada exclusivamente para el uso del
            destinatario. Si Vd no es el destinatario o la persona
            encargada de distribuirlo, no está autorizado a copiar o
            entregar esta comunicación a ninguna otra persona. Si ha
            recibido este correo electrónico por error, le rogamos nos
            lo notifique inmediatamente por  teléfono o por el mismo
            medio. </span><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES"
            lang="EN-US">Gracias.</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES"
            lang="EN-US"> </span><span style="mso-fareast-language:ES"
            lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES"
            lang="EN-US">Privilege/Confidential Information may be
            contained in this e-mail and is intended only for use of the
            addressee. If you are not  the addressee, or the person
            responsible for delivering it to the person addressed, you
            may not copy or deliver this to anyone else. If you receive
            this e-mail by mistake, please notify us immediately by
            telephone or e-mail. </span><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES">Thank
            you.</span><span style="mso-fareast-language:ES"
            lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="CA"><o:p> </o:p></span></p>
      </div>
    </div>
  </body>
</html>

--------------7D3F94E115C4094135499B95--
