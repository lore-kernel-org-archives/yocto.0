Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E6F8E00D94; Mon, 21 Oct 2019 04:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.1.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10058.outbound.protection.outlook.com [40.107.1.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5138E00D16
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 04:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=6BkMO2I6XCfAcSbdwnaolFupQfeMy3BVIYnWYYGO/aA=;
	b=fg89BxW35vgzXWk8YKnoWI7zpXwMgGzYvIWQCQ3GpkaDL0R6DFNVIAj3JHA2PKeD4zcjYl2uRNTntG19eKQlh95NWxoAffDE6t2j6WYszKUG8+4QjyzyUeI9VayD7Mwzutpa0+axm5yUKR3Ke3qA7n5DYBns5514gm8K6H/UXbY=
Received: from AM7PR04CA0020.eurprd04.prod.outlook.com (2603:10a6:20b:110::30)
	by AM6PR0402MB3318.eurprd04.prod.outlook.com (2603:10a6:209:9::14)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.20;
	Mon, 21 Oct 2019 11:50:30 +0000
Received: from DB5EUR01FT025.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e02::203) by AM7PR04CA0020.outlook.office365.com
	(2603:10a6:20b:110::30) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.20 via
	Frontend Transport; Mon, 21 Oct 2019 11:50:30 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=none (message not
	signed) header.d=none; yoctoproject.org; dmarc=bestguesspass action=none
	header.from=topicproducts.com;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	DB5EUR01FT025.mail.protection.outlook.com (10.152.4.240) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.14 via Frontend Transport; Mon, 21 Oct 2019 11:50:29 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (104.47.0.53) by
	westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Mon, 21 Oct 2019 11:50:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=cBZff4OS0eD/0z3pK4QTAtfRc0ZBGH6O05HYIoP0Chlp9mruD69TYWbhFNN0Z6xPiIrOiXOrRmDxZg3iL0gxUbU902XMQO1rIdLTYfGM9KfeyCPWhhyhVdELsZ2HYYizOITpyHA3aTEwuKzFt6Db5GDiCoTFZJswMEd8cuogQdtzFUuvlYzHwMwKCgIEs+0RIz81G/YpPTLM+hp4J9KdvMQRXdrQlVJ3RZB+67TZTs0Zjir/z8rTFZ0Jgxvc952k++JbOTs87Gn+o3J7CKqpLCDwWWOlu3yVhyaSlh4cTMjQTE+Cds4L9BNG6zZ2yfK4dsdR4eaX/M/Ki95e0lQ8gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=JYaer41BseAJ5uCnbkTyvzVkg6nFV/pU7EDC3Q8QqeY=;
	b=aF4znda71RiO8dKBWyeqOIfsn9br/gcCFObFVX0rzrDfxobHvBRUwmPo3WlvAzyy5hLcHg0J14WMG9kZvhZ8a7A54pryEl9Np5n4X7S7E1VStv7ppn24ICh9k2fbYrvFSJa4JxDGyCYoatkLd9md2KN0XscH3InHcz9zAuecNvlnyHQ/X5beyoSRcR/5SJHhlyZrVcsGbHVEMa08obKvMgqacLQUoSa5H0kqNo7CoKl183RsW1/IsKQLR320ZgrJCw2e1CQUe/IT9KIGTLxh0rBPZnsQtOva8FpSschdtkpvRO1ubAw5qUPke0XWI905SqwYMergo4666h4Hje9kmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=topicproducts.com; dmarc=pass action=none
	header.from=topicproducts.com; dkim=pass header.d=topicproducts.com;
	arc=none
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com (10.141.174.88) by
	AM7PR04MB6918.eurprd04.prod.outlook.com (10.141.174.20) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.24; Mon, 21 Oct 2019 11:50:25 +0000
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com
	([fe80::1c26:66df:82c1:62b]) by AM7PR04MB6934.eurprd04.prod.outlook.com
	([fe80::1c26:66df:82c1:62b%5]) with mapi id 15.20.2347.028;
	Mon, 21 Oct 2019 11:50:25 +0000
From: Mike Looijmans <mike.looijmans@topicproducts.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Reducing the size of the image by optimizing python
Thread-Index: AQHVhYg7Pl6lKyJQokajvwtgB9NFP6dgGVOAgAHQRXSAACAaAIAABSDmgAAE6wCAAuykAA==
Date: Mon, 21 Oct 2019 11:50:25 +0000
Message-ID: <8d915ed2-365b-cfc0-0e18-70798f0347c9@topicproducts.com>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
	<MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<e6d9c7aa1796070677b20b08999fa2313abde740.camel@linuxfoundation.org>
	<1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.4240ac9c-b01f-45e6-9070-5b2736653819@emailsignatures365.codetwo.com>
	<1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.bf5d2683-0b1e-4651-b4bc-cad3e441cbf0@emailsignatures365.codetwo.com>
In-Reply-To: <e6d9c7aa1796070677b20b08999fa2313abde740.camel@linuxfoundation.org>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
x-clientproxiedby: AM0PR0102CA0054.eurprd01.prod.exchangelabs.com
	(2603:10a6:208::31) To AM7PR04MB6934.eurprd04.prod.outlook.com
	(2603:10a6:20b:10d::24)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 46bd205e-f2eb-49d0-9fbb-08d7561cdf0f
X-MS-TrafficTypeDiagnostic: AM7PR04MB6918:|AM6PR0402MB3318:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3318658B54031A522674185296690@AM6PR0402MB3318.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8882;
x-forefront-prvs: 0197AFBD92
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(366004)(39840400004)(346002)(136003)(396003)(376002)(199004)(189003)(305945005)(7736002)(6116002)(3846002)(6246003)(6486002)(52116002)(99286004)(71200400001)(76176011)(71190400001)(58126008)(316002)(6306002)(6436002)(6512007)(5640700003)(36756003)(229853002)(2906002)(25786009)(508600001)(81156014)(31696002)(6916009)(81166006)(1730700003)(8676002)(8936002)(86362001)(446003)(14454004)(966005)(5660300002)(31686004)(386003)(6506007)(102836004)(26005)(14444005)(256004)(2616005)(4744005)(2501003)(65806001)(66066001)(486006)(65956001)(64756008)(66556008)(66476007)(66946007)(44832011)(66446008)(2351001)(11346002)(476003)(186003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB6918;
	H:AM7PR04MB6934.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 5RlWI55AKjow0NVHKyKtPoBnb3xLg94DG7uMIx9ZHI8GVhhH0V4X8BS2llGX8vN0ZIIk6p4I+JKBU7TsUGw47fVTrdFKeboYdp5IuP0JJJau0WHd7e2hrZbKszINFCIofYEXzLxgVHiH6y9lgUv/IBt5wO/NnCtkl+wDVMPD7Ido9Vtdencb9bg0XuZAPAKNUR2014XRFocg+LXv6ZY4mtX9OuTvaamUcR4LfWsbTkumhIhsJXS0lb5edVUFNJ37vC6SnPOCepaQeeVFy3VH9XcSiVm/LHhtttAj424a1kC0w+y94VSVKI6oBvG2AYnRevXjQnlZjiubPds0lpxEyRPhRJKjIIuHfnj0edod2qtDTqf/SCKRq/CRNDIB8jxxVarKZqXeF5oVBVtB7LQCKVzNVAprSh1BDGNICW/nrqfYMZk7QHN8vfMg1ChWxSuScga6GAZOzr7afdiLPr3/ZiW/TIjb9gnFBQvnlJ2vHg4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6918
X-CodeTwo-MessageID: 069dfced-3835-4e28-895f-f9ca402c638a.20191021115027@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR01FT025.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:NL; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(39840400004)(346002)(396003)(136003)(199004)(189003)(229853002)(1730700003)(8936002)(99286004)(15974865002)(23676004)(50466002)(2486003)(6916009)(5640700003)(356004)(6486002)(14444005)(14454004)(102836004)(508600001)(966005)(6506007)(6512007)(386003)(486006)(8676002)(2501003)(6306002)(31686004)(26005)(476003)(66066001)(65956001)(6246003)(2351001)(305945005)(58126008)(7596002)(2616005)(86362001)(186003)(44832011)(31696002)(36756003)(65806001)(3846002)(126002)(6116002)(70206006)(25786009)(246002)(446003)(7736002)(70586007)(7636002)(106002)(47776003)(436003)(316002)(2906002)(5660300002)(11346002)(76176011)(336012);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3318;
	H:westeu11-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu11-emailsignatures-cloud.codetwo.com; A:1;
	MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3f49ba25-1763-4d69-b47b-08d7561cdc69
X-Forefront-PRVS: 0197AFBD92
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 21QQxp36BkCKryTZr61HaX2WXfKXB8WVJjGHr5e9dosefhVPoxGu1B3gMHwmDAAHSagVvotKxjHIm36iXNmebCv2tGCqrlruEy9GnB6WDZBQ8f+VkOmmAz7qOquyP+kWuevy0i1FMtzokh5efTQNF5kXJS7gkN0Hc7aA+1EtQSdFAkKHjYNxnSe8qYfhH9JEvAB3mONuCOnrIeoS+d1jsE8SpJ2Lmo2d0S6YTvnlx0dO8LFy2lPkmwpPYL4hJ7bliUxE4ib1BUVaP1eqi6xKjtPqt/XeqtYcO0mPyFf3olmJRdBwC7KImp4aFvDYoyo4yGDdEYCPRyYAYC07zc9BGiC7Oz75CmWV4b6TnOvdp0rJXMa3XLKxd+WeK0daRb0Q9Ry18K7xDbiEmlzv1GKFbX43f40SwVgwnVf0bkXmKZPs0YNgzzN73kCJKaC/lbwM1lZcjUMlrwPMvXLsrZ9bwg7eAFXLdyG/HlCJce9BGlA=
X-OriginatorOrg: TopicProducts.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2019 11:50:29.7140 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 46bd205e-f2eb-49d0-9fbb-08d7561cdf0f
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3318
X-Mailman-Approved-At: Mon, 21 Oct 2019 08:23:50 -0700
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Mon, 21 Oct 2019 11:50:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <463270A768E61242B5A0679A4B610904@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

PiBPcHRpbWlzaW5nIHRvIGp1c3QgcHljIGZpbGVzIGlzIGFuIG9wdGltaXNhdGlvbiBmdXJ0aGVy
IHRoYW4gbW9zdA0KPiBwZW9wbGUgZmluZCB0aGV5IG5lZWQgYW5kIHdpbGwgYmUgbXVjaCBoYXJk
ZXIgdG8gZG8uDQoNCkl0J3MgYWN0dWFsbHkgcXVpdGUgc2ltcGxlLCBqdXN0IGFkZCBhIGJiYXBw
ZW5kIHRvIHRoZSBweXRob24gcmVjaXBlIHRoYXQgcHV0cyANCmFsbCAucHkgZmlsZXMgaW50byB0
aGUgImRiZyIgb3IgbmV3bHkgY3JlYXRlZCAic3JjIiBwYWNrYWdlLiBPciBzaW1wbHkgZGVsZXRl
IA0KYWxsIC5weSBmaWxlcyBpbiBhIGRvX2luc3RhbGxfYXBwZW5kLg0KDQoNCkhlcmUncyBhbiBl
eGFtcGxlIG9mIHRoZSAic3JjIiBhcHByb2FjaDoNCg0KaHR0cHM6Ly9naXRodWIuY29tL09wZW5Q
TGkvb3BlbnBsaS1vZS1jb3JlL2Jsb2IvZGV2ZWxvcC9tZXRhLW9wZW5wbGkvcmVjaXBlcy1kZXZ0
b29scy9weXRob24vcHl0aG9uXzIuNy4xMy5iYmFwcGVuZA0KDQoNClNpbXBseSBkb2luZyB0aGlz
IGluIHRoZSBiYmFwcGVuZCBtaWdodCBhbHNvIHdvcmsgKHVudGVzdGVkKToNCg0KZG9faW5zdGFs
bF9hcHBlbmQoKSB7DQoJZmluZCAke0R9JHtsaWJkaXJ9L3B5dGhvbiR7UFlUSE9OX01BSk1JTn0v
IC1uYW1lICcqLnB5JyAtcmVtb3ZlDQp9DQoNCg0KUmVtb3ZpbmcgdGhlICIucHkiIGZpbGVzIHJv
dWdobHkgY3V0cyB0aGUgZGlzayBzcGFjZSBpbiBoYWxmLg0KDQoNClRoZSAic3JjIiBhcHByb2Fj
aCB3b3JrcyBvbiBhbnkgcGFja2FnZSwgYW5kIGhhcyB0aGUgYWR2YW50YWdlIHRoYXQgeW91IGNh
biANCnN0aWxsIGluc3RhbGwgdGhlIHNvdXJjZSBmaWxlcyBmb3IgZGVidWdnaW5nIGFuZCBkZXZl
bG9wbWVudC4NCg0KTWV0IHZyaWVuZGVsaWprZSBncm9ldCAvIGtpbmQgcmVnYXJkcywKCk1pa2Ug
TG9vaWptYW5zClN5c3RlbSBFeHBlcnQKCgpUT1BJQyBFbWJlZGRlZCBQcm9kdWN0cyBCLlYuCk1h
dGVyaWFhbHdlZyA0LCA1NjgxIFJKIEJlc3QKUG9zdGJ1cyA0NDAsIDU2ODAgQUsgQmVzdApUaGUg
TmV0aGVybGFuZHMKClQ6ICszMSAoMCkgNDk5IDMzIDY5IDY5CkU6IHtFLW1haWwKVzogd3d3LnRv
cGljcHJvZHVjdHMuY29tCgpQbGVhc2UgY29uc2lkZXIgdGhlIGVudmlyb25tZW50IGJlZm9yZSBw
cmludGluZyB0aGlzIGUtbWFpbAo=

