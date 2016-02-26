Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0C8BE00D58; Fri, 26 Feb 2016 04:33:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B75BE00D40
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 04:33:11 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id c200so70404381wme.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 04:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=AjCIV75B1ONLvEcZ1n3n+gOFINq74QzYTxCNlEFqPqI=;
	b=Rq2aURNipn5GYf2S49F3CdJ2txMkRwKku1avr7C86a6o2ZhlY2EtzzvXlpR2xeC/Mk
	8/KKPR22WggVCMELAE2I8AFkEi4O1mJvsHDJ91ZVbYFw957LjaszsDE1+Hbsmm31m4Fu
	BL44eFaml0EjI2Ob+AsGDWBmBKtewlA2L7B5r70g7xiKk6qCyGwSyPIMlrbTHj8r1pCN
	AeNECr8fOEK1wJDIGr074XDVDjT6XFGtgXfRlvvQu45fNQQ+RysrISWz86dif9EzhWXf
	Ri5z4dGfRXiBkYEzU5yJSA9iuE3z/tggMdYV5yXIpLX7sXNOhBv5jFQYjIMK7vunMsFi
	MhSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=AjCIV75B1ONLvEcZ1n3n+gOFINq74QzYTxCNlEFqPqI=;
	b=U0GAQrmsbxU0OKmeGsTwtAguGkqhjOB2N4f0gIMxMYQrMp5EshOjAGQXHcG9oya2pS
	/RsGhZuOAmiFNSSucJ5wd8veAABfxXT1586s/vJDZa8AI8914oIsax0u9uua+NCR7/cI
	MKGUDcECho038UToBTwrbCOQ6oKoxjJnpV2n38zoRyFN7DT5VhBd1hxxIZ89yup8UvEQ
	UmuEihV9osDb/y6RiFD/9xjybkiMTaSbaR3+oDKgOUaXa+hLlhTU0InLOSfW1TVR/7uW
	qczcCFSIWS13UiKgkk0DdkKwcc9lP/K83JdMUytFWPn8i+QrH90lFEQmuTaKXrMW5raw
	qjlg==
X-Gm-Message-State: AD7BkJLgYwRlmjoZmts8FpmHmob6z0PWWcyDIWmWdcN/uUapxA8N13GK8cFwdMAjpuJH0jp+ILrsI1aYGVVkdQ==
MIME-Version: 1.0
X-Received: by 10.28.12.80 with SMTP id 77mr2902571wmm.19.1456489990727; Fri,
	26 Feb 2016 04:33:10 -0800 (PST)
Received: by 10.28.182.66 with HTTP; Fri, 26 Feb 2016 04:33:10 -0800 (PST)
Date: Fri, 26 Feb 2016 13:33:10 +0100
Message-ID: <CA+-BmJa1kU1-+vAyzXRzqs9PmUJqW87hYcPmVWQ71YqR8xBZqQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: Build External Kernel Modules error
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
X-List-Received-Date: Fri, 26 Feb 2016 12:33:14 -0000
Content-Type: multipart/alternative; boundary=001a11443e4a842ffd052cab806d

--001a11443e4a842ffd052cab806d
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to build external kernel module for example : bitbake
cryptodev-module with yocto jethro based branch, but I get the follwoing
error :

NOTE: Preparing RunQueue
WARNING:
/home/inst/Projects/poky/build/../meta/recipes-kernel/cryptodev/cryptodev-module_1.7.bb.do_rm_work_all
is tainted from a forced run
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_make_scripts (log file is located at
/home/inst/Projects/poky/build/tmp/work/shc-poky-linux-gnueabi/cryptodev-module/1.7-r0/temp/log.do_make_scripts.21222)
ERROR: Logfile of failure stored in:
/home/inst/Projects/poky/build/tmp/work/shc-poky-linux-gnueabi/cryptodev-module/1.7-r0/temp/log.do_make_scripts.21222
Log data follows:
| DEBUG: Executing shell function do_make_scripts
| make: Entering directory
`/home/inst/Projects/poky/build/tmp/work-shared/shc/kernel-source'
| make[1]: Entering directory
`/home/inst/Projects/poky/build/tmp/work-shared/shc/kernel-build-artifacts'
|   HOSTCC  scripts/basic/fixdep
|   GEN     ./Makefile
|   HOSTCC  scripts/kconfig/conf.o
|   SHIPPED scripts/kconfig/zconf.tab.c
|   SHIPPED scripts/kconfig/zconf.lex.c
|   SHIPPED scripts/kconfig/zconf.hash.c
|   HOSTCC  scripts/kconfig/zconf.tab.o
|   HOSTLD  scripts/kconfig/conf
| scripts/kconfig/conf  --silentoldconfig Kconfig
| ***
| *** Configuration file ".config" not found!
| ***
| *** Please run some configurator (e.g. "make oldconfig" or
| *** "make menuconfig" or "make xconfig").
| ***
| make[3]: *** [silentoldconfig] Error 1
| make[2]: *** [silentoldconfig] Error 2
| make[1]: *** No rule to make target `include/config/auto.conf', needed by
`scripts'.  Stop.
| make[1]: Leaving directory
`/home/inst/Projects/poky/build/tmp/work-shared/shc/kernel-build-artifacts'
| make: *** [sub-make] Error 2

I'm using a linux 4.1 mainline based kernel and I set the Kernel defconfig
in my machine.conf as follow :

KBUILD_DEFCONFIG = "shc_defconfig"

The kernel and internal modules are built correctly.

Anyone facing the same issue ? how to fix that ?

Cheers,

Ayoub Zaki

--001a11443e4a842ffd052cab806d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hello all,<br><br>I&#39;m trying to build external ker=
nel module for example : bitbake cryptodev-module with yocto jethro based b=
ranch, but I get the follwoing error :<br><br>NOTE: Preparing RunQueue<br>W=
ARNING: /home/inst/Projects/poky/build/../meta/recipes-kernel/cryptodev/cry=
ptodev-module_1.7.bb.do_rm_work_all is tainted from a forced run<br>NOTE: E=
xecuting SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>ERROR: Functio=
n failed: do_make_scripts (log file is located at /home/inst/Projects/poky/=
build/tmp/work/shc-poky-linux-gnueabi/cryptodev-module/1.7-r0/temp/log.do_m=
ake_scripts.21222)<br>ERROR: Logfile of failure stored in: /home/inst/Proje=
cts/poky/build/tmp/work/shc-poky-linux-gnueabi/cryptodev-module/1.7-r0/temp=
/log.do_make_scripts.21222<br>Log data follows:<br>| DEBUG: Executing shell=
 function do_make_scripts<br>| make: Entering directory `/home/inst/Project=
s/poky/build/tmp/work-shared/shc/kernel-source&#39;<br>| make[1]: Entering =
directory `/home/inst/Projects/poky/build/tmp/work-shared/shc/kernel-build-=
artifacts&#39;<br>|=C2=A0=C2=A0 HOSTCC=C2=A0 scripts/basic/fixdep<br>|=C2=
=A0=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 ./Makefile<br>|=C2=A0=C2=A0 HOSTCC=C2=
=A0 scripts/kconfig/conf.o<br>|=C2=A0=C2=A0 SHIPPED scripts/kconfig/zconf.t=
ab.c<br>|=C2=A0=C2=A0 SHIPPED scripts/kconfig/zconf.lex.c<br>|=C2=A0=C2=A0 =
SHIPPED scripts/kconfig/zconf.hash.c<br>|=C2=A0=C2=A0 HOSTCC=C2=A0 scripts/=
kconfig/zconf.tab.o<br>|=C2=A0=C2=A0 HOSTLD=C2=A0 scripts/kconfig/conf<br>|=
 scripts/kconfig/conf=C2=A0 --silentoldconfig Kconfig<br>| ***<br>| *** Con=
figuration file &quot;.config&quot; not found!<br>| ***<br>| *** Please run=
 some configurator (e.g. &quot;make oldconfig&quot; or<br>| *** &quot;make =
menuconfig&quot; or &quot;make xconfig&quot;).<br>| ***<br>| make[3]: *** [=
silentoldconfig] Error 1<br>| make[2]: *** [silentoldconfig] Error 2<br>| m=
ake[1]: *** No rule to make target `include/config/auto.conf&#39;, needed b=
y `scripts&#39;.=C2=A0 Stop.<br>| make[1]: Leaving directory `/home/inst/Pr=
ojects/poky/build/tmp/work-shared/shc/kernel-build-artifacts&#39;<br>| make=
: *** [sub-make] Error 2<br><br>I&#39;m using a linux 4.1 mainline based ke=
rnel and I set the Kernel defconfig in my machine.conf as follow :<br><br>K=
BUILD_DEFCONFIG =3D &quot;shc_defconfig&quot;<br><br>The kernel and interna=
l modules are built correctly.<br><br>Anyone facing the same issue ? how to=
 fix that ?<br><br>Cheers,<br><br>Ayoub Zaki<br></div>

--001a11443e4a842ffd052cab806d--
