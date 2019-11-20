Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A072CE00E36; Wed, 20 Nov 2019 13:32:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.55 listed in list.dnswl.org]
Received: from 22pmail.ess.barracuda.com (22pmail.ess.barracuda.com
	[209.222.82.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B99E007E1
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 13:32:54 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx10.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 20 Nov 2019 21:32:53 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 20 Nov 2019 13:32:51 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 20 Nov 2019 13:32:51 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: [mariadb] I'm getting an error when I include mariadb in sdk
	build
Thread-Index: AdWf6NXcjiMro3C9RHCrHif/xgDwiQ==
Date: Wed, 20 Nov 2019 21:32:50 +0000
Message-ID: <802b06f6b4b54abbac17be18087d1bca@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1574285573-893018-31637-529-1
X-BESS-VER: 2019.1_20191120.2100
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.220490 [from 
	cloudscan11-175.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: [mariadb] I'm getting an error when I include mariadb in sdk build
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
X-List-Received-Date: Wed, 20 Nov 2019 21:32:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building thud for raspberrypi3 with boot2qt.

I've got mariadb included in my rpi image and it is working fine, I've got =
a problem with Qt's latest release that when I include mariadb in the sdk b=
uild I get the following error:

ERROR: meta-toolchain-b2qt-embedded-qt5-sdk-1.0-r0 do_populate_sdk: Unable =
to install packages. Command '/home/gwilson/Qt/Qt-5.13.2/Yocto-build-RPi3/b=
uild-raspberrypi3/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/meta-=
toolchain-b2qt-embedded-qt5-sdk/1.0-r0/recipe-sysroot-native/usr/bin/opkg -=
-volatile-cache -f /home/gwilson/Qt/Qt-5.13.2/Yocto-build-RPi3/build-raspbe=
rrypi3/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/meta-toolchain-b=
2qt-embedded-qt5-sdk/1.0-r0/opkg.conf -t /home/gwilson/Qt/Qt-5.13.2/Yocto-b=
uild-RPi3/build-raspberrypi3/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gn=
ueabi/meta-toolchain-b2qt-embedded-qt5-sdk/1.0-r0/temp/ipktemp/ -o /home/gw=
ilson/Qt/Qt-5.13.2/Yocto-build-RPi3/build-raspberrypi3/tmp/work/cortexa7t2h=
f-neon-vfpv4-poky-linux-gnueabi/meta-toolchain-b2qt-embedded-qt5-sdk/1.0-r0=
/sdk/image/opt/b2qt/2.6.2/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnuea=
bi  --force_postinstall --prefer-arch-to-version   install packagegroup-b2q=
t-embedded-qt5-toolchain-target packagegroup-core-standalone-sdk-target tar=
get-sdk-provides-dummy' returned 1:
Collected errors:
 * Solver encountered 1 problem(s):
 * Problem 1/1:
 *   - package libdbi-perl-1.641-r0.cortexa7t2hf-neon-vfpv4 requires perl-m=
odule-dynaloader, but none of the providers can be installed
 *=20
 * Solution 1:
 *   - do not ask to install a package providing target-sdk-provides-dummy

 * Solution 2:
 *   - do not ask to install a package providing packagegroup-b2qt-embedded=
-qt5-toolchain-target

ERROR: meta-toolchain-b2qt-embedded-qt5-sdk-1.0-r0 do_populate_sdk: Functio=
n failed: do_populate_sdk
ERROR: Logfile of failure stored in: /home/gwilson/Qt/Qt-5.13.2/Yocto-build=
-RPi3/build-raspberrypi3/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/meta-toolchain-b2qt-embedded-qt5-sdk/1.0-r0/temp/log.do_populate_sdk.2984=
6
ERROR: Task (/home/gwilson/Qt/Qt-5.13.2/Yocto-build-RPi3/sources/meta-boot2=
qt/meta-boot2qt-distro/recipes-qt/meta/meta-toolchain-b2qt-embedded-qt5-sdk=
.bb:do_populate_sdk) failed with exit code '1'

I've searched for answers and haven't been able to find any.
If anyone has any insight I would appreciate the help.
Regards,

Greg Wilson-Lindberg=A0=20
=20

