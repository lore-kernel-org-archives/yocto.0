Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAE5EE00CB9; Thu, 11 Apr 2019 06:40:30 -0700 (PDT)
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
	*      [40.107.1.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 112659 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Apr 2019 06:40:26 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10084.outbound.protection.outlook.com [40.107.1.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22D04E00B5C
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 06:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iljSZn8v4l+9TB2xs/JSUX8ImxniEFG1fBE8W2OkFto=;
	b=STI/i9grq4mIdTLC6Rsh3jBeF9dBWaW4y+y2x/I+2Px5F4TWTLtqSc1Xb0KAviVzKm+GI7/y5CGl6GS2C7aeLgZgIdytVGQSU391UiUB2f7RwEtDEjUeG9xJ5LKYrAzgCLbemZWMkRdDUGHM8/qmdHyS2vtT6sJBkHJTtsWi9To=
Received: from AM3PR04CA0144.eurprd04.prod.outlook.com (2603:10a6:207::28) by
	VI1PR04MB3309.eurprd04.prod.outlook.com (2603:10a6:802:f::18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1771.19; Wed, 10 Apr 2019 06:08:39 +0000
Received: from HE1EUR01FT030.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::202) by AM3PR04CA0144.outlook.office365.com
	(2603:10a6:207::28) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1792.14 via
	Frontend Transport; Wed, 10 Apr 2019 06:08:38 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=pass (signature was
	verified) header.d=topicbv.onmicrosoft.com; yoctoproject.org; dmarc=none
	action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	HE1EUR01FT030.mail.protection.outlook.com (10.152.0.170) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1771.16 via Frontend Transport; Wed, 10 Apr 2019 06:08:38 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.58) by
	westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Wed, 10 Apr 2019 06:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iljSZn8v4l+9TB2xs/JSUX8ImxniEFG1fBE8W2OkFto=;
	b=STI/i9grq4mIdTLC6Rsh3jBeF9dBWaW4y+y2x/I+2Px5F4TWTLtqSc1Xb0KAviVzKm+GI7/y5CGl6GS2C7aeLgZgIdytVGQSU391UiUB2f7RwEtDEjUeG9xJ5LKYrAzgCLbemZWMkRdDUGHM8/qmdHyS2vtT6sJBkHJTtsWi9To=
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com (10.255.168.18) by
	AM6PR04MB6694.eurprd04.prod.outlook.com (20.179.247.207) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1771.18; Wed, 10 Apr 2019 06:08:31 +0000
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::5804:da31:3d28:cd27]) by
	AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::5804:da31:3d28:cd27%4]) with mapi id 15.20.1771.014;
	Wed, 10 Apr 2019 06:08:31 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: Philip Balister <philip@balister.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Project support for Numeric/Scientific Python
Thread-Index: AdSzMX9ge/HkOh4/SfWWtJJKUP2YTgAMR8+AAABhTgAAGvP8gAB2YyyADm6UUQA=
Date: Wed, 10 Apr 2019 06:08:31 +0000
Message-ID: <7274e028-5c61-3372-eca3-89050ee60b34@topic.nl>
References: <b4bcd0b5992346bd8512a00ff6caf425@flir.com>
	<f1a31b6f-4a7f-7a8b-d7dc-0c79c6e98529@windriver.com>
	<80ec3d5f-e34a-4c32-e891-adfe00066844@balister.org>
	<4d15ab20-658b-14af-7cd2-c0a2e7722d01@topic.nl>
	<2bbc32f4-402f-84be-2fea-5abf0993fcb1@balister.org>
In-Reply-To: <2bbc32f4-402f-84be-2fea-5abf0993fcb1@balister.org>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
x-clientproxiedby: AM6PR05CA0019.eurprd05.prod.outlook.com
	(2603:10a6:20b:2e::32) To AM6PR04MB6341.eurprd04.prod.outlook.com
	(2603:10a6:20b:d9::18)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: d59b2bf9-5a12-4ceb-286e-08d6bd7af91e
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600139)(711020)(4605104)(2017052603328)(7193020);
	SRVR:AM6PR04MB6694; 
X-MS-TrafficTypeDiagnostic: AM6PR04MB6694:|VI1PR04MB3309:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VI1PR04MB3309D1D7841994E6B4136786962E0@VI1PR04MB3309.eurprd04.prod.outlook.com>
x-forefront-prvs: 00032065B2
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(979002)(136003)(366004)(39840400004)(346002)(396003)(376002)(189003)(504964003)(199004)(6306002)(110136005)(36756003)(105586002)(6246003)(6486002)(229853002)(65826007)(68736007)(31696002)(3846002)(6116002)(6512007)(6436002)(97736004)(106356001)(71200400001)(53936002)(64126003)(25786009)(31686004)(65806001)(66066001)(71190400001)(5660300002)(65956001)(8676002)(508600001)(81166006)(93886005)(99286004)(966005)(14454004)(8936002)(2616005)(81156014)(58126008)(102836004)(186003)(446003)(42882007)(76176011)(476003)(74482002)(2501003)(53546011)(11346002)(486006)(386003)(6506007)(52116002)(305945005)(256004)(7736002)(316002)(14444005)(26005)(44832011)(2906002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6694;
	H:AM6PR04MB6341.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: NZhSgG72/2DT9X2EURn0gXbhNvmwSgIczPOHeB8UvIW6JJswgg5yMmYpbEf1C3XGUf4/XvIBZqULgvL6lcBfVodcee5x6cgpG0ghDYs81vK7Ww0au7z2XI3yDfEYOYFOwoGYZ0MDBB+JjH4pbox/wSoWj6ggSL7PJO+rma0a1W3KHr/rbpEjkevI6YpTGEg30Do4KVyoKUTIgy00Yz68KwaD4gEFehdf30RAzuSBme6DnM7GKKT4iB2rbguqB2aykucH9hlmRVlZIs/ltJFmHBTTfH5G0OP8oyuTU+KrrIcscouK2yXacZxnlC/hRSb8RyEGmZlD6BRmJCUNwc2zEqscTsT1weZXRbvcdOBIybtbXE5+fA1N9ItYgNFsl7kdJu2GrqQvlq+ZICA/P0xLSeKVXVQX9oc1+NywY7/nfU4=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6694
X-CodeTwo-MessageID: 20190410060834.c2280733-5396-4521-99d3-9a79e34c162e@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT030.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(979002)(136003)(396003)(376002)(39840400004)(346002)(2980300002)(189003)(199004)(504964003)(106002)(2616005)(11346002)(966005)(356004)(126002)(50466002)(6486002)(31696002)(110136005)(58126008)(44832011)(99286004)(93886005)(26005)(508600001)(14444005)(476003)(66066001)(14454004)(2501003)(65956001)(446003)(65806001)(65826007)(316002)(186003)(3846002)(6512007)(6116002)(6306002)(74482002)(229853002)(246002)(64126003)(42882007)(25786009)(7636002)(7736002)(23746002)(76176011)(5660300002)(8676002)(31686004)(305945005)(47776003)(6246003)(336012)(7596002)(6506007)(486006)(36756003)(8936002)(386003)(2906002)(106466001)(102836004)(53546011)(8746002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3309;
	H:westeu11-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu11-emailsignatures-cloud.codetwo.com; MX:1;
	A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 35350025-417a-4f3d-11ec-08d6bd7af4ee
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600139)(710020)(711020)(4605104)(2017052603328)(7193020);
	SRVR:VI1PR04MB3309; 
X-Forefront-PRVS: 00032065B2
X-Microsoft-Antispam-Message-Info: YKvWy+ZQcC+Rnx8RDn27hE9gBc4YG6LnB6wAQILZNZBjoCDTDQ9NtkT0RTdszYdFk52jrX4xnR0AruIJE9OAu+0gJAXAE+LTQq+ILCX71Vp+pl3yhJNeDHwVkrvtb7tSAuZ/RcqeFLkl+jsCkrxK43q76E5l4NQJjM4v6Vm1COaYFjhYr0D0eSFrtLLR7/y5lhRqJXtszRxpGS0bFU+OROpMUFwitsGQr5BXfeqDPcR8OnyaY3p8DTWRU5QLDjtEpPQHoaIQevecFXqLO2YMjWkhSJJN9UClIaSun2AOMKfjWTUOQuLH4X0eehwtLqftdJyhBUJIHuIS6kaK3FcxAasKyov5XXk45tVXDQQ5YBwCmooy140ojM9nX3TmqGm0gdCxZlqrE0LJXTf3XD051+gg8pSXZbz2h4XyS2xBm3s=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2019 06:08:38.0505 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d59b2bf9-5a12-4ceb-286e-08d6bd7af91e
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3309
Subject: Re: Yocto Project support for Numeric/Scientific Python
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
X-List-Received-Date: Thu, 11 Apr 2019 13:40:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <B0D2DF12930E204DAB8871E7C651467B@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Just attempting to revive this dead horse again...

Anyone made any proress here?

Since cross-compiling turned out to be really really painful, I tried if=20
compiling on the board would be an option. No such luck, apparently the=20
Fortran compiler isn't being crosscompiled either.


On 26-01-19 20:01, Philip Balister wrote:
> Sounds like we need a layer for packages that needs fortran enabled and
> collect out work there.
>=20
> Philip
>=20
> On 01/24/2019 05:31 AM, Mike Looijmans wrote:
>> +1
>>
>> Got lapack to compile, but no such luck with any "blas" package (like
>> openblas). And that's a requirement for octave, which was what I was aim=
ing at.
>>
>> I'll share some recipes, tomorrow or so (today is stuffed with other wor=
k).
>>
>>
>> On 23-01-19 22:39, Philip Balister wrote:
>>> I care :)
>>>
>>> On 01/23/2019 04:28 PM, Randy MacLeod wrote:
>>>> On 1/23/19 2:54 PM, Smith, Virgil (US) wrote:
>>>>> Is there a current or relatively recent recipe for SciPy and related
>>>>> libraries?
>>>>
>>>> People have worked on it at least once before but found some problems
>>>> with blas and atlas:
>>>>
>>>> https://lists.yoctoproject.org/pipermail/yocto/2018-March/thread.html#=
40348
>>>>
>>>> I'd say that there is interest.
>>>> I CCed Peter who started one of the threads
>>>> and BCCed 5 other people who seemed to be interested
>>>> since I didn't want to drag them all into the thread.
>>>>
>>>>
>>>>>
>>>>> Further and more importantly, is having a maintainer for (recipes for=
)
>>>>> those libraries a priority for the active members of the Project?
>>>>> (i.e. does interest rise above the general welcoming of participants
>>>>> to periodically asking =93Hey has anyone put out a call to fill this
>>>>> slot?=94 if/when the slot is vacant).
>>>>
>>>> It's always nice to have a maintainer but community members sometimes
>>>> keep recipes up to date even if they aren't direct users.
>>>>
>>>>>
>>>>> BTW: If this is the wrong list for this query, please let me know.
>>>>
>>>> It a reasonable list for general discussion.
>>>> If you get to a point where patches are being submitted,
>>>> it should probably go to another list such as:
>>>>
>>>>>
>>>>> Why?=A0 We are trying to gauge community interest before making long
>>>>> term plans.
>>>>>
>>>>> We would like to know if this horse is at all likely to have
>>>>> healthcare before betting on it (without sacrificing other patients t=
o
>>>>> obtain the proper veterinary degree and keep up practice to treat it
>>>>> ourselves).
>>>> heh.
>>>>
>>>> Thanks!
>>>> ../Randy
>>>>
>>>>>
>>>>> NOTE:=A0 I see from the RRS emails that Derek Straka is currently
>>>>> maintaining the python-numpy recipe.=A0 THANK YOU!
>>>>>
>>>>>
>>>>> ---------------------------------------------------------------------=
---
>>>>>
>>>>> Notice to recipient: This email is meant for only the intended
>>>>> recipient of the transmission, and may be a communication privileged
>>>>> by law, subject to export control restrictions or that otherwise
>>>>> contains proprietary information. If you receive this email by
>>>>> mistake, please notify us immediately by replying to this message and
>>>>> then destroy it and do not review, disclose, copy or distribute it.
>>>>> Thank you in advance for your cooperation.
>>>>>
>>>>
>>>>
>>


