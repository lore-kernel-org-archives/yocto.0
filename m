Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 012E9E00D4F; Fri, 24 Jun 2016 21:44:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D2FE00A75
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 21:44:47 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Fri, 24 Jun 2016 22:44:45 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Fri, 24 Jun 2016 22:44:44 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1210.000; Fri, 24 Jun 2016 22:44:44
	-0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] Disable kernel option via fragment Rpi3
Thread-Index: AQHRzpxL5yjQ/F8QbEK+CaJ0MMnfAQ==
Date: Sat, 25 Jun 2016 04:44:44 +0000
Message-ID: <87dfc212084f42678b1ba6d86becb6bf@Ek.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.40.190]
MIME-Version: 1.0
Subject: [meta-raspberrypi] Disable kernel option via fragment Rpi3
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
X-List-Received-Date: Sat, 25 Jun 2016 04:44:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to build an image for an Rpi3 and am having some difficulty.=0A=
=0A=
I've created and posted a meta-batman layer to bring the latest BATMAN =0A=
Advanced module and userspace tools to Yocto.  I haven't had any =0A=
troubles getting this layer to work with other architectures, but am =0A=
having troubles with the Raspberry Pi.=0A=
=0A=
The error I am getting is at the end of this email.  I believe it has to =
=0A=
do with the fact that the kernel configuration has the BATMAN module =0A=
enabled, but I am trying to build it externally.  I've tried adding =0A=
kernel configuration fragments to disable this option, but with no luck.=0A=
=0A=
I found that if I add "kernel_configure_variable CONFIG_BATMAN_ADV n" to =
=0A=
linux-rpi.inc the command kernel_configme will show that the option is =0A=
disabled in the generated .config, but when I try to build an image I =0A=
get the same error and the configuration has the module enabled again.=0A=
=0A=
What is the best way to use fragments with Raspberry Pi images?  Am I =0A=
missing something?=0A=
=0A=
Thanks!=0A=
Jon=0A=
=0A=
=0A=
=0A=
ERROR: The recipe linux-raspberrypi is trying to install files into a =0A=
shared area when those files already exist. Those files and their =0A=
manifest location are:=0A=
 =0A=
/opt/yocto/poky/build-pi/tmp/sysroots/raspberrypi3/pkgdata/runtime/kernel-m=
odule-batman-adv=0A=
  Matched in manifest-raspberrypi3-batman-adv.packagedata=0A=
 =0A=
/opt/yocto/poky/build-pi/tmp/sysroots/raspberrypi3/pkgdata/runtime/kernel-m=
odule-batman-adv.packaged=0A=
  Matched in manifest-raspberrypi3-batman-adv.packagedata=0A=
 =0A=
/opt/yocto/poky/build-pi/tmp/sysroots/raspberrypi3/pkgdata/runtime-reverse/=
kernel-module-batman-adv=0A=
  Matched in manifest-raspberrypi3-batman-adv.packagedata=0A=
Please verify which recipe should provide the above files.=0A=
The build has stopped as continuing in this scenario WILL break things, =0A=
if not now, possibly in the future (we've seen builds fail several =0A=
months later). If the system knew how to recover from this automatically =
=0A=
it would however there are several different scenarios which can result =0A=
in this and we don't know which one this is. It may be you have switched =
=0A=
providers of something like virtual/kernel (e.g. from linux-yocto to =0A=
linux-yocto-dev), in that case you need to execute the clean task for =0A=
both recipes and it will resolve this error. It may be you changed =0A=
DISTRO_FEATURES from systemd to udev or vice versa. Cleaning those =0A=
recipes should again resolve this error however switching =0A=
DISTRO_FEATURES on an existing build directory is not supported, you =0A=
should really clean out tmp and rebuild (reusing sstate should be safe). =
=0A=
It could be the overlapping files detected are harmless in which case =0A=
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
=0A=
also be your build is including two different conflicting versions of =0A=
things (e.g. bluez 4 and bluez 5 and the correct solution for that would =
=0A=
be to resolve the conflict. If in doubt, please ask on the mailing list, =
=0A=
sharing the error and filelist above.=0A=
ERROR: If the above message is too much, the simpler version is you're =0A=
advised to wipe out tmp and rebuild (reusing sstate is fine). That will =0A=
likely fix things in most (but not all) cases.=0A=
ERROR: Function failed: sstate_task_postfunc=0A=
ERROR: Logfile of failure stored in: =0A=
/opt/yocto/poky/build-pi/tmp/work/raspberrypi3-sigma-linux-gnueabi/linux-ra=
spberrypi/1_4.1.21+gitAUTOINC+ff45bc0e89-r0/temp/log.do_packagedata.123616=
=0A=
ERROR: Task 57 =0A=
(/opt/yocto/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.=
1.bb, =0A=
do_packagedata) failed with exit code '1'=0A=
=0A=
=0A=
=0A=
-- =0A=
Jonathan R. Haws=0A=
Embedded Engineer=0A=
Space Dynamics Laboratory=0A=
jhaws@sdl.usu.edu=0A=

