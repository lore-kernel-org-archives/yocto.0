Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEB1BE00E88; Wed, 14 Feb 2018 00:59:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD50BE00E83
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 00:59:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2018 00:59:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,511,1511856000"; d="scan'208";a="18001498"
Received: from kmsmsx156.gar.corp.intel.com ([172.21.138.133])
	by orsmga008.jf.intel.com with ESMTP; 14 Feb 2018 00:59:10 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.206]) by
	KMSMSX156.gar.corp.intel.com ([169.254.1.225]) with mapi id
	14.03.0319.002; Wed, 14 Feb 2018 16:59:08 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Jordan, Robin L"
	<robin.l.jordan@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>, 
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>
Thread-Topic: Preliminary QA cycle report for 2.5 M2 RC1
Thread-Index: AdOlcXdWZuX+ngxaQoemhIj7g7nwvw==
Date: Wed, 14 Feb 2018 08:59:08 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DBC09B@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTFlZTM4YjctZGFkZi00MGJkLWI3Y2UtYzY0ODQyN2U3ZDE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IkJtTnR6dUNmV3hsdytoaldsOWJcL2c0S1VlYWpjb2hnckhhcDZFcGp6RGRRPSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>
Subject: Preliminary QA cycle report for 2.5 M2 RC1
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
X-List-Received-Date: Wed, 14 Feb 2018 08:59:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
This is the preliminary report for 2.5 M2 RC1 (while waiting for performanc=
e test data to be ready): =20
https://wiki.yoctoproject.org/wiki/WW07_-_2018-02-14-_Full_Test_Cycle_-_2.5=
_M2_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.5 M2 RC1 was completed except performance test.=
=A0 Team had discovered a new bug [1] where sdk toolchain downloaded from P=
ublic Autobuilder failed when executing runqemu command. =20

YP QA recently requested the performance host machines from linux foundatio=
n to replace old machines, where initial setup completed at WW06 and going =
through testing. Currently, running performance testing trial run to collec=
t data. Expected data collection for regression and 2.5 M2 rc1 to be comple=
ted by WW08.1.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

Waiting performance test data to be ready, the build is stable, need to fix=
 the sdk toolchain bug in order to enable runqemu.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - 12545 [1] [2.5 M2 RC1] SDK runqemu fail=
ed with python import logging

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0=A0=A0 1.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2545 [1]=20

Regards
Ee Peng=20



