Return-Path: <ashish.shrivastava@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 777C6E00B9C; Tue, 29 Mar 2016 05:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61D31E00B30
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 05:31:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 457502E0B0
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 14:31:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id ojMWjDtTN3oi for <yocto@yoctoproject.org>;
	Tue, 29 Mar 2016 14:31:20 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 68FC12E097
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 14:31:20 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 4AE45156E
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 14:31:20 +0200 (CEST)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 40300D9
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 14:31:20 +0200 (CEST)
Received: from XBOX01.axis.com (xbox01.axis.com [10.0.5.15])
	by thoth.se.axis.com (Postfix) with ESMTP id 3F340FA2
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 14:31:20 +0200 (CEST)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX01.axis.com (10.0.5.15) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Tue, 29 Mar 2016 14:31:17 +0200
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%23]) with mapi id
	15.00.1156.000; Tue, 29 Mar 2016 14:31:17 +0200
From: Ashish Shrivastava <ashish.shrivastava@axis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pwauth: Unable to recognise the format of the input file
	(gobject-introspection disabled)
Thread-Index: AQHRiaJi0qUGMldvFE+/u0Xi9Bfuag==
Date: Tue, 29 Mar 2016 12:31:16 +0000
Message-ID: <1459254679831.22120@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.55]
MIME-Version: 1.0
Subject: pwauth: Unable to recognise the format of the input file (gobject-introspection disabled)
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
X-List-Received-Date: Tue, 29 Mar 2016 12:31:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am getting issue in pwauth: "Unable to recognize the format of the input =
file".


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

ERROR: pwauth-2.3.11-r0 do_package: objcopy failed with exit code 256 (cmd =
was 'mipsisa32r2el-axis-linux-gnu-objcopy' --only-keep-debug '/home/ashishs=
/dists/jangal-poky-master/builds/q3505/tmp/work/mips32r2el-nf-poky-linux/pw=
auth/2.3.11-r0/package/usr/sbin/pwauth' '/home/ashishs/dists/jangal-poky-ma=
ster/builds/q3505/tmp/work/mips32r2el-nf-poky-linux/pwauth/2.3.11-r0/packag=
e/usr/sbin/.debug/pwauth'):
mipsisa32r2el-axis-linux-gnu-objcopy: Unable to recognise the format of the=
 input file `/home/ashishs/dists/jangal-poky-master/builds/q3505/tmp/work/m=
ips32r2el-nf-poky-linux/pwauth/2.3.11-r0/package/usr/sbin/pwauth'
ERROR: pwauth-2.3.11-r0 do_package: Function failed: split_and_strip_files
ERROR: Logfile of failure stored in: /home/ashishs/dists/jangal-poky-master=
/builds/q3505/tmp/work/mips32r2el-nf-poky-linux/pwauth/2.3.11-r0/temp/log.d=
o_package.27212
ERROR: Task 11 (/home/ashishs/dists/jangal-poky-master/meta-axis/recipes-ht=
tpd/pwauth/pwauth_2.3.11.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 447 tasks of which 438 didn't need to be rer=
un and 1 failed.



log.do_package.27212 says:

DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing python function do_package
DEBUG: Executing python function package_get_auto_pr
DEBUG: Python function package_get_auto_pr finished
DEBUG: Executing python function perform_packagecopy
DEBUG: Python function perform_packagecopy finished
DEBUG: Executing python function split_and_strip_files
ERROR: objcopy failed with exit code 256 (cmd was 'mipsisa32r2el-axis-linux=
-gnu-objcopy' --only-keep-debug '/home/ashishs/dists/jangal-poky-master/bui=
lds/q3505/tmp/work/mips32r2el-nf-poky-linux/pwauth/2.3.11-r0/package/usr/sb=
in/pwauth' '/home/ashishs/dists/jangal-poky-master/builds/q3505/tmp/work/mi=
ps32r2el-nf-poky-linux/pwauth/2.3.11-r0/package/usr/sbin/.debug/pwauth'):
mipsisa32r2el-axis-linux-gnu-objcopy: Unable to recognise the format of the=
 input file `/home/ashishs/dists/jangal-poky-master/builds/q3505/tmp/work/m=
ips32r2el-nf-poky-linux/pwauth/2.3.11-r0/package/usr/sbin/pwauth'
DEBUG: Python function split_and_strip_files finished
DEBUG: Python function do_package finished
ERROR: Function failed: split_and_strip_files
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Output from file viewer for input file:
ashishs@lnxashishs> file /home/ashishs/dists/jangal-poky-master/builds/q350=
5/tmp/work/mips32r2el-nf-poky-linux/pwauth/2.3.11-r0/package/usr/sbin/pwaut=
h

/home/ashishs/dists/jangal-poky-master/builds/q3505/tmp/work/mips32r2el-nf-=
poky-linux/pwauth/2.3.11-r0/package/usr/sbin/pwauth: setuid ELF 64-bit LSB =
executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs)=
, for GNU/Linux 2.6.26, BuildID[sha1]=3D0x42ffc2e02c207590b06b9c77c32318d44=
b34d004, not stripped
ashishs@ln



gobject-introspection is disabled by:
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "gobject-introspection-data"


Regards
Ashish




