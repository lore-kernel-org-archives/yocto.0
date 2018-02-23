Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F18CE00E7D; Thu, 22 Feb 2018 18:18:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB56E00DB1
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 18:18:53 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Feb 2018 18:18:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,381,1515484800"; d="scan'208";a="30019556"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by orsmga003.jf.intel.com with ESMTP; 22 Feb 2018 18:18:52 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.166]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.87]) with mapi id
	14.03.0319.002; Fri, 23 Feb 2018 10:18:51 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Jordan, Robin L"
	<robin.l.jordan@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>, 
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>
Thread-Topic: QA cycle report for 2.2.3 RC2
Thread-Index: AdOsSKyqyZ2hJD1PQP6GYR7PN5Pe4A==
Date: Fri, 23 Feb 2018 02:18:50 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DD6FD8@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjQ2MzYwMDctZTE2OS00ZWQ1LTgwNDMtOWQ3OTJkNzlmNmRiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6ImU5cmNhNmt3YkR5NmV4N3JRXC81bGlNbFB5c2tsZkFRc1llQ2g1ZWRpUTFrPSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
Subject: QA cycle report for 2.2.3 RC2
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
X-List-Received-Date: Fri, 23 Feb 2018 02:18:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
This is the full report for 2.2.3.RC2: =20
https://wiki.yoctoproject.org/wiki/WW06_-_2018-02-08_-_Full_Point_Release_T=
est_Cycle_2.2.3_rc2

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.2.3.RC2 was completed.=A0 Team had discovered 3 =
new bugs. =20

Performance tests executed on GDC show that eSDK time was longer than expec=
ted on both Fedora and Ubuntu machines, where GDC Fedora machine was identi=
fied to be causing longer eSDK time previously in 2.5 M1 rc3.  Suspect that=
 GDC Ubuntu machine was facing same issue as the Fedora machine which causi=
ng the longer than expected eSDK time. =20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

The build is stable enough to be released, need to rerun performance tests =
on new machines from Linux Foundation.=20

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

New Bugs
	- 12519 [1] [2.2.3 rc2] ccache-native-3.2.5-r0: oe-runmake failed
	- 12520 [2] [2.2.3 rc2] grub-efi-native-2.00-r3 oe_runmake failed
	- 12521 [3] [2.2.3 rc2] setUpClass - gpg fail to build skey array skipping=
 testcases (auto)

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
1.  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12519  [1]=20
2.  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12520  [2]
3.  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12521  [3]

Regards
Ee Peng=20



