Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C1BE015EB; Thu, 19 Jul 2018 02:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74A56E010F6
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 02:55:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 02:55:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,374,1526367600"; d="scan'208";a="241525166"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
	by orsmga005.jf.intel.com with ESMTP; 19 Jul 2018 02:55:29 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.206]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.13]) with mapi id
	14.03.0319.002; Thu, 19 Jul 2018 17:55:28 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"'richard.purdie@linuxfoundation.org'" <richard.purdie@linuxfoundation.org>
Thread-Topic: QA cycle report for 2.2.4 RC1
Thread-Index: AdQfRm8YfoUplgBqQ7ym9ZSPfiqgag==
Date: Thu, 19 Jul 2018 09:55:28 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E844C2@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGU2ZDQ4MTYtOThmOC00ZTc4LWE5OTItZmM3NDk2YjUyYWQ0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZjhUWGpTemE4bHFubXNIQ0ZyZ29CMDZGbEZWejlSM051VWJpb3N5cTBETmdsOXZHVXI4RlFmNFRiTXhTVFphaSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.2.4 RC1
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
X-List-Received-Date: Thu, 19 Jul 2018 09:55:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
=A0
This is the full report for 2.2.4.rc1: =20
https://wiki.yoctoproject.org/wiki/WW28_-_2018-07-13_-_Full_Test_Cycle_2.2.=
4_rc1
=A0
=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
=A0
All planned tests were executed.  There were zero high milestone defect.  T=
eam had found 3 new defects [1] [2] [3] where runtime test_parselogs testca=
se failed with error message inside dmesg log.  While executing the runtime=
 smart package manager tests on target platform to install psplash, team di=
scovered that the target platform screen was splash with Yocto logo and the=
 Yocto logo remain after the tests completed, need further investigation to=
 verify if this was caused by post installation script from psplash.  For p=
erformance test, regression on 2.2.3.rc2 faced with error where SRCREV defi=
ned for distcc was no longer available.  For pTest, both glib-2.0 and util-=
linux passrate decreased as compared to 2.2.3.rc2 as some new tests availab=
le in 2.2.4.rc1 were failing.  =20
=A0
=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D
=A0
Found 3 non critical defects. =20
=A0
=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
=A0
New Bugs
[1] Bug 12854 - [2.2.4.rc1][BSP Auto] [genericx86-64 on MMAX64bit] [test_pa=
rselogs] blk_update_request: I/O error, dev loop0
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12854

[2] Bug 12853 - [2.2.4.rc1][BSP Auto] [genericx86-64 on NUC6][test_parselog=
s] drm:intel_dp_link_training_clock_recovery] *ERROR* too many voltage retr=
ies, give up
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12853

[3] Bug 12852 - [2.2.4.rc1][BSP Auto] [genericx86-64-WIC on NUC6][test_pars=
elogs] snd_hda_intel 0000:00:1f.3: failed to add i915 component master =20
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12852

Regards
Ee Peng

