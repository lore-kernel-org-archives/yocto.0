Return-Path: <vineela.tummalapalli@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1B58E00C9B; Tue,  6 Aug 2019 16:29:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67547E00C22;
	Tue,  6 Aug 2019 16:29:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Aug 2019 16:29:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="168450194"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga008.jf.intel.com with ESMTP; 06 Aug 2019 16:29:06 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Tue, 6 Aug 2019 16:29:06 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.15]) by
	ORSMSX114.amr.corp.intel.com ([169.254.8.237]) with mapi id
	14.03.0439.000; Tue, 6 Aug 2019 16:29:06 -0700
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Milestone 2 for Yocto Project
	2.8 (yocto-2.8_M2) now available
Thread-Index: AdVMrKqRWytwI0KrQHadGjPVcUPgkw==
Date: Tue, 6 Aug 2019 23:29:05 +0000
Message-ID: <363DC7214F94884BBF80916755E7D6552072679E@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2VhMGIwYTItYTllMS00ZDYyLWFiZGYtYjA2YjFkZTk2ZWU0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiREFodlVPVVEzYlUxY1hVZ2g1ckdJdzkwNXFvRmRDNVwvbWQrVUcrZjNuZUJJOEU4SUZJK0VSOW9DWjRGTnZBMDkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: [yocto-announce] [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.8 (yocto-2.8_M2) now available
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
X-List-Received-Date: Tue, 06 Aug 2019 23:29:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

We are pleased to announce the second milestone release for Yocto Project 2=
.8 (yocto-2.8_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.8_M2

bitbake: f5ea06fc2b6713c9f8e85ecf7cb981ae9a84d896
meta-gplv2: 1e2480e50f34e55bdfd5e06f98441e03a3752d5a
meta-intel: 3227874941bb8f9b706d6057b1de3997881bdffd
meta-mingw: 3fa43aa92f1a1c90304f6f4f49270915d1392cce
oecore: e0c3436241afca93f107e325d1b9ffcdebf706cd
poky: 835f7eac0610325e906591cd81890bebe8627580

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.8_M2/te=
streport.txt

Thank you.

Vineela Tummalapalli
vineela.tummalapalli@intel.com
Yocto Project Build and Release

