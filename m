Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA879E00DAA; Fri, 22 Dec 2017 01:40:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AB6FE00D94
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 01:40:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Dec 2017 01:40:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,440,1508828400"; 
   d="scan'208";a="4828033"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by orsmga008.jf.intel.com with ESMTP; 22 Dec 2017 01:40:26 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.19]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.76]) with mapi id
	14.03.0319.002; Fri, 22 Dec 2017 17:40:25 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>, 
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: QA cycle report for 2.4.1 RC1
Thread-Index: AdN7B3X8v1JLMI/SSVmwVL5lCzPA+A==
Date: Fri, 22 Dec 2017 09:40:25 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335D94DFF@PGSMSX109.gar.corp.intel.com>
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
X-Mailman-Approved-At: Fri, 22 Dec 2017 02:31:34 -0800
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>
Subject: QA cycle report for 2.4.1 RC1
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
X-List-Received-Date: Fri, 22 Dec 2017 09:40:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
Enjoy viewing the full Report for 2.4.1 RC1:  https://wiki.yoctoproject.org=
/wiki/WW51_-_2017-12-21-_Full_Test_Cycle_-_2.4.1_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.4.1 RC1 is complete.=A0 There are 5 new bugs fro=
m which so far none of them are high. QA has 1 concern on the performance t=
esting.

Performance report shows an increase of 23% build time on the eSDK in fedor=
a 23, bug has not been created until further investigation with setup outsi=
de of the GDC environment.=20

https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-21-_Full_Test_Cycle_-_2.4=
.1_rc1#Build_Performance_Test

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

The build is stable enough to be released, provided the performance issue i=
s investigated and root-cause identified.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -12444 [1] [Test Case 1542] test_2_logrot=
ate fails in MinnowMax with core-image-lsb-sdk-genericx86-64 image
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0-12417 [2] Eclipse installer steps only=
 apply to latest Eclipse release
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0-12416 [3] autobuilder.yocto.io directo=
ry index does not display the full long filename
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -12443 [4] [Test Case 312,313] Bitbake fa=
iled after using yocto-kernel add patch
            -12445 [5] [Test Case 309,310,311] Bitbake fails after add laye=
r with yocto-bsp create

Full Bug Report:  https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-21-_Ful=
l_Test_Cycle_-_2.4.1_rc1#Bugs_Found_during_QA_Test


=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0=A0=A0 1.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2444 [1]=20

=A0=A0=A0 2.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2417 [2]=20

=A0=A0=A0 3.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2416 [3]=20

=A0=A0=A0 4.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2443 [4]

=A0=A0=A0 5.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2445 [5]=20
=A0=A0=A0

Regards
Ee Peng=20



