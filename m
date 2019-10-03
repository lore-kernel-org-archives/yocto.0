Return-Path: <vineela.tummalapalli@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EBBEE00D8B; Thu,  3 Oct 2019 15:00:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 880E4E00BE2;
	Thu,  3 Oct 2019 15:00:05 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Oct 2019 15:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="392098912"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga005.fm.intel.com with ESMTP; 03 Oct 2019 15:00:04 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 3 Oct 2019 15:00:04 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.249]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.194]) with mapi id
	14.03.0439.000; Thu, 3 Oct 2019 15:00:04 -0700
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Milestone 3 for Yocto Project
	2.8 (yocto-2.8_M3) now available
Thread-Index: AdV6L0HUHCZgQo0WRB6bJArqtFFv/w==
Date: Thu, 3 Oct 2019 22:00:03 +0000
Message-ID: <363DC7214F94884BBF80916755E7D65520773312@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWQxMzRjMWItZjkwMC00YmI3LTliNDAtMmM1YjBjMjI4NzgwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWXpSbWh1WEtXcHVvTStaQ0loSTFrem5rNHY3MkcyTGczaGREK3B3TFRxdXpid3JwY3FCdTVXUzYwWjhSOGtRdyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: [yocto-announce] [ANNOUNCEMENT] Milestone 3 for Yocto Project 2.8 (yocto-2.8_M3) now available
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
X-List-Received-Date: Thu, 03 Oct 2019 22:00:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello,

We are pleased to announce the third milestone release for Yocto Project 2.=
8 (yocto-2.8_M3) is now available for download.

Download:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.8_M3

bitbake: 797354d285f6d624d9adb52bab65823572da0e39
meta-gplv2: 1e2480e50f34e55bdfd5e06f98441e03a3752d5a
meta-intel: 655dfaec95196b9c0e15d34f490e4a51a7d501e3
meta-mingw: 9df4e115ab9a7ab23f81fdbcc62b2a0269d6377f
oecore: 95ad5626296380358c8a502a3e04879dab653d78
poky: 81f9e815d36848761a9dfa94b00ad998bb39a4a6

Full Test Report:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.8_M3/te=
streport.txt

Thank you.
Vineela Tummalapalli
vineela.tummalapalli@intel.com
Yocto Project Build and Release

