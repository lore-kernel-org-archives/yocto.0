Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6DDDE00D16; Thu, 28 Mar 2019 03:15:09 -0700 (PDT)
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
	*      [40.107.1.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 158242 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Mar 2019 03:15:05 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10079.outbound.protection.outlook.com [40.107.1.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33DE5E0053F
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 03:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Iaks9SwXVhjFnKBqu756gKQwe345HCC5fjztL+DgnfY=;
	b=OlHzDmakC5aXLOsbLR+o4NzSDKfoLob8nBEeE3s+VCVvhl/JSSfsiTyZWXD09wSDjZPL3WBpkysKt+6oWImqWHudXC9w8M4oqDQmeC78tIHQlkvwhlG2MmTMgf7lXIBCDNaSeh/nBxmLZTOKvAu5Kb7SzWTm+xA5h1HB2S8FwLs=
Received: from AM5PR04CA0002.eurprd04.prod.outlook.com (2603:10a6:206:1::15)
	by AM6PR04MB5894.eurprd04.prod.outlook.com (2603:10a6:20b:af::23) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1730.17;
	Tue, 26 Mar 2019 10:40:06 +0000
Received: from DB5EUR01FT025.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e02::208) by AM5PR04CA0002.outlook.office365.com
	(2603:10a6:206:1::15) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1730.18 via
	Frontend Transport; Tue, 26 Mar 2019 10:40:06 +0000
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
	DB5EUR01FT025.mail.protection.outlook.com (10.152.4.240) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1730.9 via Frontend Transport; Tue, 26 Mar 2019 10:40:06 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (104.47.12.55) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Tue, 26 Mar 2019 10:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Iaks9SwXVhjFnKBqu756gKQwe345HCC5fjztL+DgnfY=;
	b=OlHzDmakC5aXLOsbLR+o4NzSDKfoLob8nBEeE3s+VCVvhl/JSSfsiTyZWXD09wSDjZPL3WBpkysKt+6oWImqWHudXC9w8M4oqDQmeC78tIHQlkvwhlG2MmTMgf7lXIBCDNaSeh/nBxmLZTOKvAu5Kb7SzWTm+xA5h1HB2S8FwLs=
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com (10.255.168.18) by
	AM6PR04MB4902.eurprd04.prod.outlook.com (20.177.33.153) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1730.18; Tue, 26 Mar 2019 10:40:02 +0000
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::a1cc:178d:6582:f7b3]) by
	AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::a1cc:178d:6582:f7b3%5]) with mapi id 15.20.1750.014;
	Tue, 26 Mar 2019 10:40:02 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: jairo <jairo@futurasmus-knxlab.es>, Patrick Boettcher
	<patrick.boettcher@posteo.de>
Thread-Topic: [yocto] [rauc] create a rescue image
Thread-Index: AQHU4yQh07N6kPnlkk21yrcZFJWutqYch1aAgAEH0YCAAAJSgIAAHjAAgAAKloA=
Date: Tue, 26 Mar 2019 10:40:02 +0000
Message-ID: <073118a1-ad14-5fbf-bf5e-9e4f5a80474c@topic.nl>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
	<20190325172133.50597470@yaise-pc1>
	<2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
	<20190326091405.5017c931@posteo.de>
	<69cf9c37c7dc4a5e3243f3013294a39adefad5c5.camel@futurasmus-knxlab.es>
In-Reply-To: <69cf9c37c7dc4a5e3243f3013294a39adefad5c5.camel@futurasmus-knxlab.es>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
x-clientproxiedby: AM6PR08CA0029.eurprd08.prod.outlook.com
	(2603:10a6:20b:c0::17) To AM6PR04MB6341.eurprd04.prod.outlook.com
	(2603:10a6:20b:d9::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5bfb2bed-5843-4f07-5ed9-08d6b1d76950
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600127)(711020)(4605104)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR04MB4902; 
X-MS-TrafficTypeDiagnostic: AM6PR04MB4902:|AM6PR04MB5894:
X-Microsoft-Antispam-PRVS: <AM6PR04MB5894A481A6C1BF637AEC448B965F0@AM6PR04MB5894.eurprd04.prod.outlook.com>
x-forefront-prvs: 09888BC01D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(346002)(366004)(39840400004)(376002)(136003)(396003)(199004)(189003)(2906002)(71190400001)(65956001)(5660300002)(71200400001)(6246003)(256004)(14444005)(97736004)(105586002)(25786009)(31686004)(14454004)(110136005)(316002)(6116002)(3846002)(106356001)(6512007)(508600001)(68736007)(53936002)(58126008)(64126003)(386003)(486006)(6436002)(53546011)(6506007)(446003)(66066001)(186003)(8676002)(305945005)(81156014)(102836004)(229853002)(36756003)(42882007)(4326008)(44832011)(99286004)(6346003)(476003)(2616005)(8936002)(31696002)(93886005)(11346002)(81166006)(7736002)(76176011)(65806001)(52116002)(6486002)(26005)(74482002)(65826007)(151823002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4902;
	H:AM6PR04MB6341.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: DYVM3QeEjDGkZ4S4TnVG8oJA2DXo9f8Gmi57qzHFLXTYp6r7l//XSvFwTYceUGQj/VKLdWLZifQGrQQoW7qkcipYZfus7R4rWgHhR1JmBz3mIKaPKHUuqufOW3k3i1L/gdmygX8OS7DDZSprDBwxRLi1Fz4PAwyR9UvqoWb94yKz6FAKrPsp71GxmlHDoU+LfsHAVyypdZwOGM0YL4BIi8hp9dDFtrDm/6LbyPjkI9MP+K1daS4juYtFBjWg0rnHW4sfPMtwCE/8sFh+lAMamZLa+OZv/gnLCowlz3dKtbFfUz8/nZmaI5Xc7dZRfhNMbv+R3iu2ykOiFaEeaiwCJxwlEMjtmq7WCKLVVo/vb5qmHDxf2ndApTdFJTgqJoiyAFjJOZ7G+sINJ0hZNTr/XtYOPGLVmKSUZL3OlNwxYk0=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4902
X-CodeTwo-MessageID: 20190326104003.92a8e38c-2f40-4fe1-9213-d6ab76ae24f2@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR01FT025.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(136003)(39840400004)(376002)(396003)(346002)(2980300002)(199004)(189003)(99286004)(74482002)(44832011)(93886005)(4326008)(65806001)(8936002)(6116002)(106002)(65956001)(47776003)(66066001)(316002)(14454004)(58126008)(42882007)(508600001)(11346002)(446003)(476003)(126002)(436003)(2616005)(486006)(25786009)(2486003)(6512007)(6486002)(50466002)(76176011)(31696002)(2906002)(14444005)(229853002)(36756003)(110136005)(23676004)(336012)(3846002)(6506007)(106466001)(6246003)(8676002)(186003)(356004)(64126003)(26005)(102836004)(5660300002)(7636002)(7736002)(386003)(305945005)(53546011)(7596002)(31686004)(65826007)(246002)(151823002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5894;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 527b7cc0-048e-4635-fdf0-08d6b1d766d2
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600127)(710020)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR04MB5894; 
X-Forefront-PRVS: 09888BC01D
X-Microsoft-Antispam-Message-Info: MHQeVi/JQT6Rid2OYmp1er1BHzZTC8LgXJ6xBfCZA7wbDpWHt2cAPjAdMquRxmBe/Aapa31vLty017x36Juyd4YKkOxHomX6IC82W6gqoMsUclBYApjKxVmImhzdkgz96AimSLt/Ovh3uUcELcz8kcM4U6QZzL4un7ylB8JzOkXoZmAA2wsOUDQZjvo7wC3R3kpZ46T9VkMz+ivStaYVB7BiED6BJZivvYLH9VjYkXq0JuLlu/dUVUHmdMwMUmEXVRVqPzmCFSMl7cRw7AqlajYypY2MZdcKIgkjV7kznwA7uAa8ioqyG0f57W+fr3QQsXCb9914c4u/p3HkF2J1VsqnEvjSvFjc1lGKmr9s6JKQnr8oLDJobQIycgzPWewVA4mjWCTSZhwlZuMk1c7KffIXvWqRtoa6Kgv2sgdP2ro=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2019 10:40:06.2173 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bfb2bed-5843-4f07-5ed9-08d6b1d76950
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5894
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [rauc] create a rescue image
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
X-List-Received-Date: Thu, 28 Mar 2019 10:15:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F78655D9FE2F8B4E9AAF0CFE47B0C618@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMjYtMDMtMTkgMTE6MDIsIGphaXJvIHdyb3RlOg0KPiBFbCBtYXIsIDI2LTAzLTIwMTkgYSBs
YXMgMDk6MTQgKzAxMDAsIFBhdHJpY2sgQm9ldHRjaGVyIGVzY3JpYmnDszoNCj4+IE9uIFR1ZSwg
MjYgTWFyIDIwMTkgMDk6MDU6NDcgKzAxMDANCj4+IGphaXJvIDxqYWlyb0BmdXR1cmFzbXVzLWtu
eGxhYi5lcz4gd3JvdGU6DQouLi4NCj4gWWVzLCBJIGtub3csIGl0IGlzIHNvbWV3aGF0IHJpc2t5
LCBidXQgSSBoYXZlIG9ubHkgNTEyTUIgb2YgbmFuZA0KPiBtZW1vcnksIGFuZCB3ZSBhcmUgZ2V0
dGluZyBhIGxvdCBvZiBzb2Z0d2FyZS4gSSB0aGluayB3ZSBoYXZlIHRvDQo+IGV2YWx1YXRlIHRo
ZSBtb3ZlIHRvIGEgaGFyZHdhcmUgd2l0aCBtb3JlIG1lbW9yeSwgYXQgdGhlIG1vbWVudCBpcyB3
aGF0DQo+IHdlIGhhdmUuIEkgdGhpbmsgaXQgaXMgcHJhY3RpY2FsbHkgaW1wb3NzaWJsZSB0byBw
dXQgMiBzeXN0ZW1zIGluIHNvDQo+IGxpdHRsZSBtZW1vcnkuDQoNCldpdGggTkFORCB5b3UnbGwg
cHJvYmFibHkgaGF2ZSBhIGZpbGVzeXN0ZW0gKGpmZnMyIG9yIFVCSSkgaW4gcGxhY2UuIFdpdGgg
DQp0aGF0LCB5b3UgY291bGQganVzdCB1c2UgYSBwYWNrYWdlIG1hbmFnZXIgbGlrZSBvcGtnIHRv
IHVwZGF0ZSBzb2Z3YXJlLiBJZiB0aGUgDQpib3ggaGFzIGEgbmV0d29yayBjb25uZWN0aW9uLCBq
dXN0IHJ1bm5pbmcgIm9wa2cgdXBkYXRlICYmIG9wa2cgdXBncmFkZSIgd2lsbCANCmluc3RhbGwg
dGhlIGN1cnJlbnQgcmVsZWFzZXMgd2l0aCB0aGUgbWluaW11bSBlZmZvcnQuIFdlJ3ZlIGJlZW4g
dXNpbmcgdGhpcyBvbiANCmEgbWlsbGlvbiBib3hlcyBhbmQgaXQgd29ya3MgZmluZSAodW50aWwg
c29tZW9uZSBkZWNpZGVzIHRvIHBhdGNoIGxpYmMgYW5kIHlvdSANCmdldCBhIDMwMCsgcGFja2Fn
ZSB1cGdyYWRlKS4NCg0KTGludXggaXMgYWxzbyBjYXBhYmxlIG9mIHVwZ3JhZGluZyBhIHJ1bm5p
bmcgc3lzdGVtLiBCYXNpY2FsbHksIGNvcHkgc29tZSANCmV4ZWN1dGFibGVzIHRvIGEgdG1wIGZp
bGVzeXN0ZW0sIHJlbW91bnQgZXZlcnl0aGluZyByZWFkLW9ubHksIGFuZCBjaGFuZ2Ugcm9vdCAN
CnRvIHRoZSB0bXAgcGFydC4gVGhlbiB5b3UgY2FuIHJld3JpdGUgcGFydGl0aW9ucyBhbmQgcmVi
b290Lg0KDQpJbiBhbnkgY2FzZSwgeW91IHNob3VsZCBoYXZlIGEgdS1ib290IGNvbmZpZ3VyYXRp
b24gdGhhdCBhbGxvd3MgaXQgdG8gYmUgDQpkZWJyaWNrZWQuIFR5cGljYWxseSBhIFVTQiBzdGlj
ayBvciBERlUgd2lsbCBkbyBuaWNlbHkgaWYgeW91ciBib2FyZCBoYXMgVVNCLiANCk9yIGV2ZW4g
c2VyaWFsLi4uDQo=

