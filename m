Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5D58E00D20; Thu, 24 Jan 2019 18:04:40 -0800 (PST)
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
	*      [40.107.0.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 36032 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Jan 2019 18:04:38 PST
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00047.outbound.protection.outlook.com [40.107.0.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5880CE00CCA
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 18:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=69K9SdAOJaXW5SHAfb/RdqFiZ33Bc/hhWV1R+crgnh8=;
	b=G+9VpjUkomb2L+BTW+Q1Wzw9wl0Bzz5KVdoenkmdBDQ2YdG4MfrO6+M4gZO49NcukcgriOvTtDKVpyvpyB4T1EkBQHoQKPYb+NjGLLV7DmM/emfZJYDIk+zYUgrx9SN+7NO564ifBJfB35YYBl43WCvIzTqcibKvmbtagcjjvWU=
Received: from VI1PR04CA0131.eurprd04.prod.outlook.com (2603:10a6:803:f0::29)
	by VI1PR04MB4270.eurprd04.prod.outlook.com (2603:10a6:803:3e::33)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1558.16;
	Thu, 24 Jan 2019 10:31:30 +0000
Received: from VE1EUR01FT028.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e01::203) by VI1PR04CA0131.outlook.office365.com
	(2603:10a6:803:f0::29) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1558.17 via
	Frontend Transport; Thu, 24 Jan 2019 10:31:30 +0000
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
	VE1EUR01FT028.mail.protection.outlook.com (10.152.2.220) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1558.11 via Frontend Transport; Thu, 24 Jan 2019 10:31:29 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (104.47.0.58) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Thu, 24 Jan 2019 10:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=69K9SdAOJaXW5SHAfb/RdqFiZ33Bc/hhWV1R+crgnh8=;
	b=G+9VpjUkomb2L+BTW+Q1Wzw9wl0Bzz5KVdoenkmdBDQ2YdG4MfrO6+M4gZO49NcukcgriOvTtDKVpyvpyB4T1EkBQHoQKPYb+NjGLLV7DmM/emfZJYDIk+zYUgrx9SN+7NO564ifBJfB35YYBl43WCvIzTqcibKvmbtagcjjvWU=
Received: from AM0PR04MB5348.eurprd04.prod.outlook.com (20.178.112.145) by
	AM0PR04MB6161.eurprd04.prod.outlook.com (20.179.34.11) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1558.17; Thu, 24 Jan 2019 10:31:24 +0000
Received: from AM0PR04MB5348.eurprd04.prod.outlook.com
	([fe80::1c68:e546:f90f:bc05]) by
	AM0PR04MB5348.eurprd04.prod.outlook.com
	([fe80::1c68:e546:f90f:bc05%3]) with mapi id 15.20.1537.031;
	Thu, 24 Jan 2019 10:31:24 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Project support for Numeric/Scientific Python
Thread-Index: AdSzMX9ge/HkOh4/SfWWtJJKUP2YTgAMR8+AAABhTgAAGvP8gA==
Date: Thu, 24 Jan 2019 10:31:24 +0000
Message-ID: <4d15ab20-658b-14af-7cd2-c0a2e7722d01@topic.nl>
References: <b4bcd0b5992346bd8512a00ff6caf425@flir.com>
	<f1a31b6f-4a7f-7a8b-d7dc-0c79c6e98529@windriver.com>
	<80ec3d5f-e34a-4c32-e891-adfe00066844@balister.org>
In-Reply-To: <80ec3d5f-e34a-4c32-e891-adfe00066844@balister.org>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
x-clientproxiedby: AM5P190CA0027.EURP190.PROD.OUTLOOK.COM
	(2603:10a6:206:14::40) To AM0PR04MB5348.eurprd04.prod.outlook.com
	(2603:10a6:208:111::17)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM0PR04MB6161;
	6:D7X/tQN4jN/3amhbGJWZATArvhNgC1xC2QUcOlaPCk9F6zTflPLzHvTtQptpxuAh8WPomKlug3a5sS2KWP90N9++FRx2kY5d+o0hFuCseMFvg6/hFL5sZWEK/JiptE3EMgVpnDIac8BUEEsueB6XgrUXYC0nWruYFRYBwCfxtQegv/+8Q3sIXHiqqaG+PA/8sOThWhxKwGcPfe48dt9z6QJpMD6/Jc7AIM5gFth/i7dyCCxI99Cb4/MTXi9N+SXdHmBbh7a9DcVODlL9ZPwjed4LzJEeveDnyqDVK9Km8SI65jv2E3NT+k8OiENiHdFP4mLWTOSmVLR9h2sEmU4K2R7z63lMd0knBZi1MlCykSg+7VfCds0GwEKxKdBSmVkNfJ8eOZgSY9vuthrwGsTpv+G7HziWRcoHyMe07G7k6t5QAQKOfW3KnC7uQKg47GsAJSIEWAxHXBkT6Q1ulw/lpg==;
	5:ezzlgexlwmRpQXH7DEbZBpJx4f+I/mAn0noqAQB5eZEaO91CMhHHlzNQxR+XByZpVFp6xCNx+8HSFrcZZMueu3imOvduGqbsrReFmpVzo57OYLm04IWqPxidsbfLke0W7vJgTfXs2nL5QUmA7ynt9FfnriKZURiRmN15PL57SbQ7Fj8nYYLt/ip3Q2aLMQ5cbjEuDcIUZ5O0JKTdVXQXeQ==;
	7:mLfop1qksZHufsmqBX08KD165vrkQa5AHN46nIoiHOD0XJJ6GzWPWgnHNM2QzKUAszyHLTAKIAcCS5ccmVbGDmShBt0uHOtc+rIK5zt/hoPkW61Zy5JBvLEnFdeWSAKlaMA77OdsGL5gTy9le1q7fQ==
X-MS-Office365-Filtering-Correlation-Id: 8faf9904-df97-4d33-50ff-08d681e71a3b
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600110)(711020)(4605077)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM0PR04MB6161; 
X-MS-TrafficTypeDiagnostic: AM0PR04MB6161:|VI1PR04MB4270:
X-Microsoft-Antispam-PRVS: <VI1PR04MB4270183B4A1F7C217C488ADE969A0@VI1PR04MB4270.eurprd04.prod.outlook.com>
x-forefront-prvs: 0927AA37C7
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(136003)(366004)(396003)(346002)(376002)(39840400004)(199004)(189003)(504964003)(52116002)(256004)(316002)(6916009)(99286004)(2501003)(6306002)(6512007)(966005)(6246003)(2616005)(476003)(446003)(58126008)(14444005)(508600001)(64126003)(14454004)(2351001)(31696002)(65826007)(11346002)(53936002)(105586002)(102836004)(65806001)(65956001)(76176011)(229853002)(53546011)(66066001)(8936002)(97736004)(6486002)(81156014)(6506007)(1730700003)(81166006)(8676002)(486006)(5640700003)(6436002)(44832011)(31686004)(74482002)(186003)(26005)(7736002)(71200400001)(2906002)(25786009)(68736007)(6116002)(3846002)(42882007)(305945005)(71190400001)(36756003)(386003)(106356001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6161;
	H:AM0PR04MB5348.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: lyRhI/Z4WwX8V2coBuY0oJ+EE4oItBHHfyTvYioKzYynaapx8SQDeSQBkG6HNefM8aVWPYbca7RUT3Z444NqC1hO7jVzGcSX72reqFu/Afp17SmjB8/tINPwWseJAnzK9vwRanmwHFsG0WbtlHWhQ4kRIEU4YF+lNOVc8a7bOaGgmeqVLEitRQq3wbwApf7rLfG6oSrsU/X/MZHkEySBz6zmd/alBtcMAnpJF2PtBgJiW7A+8nxuFQEtM7vh+AH4CXzuhqAhoEdkOirF5uVEji4dqy03bY9R7IorTMe1TN5WuU45XNXIFGaY3Y0Zah85/DHNyUiVeJZY8X5ijhNV61dhlOPj1odYExu9zO3jNrNDy29AECjrVnUUWAoqM7Tc7Z46NdziBDfK5MRp8YL/ygaAhTEe/ibga1UVeiDHvY4=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6161
X-CodeTwo-MessageID: 20190124103126.9079e529-d97f-4eeb-8888-97eebf030267@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR01FT028.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39840400004)(136003)(396003)(2980300002)(504964003)(199004)(189003)(6246003)(2351001)(6916009)(99286004)(8936002)(7736002)(246002)(31696002)(7636002)(7596002)(58126008)(106002)(305945005)(486006)(316002)(42882007)(336012)(50466002)(3846002)(6116002)(1730700003)(106466001)(14444005)(476003)(14454004)(966005)(8746002)(126002)(2501003)(446003)(44832011)(8676002)(2616005)(11346002)(31686004)(76176011)(36756003)(6512007)(186003)(6506007)(102836004)(508600001)(5640700003)(6306002)(25786009)(65806001)(74482002)(23746002)(2906002)(64126003)(65956001)(47776003)(229853002)(66066001)(6486002)(26005)(65826007)(386003)(53546011)(356004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4270;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; VE1EUR01FT028;
	1:EESSB6ujplchKlzf1+p7iMqXPqIhJWWBL62c/y02wpUZBSjqx9aAu+UcOHe37gFBev+FE4dSwcVvac3pEATjNrLouDFvB96aEHtP99q3kkTGuYcb+jUKR3dEIqTlK8Wh3z6FZED3TtGj9yfYriDEaMNDeM2I2XvowEPoZClr3KY=
X-MS-Office365-Filtering-Correlation-Id-Prvs: bb6e1c8e-ce85-4293-0471-08d681e716af
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600110)(710020)(711020)(4605077)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR04MB4270; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB4270;
	3:VR4LBzjPpvv9Anys6G4YRBdl68EJL2ZPwXqW9Ed0d9CBCFwgw0Pw2sJ2PzalbjM8NQbJEl5F+PIqzxICfe7spX0Cx0oNwdO+08ut0tWvTAM7fq1dEPwkeFlgIfsM9POAxk9lZvECUigHBkgWv0kDQLnils/ABZK0ez6zc5xXemj8Jd3DVKenb5us+Ls7WQH/p/K08W28tYOrLfvpWhNXkPuHbJeuRkEtzhqjkWnFIoq9zdQQa2bajhjYIeLoJqRk7eQMAC81GWK2K4pKGlGiVo6lMqGzxOhC/0CifLPc+2Ydow06FXtJoO7RBpDAaRSzaQ2DOIQDiXQt8iKbLIhqD6TrotfsKaSlfnAzERJK79TtPd+m+u2DauGeTbbqALs/;
	25:eoJAD9eFUihmOUNpEboS9hm+WBZD1WnhCC4WNpudzzGbuT/poBgPUnWVYrWhWGxdYYi+gpZeEx0KNUdQpzlmJNo/zqzNrpCWlCiI9DeJrDGc3iFNlxYjukE+BYcf6WVyBiGrhyYyMZ1fAVyT2AReHM0NsbW5gkyhpoJ/newYutORxk4fOdU7aDc1z9VCGjh+AmD2P3tpQnuqAP3N78UH4eBTWAePOtM7z/1gc9cJ9WHtx6N6zuD46Ti6HS9v+mEfkoIJIhr6aXufmm3HM7BUpl98nYz9msC5u53ZQrGwofCV/sNzo47+2klbC95vIF1Gs563Tw+ZqhZ3PslVvKC0sw==
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB4270;
	31:xHuL3M4gzVKFbXzy6ugyRJIEznnOWAW1rk6CdUiZaUFlgfPGtsYqmvZRYOPXQR0aHe/U1sp1+33hVCfpLVqwXhJhGRkqnpRpuNhV1u+rHGa1UU0jIkJqFwdY0hTOUv3AZPHMHH8ITOcIN0xe3C8iWhJb+h5jxpylMYCH5SDHKjCk22+9tg4F8VwRWHvXJoCPO/aRqnbSQH0S423ag+Q13x7/GD8BSpbaEYJq3H+bT+Y=;
	20:oJjPgXaA3Phb71/hu4oWzOdTx02wuBVaWa0kOyKu7/EIr/DUFj4KZJAx/vootqgZh/bYaTJH3apjyeRvZ7MUELsnkey0pLE7mwcw899o7HS0LLQ4u8+wwkd8aIMvhnWOASaqpJ149zAb6jp3dVYDn1cb3GD52fqsT58NbBJPKtw=;
	4:cjddvTa9j0tbUU6y9tABEVmbvWeTpUfs5buZpAIS8CPoK0UszOELuBdzOLKlDZ1qgQSidhVusw9ZUkqOzhfrrJ4LbignCJY0SkI8MWqpVx7Ix4S3+Dl+U4UK/I6KY8wNM8iESBhCWHi5BMpzKXrN32i5UyV9sAMFrqo9Nf9OYcl3OUmIkIFZKSsP7bxLEcuXHVWWWxiWY0SYKOfnJ/bPzR9uVVZXCR2O7FulxZGQP+f/kQzcQ6kwqq4/JC9f7Spk1b2kKi3QvGW6+KAKUAjMWBLN4A0OsrcEZUq7DKA2cIM=
X-Forefront-PRVS: 0927AA37C7
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; VI1PR04MB4270;
	23:Jr8eemF1zhXmMv/uoR3m5rJs7ai5FldV17Olk?=
	=?Windows-1252?Q?bFAzJSAf0unuyFVTJO+KA1Se/k4jckm65TPSPGnGhtV0CZdN81ZHtjsX?=
	=?Windows-1252?Q?fMeExWomh0QdcGfNDNzXs1xDxCNFFQIIFVa4NAzmiziCReCPzsgJcOCG?=
	=?Windows-1252?Q?UNS2Z54w+BWEzP8jq1qaVd4TjRiUDBVFfetzh7iHqy2klpy52n5wXs2M?=
	=?Windows-1252?Q?juPMnI59Yu+/eKuFwGZVpwDZ3JUc2j0lldsrdI3P1Lrm2DFhSctzgWAE?=
	=?Windows-1252?Q?KsVi/r01W1DwNBZp+V60QC1e6W0CrjWEXymkqLtg8/LRWv4VdMhbdL5q?=
	=?Windows-1252?Q?sH0qsfgniAyF/5Q2mgRxUFOFkjhZqA5BBDDxJHEO/ZpcARtqOE8ja/V5?=
	=?Windows-1252?Q?3UJILkGtWqEqrB+EFv5I93HsdGfKVQkWo/1LL0hn322zB0OZ3863xBYt?=
	=?Windows-1252?Q?Z6S9id7nUgUqzrNNyip/bbe0veBx+4GIilOgYRSR2g0n0nEIVgrUYTLv?=
	=?Windows-1252?Q?i0vV+gPdJMIcegoVe/XOmrsL5DA9LY13VrtgdH1FixSnNX79HSr22qCA?=
	=?Windows-1252?Q?1P+CThikOZv/j3LoEkFkWA0vdBmmN1DVHMXUV/d1kE2U167OzsFh6bJa?=
	=?Windows-1252?Q?VwlwXAa3FGDzXpJR8w5ciIo4gAqejeoGqDz9S8KH/FTRB/AIBaLRLhrd?=
	=?Windows-1252?Q?5tvUnD9KP2sFhzah83Cs1ah0soPGhIA6NqygcFAd9cxEak8RX4vqyhsw?=
	=?Windows-1252?Q?mPcbuQxEQ5Rw2YU0TyR1U3QYNzqNj6ph5P7w2+6h9d6JUbu9CbJNRd8A?=
	=?Windows-1252?Q?QFIPAI9pNz5wqSWQRHvuVLmpsxRdLj+R7CO91eu7LQIt9+wUiGB9yKWt?=
	=?Windows-1252?Q?w4GzuAHNYOhI7vLJBkm/h/R3iZW1gv67o07WQAMzZ3cr5G97bpHDVU5K?=
	=?Windows-1252?Q?50ntiSzLypHZfsqWCLfh5nHzTaoDi+l5mD4qi7aehprAZQZrU03rPZHE?=
	=?Windows-1252?Q?/5KVwMuIKaFi61CpHnNvroF6ZO+zanZKY+7xKzpudYfq2osDJLi/OVYF?=
	=?Windows-1252?Q?lZXUIOvSR3l/EabWAb3553qisNTHTBDxZb4iQ+LhLNwEQ95lQNwPbGCD?=
	=?Windows-1252?Q?ohzNdUELTN1LXLIrRAhisGk/4c+U0KymyuXP6w6RCEmbkxmjMhEvWgi8?=
	=?Windows-1252?Q?u1bZyTtnN2/drJLztLAwVvzN6biIIZcxmOWIG26NhScbhxQoM7WTvwFZ?=
	=?Windows-1252?Q?DuIoj9ASLqjX2wOzRt2/WG3xe9sQKguuaCO/AvlBh/Wkt+XF4FAsswtg?=
	=?Windows-1252?Q?fFvUJerJ6viZ6Tni+7anLuJ3kNzsc9tsZhb1ECJRJNgAhZvCHMairjMI?=
	=?Windows-1252?Q?3Git0N9QuLI1Ik5r+NKpKPb20LRPtGlS5VXwPAxtU066Reu57GEXiA10?=
	=?Windows-1252?Q?4vZWiECNSfEZxz+TeLa+Gm/0/wn0PDZ0CxjT64V8S5hY5FPO/DicpHYW?=
	=?Windows-1252?Q?hHUA6cOi6CPwgpJLZe9w5XYMM6b2uOLuc0zB8akp8e0wBmFZEmSR4xuS?=
	=?Windows-1252?Q?izkZ3y5gZq7jF30AcxKkZshahLsH21gA9NYGI7SH5jqjIXdcJXYtNwr7?=
	=?Windows-1252?B?QT09?=
X-Microsoft-Antispam-Message-Info: yIDw9IlTVDHcUUPaKSX1/vagvy8vEaULMvX1y295zIWPx0EDA3zuEWT2EjYs0/8ITJuUlDIMTP9ps5gFHuwyFc8AyFZCwNNZqph5ycdYoaNw7cdBCP0YTVf2/cUeNORBsMh4kHLKwRI1oWOeNvG8g5qPTMc0twyWBfTojQgWIf35MG0pAq3xg1JKEqqWQqxTk0NAwLF8fs6FPjBk95realmeVvnYaTFWf/2+BD/z1EstqEhNQaQ0xK6W2BYUWdSu1KokpoAbmqUt2VDZlv4gUfLXYRdmZT5pclIh/PX0Y1iYA3AuPtzdDAqFWxk7464F/Zd4g52ns6kjgBgPSQHizd1v1ISyluEPui66nwiQYAEcpIlRRLO21NEbu3ksWqfe16q3pN6J5VyKg6Tswi3P/OMoXnpdX44iNgbJs+KsOqY=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB4270;
	6:OAM7C86wroz17BtfwCAbiB6cGAXmMNoZ+bGrulNe5E4WsUdNJifd12MRwx3NkGVb0B4VMFuC7lqbM2fGv8nTNhMeOQUznDetg5O/KNjeufR6ppCvK+BFDpvsQNdkInt72ECgqbZEhUltJzKRQc3jQk5vqrGIWuaK22Xk+W+ZaScCkyeYYioW3/zCS0qIWmz+V2P7/wJuyTDYVtdfEsMwLgzIR4OAELncWifiHDmBn7zluyU9K+p2gVi1UXsNkCht3xtTf55+381Dpi5t4pNFUM0IzHl0jEi+gfZwE931nhbFZkrF9PlAIGRztsxxJhB3WCF1UsuJ7cv4r3k5nnjz2Q/LnFKM9l+lDlpg2qpGGDGBj5Ir2r7kGMcfNn7fRpf6xmzwK8V7Osz40KhKx7e6lbWE70JRkOnsbs72Ue77Iy0goMlzRVjIy8RVVmn9GSPywm1znpxcVuksLbxokCfvPA==;
	5:urzRN+sJdKLFrgqRw6pIzcfrv3jjVA2P7+f2xOtjqmCv0jO7axZYpakNRAXHZJquWfKO+WaXGOvUH7kGJl98oN3ZLvvlSy/huA9w1LxsMR1nfMR6G6n+4uG96Pabybg03ZmTYzjgxcgYaA8W+hUD832H8JFDa9onYGYk/e2Y+GYHICubyvCRLesTA2tF+k8glxi+A5urMgkyCPvsWdXaGg==;
	7:MYpkNzN1FbT+amN0Gxmorc3bl/pn+EY6HF3a4gTQsn/+BFvP/6KStZz+7jErdI2oQkuazDEY4nblWwSASj6/0AbIuZgZaWqWA80qDnaDzLLa4JVtJHXSIj2JO66o4Zq+2nkY9/ilUIuDVhq5ZaFF5Q==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2019 10:31:29.5933 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8faf9904-df97-4d33-50ff-08d681e71a3b
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4270
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
X-List-Received-Date: Fri, 25 Jan 2019 02:04:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <56B977973C6E974EAD11D9F3A2E8B5B7@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

+1

Got lapack to compile, but no such luck with any "blas" package (like=20
openblas). And that's a requirement for octave, which was what I was aiming=
 at.

I'll share some recipes, tomorrow or so (today is stuffed with other work).


On 23-01-19 22:39, Philip Balister wrote:
> I care :)
>=20
> On 01/23/2019 04:28 PM, Randy MacLeod wrote:
>> On 1/23/19 2:54 PM, Smith, Virgil (US) wrote:
>>> Is there a current or relatively recent recipe for SciPy and related
>>> libraries?
>>
>> People have worked on it at least once before but found some problems
>> with blas and atlas:
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2018-March/thread.html#40=
348
>>
>> I'd say that there is interest.
>> I CCed Peter who started one of the threads
>> and BCCed 5 other people who seemed to be interested
>> since I didn't want to drag them all into the thread.
>>
>>
>>>
>>> Further and more importantly, is having a maintainer for (recipes for)
>>> those libraries a priority for the active members of the Project?
>>> (i.e. does interest rise above the general welcoming of participants
>>> to periodically asking =93Hey has anyone put out a call to fill this
>>> slot?=94 if/when the slot is vacant).
>>
>> It's always nice to have a maintainer but community members sometimes
>> keep recipes up to date even if they aren't direct users.
>>
>>>
>>> BTW: If this is the wrong list for this query, please let me know.
>>
>> It a reasonable list for general discussion.
>> If you get to a point where patches are being submitted,
>> it should probably go to another list such as:
>>
>>>
>>> Why?=A0 We are trying to gauge community interest before making long
>>> term plans.
>>>
>>> We would like to know if this horse is at all likely to have
>>> healthcare before betting on it (without sacrificing other patients to
>>> obtain the proper veterinary degree and keep up practice to treat it
>>> ourselves).
>> heh.
>>
>> Thanks!
>> ../Randy
>>
>>>
>>> NOTE:=A0 I see from the RRS emails that Derek Straka is currently
>>> maintaining the python-numpy recipe.=A0 THANK YOU!
>>>
>>>
>>> -----------------------------------------------------------------------=
-
>>>
>>> Notice to recipient: This email is meant for only the intended
>>> recipient of the transmission, and may be a communication privileged
>>> by law, subject to export control restrictions or that otherwise
>>> contains proprietary information. If you receive this email by
>>> mistake, please notify us immediately by replying to this message and
>>> then destroy it and do not review, disclose, copy or distribute it.
>>> Thank you in advance for your cooperation.
>>>
>>
>>


