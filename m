Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAE0CE00DA9; Fri, 19 Jan 2018 00:20:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47913E0085E
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 00:20:44 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jan 2018 00:20:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,381,1511856000"; d="scan'208";a="196858196"
Received: from kmsmsx156.gar.corp.intel.com ([172.21.138.133])
	by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2018 00:20:43 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.19]) by
	KMSMSX156.gar.corp.intel.com ([169.254.1.225]) with mapi id
	14.03.0319.002; Fri, 19 Jan 2018 16:20:42 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>, 
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: QA cycle report for 2.5 M1 RC3
Thread-Index: AdOQQEHsK2Bz+w49RrOYkJjh4vrFGQ==
Date: Fri, 19 Jan 2018 08:20:41 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DA2A6A@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDIzYmU4MGMtMTMxNS00MmVjLThkMzgtMTYzNTg5NTIzYjYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjU1VFRrR1k2dkt1c0NJYWt4OWV1UGRGWXFKcXVxd0U0b1wvbnYwaUVQSmhvPSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>
Subject: QA cycle report for 2.5 M1 RC3
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
X-List-Received-Date: Fri, 19 Jan 2018 08:20:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
Enjoy viewing the full Report for 2.5 M1 RC3: =20
https://wiki.yoctoproject.org/wiki/WW03_-_2018-1-18-_Full_Test_Cycle_-_2.5_=
M1_rc3

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.5 M1 RC3 was completed.=A0 Team had confirmed th=
at qemu frozen (hung up) during OE-selftest on Fedora 26/27 after applied l=
atest kernel patches will be resolved by using the default kernel (4.14.5-2=
00.fc26.x86_64 on Fedora26 and 4.13.9-300.fc27.x86_64 on Fedora27). Team di=
scovered 3 new bugs, build appliance failed to build core-image-sato & buil=
d-appliance-image [1], qemuarm failed during shutdown [2], and LTP test run=
ning on core-image-lsb-sdk not able to complete full test [3]. Team decided=
 to drop Tumbleweed from QA coverage.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

The build is stable enough to be released, need to further investigate on b=
uild appliance issue [1] and LTP testing issue [3].

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - 12497 [1] Build Appliance : failed to b=
uild core-image-sato image & build-appliance-image
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- 12499 [2] qemuarm: failed to shutdown=
 (2.5 M1 rc3)
            - 12504 [3] LTP Test: LTP tests hung up and not able to complet=
e full run (2.5 M1 RC3)

Full Bug Report: =20
https://wiki.yoctoproject.org/wiki/WW03_-_2018-1-18-_Full_Test_Cycle_-_2.5_=
M1_rc3#Bugs_Found_during_QA_Test

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0=A0=A0 1.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2497 [1]=20

=A0=A0=A0 2.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2499 [2] =A0=A0=A0

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12504 [3]

Regards
Ee Peng=20



