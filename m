Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5BD1E00825; Wed, 11 Mar 2015 07:00:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [207.46.100.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0118.outbound.protection.outlook.com [207.46.100.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C56CE00718
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 07:00:08 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1089.namprd05.prod.outlook.com (25.160.113.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.106.15; Wed, 11 Mar 2015 13:45:12 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0106.007; Wed, 11 Mar 2015 13:45:12 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: eclipse-poky: Can't build from Eclipse, but command line build
	works
Thread-Index: AdBb/BnFUUT6HWWeSZuLla6w2kTN0w==
Date: Wed, 11 Mar 2015 13:45:11 +0000
Message-ID: <BN3PR0501MB109035A8492F6EA261F15FE8BB190@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 006E8DFE0095B6006E8F4B
x-originating-ip: [98.100.91.242]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1089;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(2656002)(62966003)(76576001)(450100001)(99286002)(87936001)(2900100001)(40100003)(33656002)(110136001)(46102003)(92566002)(2351001)(86362001)(50986999)(19580395003)(74316001)(66066001)(2501003)(77156002)(102836002)(54356999)(107886001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1089;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <BN3PR0501MB1089CF49EB5EB157A92D528CBB190@BN3PR0501MB1089.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002009)(5005006); SRVR:BN3PR0501MB1089; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1089; 
x-forefront-prvs: 0512CC5201
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2015 13:45:11.9634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1089
Subject: eclipse-poky: Can't build from Eclipse, but command line build works
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
X-List-Received-Date: Wed, 11 Mar 2015 14:00:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to get the Yocto Eclipse plug-in setup so that I can build my a=
pplication from Eclipse.  I am *almost* there, but the final build is not w=
orking.  I'm assuming there are some path/rights issues somewhere in the ch=
ain because I can build from the command line.  I'm looking for some help i=
n figuring out where the difference is.

I am using Fedora 21 64-bit for a host system.  I am using Eclipse Kepler; =
I also have Eclipse Luna installed, but I had to install Eclipse Kepler sin=
ce another plugin I am using does not yet have support for Eclipse Luna.  I=
 am on poky/daisy HEAD and have been able successfully build my image (imag=
e based on core-image-minimal with a few extra applications).  Under Eclips=
e Kepler, I installed the pre-build plug-in from the Yocto Eclipse Update S=
ite as instructed in the Yocto Project Development Manual for Poky 1.6.2.  =
I am using my existing toolchain in the build directory, so I issued "bitba=
ke meta-ide-support" to generate the cross-toolchain support.  I then follo=
wed the instructions under "Extracting the Root Filesystem" in the ADT Manu=
al to extract the root filesystem.  Specifically, I sourced the newly creat=
ed environment script and then called "runqemu-extract-sdk <my_built_image.=
tar.gz> <sysroot_destination_directory>".  Then, from Eclipse I setup the Y=
octo Project ADT for a "Build System Derived Toolchain", I set the Toolchai=
n Root Directory to my Poky build directory, and I set the Sysroot location=
 to my extracted sysroot directory.

After the initial environment setup, from Eclipse I selected File->New->C P=
roject, and selected a "Hello World ANSI C Autotools Project" under the "Yo=
cto Project ADT Autotools Project" options.  For the new project, if I sele=
ct "Reconfigure Project" the configuration fails with the following error:

	checking whether the C compiler works... no

From checking config.log, here are the details on the build failure:

	configure:3289: checking whether the C compiler works
	configure:3311: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthumb=
-interwork -mtune=3Darm926ej-s --sysroot=3D$SDKTARGETSYSROOT  -g -O0  --sys=
root=3D/<home_path>/extracted_sysroot_1.6.2  --sysroot=3D/<home_path>/extra=
cted_sysroot_1.6.2  --sysroot=3D/<home_path>/extracted_sysroot_1.6.2 confte=
st.c  >&5
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find cr=
t1.o: No such file or directory
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find cr=
ti.o: No such file or directory
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find cr=
tbegin.o: No such file or directory
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find -l=
gcc
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find -l=
gcc_s
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find -l=
c
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find -l=
gcc
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find -l=
gcc_s
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find cr=
tend.o: No such file or directory
	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm926e=
jste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find cr=
tn.o: No such file or directory
	collect2: error: ld returned 1 exit status
	configure:3315: $? =3D 1
	configure:3353: result: no
	configure: failed program was:
	| /* confdefs.h */
	| #define PACKAGE_NAME "adt_test_app"
	| #define PACKAGE_TARNAME "adt_test_app"
	| #define PACKAGE_VERSION "0.1.0"
	| #define PACKAGE_STRING "adt_test_app 0.1.0"
	| #define PACKAGE_BUGREPORT ""
	| #define PACKAGE_URL ""
	| #define PACKAGE "adt_test_app"
	| #define VERSION "0.1.0"
	| /* end confdefs.h.  */
	|=20
	| int
	| main ()
	| {
	|=20
	|   ;
	|   return 0;
	| }
	configure:3358: error: in `/<home_path>/workspace_kepler/adt_test_app':
	configure:3360: error: C compiler cannot create executables

Note that <home_path> included the actual path to my home directory in conf=
ig.log but I changed it to <home_path> for the purposes of this e-mail (yes=
, I'm paranoid).

However, if I instead open a terminal, go to my project directory and do th=
e following:

	source <path_to_Poky_build_directory>/environment-setup-arm926ejste-poky-l=
inux-gnueabi
	./configure ${CONFIGURE_FLAGS}

The project configures without a problem.  I can then either build from the=
 command line or I can build from Eclipse.  It seems very odd to me that th=
e configure doesn't work from Eclipse, but once it is configured I can buil=
d without issue.  Anyone have any ideas as to what I have wrong in my setup=
?

Thanks,
Bryan

