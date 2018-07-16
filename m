Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E7B1E01378; Mon, 16 Jul 2018 07:51:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A322E00CF4
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 07:51:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Jul 2018 07:51:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,361,1526367600"; d="scan'208";a="245655572"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga005.fm.intel.com with ESMTP; 16 Jul 2018 07:51:24 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Mon, 16 Jul 2018 07:51:13 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.12]) by
	ORSMSX163.amr.corp.intel.com ([169.254.9.10]) with mapi id
	14.03.0319.002; Mon, 16 Jul 2018 07:51:13 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [meta-mingw][sumo][PATCH 1/1] openssl: build for mingw
Thread-Index: AQHUGWh7BdzddDN0UEOFTuYYt69nTqSMRI8AgAWw0DA=
Date: Mon, 16 Jul 2018 14:51:12 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B64E53CAD0@ORSMSX112.amr.corp.intel.com>
References: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
	<1531348961-38317-2-git-send-email-juro.bystricky@intel.com>
	<CAJTo0LZh7vxSP8D0tKk_NPky6NXS_gRz4J2zXMz8aU5b9Bhq9g@mail.gmail.com>
In-Reply-To: <CAJTo0LZh7vxSP8D0tKk_NPky6NXS_gRz4J2zXMz8aU5b9Bhq9g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2RmOWZkYTEtNDQ3YS00OGJkLTk2NjMtNGE4MzBhOTJlYjE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYUI2ZWhSQ1hQaVdUczBjMTIwcXdpaHV4UzlodWVqNks2T0xqVXlMdmY3MXJpN3htb0VQNTBhZFRuUXpVOWtwcyJ9
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Alejandro Enedino Hernandez Samaniego <alejandr@xilinx.com>,
	Juro Bystricky <jurobystricky@hotmail.com>
Subject: Re: [meta-mingw][sumo][PATCH 1/1] openssl: build for mingw
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
X-List-Received-Date: Mon, 16 Jul 2018 14:51:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCiANCj4gRG9lcyB0aGlzIGFsc28gd29yayBmb3Igcm9ja28gYW5kIG1hc3RlciBpZiB0aGUg
YmJhcHBlbmQgdXNlZCBhDQo+IHdpbGRjYXJkPyAgT3IgaXMgaXQgbm90IHJlcXVpcmVkIGZvciBy
b2NrbyBhbmQgbWFzdGVyPw0KDQpHb29kIHF1ZXN0aW9uLiBJIGFtIGluY2xpbmVkIHRvIHRoaW5r
IGl0IHNob3VsZCB3b3JrLiAoSSB3aWxsIHRlc3QgaXQpLg0KDQpKdXJvDQo=

