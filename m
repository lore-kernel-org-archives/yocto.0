Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D047E00CCB; Thu, 12 Oct 2017 16:20:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5662 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Oct 2017 16:20:44 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0057.outbound.protection.outlook.com [104.47.36.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AB63E00CA2
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 16:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uN4KxSO0p2caoQvoKka0a7r0iQmAhSIErJNI6SajiTk=;
	b=NT+/+elWM1PCEfzG2bprPwKVG0H2FHG/I2oDCxssTCv3Oi0kph+bHCH0yA2HUQKLJVCbgEpAsRtYLj71p+RgS5ZIDefxAF7kHIjrVaA/udizt0yPoQo5um1CVFA2CAUjJflaUJopq2bGEkAkM2q4/edec1s9vf/rbnpxGbsnEGI=
Received: from BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) by
	BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 12 Oct 2017 21:46:20 +0000
Received: from BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903]) by BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903%14]) with mapi id 15.20.0077.020;
	Thu, 12 Oct 2017 21:46:20 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Using kernel fitimage with initramfs
Thread-Index: AdNDoyGclRlw72ZqTN2tlOtUT2vdAA==
Date: Thu, 12 Oct 2017 21:46:20 +0000
Message-ID: <BL2PR02MB21634F4472B455C8B36177E0B94B0@BL2PR02MB2163.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2PR02MB2163;
	6:QM0nQJJhrd5NKFJ5mazq1wll+jVqx34wT1h/ybPZcf3LPNkWNImIqHmAZaOkA1StzsU9BYAHRk3sU65Nnw+W4VwNsFzaM/6oGVYqcgWAkBiNqgyKvqXyRjzp6KV/wJ1N5IUS0KXTYFCb7OgF4DFlTdeg53yOWDmhpwJJIn3w0SxC8KCzphwvqMRrosJn2MeE2ew/KZ7DDTCwAyIfZEinhlptFV3wemsEKc4nhwWNvKz3Ost26ajaEiEZWgpN9ZM/vkLzfNvVlIg5JTdry1aoC95b206k0rbsoDmV39+usCosByvcrgV8Ud6bX4eqEIBeT/YTspGYSld65pytzb705A==;
	5:N2vBnDg91sL7e2DutPfHLBqAMo29F7ots/1nk++nn4DSu4mOioTCZOHiIU14mYMPMpr/uxf4wcnu7mdsb+jBUKXhXCClH+RvxexuSh3GO1HXVdZzq9YSWZtBKv5as1CoUvB6HgaIx9rmw8jusolZsfTEHDxSCrhoqicchmfBX5s=;
	24:XKpAW2X2hEKVHj/nTr2n71CyCh5Gvp3P1b3rXVFbd/SR+chl8v0b+yr+1cTXlXajbMMh/777T1a98+GrOI7FhW2Uz9s8uE7q8UnH1T+QQy4=;
	7:OTWVnE86u6F6XFYWNW0RMQHHl0QTA1CHhel/JzIESiysMRf1BjuFgBYrI94XhSDf8zzcjsmdJZq5F9cbPVOWiI2E4+7Q/H5ovosheVufOos0/mtY4pKmAp6cBnINw6fkpYSDlXKYBbhXfbDncxNIpOSETJomsdCVZvVeURFhIc2Cg7PEAngyCCRKOHiNleZr5WVMPkJkjIYHjxw2DX1ObH80sc+v+o6oKq/ICqJPwj0=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 3a6f8567-f228-4873-c6da-08d511baad16
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(48565401081)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BL2PR02MB2163; 
x-ms-traffictypediagnostic: BL2PR02MB2163:
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-microsoft-antispam-prvs: <BL2PR02MB21630394CD8AE9E9613FE6FAB94B0@BL2PR02MB2163.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(3002001)(93006095)(93001095)(10201501046)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123562025)(20161123560025)(20161123564025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BL2PR02MB2163; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BL2PR02MB2163; 
x-forefront-prvs: 04583CED1A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(39860400002)(346002)(189002)(53754006)(199003)(5660300001)(106356001)(6506006)(478600001)(2351001)(14454004)(25786009)(105586002)(7696004)(66066001)(5250100002)(2501003)(6916009)(101416001)(189998001)(50986999)(966005)(5640700003)(2900100001)(54356999)(74316002)(8676002)(2906002)(81166006)(3280700002)(97736004)(316002)(6436002)(72206003)(305945005)(68736007)(1730700003)(7736002)(6306002)(8936002)(102836003)(86362001)(6116002)(53936002)(55016002)(3846002)(9686003)(81156014)(33656002)(99286003)(3660700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR02MB2163;
	H:BL2PR02MB2163.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2017 21:46:20.6770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR02MB2163
Subject: Using kernel fitimage with initramfs
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
X-List-Received-Date: Thu, 12 Oct 2017 23:20:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Had a question about kernel-fitimage.bbclass. I am enabling the fitimage us=
ing KERNEL_CLASSES +=3D "kernel-fitimage" and KERNEL_IMAGETYPE =3D "fitImag=
e".
It works and I see fitimage in my deploy directory without any issues.

However when I enable initramfs along with fitimage, using INITRAMFS_IMAGE =
=3D "core-image-minimal" and  INITRAMFS_IMAGE_BUNDLE =3D "1", kernel build =
fails.
It's mostly from kernel.bbclass because it tries to deploy fitimage https:/=
/github.com/openembedded/openembedded-core/blob/master/meta/classes/kernel.=
bbclass#L639
Am I using this featurecorrectly? anyone else facing same issue?

Below is a initial patch which I did to get me across the error, but I am n=
ot sure if this is the correct answer.

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 756707a..d5342b4 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -208,14 +208,16 @@ do_bundle_initramfs () {
                # Backing up kernel image relies on its type(regular file o=
r symbolic link)
                tmp_path=3D""
                for type in ${KERNEL_IMAGETYPES} ; do
-                       if [ -h ${KERNEL_OUTPUT_DIR}/$type ] ; then
-                               linkpath=3D`readlink -n ${KERNEL_OUTPUT_DIR=
}/$type`
-                               realpath=3D`readlink -fn ${KERNEL_OUTPUT_DI=
R}/$type`
-                               mv -f $realpath $realpath.bak
-                               tmp_path=3D$tmp_path" "$type"#"$linkpath"#"=
$realpath
-                       elif [ -f ${KERNEL_OUTPUT_DIR}/$type ]; then
-                               mv -f ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_O=
UTPUT_DIR}/$type.bak
-                               tmp_path=3D$tmp_path" "$type"##"
+                       if [ "$type" !=3D "fitImage" ]; then
+                               if [ -h ${KERNEL_OUTPUT_DIR}/$type ] ; then
+                                       linkpath=3D`readlink -n ${KERNEL_OU=
TPUT_DIR}/$type`
+                                       realpath=3D`readlink -fn ${KERNEL_O=
UTPUT_DIR}/$type`
+                                       mv -f $realpath $realpath.bak
+                                       tmp_path=3D$tmp_path" "$type"#"$lin=
kpath"#"$realpath
+                               elif [ -f ${KERNEL_OUTPUT_DIR}/$type ]; the=
n
+                                       mv -f ${KERNEL_OUTPUT_DIR}/$type ${=
KERNEL_OUTPUT_DIR}/$type.bak
+                                       tmp_path=3D$tmp_path" "$type"##"
+                               fi
                        fi
                done
                use_alternate_initrd=3DCONFIG_INITRAMFS_SOURCE=3D${B}/usr/$=
{INITRAMFS_IMAGE_NAME}.cpio
@@ -627,8 +629,10 @@ MODULE_TARBALL_DEPLOY ?=3D "1"

 kernel_do_deploy() {
        for type in ${KERNEL_IMAGETYPES} ; do
-               base_name=3D${type}-${KERNEL_IMAGE_BASE_NAME}
-               install -m 0644 ${KERNEL_OUTPUT_DIR}/${type} ${DEPLOYDIR}/$=
{base_name}.bin
+               if [ "$type" !=3D "fitImage" ]; then
+                       base_name=3D${type}-${KERNEL_IMAGE_BASE_NAME}
+                       install -m 0644 ${KERNEL_OUTPUT_DIR}/${type} ${DEPL=
OYDIR}/${base_name}.bin
+               fi
        done
        if [ ${MODULE_TARBALL_DEPLOY} =3D "1" ] && (grep -q -i -e '^CONFIG_=
MODULES=3Dy$' .config); then
                mkdir -p ${D}/lib
@@ -637,21 +641,25 @@ kernel_do_deploy() {
        fi

        for type in ${KERNEL_IMAGETYPES} ; do
-               base_name=3D${type}-${KERNEL_IMAGE_BASE_NAME}
-               symlink_name=3D${type}-${KERNEL_IMAGE_SYMLINK_NAME}
-               ln -sf ${base_name}.bin ${DEPLOYDIR}/${symlink_name}.bin
-               ln -sf ${base_name}.bin ${DEPLOYDIR}/${type}
+               if [ "$type" !=3D "fitImage" ]; then
+                       base_name=3D${type}-${KERNEL_IMAGE_BASE_NAME}
+                       symlink_name=3D${type}-${KERNEL_IMAGE_SYMLINK_NAME}
+                       ln -sf ${base_name}.bin ${DEPLOYDIR}/${symlink_name=
}.bin
+                       ln -sf ${base_name}.bin ${DEPLOYDIR}/${type}
+               fi
        done

        cd ${B}
        # Update deploy directory
        for type in ${KERNEL_IMAGETYPES} ; do
-               if [ -e "${KERNEL_OUTPUT_DIR}/${type}.initramfs" ]; then
-                       echo "Copying deploy ${type} kernel-initramfs image=
 and setting up links..."
-                       initramfs_base_name=3D${type}-${INITRAMFS_BASE_NAME=
}
-                       initramfs_symlink_name=3D${type}-initramfs-${MACHIN=
E}
-                       install -m 0644 ${KERNEL_OUTPUT_DIR}/${type}.initra=
mfs ${DEPLOYDIR}/${initramfs_base_name}.bin
-                       ln -sf ${initramfs_base_name}.bin ${DEPLOYDIR}/${in=
itramfs_symlink_name}.bin
+               if [ "$type" !=3D "fitImage" ]; then
+                       if [ -e "${KERNEL_OUTPUT_DIR}/${type}.initramfs" ];=
 then
+                               echo "Copying deploy ${type} kernel-initram=
fs image and setting up links..."
+                               initramfs_base_name=3D${type}-${INITRAMFS_B=
ASE_NAME}
+                               initramfs_symlink_name=3D${type}-initramfs-=
${MACHINE}
+                               install -m 0644 ${KERNEL_OUTPUT_DIR}/${type=
}.initramfs ${DEPLOYDIR}/${initramfs_base_name}.bin
+                               ln -sf ${initramfs_base_name}.bin ${DEPLOYD=
IR}/${initramfs_symlink_name}.bin
+                       fi
                fi
        done
 }

Thanks,
Manju

