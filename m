Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69AD8E00DA3; Thu,  1 Aug 2019 00:30:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2335E00CD7
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 00:30:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Aug 2019 00:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="175156764"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by orsmga003.jf.intel.com with ESMTP; 01 Aug 2019 00:30:44 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.91]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.22]) with mapi id
	14.03.0439.000; Thu, 1 Aug 2019 15:30:43 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.8 M2 RC1
Thread-Index: AdVIOsDVMX0ezMlkQGSCHgUZ9Bv2Zw==
Date: Thu, 1 Aug 2019 07:30:42 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04348210BA7@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2Q3ZGVlZGMtMzI5NC00MzBhLTllNDktZjNkYmZlMGE5MWFlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQmtuckJFV1hyXC82MDRQSEdteDZcL0luc0pQc2JlV2RrZ2NOWDlHNloxZUdYdjl5RHRSRGhaVldwQU1NVGxPaXZhIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: QA cycle report for 2.8 M2 RC1
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
X-List-Received-Date: Thu, 01 Aug 2019 07:30:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,
=20
This is the full report for 2.8 M2 RC1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dzeus&id=3Dd550d40646e1ca78a4b5d106e1b20831208b4c37

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
Two new defects are found in this cycle, both beaglebone and genericx86-64 =
facing shutdown hanging (BUG id:13461) and ptest failed (BUG id:13465).=20
One timeout issues observed in ptests was mdadm (BUG id: 13368).

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13461
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13465
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13368

