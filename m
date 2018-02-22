Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AF81E00ED6; Wed, 21 Feb 2018 22:59:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5009E00D7F
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 22:59:43 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Feb 2018 22:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,377,1515484800"; d="scan'208";a="28938565"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Feb 2018 22:59:42 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.166]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.10]) with mapi id
	14.03.0319.002; Thu, 22 Feb 2018 14:59:41 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Jordan, Robin L"
	<robin.l.jordan@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>, 
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>
Thread-Topic: QA cycle report for 2.5 M2 RC1
Thread-Index: AdOrqjN642a5CJQjSu6q/zVsV7mM6Q==
Date: Thu, 22 Feb 2018 06:59:41 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DD6C4D@PGSMSX109.gar.corp.intel.com>
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
Subject: QA cycle report for 2.5 M2 RC1
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
X-List-Received-Date: Thu, 22 Feb 2018 06:59:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
This is the full report for 2.5 M2 RC1: =20
https://wiki.yoctoproject.org/wiki/WW07_-_2018-02-14-_Full_Test_Cycle_-_2.5=
_M2_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.5 M2 RC1 was completed including the performance=
 test.=A0 Team had discovered a new bug [1] where sdk toolchain downloaded =
from Public Autobuilder failed when executing runqemu command. =20

YP QA recently requested the performance host machines from linux foundatio=
n to replace old machines, where initial setup completed at WW06 and going =
through testing. Performance tests were executed for both 2.5 M2 RC1 and 2.=
5 M1 RC3 (as regression and benchmark) on these new machines in linux found=
ation.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

Need to fix the sdk toolchain bug in order to enable runqemu. Performance r=
esults show that no significant differences in performance tests.=20

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - 12545 [1] [2.5 M2 RC1] SDK runqemu fail=
ed with python import logging

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0=A0=A0 1.=A0=A0=A0 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2545 [1]=20

Regards
Ee Peng=20



