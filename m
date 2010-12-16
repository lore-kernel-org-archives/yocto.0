Return-Path: <tim.bird@am.sony.com>
Received: from TX2EHSOBE003.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEDB74C80B71
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 14:37:03 -0600 (CST)
Received: from mail162-tx2-R.bigfish.com (10.9.14.254) by
	TX2EHSOBE003.bigfish.com (10.9.40.23) with Microsoft SMTP Server id
	14.1.225.8; Thu, 16 Dec 2010 20:37:03 +0000
Received: from mail162-tx2 (localhost.localdomain [127.0.0.1])	by
	mail162-tx2-R.bigfish.com (Postfix) with ESMTP id 85325D60708	for
	<yocto@yoctoproject.org>; Thu, 16 Dec 2010 20:37:03 +0000 (UTC)
X-SpamScore: 0
X-BigFish: VPS0(z5b2kzbb2cKzz1202hzzz2fh2a8h637h668h64h)
X-Spam-TCS-SCL: 3:0
X-Forefront-Antispam-Report: KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received: from mail162-tx2 (localhost.localdomain [127.0.0.1]) by mail162-tx2
	(MessageSwitch) id 1292531823280054_14679;
	Thu, 16 Dec 2010 20:37:03 +0000 (UTC)
Received: from TX2EHSMHS007.bigfish.com (unknown [10.9.14.253])	by
	mail162-tx2.bigfish.com (Postfix) with ESMTP id 41BAA7C8051	for
	<yocto@yoctoproject.org>; Thu, 16 Dec 2010 20:37:03 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by TX2EHSMHS007.bigfish.com
	(10.9.99.107) with Microsoft SMTP Server (TLS) id 14.1.225.8;
	Thu, 16 Dec 2010 20:36:57 +0000
Received: from mail1x.sjc.in.sel.sony.com ([43.134.1.112])	by
	mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp) with ESMTP id
	oBGKas0j028414	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 20:36:55 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	oBGKahnW026716	for <yocto@yoctoproject.org>;
	Thu, 16 Dec 2010 20:36:44 GMT
Message-ID: <4D0A7856.6010508@am.sony.com>
Date: Thu, 16 Dec 2010 12:36:38 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: Build success (mostly), disk space a little huge
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 16 Dec 2010 20:37:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

For those interested in my build saga,
I performed a mostly successful build of poky-minimal-image
on my old Fedora 8 distro (oustide my Sony firewall).

This was after I installed an poky 586 sdk, and set
path to include /opt/poky/.../usr/bin (to pick up python 2.6.5)

and after adding a fedora package to add chrpath to my
system (not listed on the yocto distro help page).

The build took 6 hours, and the emulator didn't quite finish.
Here was the error:
ERROR: Logfile of failure stored in:
/a/home/tbird/work/yocto/poky-4.0-build/tmp/work/i686-linux/qemu-native-0.12.4-r22/temp/log.do_configure.12332
Log data follows:
| You need libGL.so and libGLU.so to exist in your library path and the
development headers for SDL installed to build qemu-native.
|        Ubuntu package names are: libgl1-mesa-dev, libglu1-mesa-dev and
libsdl1.2-dev
| ERROR: Task failed: ('function do_configure failed',
'/a/home/tbird/work/yocto/poky-4.0-build/tmp/work/i686-linux/qemu-native-0.12.4-r22/temp/log.do_configure.12332')
NOTE: package qemu-native-0.12.4-r22: task do_configure: Failed

I checked, and indeed my system is missing SDL-devel.  Due to
some broken dependencies in my yum database, it turned out to be
difficult to install this package, and I'm going to give up
(again) on this machine.

I noticed after the build that my yocto directory was consuming
30G of disk space.  The big parts were in
yocto/poky-4.0-build/tmp/work
$ du -sh *
2.2M	all-poky-linux
18G	i586-poky-linux
3.5G	i686-linux
4.6G	qemux86-poky-linux

This seems a bit high?  Is this normal?
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Linux Forum
Senior Staff Engineer, Sony Network Entertainment
=============================


