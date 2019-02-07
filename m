Return-Path: <easmith5@uchicago.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66EE8E00C9F; Fri,  8 Feb 2019 14:47:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.81.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 46003 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Feb 2019 14:47:13 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810119.outbound.protection.outlook.com [40.107.81.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B265E00C75
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2019 14:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uchicagoedu.onmicrosoft.com; s=selector1-uchicago-edu;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KjJEsbPN/LDl0QkY/hvJAdXocD7lHHvKj0QJEmc7Kmo=;
	b=AouTWdkKJQqChvJOuJZ/QNnl+ViAR+zM8L5GKyXQsi3lgFuCsMfITxxRAJs/ltj75+2jYqclqzIIrxHcID5tUbvbGu3Ocsbc8K2wAtqjvoRAj1vr44ayOnzZF4rePO5Xx74BWYUVG2Qj/3H6tUfmEW4Y36mJN18pPsZoM/8tWDM=
Received: from DM6PR11MB3193.namprd11.prod.outlook.com (20.176.119.213) by
	DM6PR11MB2652.namprd11.prod.outlook.com (20.176.99.138) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.19; Thu, 7 Feb 2019 00:27:54 +0000
Received: from DM6PR11MB3193.namprd11.prod.outlook.com
	([fe80::953a:7c1a:7fd3:7940]) by
	DM6PR11MB3193.namprd11.prod.outlook.com
	([fe80::953a:7c1a:7fd3:7940%4]) with mapi id 15.20.1580.019;
	Thu, 7 Feb 2019 00:27:54 +0000
From: Emily Smith <easmith5@uchicago.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Python default libraries 
Thread-Index: AQHUvnv32ScF801v5kqKI+UOjBwE5g==
Date: Thu, 7 Feb 2019 00:27:54 +0000
Message-ID: <ABF34097-42F0-4504-90FD-F2214ECC210D@uchicago.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=easmith5@uchicago.edu; 
x-originating-ip: [2601:240:c400:5a90:ecfe:a48c:5434:8fe]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM6PR11MB2652;
	20:MIhYBoPM1amjgY1xkBef+z06iehUImgIiQtiXzB/AePVtyhdWwWOqfwmYLz4zm1BnwibvpZvN78he81G2SqVsFEmt/9A2j2ak6Nssq0ozKNmMdlc5aRpqZSV7LbvLobw8+GPu72Q5iukOk96yRdOwducGW49UYciP1rRyP4VMW4=;
	23:z2I6jZ90HGDXE2kTgBo94ktNjnx4RTeEO6Yw3QQEMtnKJpNb4KClSkk+G88WQ0GlQ5141HRxU/ynHkeenAIjHQd9jhJoS1KI8czXzMSviNjTg4036+TjT19IjgEu7Rui0M8+LPfIkI+RFTRsnkUX8w==
x-ms-office365-filtering-correlation-id: 391f5500-ee4f-42bf-757d-08d68c9319f4
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:DM6PR11MB2652; 
X-MS-TrafficTypeDiagnostic: DM6PR11MB2652:|DM6PR11MB2652:
x-microsoft-antispam-prvs: <DM6PR11MB2652C55C55C219A0F4F05A3BE7680@DM6PR11MB2652.namprd11.prod.outlook.com>
x-forefront-prvs: 0941B96580
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(346002)(366004)(376002)(136003)(396003)(199004)(189003)(99286004)(97736004)(53936002)(14454004)(478600001)(88552002)(316002)(86362001)(786003)(2351001)(2906002)(6116002)(68736007)(8936002)(558084003)(106356001)(2501003)(36756003)(81166006)(82746002)(25786009)(6916009)(1730700003)(3480700005)(81156014)(83716004)(8676002)(33656002)(7736002)(71190400001)(71200400001)(4743002)(305945005)(105586002)(6486002)(5640700003)(6436002)(6506007)(186003)(46003)(102836004)(256004)(486006)(6512007)(7116003)(75432002)(476003)(2616005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB2652;
	H:DM6PR11MB3193.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: uchicago.edu does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Lr7Ae7ru8WBL15nY6qvlHDctexNVOzcV/LPVTCUrxX2XITTQiDnjCQVfqAL6i9Psej8ObjYVMkgoueo4EPr5PVZmZmP5jgbQYzd8Gjbua0Y8xBJCmLQ3PqYJPGfzwoKd5dSnQ9LGuSSplu+vErR8lAT4olChR93iMKVocyg2ABC7T902H7z8fCj6AhYD8tlQlqSt15g6sUmEnugL6B3OxkwA5JADJfUwJsKJuP7XC7O1JIfVXQetWYwBex0U/V76SmlIV5y1ARkA1VHQ8wC6z/fxn6RmcPu0NeFisED6j/l5Z/HMDTGfk4ML8UAdFJI5RKfylt5r7iy9/d39TWcTsomQPbyYKXtKxcHKy1UsWvgSeuKBGTIwDpB5SMscpK6NPjpwTIiv2RDXW2qLqD+jcwiXI52U1UiRpPN9A+hCJbE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 391f5500-ee4f-42bf-757d-08d68c9319f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2019 00:27:54.2125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83b02c92-5f26-48ed-9e5b-6c2fca46a8e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2652
X-OriginatorOrg: uchicago.edu
X-Mailman-Approved-At: Tue, 12 Feb 2019 08:13:01 -0800
Subject: Python default libraries
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
X-List-Received-Date: Fri, 08 Feb 2019 22:47:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <77EF4FB87F65E34BA240718A38FCADEC@uchicagoedu.onmicrosoft.com>
Content-Transfer-Encoding: base64

SGkgLQ0KDQpJ4oCZdmUgYmVlbiB3b3JraW5nIHdpdGggeW9jdG8gYW5kIHdpdGggc29tZSBjb2Rl
IHJ1bm5pbmcgb24gbXkgT1MsIGhvd2V2ZXIgSeKAmW0gc2VlaW5nIGVycm9ycyB0aGF0IHNlZW0g
dG8gaW5kaWNhdGUgdGhhdCBkZWZhdWx0IHB5dGhvbiBsaWJyYXJpZXMgYXJlIG5vIGxvbmdlciBp
bmNsdWRlZCAoc3BlY2lmaWNhbGx5IGxvZ2dpbmcgYW5kIGltcG9ydGxpYikuIEhhcyBzb21ldGhp
bmcgYWJvdXQgdGhlIGRlZmF1bHQgcHl0aG9uIGxpYnJhcmllcyBjaGFuZ2VkPyANCg0KVGhhbmtz
IQ0KRW1pbHkgU21pdGg=

