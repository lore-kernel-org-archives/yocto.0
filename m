Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7714BE00AF2; Tue, 22 Dec 2015 05:02:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74018E00457
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 05:02:42 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id l126so110690352wml.1
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 05:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=H1sz4rJYZ/C0pOmVgp/kLPW7NcTHxxncwby+4HFowCk=;
	b=TAg1RfA9lgRX284485HDaBqZBmKOMmAklL5gHeXJ11wbPeTAfoA2ZgHX/YsmjBv1C7
	WRYuvZbKCayVYcX9S/dlbrSEzJJS5XD/99w8KPqO84KVHg6HlwFBRePHcWNYSO3lISgv
	YFliE8S6fUWUlW3kLC4JC2JOsac1eBz43+9x60s/N1PVc1utPVUlLMiGqEHJhCkW+kt7
	VQggpQUQ6cDwv7uK8eiKjMOkL8UyA1HvfQJAHoogKs9Vs//zwbxGS1RT3m0nQLsiDI2t
	aGcybOF/h/Cs8aZQYSrs0AkmoJfGegpQs6pDAIXuEK5qJezD9KnXBIRv9iS06XLBwgq1
	y9TA==
MIME-Version: 1.0
X-Received: by 10.28.131.141 with SMTP id f135mr29449021wmd.1.1450789362107;
	Tue, 22 Dec 2015 05:02:42 -0800 (PST)
Received: by 10.28.142.20 with HTTP; Tue, 22 Dec 2015 05:02:42 -0800 (PST)
Date: Tue, 22 Dec 2015 14:02:42 +0100
Message-ID: <CA+-BmJZjnzR9agNAOBe2duRJDo6L7FX7NjdiLPMmu=D0iPQM9w@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: Build External Kernel Modules fails
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
X-List-Received-Date: Tue, 22 Dec 2015 13:02:44 -0000
Content-Type: multipart/alternative; boundary=001a11444d64928a0505277c38bd

--001a11444d64928a0505277c38bd
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to build external kernel module for example : cryptodev-module
with yocto jethro based branch, but I get the follwoing error :

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
| **** Configuration file ".config" not found!*
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

--001a11444d64928a0505277c38bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hello all,<br><br></div=
>I&#39;m trying to build external kernel module for example : cryptodev-mod=
ule with yocto jethro based branch, but I get the follwoing error :<br><br>=
NOTE: Preparing RunQueue<br>WARNING: /home/inst/Projects/poky/build/../meta=
/recipes-kernel/cryptodev/cryptodev-module_1.7.bb.do_rm_work_all is tainted=
 from a forced run<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing Run=
Queue Tasks<br>ERROR: Function failed: do_make_scripts (log file is located=
 at /home/inst/Projects/poky/build/tmp/work/shc-poky-linux-gnueabi/cryptode=
v-module/1.7-r0/temp/log.do_make_scripts.21222)<br>ERROR: Logfile of failur=
e stored in: /home/inst/Projects/poky/build/tmp/work/shc-poky-linux-gnueabi=
/cryptodev-module/1.7-r0/temp/log.do_make_scripts.21222<br>Log data follows=
:<br>| DEBUG: Executing shell function do_make_scripts<br>| make: Entering =
directory `/home/inst/Projects/poky/build/tmp/work-shared/shc/kernel-source=
&#39;<br>| make[1]: Entering directory `/home/inst/Projects/poky/build/tmp/=
work-shared/shc/kernel-build-artifacts&#39;<br>|=C2=A0=C2=A0 HOSTCC=C2=A0 s=
cripts/basic/fixdep<br>|=C2=A0=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 ./Makefile=
<br>|=C2=A0=C2=A0 HOSTCC=C2=A0 scripts/kconfig/conf.o<br>|=C2=A0=C2=A0 SHIP=
PED scripts/kconfig/zconf.tab.c<br>|=C2=A0=C2=A0 SHIPPED scripts/kconfig/zc=
onf.lex.c<br>|=C2=A0=C2=A0 SHIPPED scripts/kconfig/zconf.hash.c<br>|=C2=A0=
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o<br>|=C2=A0=C2=A0 HOSTLD=C2=
=A0 scripts/kconfig/conf<br>| scripts/kconfig/conf=C2=A0 --silentoldconfig =
Kconfig<br>| ***<br>| ***<b> Configuration file &quot;.config&quot; not fou=
nd!</b><br>| ***<br>| *** Please run some configurator (e.g. &quot;make old=
config&quot; or<br>| *** &quot;make menuconfig&quot; or &quot;make xconfig&=
quot;).<br>| ***<br>| make[3]: *** [silentoldconfig] Error 1<br>| make[2]: =
*** [silentoldconfig] Error 2<br>| make[1]: *** No rule to make target `inc=
lude/config/auto.conf&#39;, needed by `scripts&#39;.=C2=A0 Stop.<br>| make[=
1]: Leaving directory `/home/inst/Projects/poky/build/tmp/work-shared/shc/k=
ernel-build-artifacts&#39;<br>| make: *** [sub-make] Error 2<br><br></div>I=
&#39;m using a linux 4.1 mainline based kernel and I set the Kernel defconf=
ig in my machine.conf as follow :<br><br>KBUILD_DEFCONFIG =3D &quot;shc_def=
config&quot;<br><br></div>The kernel and internal modules are built correct=
ly.<br></div><br></div>Anyone facing the same issue ? how to fix that ?<br>=
<br></div>Cheers,<br><br></div>Ayoub Zaki<br><div><div><div><div><div><div>=
<div><br><br></div></div></div></div></div></div></div></div>

--001a11444d64928a0505277c38bd--
