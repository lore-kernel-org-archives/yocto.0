Return-Path: <evan.oloughlin@vitalograph.ie>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64D0BE00D32; Tue, 16 Apr 2019 00:20:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [192.162.216.181 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 297 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Apr 2019 00:20:02 PDT
Received: from smtp-out4.electric.net (smtp-out4.electric.net
	[192.162.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5F59E00D2E
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 00:20:02 -0700 (PDT)
Received: from 1hGIJ6-000BhL-T6 by out4b.electric.net with emc1-ok (Exim
	4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1hGIJ6-000Bk4-UQ
	for yocto@yoctoproject.org; Tue, 16 Apr 2019 00:15:04 -0700
Received: by emcmailer; Tue, 16 Apr 2019 00:15:04 -0700
Received: from [176.58.6.8] (helo=VitalExchange.vitalograph.local)
	by out4b.electric.net with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1hGIJ6-000BhL-T6
	for yocto@yoctoproject.org; Tue, 16 Apr 2019 00:15:04 -0700
Received: from VIT-IE-EX01.vitalograph.local (192.168.245.30) by
	VitalExchange.vitalograph.local (10.1.1.7) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Tue, 16 Apr 2019 08:15:03 +0100
Received: from VIT-IE-EX01.vitalograph.local ([fe80::412b:45ff:24fc:b5ad]) by
	VIT-IE-EX01.vitalograph.local ([::1]) with mapi id 14.03.0439.000;
	Tue, 16 Apr 2019 08:15:02 +0100
From: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Screenshot tool
Thread-Index: AdT0IPjt9SVMpTCERo241DqkND4JOA==
Date: Tue, 16 Apr 2019 07:15:02 +0000
Message-ID: <2EE3E45FEAD8944697CC29BFE83DD70F37B5BEC0@VIT-IE-EX01.vitalograph.local>
Accept-Language: en-IE, en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.1.7]
MIME-Version: 1.0
X-Outbound-IP: 176.58.6.8
X-Env-From: evan.oloughlin@vitalograph.ie
X-Proto: esmtps
X-Revdns: 
X-HELO: VitalExchange.vitalograph.local
X-TLS: TLSv1.2:AES256-GCM-SHA384:256
X-Authenticated_ID: 
X-PolicySMART: 14033467
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Screenshot tool
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
X-List-Received-Date: Tue, 16 Apr 2019 07:20:05 -0000
Content-Language: en-IE
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I=92m currently using yocto to build a custom OS based on Linux 4.9 for our=
 hardware:
Build Configuration:
BB_VERSION        =3D "1.32.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-16.04"
TARGET_SYS        =3D "arm-linux-gnueabi"
MACHINE           =3D "CUSTOM_MACHINE_NAME"
DISTRO            =3D "arago"
DISTRO_VERSION    =3D "2017.12"
TUNE_FEATURES     =3D "arm armv7a vfp thumb neon       callconvention-hard"
TARGET_FPU        =3D "hard"
meta-processor-sdk =3D "HEAD:92db4d8023d88ab59fab2953e7447ec0bd5a6db1"
meta-ros          =3D "HEAD:e2566402ab108a19634354a934788109422cf409"
meta-arago-distro=20
meta-arago-extras =3D "HEAD:5b2a44b0c4d989133bc13d59398fd10375d351bb"
meta-browser      =3D "HEAD:26d50665e2f7223c5f4ad7481a8d2431e7cb55fb"
meta-openamp      =3D "HEAD:8a214032bfb7e8124bc1485c70c69f7d60abb819"
meta-qt5          =3D "HEAD:2c9f0e4eb0e9097f6f872ec1e1d81768a8ab5f1b"
meta-networking  =20
meta-ruby        =20
meta-python      =20
meta-oe          =20
meta-gnome       =20
meta-multimedia   =3D "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
meta-ti           =3D "HEAD:3dc08477529b31ce887bb22a08201a843ded48f0"
meta-linaro-toolchain=20
meta-optee        =3D "HEAD:d73e794c7e7ebb1cc5bf495a52a72b26fb118250"
meta              =3D "HEAD:39fd8c129e2bff7f2f1649b7f6e036ccc50fd5d8"
meta-custom  =3D "########################################"
meta-printing     =3D "morty:72811bc3755d1a943fa2a2e79601781b44a77420"


We run a Qt5 application using EGLFS but can no longer capture screenshots.=
=20
In a previous yocto build based on Linux 3.x we were able to use a screensh=
ot tool which effectively just read /dev/fb0 to a file.

I believe this was a change to how the underlying drivers interact with the=
 GPU/Screen - I've started reading up on KMS/DRM.


Does anyone know is there a utility/tool which I could use to capture the Q=
t5 application as its drawn on screen?


Regards,
Evan

