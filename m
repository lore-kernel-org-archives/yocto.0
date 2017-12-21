Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65043E00CE8; Wed, 20 Dec 2017 20:25:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C03B1E00B5F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 20:25:16 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Dec 2017 20:25:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,434,1508828400"; 
   d="scan'208";a="3615315"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2017 20:25:15 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Wed, 20 Dec 2017 20:25:15 -0800
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.59]) by
	fmsmsx111.amr.corp.intel.com ([10.18.116.5]) with mapi id
	14.03.0319.002; Wed, 20 Dec 2017 20:25:14 -0800
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Lock, Joshua G" <joshua.g.lock@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Thread-Topic: QA cycle report for 2.3.3 RC1
Thread-Index: AdN6AciR9idPrllZSQ6ed0xJ1DH7/w==
Date: Thu, 21 Dec 2017 04:25:14 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A48868@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDIzYmU4MGMtMTMxNS00MmVjLThkMzgtMTYzNTg5NTIzYjYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJFWm50QnJQekZmNmlPMjdIbDFwN1h6Y1wvOGljUmdjVTZxZGlrbEZQMXcxOXJNb2ptNFBvMDhHaWtXVjJ1b1ppeiJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>, "Yeoh,
	Ee Peng" <ee.peng.yeoh@intel.com>
Subject: QA cycle report for 2.3.3 RC1
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
X-List-Received-Date: Thu, 21 Dec 2017 04:25:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
Enjoy viewing the full Report for 2.3.3 RC1:=A0 https://wiki.yoctoproject.o=
rg/wiki/WW51_-_2017-12-20-_Full_Test_Cycle_-_2.3.3_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.3.3 RC1 is complete.=A0 There are 4 new bugs fro=
m which so far none of them are high. QA has two big concerns:

        1.  Performance report shows an increase of 30% build time on the e=
SDK in fedora 23, bug has not been created until further investigation with=
 setup outside of the GDC environment.=20
        2.  ptest comparison script is giving wrong results, bug 12441 was =
opened.=20


-----

ptest

Package slang show 0% pass rate in 2.3.3 rc1, the results need to be valida=
ted, because bug 12441 impacts the comparison script.

-----

Toaster
Exploratory testing was executed in this release.

-----
Performance

The performance results showed regression on some of the measurements compa=
red to 2.3.2rc1 info showed below, the most important one is on building eS=
DK that is taking around 30% of increase on fedora machine.


Ubuntu 15                          Test       2.3.2 rc1              2.3.3 =
rc1              %
                                             sato       1:12:11            =
    1:16:29                +5.96
                                             rootfs    2:49                =
      2:53                      +2.37
                                             rmwork 1:04:15                =
1:06:47                +3.94
                                             kernel    5:21                =
      5:25                      +1.25
                                             eSDK      2:46                =
      2:46                      0.00
                                                                          =
=20
                                                                          =
=20
Fedora 23                           Test       2.3.2 rc1              2.3.3=
 rc1              %
                                             sato       1:14:51            =
    1:21:20                +8.66
                                             rootfs    2:45                =
      2:44                      -0.61
                                             rmwork 1:07:47                =
1:14:54                +10.50
                                             kernel    5:56                =
      6:04                      +2.25
                                             eSDK      3:06                =
      4:12                      +35.48


https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-20-_Full_Test_Cycle_-_2.3=
.3_rc1#Performance_Charts

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D


The build is stable enough to be released, provided the following results a=
re checked and investigated:

    1. Performance needs to be executed in an environment outside of GDC in=
 another fedora 23, volunteers?
    2. QA asks ptest for slang package be checked by development to verify =
that it is executing.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -12440[1] test_qemu_efi (oeqa.selftest.wi=
c.Wic) fails on Fedora26
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0-12441[2] ptest comparison script is no=
t showing correct results
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0-12436[3] [Test Case 1958] Project name=
s cannot be blank
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -12437[4] [Test Case 1958] Toaster explor=
atory testingin the test run.

=A0=A0=A0=A0=A0=A0 Not new M+ bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -12022[5] signing.Signing.test_signing_pa=
ckages hangs on ubuntu1704.yocto.io

Full Bug Report:  https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-20-_Ful=
l_Test_Cycle_-_2.3.3_rc1#Bugs_Found_during_QA_Test



=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0=A0=A0 1.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2440[1]=20

=A0=A0=A0 2.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2441[2]=20

=A0=A0=A0 3.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2436[3]=20

=A0=A0=A0 4.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2437[4]=20

=A0=A0=A0 5.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2022 [5]=20
=A0=A0=A0

Regards
Libertad G.



