Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3A80E00C43; Wed, 20 Mar 2019 19:17:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.8.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80047.outbound.protection.outlook.com [40.107.8.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 561E6E00754
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 19:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KiH8RG0TJt8gMHkGQsYvD6b3FRScNmPW1ESAPcUXBx4=;
	b=j2u/ysp43dzzn9fcBLth4jHg65kX191Y50TlBCwnLOcrn0+sEW/RdgO4Red1aayIFxPVODZRdIKwkedHBYGo6b+lJx0OQVu1uN0xsodoyivQwchTD1vE4krmfPhP3AbjuWGYHWo3xNdm/ng/1a+CjPPCiNSmy8zn7jgaf0T3XSs=
Received: from AM3PR04CA0148.eurprd04.prod.outlook.com (2603:10a6:207::32) by
	AM0PR0402MB3411.eurprd04.prod.outlook.com (2603:10a6:208:1a::20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1709.15;
	Wed, 20 Mar 2019 13:47:26 +0000
Received: from HE1EUR01FT040.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::200) by AM3PR04CA0148.outlook.office365.com
	(2603:10a6:207::32) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1730.15 via
	Frontend Transport; Wed, 20 Mar 2019 13:47:26 +0000
Authentication-Results: spf=pass (sender IP is 52.236.92.113)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=pass (signature was
	verified) header.d=topicbv.onmicrosoft.com; yoctoproject.org; dmarc=none
	action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.236.92.113 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.236.92.113;
	helo=eu2-emailsignatures-cloud.codetwo.com;
Received: from eu2-emailsignatures-cloud.codetwo.com (52.236.92.113) by
	HE1EUR01FT040.mail.protection.outlook.com (10.152.1.72) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1730.9 via Frontend Transport; Wed, 20 Mar 2019 13:47:25 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (104.47.6.58) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Wed, 20 Mar 2019 13:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KiH8RG0TJt8gMHkGQsYvD6b3FRScNmPW1ESAPcUXBx4=;
	b=j2u/ysp43dzzn9fcBLth4jHg65kX191Y50TlBCwnLOcrn0+sEW/RdgO4Red1aayIFxPVODZRdIKwkedHBYGo6b+lJx0OQVu1uN0xsodoyivQwchTD1vE4krmfPhP3AbjuWGYHWo3xNdm/ng/1a+CjPPCiNSmy8zn7jgaf0T3XSs=
Received: from DB7PR04MB5260.eurprd04.prod.outlook.com (20.176.236.92) by
	DB7PR04MB5273.eurprd04.prod.outlook.com (20.176.236.93) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1730.15; Wed, 20 Mar 2019 13:47:18 +0000
Received: from DB7PR04MB5260.eurprd04.prod.outlook.com
	([fe80::b0b4:776c:f2bf:963c]) by
	DB7PR04MB5260.eurprd04.prod.outlook.com
	([fe80::b0b4:776c:f2bf:963c%7]) with mapi id 15.20.1730.013;
	Wed, 20 Mar 2019 13:47:18 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] how to make writable permission for home/root in
	read-only rootfs (yocto build)
Thread-Index: AQHU3xJDIn0+hiuEiU+KnfQBsSEyzaYUiLiA
Date: Wed, 20 Mar 2019 13:47:18 +0000
Message-ID: <6ad15b81-0ec4-dd3c-0d58-f749805d2b8d@topic.nl>
References: <CALCW+OmkL2NhhdTqJ5A-fAztRqWLJk4rztxYLvCZz=8P=dZ2qA@mail.gmail.com>
In-Reply-To: <CALCW+OmkL2NhhdTqJ5A-fAztRqWLJk4rztxYLvCZz=8P=dZ2qA@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
x-clientproxiedby: AM5PR0502CA0024.eurprd05.prod.outlook.com
	(2603:10a6:203:91::34) To DB7PR04MB5260.eurprd04.prod.outlook.com
	(2603:10a6:10:21::28)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 96c226ea-d271-4d83-bda3-08d6ad3a964f
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR04MB5273; 
X-MS-TrafficTypeDiagnostic: DB7PR04MB5273:|AM0PR0402MB3411:|AM0PR0402MB3411:|AM0PR0402MB3411:|AM0PR0402MB3411:|AM0PR0402MB3411:
X-Microsoft-Antispam-PRVS: <AM0PR0402MB3411CAC93996B2A7EBB67EB696410@AM0PR0402MB3411.eurprd04.prod.outlook.com>
x-forefront-prvs: 098291215C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(39840400004)(346002)(366004)(136003)(189003)(199004)(486006)(256004)(6486002)(5640700003)(6436002)(446003)(44832011)(11346002)(229853002)(476003)(186003)(102836004)(26005)(2616005)(6506007)(53546011)(52116002)(386003)(6916009)(76176011)(97736004)(42882007)(64126003)(66066001)(65956001)(65806001)(36756003)(2501003)(6116002)(2906002)(3846002)(99286004)(316002)(105586002)(58126008)(106356001)(31686004)(74482002)(25786009)(65826007)(508600001)(71200400001)(68736007)(14454004)(71190400001)(305945005)(7736002)(53936002)(31696002)(6512007)(2351001)(6246003)(4744005)(8676002)(5660300002)(81166006)(8936002)(1730700003)(81156014);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5273;
	H:DB7PR04MB5260.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: wA1+NPy2oLynAcXW3MRWNwxcL4FrnaVBvx9gsMzUHjs+0s2g8xWsyckoqXNXr7QJ0rowe1yhyQo3Cl8CgGgMVrnlWMZTUevdX1Cce5HJndP+T5YkOB8BbaVypHNCiyHqgT0qYouYkWWKPusBUzinVXq8pgDVqoHv4odU5nBUHtTBgX45OFEJ/ZNx0OyfDeFXvLy0txji/hJc6bCKZ5CEg3UXQawJ/nthN8Zni8EHU05LZPnEgQ1KRHTI241ImR6RTVGBzYwDjv+aC8mgoxG5+yte8slVys0v7Ck/HPTWZYBsIlaGAVy5Fd7YdoMSdLwpKm5fFKNPta9Jfh+IuyLqmBygomZtfhOhUvw3sJLD/Ohr63tgk7dABjTsClXoZI2Bwmyva4LpzyGyDFflk5tgBTJPwiBhU5P3EHjhYOGhxiI=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5273
X-CodeTwo-MessageID: 20190320134722.7d9e5b1b-5d69-490b-9e93-0d00361afce7@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT040.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(136003)(39840400004)(2980300002)(199004)(189003)(7596002)(36756003)(50466002)(7736002)(7636002)(106466001)(6506007)(229853002)(53546011)(65826007)(508600001)(4744005)(44832011)(102836004)(305945005)(26005)(31696002)(126002)(476003)(23676004)(446003)(2351001)(386003)(64126003)(6512007)(42882007)(186003)(74482002)(6486002)(2616005)(2486003)(6916009)(11346002)(436003)(486006)(316002)(106002)(58126008)(5660300002)(356004)(5640700003)(336012)(76176011)(99286004)(47776003)(66066001)(65806001)(6116002)(65956001)(6246003)(25786009)(1730700003)(2906002)(8676002)(246002)(2501003)(8936002)(14454004)(31686004)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3411;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d5d5b4c5-4fe4-4ec2-eb92-08d6ad3a9171
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600127)(710020)(711020)(4605104)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM0PR0402MB3411; 
X-Forefront-PRVS: 098291215C
X-Microsoft-Antispam-Message-Info: 0eJes04R8bzsvhjlFhZ0+ZKnWfqv7geZPnlTUbuwl7TOSG1iqIyXBQBjxljssEgGi7b+3c2qavTiCH66GtNy3BSuBJ0A9mpeGHAAkNPnnD9w3KLgIsA/e1jMV8ejLbzm4vLvbj4+Uj1GDJna4DnUP/6U5iYh7Km+VyuyyMRmDBS8xYPHJvE9hWeES+KbFn2yhJX+KnQokEvTDlW4wCFRiLBVAo1VUBjyKCXLScFpUtIy3dsDYOP+5dmf48Rvng1Ziw600exkRm6tYpRwNg0PMVhvwrHdqiAME/KYbn7iITQGLtdbIFL5DY5O8q39h1az80e3hQxt8tKIEvp5VxxPhoVqAw9e4mtDoTUvB94NjuHQG+x4ZjJKad//rnM+eBx9l0fmIddnaq+Mgs4KmjOau593Ce6uGfd0rita6yFbWjs=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2019 13:47:25.8978 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 96c226ea-d271-4d83-bda3-08d6ad3a964f
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3411
X-OriginatorOrg: topic.nl
Subject: Re: how to make writable permission for home/root in read-only rootfs (yocto build)
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
X-List-Received-Date: Thu, 21 Mar 2019 02:17:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <39778DFCF886CE42B49D6C84C26FDB61@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMTktMDMtMTkgMTE6MjYsIEFydW5rdW1hciBWIHdyb3RlOg0KPiBISQ0KPiANCj4gY2FuIGFu
eSBvbmUgZXhwbGFpbiBtZSBob3cgdG8gY29uZmlnIHRoZSAvaG9tZS9yb290IGFzIHdyaXRhYmxl
IGluIHJlYWQtb25seSANCj4gcm9vdGZzPw0KPiANCj4gaXMgYW55IHNldHRpbmcgdG8gZG8gd2l0
aCBsb2NhbCBmaWxlIG9yIC5iYmNsYXNzPw0KPiBpZiBhbnkgbWFjcm9zIG5lZWQgdG8gYmUgZW5h
YmxlLCBwbGVhc2UNCj4gDQoNCg0KWW91IGNhbiBtb3VudCBzb21ldGhpbmcgd3JpdGVhYmxlIG9u
IHRvcCBvZiAvaG9tZS9yb290IHRvIGFjY29tcGxpc2ggdGhhdC4NCg0KKEJlaW5nIGFibGUgdG8g
d3JpdGUgb250byBhIHJlYWQtb25seSBwYXJ0aXRpb24gd291bGQga2luZCBvZiBkZWZlYXQgdGhl
IA0KcHVycG9zZSBvZiBhIHJlYWQtb25seSBmaWxlc3lzdGVtLi4uKQ0K

