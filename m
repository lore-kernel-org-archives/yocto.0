Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D890E00DA5; Sun, 14 Jan 2018 19:28:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Sun, 14 Jan 2018 19:28:12 PST
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF0C2E00A75
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 19:28:12 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jan 2018 19:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,361,1511856000"; d="scan'208";a="10174007"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by fmsmga008.fm.intel.com with ESMTP; 14 Jan 2018 19:27:09 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.19]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.200]) with mapi id
	14.03.0319.002; Mon, 15 Jan 2018 11:26:16 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>, 
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: QA cycle report for 2.5 M1 RC1
Thread-Index: AdONrevqkwQJ0YVpRBGLnD6l3bVTtg==
Date: Mon, 15 Jan 2018 03:26:16 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DA0485@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDIzYmU4MGMtMTMxNS00MmVjLThkMzgtMTYzNTg5NTIzYjYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjU1VFRrR1k2dkt1c0NJYWt4OWV1UGRGWXFKcXVxd0U0b1wvbnYwaUVQSmhvPSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>
Subject: QA cycle report for 2.5 M1 RC1
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
X-List-Received-Date: Mon, 15 Jan 2018 03:28:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
Enjoy viewing the full Report for 2.5 M1 RC1:  https://wiki.yoctoproject.or=
g/wiki/WW02_-_2018-1-8-_Full_Test_Cycle_-_2.5_M1_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.5 M1 RC1 is complete.=A0 There are 2 new bugs an=
d 1 concern. QA has 1 concern on the unexpected QEMU hung up on Fedora 26 &=
 Tumbleweed. QA discovered that Minnow Turbot igb ethernet controller faile=
d when boot up with core-image-sato-sdk image.=20

Performance report shows that GDC fedora performance machine was still faci=
ng longer than expected eSDK deploy time which were identified to be relate=
d to the machine itself.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

The build is no stable enough to be released, need to fix the Minnow Turbot=
 ethernet and qemu hung up issues.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -12457 [1] [QA 2.5 M1 rc1] Minnow Turbot =
with igb ethernet controller failed for network functional testing after bo=
ot up with core-image-sato-sdk image
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- 12481 [2] ptest-runner libxml2 failed=
 to execute for 2.5 M1 rc1

Full Bug Report: =20
https://wiki.yoctoproject.org/wiki/WW02_-_2018-1-8-_Full_Test_Cycle_-_2.5_M=
1_rc1#Bugs_Found_during_QA_Test


=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0=A0=A0 1.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2457 [1]=20

=A0=A0=A0 2.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D =
12481 [2] =A0=A0=A0

Regards
Ee Peng=20



