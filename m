Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC4CBE03056; Tue, 12 Jun 2018 20:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE24E0304A
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 20:22:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2018 20:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,217,1526367600"; d="scan'208";a="56871461"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2018 20:22:47 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.110]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.136]) with mapi id
	14.03.0319.002; Wed, 13 Jun 2018 11:22:46 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: QA cycle report for 2.4.3 RC2
Thread-Index: AdQCNgYlScP3wiGESQCKhBJRDknQSQAj1hyw
Date: Wed, 13 Jun 2018 03:22:45 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E65208@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E64BD8@PGSMSX109.gar.corp.intel.com>
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E64BD8@PGSMSX109.gar.corp.intel.com>
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
Subject: QA cycle report for 2.4.3 RC2
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
X-List-Received-Date: Wed, 13 Jun 2018 03:22:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,

This is the full report for 2.4.3 RC2: =20
https://wiki.yoctoproject.org/wiki/WW24_-_2018-06-12-_Full_Test_Cycle_-_2.4=
.3_rc2

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.4.3 RC2 was completed.=A0 Team had found that vi=
rtual/kernel build time had increased by 10% and 18% accordingly on Centos =
7 and Ubuntu 1604 performance machines.  Team found that libxml2 pTest was =
failed.  No other new bugs were discovered.=20

=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

QA shows no major bug.

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

New Bugs
[1] Bug 12782 - [2.4.3.rc2] libxml2 ptest failed
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12782

Regards
Ee Peng=20



