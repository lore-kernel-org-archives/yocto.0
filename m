Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EEC0E00BEB; Fri, 30 Mar 2018 06:23:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0130.outbound.protection.outlook.com [104.47.2.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADB6FE008D3
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 06:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=GxLGtiXmbTYxMru7hLOneSspTlNHake9y2LW01ZMOzE=;
	b=gPoyDm0ZZIM3BjEclI1nshZkzNs8A3GjQX1pHc1QZa1SH/v83sQj/K7cVI+XGNkX4TCuExtHIYEIlbScTO8vVTDllZxPqPuaNjRvoXEFjiFUVjCdA3LjoMw+RM40rc5T+QnaUsANvNulgCbiOeTzTRdSTbjoETs/Y1DiyWiAtoU=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0015.EURP192.PROD.OUTLOOK.COM (10.175.179.137) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.631.10; Fri, 30 Mar 2018 13:08:44 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::d9f:f0dc:1854:63eb]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::d9f:f0dc:1854:63eb%17]) with mapi id 15.20.0631.013;
	Fri, 30 Mar 2018 13:08:44 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] defconfig file (or fragment files) not used
Thread-Index: AdPGsRgiBH7nQ9LET1GPBu0dtVUh0QAttlOAAAAkq7A=
Date: Fri, 30 Mar 2018 13:08:43 +0000
Message-ID: <VI1P192MB0143A7A3AA8AB0E0433F0E738DA10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<4d479834-e8a6-0f65-e34f-2cbd271192bd@windriver.com>
In-Reply-To: <4d479834-e8a6-0f65-e34f-2cbd271192bd@windriver.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0015;
	7:AhigjpJlKoKFjvLqclShuLyb7MaraG7B/JprcSyXsFAzlZUfX2eBzjLtkfYbmeli0CvX+3DW04x/qF0xhPlBrxX/786woORp//YVDA2BiZ9G/F71mgaI3wQ8nwTjO9pUZzuXWM25obaUwwWp2JfjhZaPbE5p/3sQEIBeL+QUPs4N/YTJN78kffB3X7QnG0lpGrhtDJlhTDoGtJuvtXzDqkBBLtSNBpupg84KjrdPfcK27lsfyIErZW+bjOFNDTk8
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 1fba2189-1c4b-470d-0c9f-08d5963f5daf
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0015; 
x-ms-traffictypediagnostic: VI1P192MB0015:
x-microsoft-antispam-prvs: <VI1P192MB0015AB7393C6E159F178D83F8DA10@VI1P192MB0015.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3231221)(944501327)(52105095)(10201501046)(93006095)(93001095)(3002001)(6041310)(20161123560045)(2016111802025)(20161123558120)(20161123562045)(20161123564045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0015; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0015; 
x-forefront-prvs: 06274D1C43
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(39380400002)(396003)(346002)(366004)(39830400003)(189003)(199004)(76176011)(33656002)(3280700002)(2906002)(68736007)(8936002)(5250100002)(2900100001)(99286004)(478600001)(26005)(2501003)(186003)(3846002)(305945005)(7696005)(66066001)(6116002)(7736002)(229853002)(3660700001)(53546011)(446003)(6506007)(110136005)(74316002)(106356001)(55016002)(9686003)(86362001)(486005)(6436002)(486005)(6246003)(476003)(5660300001)(8676002)(11346002)(105586002)(97736004)(25786009)(53936002)(81166006)(14454004)(316002)(81156014)(102836004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0015;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 3x90mtz33aiyg0HYE/R1nCqam0cOhDKX/9rJcFcR71j+IATTj8Jtrp+i/iiDzj/+MY7HkSxHm6uJFrMjbDPsbbsHrKBw9SoXamwZbFdA5F57+bnNu2F5ea6Uid3B2TssPyA7J5I438VHSmQfLz945Ko5mpf7/3Si/O37b4rrlYItWXgut+IeDOGhQDpOUla5oJ9eWMxfC+jZLUc8N9DW7snLTd4KzLxzVdmSQjZjMWubFua7ppRyVsydf5rfH7NFfA/xOxTimlrzEI4UpMPEfTjdhnTcNg4ytgWbOGbT3Y6BJ4sOHe6AaRyEgJRhzgzhNKGRDL1afoTuxGUMPNXNKJw7208GosS4guEEj/uQIsm79MDf857hJkX0ZjStDCvP/nCvhp+I3FoihcXG7c9rBMICWGtUrODvbQVAHtH7Z/g=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fba2189-1c4b-470d-0c9f-08d5963f5daf
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2018 13:08:44.0089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0015
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Fri, 30 Mar 2018 13:23:29 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KPiBPbiAwMy8yOS8xOCAxNjoxMiBQTSwgQnJ1Y2UgQXNoZmllbGQgd3JvdGU6DQo+IFtj
dXRdDQo+IERvIHlvdSBoYXZlIGFsbCBvZiB0aGUgQ0FOKiBLY29uZmlnIGRlcGVuZGVuY2llcyBp
biB5b3VyIGRlZmNvbmZpZyA/DQpObyBvbmx5IHRoZSBvbmVzIEkgbmVlZA0KDQo+IElmIHlvdSBk
b24ndCwgdGhlIGtlcm5lbCBjb25maWcgc3Vic3lzdGVtIHdpbGwgdHVybiB0aGVtIG9mZi4NCj4g
DQo+IEFsc28gbm90ZSB0aGF0IGEgJ2RlZmNvbmZpZycgdHJhbnNsYXRlcyB0byBhIG1lcmdlIGNv
bmZpZyBydW4gKHllcywgZXZlbiB3aXRoIGp1c3QgYSBkZWZjb25maWcpIG9mICdhbGxub2NvbmZp
ZycsIHNvIHRoYXQgY2FuIGFsc28gYmUgdHVybmluZyBvZmYgZGVwZW5kZW5jaWVzIGlmIHRoZXkg
d2VyZSBvbmx5IHZhbGlkIHZpYSB0aGVpciBkZWZhdWx0IGFuZCB3ZXJlIG5vdCBleHBsaWNpdGx5
IHNwZWNpZmllZC4NCj4gDQo+IFlvdSBjYW4gc2V0IEtDT05GSUdfTU9ERT0iYWxsZGVmY29uZmln
IiBpbiBhIGxpbnV4LXlvY3RvIGJiYXBwZW5kIHRvIGNoYW5nZSB3aGF0IG1vZGUgbWVyZ2UtY29u
ZmlnIHVzZXMuDQpJIHRyaWVkIHRoaXMgYnV0IGdvdCB0aGUgc2FtZSByZXN1bHQg4pi5IQ0KRG8g
eW91IHRoaW5rIEkgaGF2ZSB0byBzZXQgYWxsIHRoZSAiQ0FOKiIgZGVwZW5kZW5jaWVzPw0KDQoN
ClZpbmNlbnQNCg0KDQo=

