Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1D1FE00A54; Tue, 26 Mar 2019 13:47:23 -0700 (PDT)
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
	*      [40.107.6.68 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 23684 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Mar 2019 13:47:21 PDT
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
	(mail-eopbgr60068.outbound.protection.outlook.com [40.107.6.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFE2FE009A0
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 13:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=YuCCp5d7eGThu+kJQAUcoXGHjiv4aEGRPtf9sD6dI+U=;
	b=HMqQx5xYabX6zFvw2ASUVtoeguWIpbczZc04gYFzk0Eysozpk4bIZ/JqrEenS32LBFbdjNjYy5XCIBO+/qeXYyAUgS58mS00VdESV6IK0VppiIPKX4xHof/F4y16fDVZAkShNT6+pKn9FXYNobUMZzOzs+akqwLJ6BodRHcDgbg=
Received: from HE1PR0401CA0055.eurprd04.prod.outlook.com (2603:10a6:3:19::23)
	by DB8PR04MB5898.eurprd04.prod.outlook.com (2603:10a6:10:b1::27) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1730.18;
	Tue, 26 Mar 2019 14:17:41 +0000
Received: from HE1EUR01FT042.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::200) by HE1PR0401CA0055.outlook.office365.com
	(2603:10a6:3:19::23) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1730.18 via
	Frontend Transport; Tue, 26 Mar 2019 14:17:40 +0000
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
	HE1EUR01FT042.mail.protection.outlook.com (10.152.0.228) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1730.9 via Frontend Transport; Tue, 26 Mar 2019 14:17:40 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (104.47.9.54) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Tue, 26 Mar 2019 14:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=YuCCp5d7eGThu+kJQAUcoXGHjiv4aEGRPtf9sD6dI+U=;
	b=HMqQx5xYabX6zFvw2ASUVtoeguWIpbczZc04gYFzk0Eysozpk4bIZ/JqrEenS32LBFbdjNjYy5XCIBO+/qeXYyAUgS58mS00VdESV6IK0VppiIPKX4xHof/F4y16fDVZAkShNT6+pKn9FXYNobUMZzOzs+akqwLJ6BodRHcDgbg=
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com (10.255.168.18) by
	AM6PR04MB6309.eurprd04.prod.outlook.com (20.179.5.81) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1730.17; Tue, 26 Mar 2019 14:17:34 +0000
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::a1cc:178d:6582:f7b3]) by
	AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::a1cc:178d:6582:f7b3%5]) with mapi id 15.20.1750.014;
	Tue, 26 Mar 2019 14:17:34 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: jairo <jairo@futurasmus-knxlab.es>
Thread-Topic: [yocto] [rauc] create a rescue image
Thread-Index: AQHU4yQh07N6kPnlkk21yrcZFJWutqYch1aAgAEH0YCAAAJSgIAAHjAAgAAKloCAAA4+AIAALogA
Date: Tue, 26 Mar 2019 14:17:33 +0000
Message-ID: <fdd926ae-2601-70ff-f792-440fb4d87e86@topic.nl>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
	<20190325172133.50597470@yaise-pc1>
	<2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
	<20190326091405.5017c931@posteo.de>
	<69cf9c37c7dc4a5e3243f3013294a39adefad5c5.camel@futurasmus-knxlab.es>
	<073118a1-ad14-5fbf-bf5e-9e4f5a80474c@topic.nl>
	<75a6f7dc0a1edd137109c5af869e713267cd2967.camel@futurasmus-knxlab.es>
In-Reply-To: <75a6f7dc0a1edd137109c5af869e713267cd2967.camel@futurasmus-knxlab.es>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
x-clientproxiedby: AM6P193CA0062.EURP193.PROD.OUTLOOK.COM
	(2603:10a6:209:8e::39) To AM6PR04MB6341.eurprd04.prod.outlook.com
	(2603:10a6:20b:d9::18)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f0ec8536-5cb1-4e70-b021-08d6b1f5ce46
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR04MB6309; 
X-MS-TrafficTypeDiagnostic: AM6PR04MB6309:|DB8PR04MB5898:
X-Microsoft-Antispam-PRVS: <DB8PR04MB58987A3E0B898A8E860168E7965F0@DB8PR04MB5898.eurprd04.prod.outlook.com>
x-forefront-prvs: 09888BC01D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(366004)(376002)(136003)(346002)(396003)(39840400004)(199004)(189003)(6246003)(11346002)(31696002)(44832011)(6486002)(256004)(99286004)(14454004)(508600001)(65806001)(52116002)(65956001)(66066001)(42882007)(65826007)(36756003)(58126008)(6436002)(14444005)(186003)(7736002)(53936002)(71190400001)(305945005)(316002)(8936002)(6512007)(5660300002)(64126003)(2616005)(105586002)(25786009)(102836004)(4326008)(106356001)(476003)(81156014)(486006)(71200400001)(74482002)(76176011)(229853002)(26005)(6506007)(2906002)(97736004)(6916009)(31686004)(446003)(93886005)(68736007)(386003)(6116002)(3846002)(8676002)(53546011)(81166006)(151823002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6309;
	H:AM6PR04MB6341.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: aiHXyJfPByTSRQVqB16LMOxOCFwdYjIQXnyhOARev4txYIocUkwZgFYvazuQa+KYDeopiA5hP1OPTTF2pKHAQvdGQuCpd1ozkJV1Df5w14Sdz3Mex5KYvollskxbV//jMWLJNGf4iukOYNQj3H4tesBewzgx048kAA2PjIUpZu83dK1DW9aQq435EZDn/qWqKDIZ070qSZ8DviNOZK7KTw6Vkrle8o5dE9ybpMaG3M7ybAM9kp0Hyb1r6ms1NyHBqW/gbLqqeryhcgwQneq3lepW70ZLxQstrKZyiQOgW+hXcR0v0QQUQIMDup7NmhBbBlLq6du34fezJ+jFako85YyXt6U/DpghAgLn5P0iMjhON2Znr6y1mEsp/rREOcIf0BjV5umx6q/y4MfPmLQLohwmtCHf6e2To2XsmyyeyMc=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6309
X-CodeTwo-MessageID: 20190326141735.becb88ae-99d3-47ff-af15-4d2a0c3a0783@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT042.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(136003)(39840400004)(2980300002)(199004)(189003)(64126003)(65956001)(102836004)(5660300002)(31696002)(476003)(305945005)(126002)(508600001)(65826007)(486006)(3846002)(53546011)(14444005)(6116002)(47776003)(356004)(14454004)(336012)(76176011)(42882007)(65806001)(26005)(436003)(186003)(66066001)(4326008)(446003)(11346002)(2616005)(6506007)(386003)(50466002)(6512007)(6486002)(106002)(44832011)(25786009)(8676002)(58126008)(106466001)(6246003)(74482002)(36756003)(6916009)(229853002)(7596002)(2486003)(7636002)(7736002)(31686004)(246002)(93886005)(23676004)(99286004)(2906002)(316002)(8936002)(151823002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5898;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 30546bfc-360b-4637-c45e-08d6b1f5ca16
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600127)(710020)(711020)(4605104)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:DB8PR04MB5898; 
X-Forefront-PRVS: 09888BC01D
X-Microsoft-Antispam-Message-Info: PrxUowKHRQLcnUfbcRiVCXhNaCmDh1+DiLJQguML4ZctyMKtO1XBE52eCgTPtSJH+AZCL0o03XGT9KD9rsxaDxGVfsp4gw3uZvR3FeL+zvUt25lqAiyYn9t/5YgZr/B0rvOz06FyOE6+1eGR4HotJxDdvWeMQX6wMMmr6DadeVI/jFKaXhYspK0IqpEYxHOxcd1kiLqL3T4gdq15Mvb6jRwCuGTaaPze+s0rE6kYRRusD65kR94KSYi+bHy3NxSZmj3otiXUk3hLwZ1aZCa2vcTvszdA4rzpeQh0R1r8jsTeHrDYFqN4TfPya0DjZllcjFZM/vcUn7XjOWmSwwF6XarQoL2O50iwfPWGDX3yGhfbkHnMsjRU6CsJAb/x/oWIiONrx53tP243FLUUEepmk0T4lzRSeII3CTORCq0xVKc=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2019 14:17:40.0593 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f0ec8536-5cb1-4e70-b021-08d6b1f5ce46
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5898
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
X-List-Received-Date: Tue, 26 Mar 2019 20:47:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <CBA98D262279B04C83682B40DA6632B6@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMjYtMDMtMTkgMTI6MzEsIGphaXJvIHdyb3RlOg0KPiANCj4gVGhhbmsgeW91IHZlcnkgbXVj
aCBNaWtlLg0KPiANCj4gDQo+IA0KPj4gV2l0aCBOQU5EIHlvdSdsbCBwcm9iYWJseSBoYXZlIGEg
ZmlsZXN5c3RlbSAoamZmczIgb3IgVUJJKSBpbiBwbGFjZS4NCj4+IFdpdGggdGhhdCwgeW91IGNv
dWxkIGp1c3QgdXNlIGEgcGFja2FnZSBtYW5hZ2VyIGxpa2Ugb3BrZyB0byB1cGRhdGUNCj4+IHNv
ZndhcmUuIElmIHRoZSBib3ggaGFzIGEgbmV0d29yayBjb25uZWN0aW9uLCBqdXN0IHJ1bm5pbmcg
Im9wa2cNCj4+IHVwZGF0ZSAmJiBvcGtnIHVwZ3JhZGUiIHdpbGwgaW5zdGFsbCB0aGUgY3VycmVu
dCByZWxlYXNlcyB3aXRoIHRoZQ0KPj4gbWluaW11bSBlZmZvcnQuIFdlJ3ZlIGJlZW4gdXNpbmcg
dGhpcyBvbiBhIG1pbGxpb24gYm94ZXMgYW5kIGl0IHdvcmtzDQo+PiBmaW5lICh1bnRpbCBzb21l
b25lIGRlY2lkZXMgdG8gcGF0Y2ggbGliYyBhbmQgeW91IGdldCBhIDMwMCsgcGFja2FnZQ0KPj4g
dXBncmFkZSkuDQo+IA0KPiANCj4gSXMgdGhlcmUgYSBwdWJsaWMgcmVwb3NpdG9yeSB3aXRoIGlw
ayBwYWNrYWdlcywgb3IgZG8gSSBoYXZlIHRvIGNyZWF0ZQ0KPiBteSBvd24gcmVwb3NpdG9yeT8N
Cg0KT3BlbkVtYmVkZGVkIGFscmVhZHkgY3JlYXRlZCBpdCwgaXQncyB1c3VhbGx5IGluIGJ1aWxk
L3RtcC1nbGliYy9kZXBsb3kvaXBrDQoNClRvIHR1cm4gaXQgaW50byBhICJmZWVkIiBqdXN0IHNo
YXJlIHRoaXMgZGlyZWN0b3J5IHRocm91Z2ggaHR0cC4gT24gbXkgDQpkZXZlbG9wbWVudCBzZXR1
cCwgSSBpbnN0YWxsZWQgYXBhY2hlIGFuZCBjcmVhdGVkIGEgc3ltbGluayB0byB0aGF0IGRpcmVj
dG9yeS4gDQpZb3UnbGwgYWxzbyBuZWVkIHRvIGFkZCAiZGlzdHJvLWZlZWQtY29uZmlncyIgdG8g
eW91ciBpbWFnZSAoYW5kIG1heWJlIGFwcGVuZCANCml0IGEgYml0IHRvIG1hdGNoIHlvdXIgc3lz
dGVtKS4NCg0KPiBDYW4gb3BrZyBzb2x2ZSBkZXBlbmRlbmNpZXMgd2VsbD8gQ2FuIGl0IGNyZWF0
ZSBwcm9ibGVtcz8NCg0KSGF2ZW4ndCBzZWVuIGFueSBwcm9ibGVtcyB3aXRoIGl0LCBhbmQgaXQg
aW5zdGFsbHMgZGVwZW5kZW5jaWVzIGFsb25nIHdpdGggDQpwYWNrYWdlcy4NCg0KPj4gTGludXgg
aXMgYWxzbyBjYXBhYmxlIG9mIHVwZ3JhZGluZyBhIHJ1bm5pbmcgc3lzdGVtLiBCYXNpY2FsbHks
IGNvcHkNCj4+IHNvbWUNCj4+IGV4ZWN1dGFibGVzIHRvIGEgdG1wIGZpbGVzeXN0ZW0sIHJlbW91
bnQgZXZlcnl0aGluZyByZWFkLW9ubHksIGFuZA0KPj4gY2hhbmdlIHJvb3QNCj4+IHRvIHRoZSB0
bXAgcGFydC4gVGhlbiB5b3UgY2FuIHJld3JpdGUgcGFydGl0aW9ucyBhbmQgcmVib290Lg0KPj4N
Cj4+IEluIGFueSBjYXNlLCB5b3Ugc2hvdWxkIGhhdmUgYSB1LWJvb3QgY29uZmlndXJhdGlvbiB0
aGF0IGFsbG93cyBpdCB0bw0KPj4gYmUNCj4+IGRlYnJpY2tlZC4gVHlwaWNhbGx5IGEgVVNCIHN0
aWNrIG9yIERGVSB3aWxsIGRvIG5pY2VseSBpZiB5b3VyIGJvYXJkDQo+PiBoYXMgVVNCLg0KPj4g
T3IgZXZlbiBzZXJpYWwuLi4NCj4gDQo+IEknbSB1c2luZyBCYXJlYm94LCBJIHRoaW5rIHRoZXJl
IHdvdWxkIGJlIG5vIHByb2JsZW1zIG91dCB0aGVyZSwgdGhlDQo+IGJhZCBwYXJ0IG9mIHVzaW5n
IG9wa2cgaXMgdGhhdCB0aGUgcHJvZHVjdCBzaG91bGQgYmUgdXNlZCBieSBjbGllbnRzDQo+IHdp
dGhvdXQgbXVjaCBrbm93bGVkZ2Ugb2YgbGludXguIEluIHRoYXQgcGFydCBJIHRoaW5rIGl0IHdv
dWxkIGJlDQo+IGVhc2llciBmb3IgY3VzdG9tZXJzIHRvIHVzZSBhIHVwZGF0ZSBzeXN0ZW0gc3Vj
aCBhcyBSYXVjIG9yIGFueSBzaW1pbGFyDQoNClRoZSBzeXN0ZW0gdGhhdCdzIHVzaW5nIGlwa2cg
aXMgYSBUViBzZXR0b3AgYm94LCBhbmQgdGhlIGF2ZXJhZ2UgdXNlciBoYXMgDQphYm91dCB0aGUg
aW50ZWxsZWN0dWFsIGNhcGFiaWxpdGllcyBvZiBhIHBvdGF0by4NCg0KVG8gYWN0dWFsbHkgdXBn
cmFkZSwgdGhlIHVzZXIgc2VsZWN0cyAic2V0dGluZ3MiIGFuZCAidXBkYXRlIHNvZnR3YXJlIiBm
cm9tIA0KdGhlIG1haW4gbWVudSB1c2luZyB0aGUgcmVtb3RlIGNvbnRyb2wsIGFuZCBkb2Vzbid0
IGV2ZW4gaGF2ZSB0byBsZWF2ZSB0aGUgY291Y2guDQoNCihUbyByZWNvdmVyIGEgYnJpY2tlZCBi
b3gsIG9yIGluc3RhbGwgZnJvbSBzY3JhdGNoLCB0aGUgcHJvY2VkdXJlIGlzIG11Y2ggbW9yZSAN
CmNvbXBsaWNhdGVkOiBEb3dubG9hZCBhIHppcCBmaWxlLCB1bnBhY2sgb24gYSBVU0Igc3RpY2ss
IHB1dCBpdCBpbnRvIHRoZSANCnNldHRvcCBhbmQgc3dpdGNoIGl0IG9uLiBUaGF0J2QgcmVxdWly
ZSBpbnRlbGxlY3Qgc2xpZ2h0bHkgYWJvdmUgeW91ciBhdmVyYWdlIA0KdmVnZXRhYmxlIGJ1dCBp
cyBzdGlsbCBkb2FibGUgYXBwYXJlbnRseS4pDQoNCkJlaW5nIHVzZXItZnJpZW5kbHkgaXMgYWJv
dXQgcHJvdmlkaW5nIGEgcHJvcGVyIHdyYXBwZXIsIGl0J3Mgbm90IGFib3V0IA0KdGVjaG5vbG9n
eS4NCg==

