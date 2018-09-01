Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E73CCE008FB; Sat,  1 Sep 2018 04:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF3CE00655
	for <yocto@yoctoproject.org>; Sat,  1 Sep 2018 04:35:01 -0700 (PDT)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w81BVYSr017265
	for <yocto@yoctoproject.org>; Sat, 1 Sep 2018 13:35:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type :
	content-transfer-encoding; s=pps;
	bh=LY1Sq6MqmDe8EtgKcYht8SpWvj+9Qh7JZMDll1vwuOI=;
	b=tdHJYPIDaS7D5N7OeYjbvc20F0YLqHZF1xtr3k+Dzj2DDhuv7GoktIfQJAvI3J/wNz/2
	rBY1riyIxDXhkeFbJrNDMGXZ67uGh0RUEAKHekyYmq/boSaLNz9Valf164Hm0FLxHBdt
	5NhwUdvV/gJJkSjQyv0jW1LsQVtCNE0tMlm+baPIZ1F9xmjuHZ7O52mW+Dmtuxyg/YQQ
	611yN2jD16wleCCd5U9lF0N6kgZGmRy7aIHSGC/8fh6iajkDvN0MwE+5DBWDbuiU1MkK
	QDitrF6TxdTm/H2iCanCm8+a77/LhY2Sfkk1/0iNmKvFsJnFuAa0AmH4Nj/m6PW9plEs
	sA== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2023.ppsmtp.net with ESMTP id 2m7guc083m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sat, 01 Sep 2018 13:35:00 +0200
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id 95F8E884444
	for <yocto@yoctoproject.org>; Sat,  1 Sep 2018 13:34:59 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while sdk creation of custom weston-wayland image
Thread-Index: AdRB5lBTExr+lFULSQmIUL2fpGoRgA==
Date: Sat, 1 Sep 2018 11:34:48 +0000
Message-ID: <54ddea5dbd2f4f8eb75418e99a400897@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24066.006
X-TM-AS-Result: No-13.670800-5.000000-10
X-TMASE-MatchedRID: K6mKsz1w/0mZzu44Q479LdUFhgTP7/bW1KoSW5Ji1XtGL0g1nVmkYZrt
	Z0xcpvcShmAR3PYrHPwjwRNtH9TYF4WSyXAlCBHM8jbzfqNu/QTg+OPniQhb8SbwdVv+9qho8FS
	rkmy6/FJdPYlJuLRuvIHXVE5LrmKQCSUAj3PesF6EwZM25BMds43g38ozeJoHRaXolgMyx3GHNU
	nmN6naGsiYlWgowhdTMRr9QuGjaWWjI+QEKOA9IOG5dRZCgxC3NgIOp23bTVkKA2OoGAlTk4O3H
	yUMPRbHWkVt3XRB6eGyLpBXiZ//QDdU4n9N9PJiVU3yVpaj3Qw6VbUEB5u/MIk+DMmfv+EAZvo+
	mFW19mDb+WQKeImjse3eO6J6FyQ4r4Tjl93LJlcwmhCbeOj6adMNeBxSUI2jdbwUDtKd2W7hB2A
	cYBE/ZOLzNWBegCW2OubYLCVnBVEgBwKKRHe+ry2/jB2kjDQirDSWLMLFPj46xWSSjbSO40TLpu
	qIaa81Qzezb9XObm8=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--13.670800-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24066.006
x-tm-snts-smtp: 7E66BBDE5C62BE44D5CFBE773379AE94A4F35F2D4A017E340819A4F7C406922E2
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.18486.x86_64 COMPUMAIL Date:
	20180901113459Z
X-Proofpoint-ID: SID=2m7guc083m QID=2m7guc083m-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-09-01_05:, , signatures=0
Subject: Error while sdk creation of custom weston-wayland image
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
X-List-Received-Date: Sat, 01 Sep 2018 11:35:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to create sdk for core-image-weston image. Although my image is=
 compiled and $bitbake core-image-weston -c populate_sdk  executed till 99%=
. But throwing error almost in the end as follows:

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "aarch64-pdm3-linux"
MACHINE              =3D "pdm3-rev-b-zynqmp"
DISTRO               =3D "pdm3-linux"
DISTRO_VERSION       =3D "0.2.0.0"
TUNE_FEATURES        =3D "aarch64"
TARGET_FPU           =3D ""
meta                 =3D "rocko:f7a8c088ae1db6c2ebaa5e0aa4c7c8ed352bb045"
meta-xilinx-bsp     =20
meta-xilinx-contrib  =3D "rel-v2018.1:8710079c0720086c081f3340c2c233ab0e874=
cfe"
meta-xilinx-tools    =3D "rel-v2018.1:93d6b87bdc451ee81d6d716809e0d7e9bc3b7=
021"
meta-oe             =20
meta-perl           =20
meta-python         =20
meta-multimedia     =20
meta-networking     =20
meta-filesystems    =20
meta-webserver       =3D "rocko:352531015014d1957d6444d114f4451e241c4d23"
meta-ifm-pdm3-bsp   =20
meta-ifm-pdm3        =3D "rocko-2.4-xlnx2018.1+wayland:959d08d1b1ad575803c6=
2b0029779798ad6bf8b0"
meta-qt5             =3D "rocko:682ad61c071a9710e9f9d8a32ab1b5f3c14953d1"

Initialising tasks: 100% |#################################################=
###########################################################################=
###################################################################| Time: =
0:00:10
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-weston-pdm3-1.0-r0 do_populate_sdk: Could not invoke dnf.=
 Command '/home/kamal/work/yocto_build/poky/build_weston/tmp/work/pdm3_rev_=
b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-r0/recipe-sysroot-native/usr=
/bin/dnf -y -c /home/kamal/work/yocto_build/poky/build_weston/tmp/work/pdm3=
_rev_b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-r0/sdk/image/etc/dnf/dn=
f.conf --setopt=3Dreposdir=3D/home/kamal/work/yocto_build/poky/build_weston=
/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-r0/sdk/im=
age/etc/yum.repos.d --repofrompath=3Doe-repo,/home/kamal/work/yocto_build/p=
oky/build_weston/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/core-image-weston-pd=
m3/1.0-r0/oe-sdk-repo --installroot=3D/home/kamal/work/yocto_build/poky/bui=
ld_weston/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-=
r0/sdk/image --setopt=3Dlogdir=3D/home/kamal/work/yocto_build/poky/build_we=
ston/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-r0/te=
mp --nogpgcheck install nativesdk-dbus nativesdk-dbus-glib nativesdk-libpam=
 nativesdk-packagegroup-qt5-toolchain-host nativesdk-packagegroup-sdk-host =
nativesdk-qtbase-tools packagegroup-cross-canadian-pdm3-rev-b-zynqmp' retur=
ned 1:
Added oe-repo repo from /home/kamal/work/yocto_build/poky/build_weston/tmp/=
work/pdm3_rev_b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-r0/oe-sdk-repo
Last metadata expiration check: 0:00:01 ago on Sat 01 Sep 2018 11:08:11 AM =
UTC.
Dependencies resolved.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
 Package                         Arch             Version         Repositor=
y
                                                                           =
Size
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Installing:
 nativesdk-dbus-1                x86_64_nativesdk 1.10.20-r0      oe-repo 1=
11 k
 nativesdk-libdbus-glib-1-2      x86_64_nativesdk 0.108-r0        oe-repo  =
56 k
 nativesdk-libpam                x86_64_nativesdk 1.3.0-r5        oe-repo  =
34 k
 nativesdk-packagegroup-qt5-toolchain-host
                                 x86_64_nativesdk 1.0-r0          oe-repo 5=
.6 k
 nativesdk-packagegroup-sdk-host x86_64_nativesdk 1.0-r12         oe-repo 5=
.7 k
 nativesdk-qtbase-tools          x86_64_nativesdk 5.9.6+git0+9c50112304-r0
                                                                  oe-repo 4=
.2 M
 packagegroup-cross-canadian-pdm3-rev-b-zynqmp
                                 x86_64_nativesdk 1.0-r0          oe-repo 5=
.6 k
Installing dependencies:
 binutils-cross-canadian-aarch64 x86_64_nativesdk 2.29.1-r0       oe-repo 4=
.8 M
 gcc-cross-canadian-aarch64      x86_64_nativesdk 7.3.0-r0        oe-repo  =
16 M
 gdb-cross-canadian-aarch64      x86_64_nativesdk 8.0-r0          oe-repo 1=
.9 M
 meta-environment-pdm3-rev-b-zynqmp
                                 x86_64_nativesdk 1.0-r8          oe-repo  =
11 k
 nativesdk-autoconf              x86_64_nativesdk 2.69-r11        oe-repo 2=
76 k
 nativesdk-automake              x86_64_nativesdk 1.15.1-r0       oe-repo 3=
24 k
 nativesdk-cmake                 x86_64_nativesdk 3.8.2-r0        oe-repo 3=
.8 M
 nativesdk-db                    x86_64_nativesdk 1:5.3.28-r1     oe-repo 4=
54 k
 nativesdk-dnf                   x86_64_nativesdk 2.6.3-r0        oe-repo 1=
65 k
 nativesdk-dtc                   x86_64_nativesdk 1.4.4-r0        oe-repo  =
58 k
 nativesdk-elfutils              x86_64_nativesdk 0.170-r0        oe-repo 1=
12 k
 nativesdk-flex                  x86_64_nativesdk 2.6.0-r0        oe-repo 1=
10 k
 nativesdk-glib-2.0              x86_64_nativesdk 1:2.52.3-r0     oe-repo 9=
51 k
 nativesdk-gnu-config            x86_64_nativesdk 20150728+git0+b576fa87c1-=
r0
                                                                  oe-repo  =
29 k
 nativesdk-libarchive            x86_64_nativesdk 3.3.2-r0        oe-repo 2=
84 k
 nativesdk-libasm1               x86_64_nativesdk 0.170-r0        oe-repo  =
18 k
 nativesdk-libbz2-1              x86_64_nativesdk 1.0.6-r5        oe-repo  =
33 k
 nativesdk-libc6                 x86_64_nativesdk 2.26-r0         oe-repo 1=
.3 M
 nativesdk-libcrypto1.0.2        x86_64_nativesdk 1.0.2o-r0       oe-repo 8=
11 k
 nativesdk-libcurl4              x86_64_nativesdk 7.58.0-r0       oe-repo 1=
63 k
 nativesdk-libdbus-1-3           x86_64_nativesdk 1.10.20-r0      oe-repo 1=
15 k
 nativesdk-libdw1                x86_64_nativesdk 0.170-r0        oe-repo 1=
95 k
 nativesdk-libelf1               x86_64_nativesdk 0.170-r0        oe-repo  =
43 k
 nativesdk-libexpat1             x86_64_nativesdk 2.2.3-r0        oe-repo  =
64 k
 nativesdk-libffi6               x86_64_nativesdk 3.2.1-r0        oe-repo  =
21 k
 nativesdk-libgcc1               x86_64_nativesdk 7.3.0-r0        oe-repo  =
43 k
 nativesdk-libgmp10              x86_64_nativesdk 6.1.2-r0        oe-repo 2=
13 k
 nativesdk-liblzma5              x86_64_nativesdk 5.2.3-r0        oe-repo  =
76 k
 nativesdk-liblzo2-2             x86_64_nativesdk 2.10-r0         oe-repo  =
47 k
 nativesdk-libmpc3               x86_64_nativesdk 1.0.3-r0        oe-repo  =
42 k
 nativesdk-libmpfr4              x86_64_nativesdk 3.1.5-r0        oe-repo 1=
56 k
 nativesdk-libncurses5           x86_64_nativesdk 6.0+20171125-r0 oe-repo  =
64 k
 nativesdk-libopkg1              x86_64_nativesdk 1:0.3.5-r0      oe-repo  =
68 k
 nativesdk-libpcre1              x86_64_nativesdk 8.41-r0         oe-repo  =
90 k
 nativesdk-libpixman-1-0         x86_64_nativesdk 1:0.34.0-r0     oe-repo 2=
24 k
 nativesdk-libpython3.5m1.0      x86_64_nativesdk 3.5.3-r1.0      oe-repo 7=
46 k
 nativesdk-libreadline7          x86_64_nativesdk 7.0-r0          oe-repo 1=
16 k
 nativesdk-libsdl-1.2-0          x86_64_nativesdk 1.2.15-r3       oe-repo 1=
32 k
 nativesdk-libsolv               x86_64_nativesdk 0.6.28-r0       oe-repo 2=
96 k
 nativesdk-libssl1.0.2           x86_64_nativesdk 1.0.2o-r0       oe-repo 1=
44 k
 nativesdk-libssp0               x86_64_nativesdk 7.3.0-r0        oe-repo  =
10 k
 nativesdk-libstdc++6            x86_64_nativesdk 7.3.0-r0        oe-repo 3=
37 k
 nativesdk-libtinfo5             x86_64_nativesdk 6.0+20171125-r0 oe-repo  =
52 k
 nativesdk-libtirpc3             x86_64_nativesdk 1.0.2-r0        oe-repo  =
69 k
 nativesdk-libtool               x86_64_nativesdk 2.4.6-r0        oe-repo 2=
87 k
 nativesdk-libx11-6              x86_64_nativesdk 1:1.6.5-r0      oe-repo 5=
48 k
 nativesdk-libxau6               x86_64_nativesdk 1:1.0.8-r0      oe-repo  =
11 k
 nativesdk-libxcb1               x86_64_nativesdk 1.12-r0         oe-repo  =
40 k
 nativesdk-libxdmcp6             x86_64_nativesdk 1:1.1.2-r0      oe-repo  =
14 k
 nativesdk-libxext6              x86_64_nativesdk 1:1.3.3-r0      oe-repo  =
29 k
 nativesdk-libxml2               x86_64_nativesdk 2.9.5-r0        oe-repo 5=
29 k
 nativesdk-libxrandr2            x86_64_nativesdk 1:1.5.1-r0      oe-repo  =
20 k
 nativesdk-libxrender1           x86_64_nativesdk 1:0.9.10-r0     oe-repo  =
21 k
 nativesdk-libz1                 x86_64_nativesdk 1.2.11-r0       oe-repo  =
49 k
 nativesdk-m4                    x86_64_nativesdk 1.4.18-r0       oe-repo 1=
03 k
 nativesdk-makedevs              x86_64_nativesdk 1.0.1-r0        oe-repo  =
13 k
 nativesdk-openssl               x86_64_nativesdk 1.0.2o-r0       oe-repo 2=
01 k
 nativesdk-openssl-conf          x86_64_nativesdk 1.0.2o-r0       oe-repo  =
10 k
 nativesdk-opkg                  x86_64_nativesdk 1:0.3.5-r0      oe-repo  =
16 k
 nativesdk-pam-plugin-deny       x86_64_nativesdk 1.3.0-r5        oe-repo 8=
.2 k
 nativesdk-pam-plugin-permit     x86_64_nativesdk 1.3.0-r5        oe-repo 8=
.5 k
 nativesdk-pam-plugin-unix       x86_64_nativesdk 1.3.0-r5        oe-repo  =
32 k
 nativesdk-pam-plugin-warn       x86_64_nativesdk 1.3.0-r5        oe-repo 8=
.7 k
 nativesdk-pkgconfig             x86_64_nativesdk 0.29.2+git0+edf8e6f0ea-r0
                                                                  oe-repo 1=
74 k
 nativesdk-postinst-intercept    x86_64_nativesdk 1.0-r0          oe-repo 8=
.5 k
 nativesdk-pseudo                x86_64_nativesdk 1.8.2-r0        oe-repo 5=
55 k
 nativesdk-python3-argparse      x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
45 k
 nativesdk-python3-codecs        x86_64_nativesdk 3.5.3-r1.0      oe-repo 7=
32 k
 nativesdk-python3-compression   x86_64_nativesdk 3.5.3-r1.0      oe-repo 1=
07 k
 nativesdk-python3-core          x86_64_nativesdk 3.5.3-r1.0      oe-repo 2=
17 k
 nativesdk-python3-crypt         x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
31 k
 nativesdk-python3-datetime      x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
88 k
 nativesdk-python3-enum          x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
19 k
 nativesdk-python3-fcntl         x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
13 k
 nativesdk-python3-html          x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
60 k
 nativesdk-python3-importlib     x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
68 k
 nativesdk-python3-io            x86_64_nativesdk 3.5.3-r1.0      oe-repo 1=
85 k
 nativesdk-python3-lang          x86_64_nativesdk 3.5.3-r1.0      oe-repo 1=
95 k
 nativesdk-python3-logging       x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
76 k
 nativesdk-python3-math          x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
48 k
 nativesdk-python3-mime          x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
17 k
 nativesdk-python3-netclient     x86_64_nativesdk 3.5.3-r1.0      oe-repo 2=
69 k
 nativesdk-python3-pickle        x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
73 k
 nativesdk-python3-re            x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
38 k
 nativesdk-python3-reprlib       x86_64_nativesdk 3.5.3-r1.0      oe-repo 8=
.4 k
 nativesdk-python3-selectors     x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
16 k
 nativesdk-python3-shell         x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
45 k
 nativesdk-python3-signal        x86_64_nativesdk 3.5.3-r1.0      oe-repo 9=
.1 k
 nativesdk-python3-stringold     x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
14 k
 nativesdk-python3-subprocess    x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
37 k
 nativesdk-python3-textutils     x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
63 k
 nativesdk-python3-threading     x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
39 k
 nativesdk-qemu                  x86_64_nativesdk 2.10.0-r0       oe-repo  =
27 M
 nativesdk-qemu-helper           x86_64_nativesdk 1.0-r9          oe-repo  =
28 k
 nativesdk-qttools-tools         x86_64_nativesdk 5.9.6+git0+c9eeabc7a7-r0
                                                                  oe-repo 1=
.2 M
 nativesdk-shadow                x86_64_nativesdk 4.2.1-r0        oe-repo 2=
10 k
 nativesdk-unfs3                 x86_64_nativesdk 0.9.22.r497-r0  oe-repo  =
43 k
 nativesdk-update-alternatives-opkg
                                 x86_64_nativesdk 0.3.5-r0        oe-repo 9=
.0 k
 nativesdk-util-linux            x86_64_nativesdk 2.30-r0         oe-repo 6=
78 k
Installing weak dependencies:
 nativesdk-ca-certificates       x86_64_nativesdk 20170717-r0     oe-repo 2=
03 k
 nativesdk-libpam-runtime        x86_64_nativesdk 1.3.0-r5        oe-repo  =
16 k
 nativesdk-ncurses-terminfo-base x86_64_nativesdk 6.0+20171125-r0 oe-repo  =
14 k
 nativesdk-python3-readline      x86_64_nativesdk 3.5.3-r1.0      oe-repo  =
20 k
 nativesdk-shared-mime-info      x86_64_nativesdk 1.8-r0          oe-repo 3=
64 k

Transaction Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Install  111 Packages

Total size: 74 M
Installed size: 345 M
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Error: Transaction check error:
  file /usr/local/oecore-x86_64/sysroots/x86_64-pdm3sdk-linux/environment-s=
etup.d conflicts between attempted installs of nativesdk-cmake-3.8.2-r0.x86=
_64_nativesdk and nativesdk-qtbase-tools-5.9.6+git0+9c50112304-r0.x86_64_na=
tivesdk

Error Summary
-------------


ERROR: core-image-weston-pdm3-1.0-r0 do_populate_sdk: Function failed: do_p=
opulate_sdk
ERROR: Logfile of failure stored in: /home/kamal/work/yocto_build/poky/buil=
d_weston/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/core-image-weston-pdm3/1.0-r=
0/temp/log.do_populate_sdk.11674
ERROR: Task (/home/kamal/work/yocto_build/poky/../meta-pdm3-weston/meta-ifm=
-pdm3/recipes-core/images/core-image-weston-pdm3.bb:do_populate_sdk) failed=
 with exit code '1'
NOTE: Tasks Summary: Attempted 6266 tasks of which 6265 didn't need to be r=
erun and 1 failed.
NOTE: No commit since BUILDHISTORY_COMMIT !=3D '1'

Summary: 1 task failed:
  /home/kamal/work/yocto_build/poky/../meta-pdm3-weston/meta-ifm-pdm3/recip=
es-core/images/core-image-weston-pdm3.bb:do_populate_sdk
Summary: There were 5 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I have no idea how to solve this error.=20
Should I clean dnf and build again.
Any help will be appreciated.


