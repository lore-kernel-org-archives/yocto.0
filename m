Return-Path: <jkaddoura@sbimagingsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4056EE007F2; Tue,  1 May 2018 17:36:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [108.166.43.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 May 2018 17:36:43 PDT
Received: from smtp126.ord1c.emailsrvr.com (smtp126.ord1c.emailsrvr.com
	[108.166.43.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D45DE006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 17:36:43 -0700 (PDT)
Received: from smtp24.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
	by smtp24.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id
	CBD426048C
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 20:30:05 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp24.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
	by smtp24.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id
	CAA06604E9
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 20:30:05 -0400 (EDT)
Received: from smtp192.mex05.mlsrvr.com (unknown [184.106.31.85])
	by smtp24.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTPS id
	B672D6048C
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 20:30:05 -0400 (EDT)
X-Sender-Id: jkaddoura@sbimagingsystems.com
Received: from smtp192.mex05.mlsrvr.com ([UNAVAILABLE]. [184.106.31.85])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA)
	by 0.0.0.0:25 (trex/5.7.12); Tue, 01 May 2018 20:30:05 -0400
Received: from ORD2MBX13B.mex05.mlsrvr.com ([fe80::b877:20ff:fe52:4153]) by
	ORD2HUB20.mex05.mlsrvr.com ([fe80::be30:5bff:feef:b150%15]) with mapi
	id 14.03.0382.000; Tue, 1 May 2018 19:30:05 -0500
From: Jacob Kaddoura <jkaddoura@sbimagingsystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: gRPC: grpc_cpp_plugin is not included in host sysroot for
	standard sdk
Thread-Index: AdPhp4xrJxudNE/dTRmoP930y76OVA==
Date: Wed, 2 May 2018 00:30:04 +0000
Message-ID: <26270F9260A36F4CB337236612DB479EC7DA09@ORD2MBX13B.mex05.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [24.249.154.174]
MIME-Version: 1.0
Subject: gRPC: grpc_cpp_plugin is not included in host sysroot for standard sdk
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
X-List-Received-Date: Wed, 02 May 2018 00:36:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to generate an sdk for a Qt project that includes gRPC. I have =
successfully included protobuf compiler (protoc) in the sysroot for the hos=
t which is used by qmake to compile protobuf stubs.

After sourcing the SDK environment protoc is appearing in my PATH and this =
allows me to generated client stubs with my proto file. However, when I am =
trying to generate server stubs the protoc command requires the grpc_cpp_pl=
ugin path as an argument.=20
The grpc_cpp_plugin is currently not appearing the host sysroot. Currently,=
 the plugin seems to be included the in target sysroot but not the host sys=
root.

The Qt application recipe currently includes these lines (see grpc-native a=
nd grpc):
DEPENDS =3D "qtbase qtsensors qtmultimedia sw-mcu grpc-native"
RDEPENDS_${PN} =3D "qtbase qtsensors qtmultimedia sw-mcu qtvirtualkeyboard =
qttranslations qtquickcontrols2 qtgraphicaleffects grpc"

I added the following lines to the image which includes this application:
inherit populate_sdk_qt5
TOOLCHAIN_HOST_TASK_append +=3D "nativesdk-protobuf-compiler"
TOOLCHAIN_TARGET_TASK_append +=3D "grpc"

The command I use to generate the SDK is: bitbake -c do_populate_sdk <image=
>

 I tried to add "grpc" to the TOOLCHAIN_HOST_TASK_append line, bitbake thre=
w the following error:
* opkg_prepare_url_for_install: Couldn't find anything to satisfy 'grpc'.

Am I misunderstanding how to properly include the plugin or does the curren=
t recipe not support the grpc_cpp_plugin?

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "intel-corei7-64"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.4.2"
TUNE_FEATURES        =3D "m64 corei7"
TARGET_FPU           =3D ""
meta                =20
meta-poky           =20
meta-yocto-bsp       =3D "rocko:fdeecc901196bbccd7c5b1ea4268a2cf56764a62"
meta-oe             =20
meta-networking     =20
meta-python          =3D "rocko:dacfa2b1920e285531bec55cd2f08743390aaf57"
meta-intel           =3D "rocko:7e284b95b45c7ec5c5b5c8cb08122d3b470c0d63"
meta-qt5             =3D "HEAD:32bb7d18a08d1c48873d7ab6332d4cc3815a4dff"
meta-sbis-bsp       =20
meta-sbis-software  =20
meta-sbis-app        =3D "rocko:aa9fa139cfc30da53b84c81facd22b958c1f9852"

Note: I had to pull the gRPC recipe from master as it is not included in th=
e meta-openembedded rocko branch.

Any help is appreciated!

Regards,
Jacob Kaddoura


