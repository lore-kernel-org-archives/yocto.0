Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A98DAE00E23; Thu, 10 May 2018 02:32:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 830F0E00D60
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 02:32:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 May 2018 02:32:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,384,1520924400"; d="scan'208";a="49736914"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by orsmga003.jf.intel.com with ESMTP; 10 May 2018 02:32:18 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.58]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.47]) with mapi id
	14.03.0319.002; Thu, 10 May 2018 17:32:17 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Jordan, Robin L" <robin.l.jordan@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: QA cycle report for 2.5 M4 RC1
Thread-Index: AdPoQaecm7N0KJUKQruMvqyxWIXwig==
Date: Thu, 10 May 2018 09:32:17 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E19CCF@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjk0YmQxNGMtZmRmNi00YWJkLWEzM2QtYWZkZTViMTVhZWUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6InkycjhtWG94cUFtRnE3ZUptakpcL1F5VnhlRG53WlFKWFhNZEpkTXdPajRzPSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: QA cycle report for 2.5 M4 RC1
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
X-List-Received-Date: Thu, 10 May 2018 09:32:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is the full report for 2.5 M4 RC1: =20
https://wiki.yoctoproject.org/wiki/WW19_-_2018-05-10-_Full_Test_Cycle_-_2.5=
_M4_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.5 M4 RC1 was completed.  Team had discovered 2 n=
ew bugs.

1.	eSDK toolchain were configured with SSTATE_MIRRORS but "devtool sdk-inst=
all libxml2" failed [1]. =20
2.	oe-selftest failed at runtime_test.TestImage.test_testimage_dnf [2].=20


For high & medium+ bugs identified during 2.5 M3 RC1, all 3 high bugs (1264=
7, 12665, 12655) and 2 medium+ bugs (12633 & 12641) were resolved/verified.=
 =20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

No significant bugs were discovered.=20

=3D=3D=3D=3D=3D=3D=3D New Bugs =3D=3D=3D=3D=3D=3D=3D=3D

[1] Bug 12725 - devtool sdk-install unable to add component for libxml2
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12725

[2] Bug 12736 - 2.5 rc1: CentOS 7 oe-selftest fail at runtime_test.TestImag=
e.test_testimage_dnf
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12736

Regards
Ee Peng

