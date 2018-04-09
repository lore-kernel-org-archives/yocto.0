Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B3AEE00A1C; Mon,  9 Apr 2018 03:36:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6561BE00903
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 03:36:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Apr 2018 03:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,427,1517904000"; d="scan'208";a="30669821"
Received: from pgsmsx111.gar.corp.intel.com ([10.108.55.200])
	by fmsmga007.fm.intel.com with ESMTP; 09 Apr 2018 03:36:54 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.25]) by
	PGSMSX111.gar.corp.intel.com ([169.254.2.233]) with mapi id
	14.03.0319.002; Mon, 9 Apr 2018 18:36:53 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Jordan, Robin L" <robin.l.jordan@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lock, Joshua G" <joshua.g.lock@intel.com>, 
	"Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: QA cycle report for 2.5 M3 RC1
Thread-Index: AdPP4ZPgKcu/FI88Rh61D9+8v2DlQw==
Date: Mon, 9 Apr 2018 10:36:52 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E012E3@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjk0YmQxNGMtZmRmNi00YWJkLWEzM2QtYWZkZTViMTVhZWUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6InkycjhtWG94cUFtRnE3ZUptakpcL1F5VnhlRG53WlFKWFhNZEpkTXdPajRzPSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: QA cycle report for 2.5 M3 RC1
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
X-List-Received-Date: Mon, 09 Apr 2018 10:36:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
This is the full report for 2.5 M3 RC1: =20
https://wiki.yoctoproject.org/wiki/WW15_-_2018-04-09-_Full_Test_Cycle_-_2.5=
_M3_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.5 M3 RC1 was completed.=A0 Team had discovered 7=
 new bugs.

There were 3 bugs related to runtime [4] [6] [7], where core-image-lsb-sdk =
unable to boot on Minnowboard Turbot, runtime tests failed on OpenSUSE42.3 =
host machine, & connect host with serial console failed to display login pr=
ompt for core-image-sato-sdk-genericx86-64 on Minnowboard Turbot.  There we=
re 3 bugs related to selftest [1] [2] and kernel development [5].=20

This QA cycle were executed with additional manual testing on the images/ar=
tifacts created by the new Autobuilder codebase (http://autobuilder.yoctopr=
oject.org/pub/yocto-2.5_M3.rc1/), where the images/artifacts were downloade=
d and manually tested.  There was 1 bug discovered from new Autobuilder cod=
ebase where Build Appliance failed [3] to build image. =20

Testcase#202 (syslog) were skipped in multiple BSP automated runtime tests =
where it cannot run with sysklogd installed.  Testcase#1550 (bitbake depend=
ency explorer) was failing and it was still undergoing regression testing.=
=20

Performance tests shown that build virtual/kernel time for this cycle incre=
ased by ~6% compared to 2.5 M2 RC1.=20

This QA cycle had automated package management runtime tests as well as mos=
t of the meta-ide-support and SDK toolchain using both existing and new aut=
omated tests available.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

No significant bugs were discovered.=20

=3D=3D=3D=3D=3D=3D=3D New Bugs =3D=3D=3D=3D=3D=3D=3D=3D

[1] Bug 12647 - [2.5 M3 rc1][OE-Core:Debian9] recipe xcursor-transport-them=
e went backwards, breaks package feeds
[2] Bug 12655 - [2.5 M3 rc1][OE Core:Debian9] layerappend.LayerAppendTests.=
test_layer_appends - Testcase 1196: ERROR
[3] Bug 12637 - [2.5 M3 RC1] Build appliance failed on glibc-initial do_con=
figure when bitbake core-image-minimal
[4] Bug 12633 - [2.5 M3 RC1] BSP-QEMU:core-image-lsb-sdk-x86.wic unable to =
boot on Minnowboard Turbot
[5] Bug 12641 - [2.5 M3 RC1] Kernel Development Build external modules (hel=
lo-mod) test case: Function failed do_rootfs
[6] Bug 12665 - [2.5 M3 rc1] OpenSUSE42.3 runtime test fail at runtime_test=
.TextExport, runtime_test.TestImage, runtime_test.TestImage and oe_runmake
[7] Bug 12666 - [2.5 M3 RC1] BSP-QEMU:core-image-sato-sdk-genericx86-64.hdd=
img unable to connect to console with serial on Minnowboard Turbot

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12647 [1]=20
2. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12655 [2]
3. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12637 [3]
4. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12633 [4]
5. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12641 [5]
6. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12665 [6]
7. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12666 [7]

Regards
Ee Peng=20



