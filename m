Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C33FE00E1F; Thu,  8 Mar 2018 01:41:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08952E00CE2
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 01:41:31 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Mar 2018 01:41:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,440,1515484800"; d="scan'208";a="22711944"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
	by fmsmga007.fm.intel.com with ESMTP; 08 Mar 2018 01:41:30 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.166]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.67]) with mapi id
	14.03.0319.002; Thu, 8 Mar 2018 17:41:29 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Jordan, Robin L" <robin.l.jordan@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lock, Joshua G" <joshua.g.lock@intel.com>, 
	"Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: Resend QA cycle report for 2.4.2 RC2
Thread-Index: AdO2vUM0SLgyPBfyQwaXRC4GNMc4JQABEZQw
Date: Thu, 8 Mar 2018 09:41:28 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DDC966@PGSMSX109.gar.corp.intel.com>
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
Subject: Resend QA cycle report for 2.4.2 RC2
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
X-List-Received-Date: Thu, 08 Mar 2018 09:41:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
Resend the full report for 2.4.2 RC2 with updated information: =20
https://wiki.yoctoproject.org/wiki/WW10_-_2018-03-05-_Full_Test_Cycle_-_2.4=
.2_rc2

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.4.2 RC2 was completed including the performance =
test.=A0 Team had discovered 3 new bugs (oeselftest.sstatetests.test_sstate=
_sametune_samesigs failed, x11perf failed on minnowmax and nuc, toaster run=
 again button does not behaved as expected).

For testrun# 9206-9212, testopia testcases not 100% completed as there are =
some outdated testcases that were no longer available in oeqa/selftest test=
suite, pending testopia data cleanup.=20

Performance tests were executed for both 2.4.2 RC2 and 2.4.1 RC1 (as regres=
sion and benchmark) on these new machines in linux foundation.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

QA shows no major bug.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

New Bugs
[1] 12587 - [2.4.2 rc2] test_sstate_sametune_samesigs (sstatetests.SStateTe=
sts) [2] 12590 - [2.4.2 rc2] No. of Chars/sec For Yocto Image is very Low T=
o that of Ubuntu [3] 12591 - [2.4.2 rc2] Run again button from all builds p=
age must run the specified task

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12587
2. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12590
3. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12591

Regards
Ee Peng=20



