Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA47BE00DD3; Mon, 15 Jan 2018 04:47:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85A89E0085E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 04:47:23 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jan 2018 04:47:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,363,1511856000"; d="scan'208";a="195621065"
Received: from pgsmsx112-dag.png.intel.com (HELO PGSMSX112.gar.corp.intel.com)
	([10.108.55.234])
	by fmsmga006.fm.intel.com with ESMTP; 15 Jan 2018 04:47:23 -0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.167]) by
	PGSMSX112.gar.corp.intel.com ([169.254.3.86]) with mapi id
	14.03.0319.002; Mon, 15 Jan 2018 20:47:22 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: Satya Sampangi <satya.2891@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-ti layer failed with Daisy
Thread-Index: AQHTjdoAPe8mibIkZkOqiMrpn4hKL6N04Baw
Date: Mon, 15 Jan 2018 12:47:21 +0000
Message-ID: <C0207330DF60C5409302EC78C3FE68F34B0AEC@PGSMSX105.gar.corp.intel.com>
References: <CAF1M0z6g24OyAwtWeZ+WL7Dz3J9KEN_6Xm1hBR4ZXFDA-4Tjig@mail.gmail.com>
In-Reply-To: <CAF1M0z6g24OyAwtWeZ+WL7Dz3J9KEN_6Xm1hBR4ZXFDA-4Tjig@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDFlMDRiZGMtYTU0OC00M2Q3LTk3YjUtNjgyNjA1Y2NjZmU5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJsMWlGaGh5ZTgyNzlldjZtK2dpZU1SZXZhelowVmlsZkk1NHhVeXRFQVlJcm9YTkxcL1p0cHExT0d5cVhmQkc4SiJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: meta-ti layer failed with Daisy
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
X-List-Received-Date: Mon, 15 Jan 2018 12:47:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgU2F0eWEsDQoNCj4gSSBhbSBidWlsZGluZyB0aGUgY29yZS1pbWFnZS1taW5pbWFsIGZvciBE
YWlzeSB3aXRoIG1ldGEtdGkgbGF5ZXIgaW5jbHVkZWQgaW4gYmJsYXllcnMuY29uZiBmaWxlIGFm
dGVyIHJlbW92aW5nIG1ldGEteW9jdG8tYnNwIGxheWVyLiBJIGFtIGdldHRpbmcgdGhlIGVycm9y
IHNob3duIGJlbG93LA0KDQpUaGlzIGlzIGEgdmVyeSBvbGQgdmVyc2lvbi4gUGxlYXNlIHVwZGF0
ZSB0byBvbmUgb2YgdGhlIGxhdGVzdCBzdXBwb3J0ZWQgcmVsZWFzZXMuDQoNCj4gW1NhdHlhXX4v
WW9jdG8tRGFpc3ktTGFicy9wb2t5L2J1aWxkDQo+IGJpdGJha2UgY29yZS1pbWFnZS1taW5pbWFs
DQo+IExvYWRpbmcgY2FjaGU6IDEwMCUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjfCBFVEE6IMKg
MDA6MDA6MDANCj4gTG9hZGVkIDE0NDYgZW50cmllcyBmcm9tIGRlcGVuZGVuY3kgY2FjaGUuDQo+
IEVSUk9SOiBObyByZWNpcGVzIGF2YWlsYWJsZSBmb3I6DQo+IMKgIC9ob21lL3NhdHlhL1lvY3Rv
LURhaXN5LUxhYnMvcG9reS9tZXRhLXRpL3JlY2lwZXMtY29yZS91ZGV2L2V1ZGV2XyUuYmJhcHBl
bmQNCj4gRVJST1I6IENvbW1hbmQgZXhlY3V0aW9uIGZhaWxlZDogRXhpdGVkIHdpdGggMQ0KDQpU
aGlzIGdlbmVyYWxseSAgbWVhbnMgdGhhdCB0aGUgYmIgZmlsZSB0aGF0IHRoaXMgaXMgYW4gYXBw
ZW5kIGZvciwgd2Fzbid0IGZvdW5kIGluIGFueSBvZiB0aGUgbGF5ZXJzLiANCg0KVGhhbmtzLA0K
QW51ag0K

