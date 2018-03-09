Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0CD5E00E22; Thu,  8 Mar 2018 16:57:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4942DE00D6D
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 16:57:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Mar 2018 16:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,443,1515484800"; d="scan'208";a="181174283"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
	by orsmga004.jf.intel.com with ESMTP; 08 Mar 2018 16:57:24 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.166]) by
	PGSMSX104.gar.corp.intel.com ([169.254.3.70]) with mapi id
	14.03.0319.002; Fri, 9 Mar 2018 08:57:23 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jordan, Robin L" <robin.l.jordan@intel.com>,
	"Zhang, Jessica" <jessica.zhang@intel.com>, "Lock, Joshua G"
	<joshua.g.lock@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: Resend QA cycle report for 2.4.2 RC2
Thread-Index: AdO2vUM0SLgyPBfyQwaXRC4GNMc4JQABEZQwAA7i++AAEOwlQA==
Date: Fri, 9 Mar 2018 00:57:22 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335DDCD2C@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335DDC966@PGSMSX109.gar.corp.intel.com>
	<9ADD3FDE8B189B4AA2F8A3C711F8155EC7295507@fmsmsx111.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7295507@fmsmsx111.amr.corp.intel.com>
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
Subject: Re: Resend QA cycle report for 2.4.2 RC2
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
X-List-Received-Date: Fri, 09 Mar 2018 00:57:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

Those idle test cases are actually belongs to the outdated testcases inside=
 Testopia, GDC had opened a Bugzilla ticket to remove and replace outdated =
and duplicated test cases. We are in progress of removing ducplicated test =
cases, next step is to remove outdated test cases using automated script th=
at utilize testopia python api.=20

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12435

For testrun# 9206-9212, testopia testcases not 100% completed as there are =
some outdated testcases that were no longer available in oeqa/selftest test=
suite, pending testopia data cleanup.

Please let me know if any more question.

Thanks,
Ee Peng=20

-----Original Message-----
From: Jolley, Stephen K=20
Sent: Friday, March 9, 2018 12:48 AM
To: Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; 'yocto@yoctoproject.org' <yocto=
@yoctoproject.org>; Purdie, Richard <richard.purdie@intel.com>; Jordan, Rob=
in L <robin.l.jordan@intel.com>; Zhang, Jessica <jessica.zhang@intel.com>; =
Lock, Joshua G <joshua.g.lock@intel.com>; Eggleton, Paul <paul.eggleton@int=
el.com>
Cc: Sangal, Apoorv <apoorv.sangal@intel.com>
Subject: RE: Resend QA cycle report for 2.4.2 RC2

Why are we showing 62 (2%) of the test cases as Idle.  (Not Run).  Were the=
y blocked? What happened to them?

Thanks,

Stephen

-----Original Message-----
From: Yeoh, Ee Peng=20
Sent: Thursday, March 08, 2018 1:41 AM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>; Purdie, Richard <ric=
hard.purdie@intel.com>; Jolley, Stephen K <stephen.k.jolley@intel.com>; Jor=
dan, Robin L <robin.l.jordan@intel.com>; Zhang, Jessica <jessica.zhang@inte=
l.com>; Lock, Joshua G <joshua.g.lock@intel.com>; Eggleton, Paul <paul.eggl=
eton@intel.com>
Cc: Sangal, Apoorv <apoorv.sangal@intel.com>
Subject: Resend QA cycle report for 2.4.2 RC2

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



