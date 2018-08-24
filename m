Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5830E007AD; Fri, 24 Aug 2018 01:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.46 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0046.outbound.protection.outlook.com [104.47.2.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0BB7E00720
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 01:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=49sn8p6vA/+40hBu6bDLv5VO5/4FMR84LW8GuMDxBrs=;
	b=RK7CnVasB2dC/81QMOoE0shznL6tjefWDOE2Z2WOujjhEQa7yDr4TBbCBUE7UofjbCIscpwtp3nmLsP148zRmzoRsXLZ4FnfC2mSQwOtCrJa8zUtu6UBQjFyuXa/5oGbSgnl8QO9WPXRKSDoiJAiYNbpsTcoYBOYkwAw7mMaYmU=
Received: from AM6PR0202CA0045.eurprd02.prod.outlook.com
	(2603:10a6:20b:3a::22) by AM6PR02MB4135.eurprd02.prod.outlook.com
	(2603:10a6:20b:48::20) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1080.13;
	Fri, 24 Aug 2018 08:08:38 +0000
Received: from HE1EUR01FT063.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::203) by AM6PR0202CA0045.outlook.office365.com
	(2603:10a6:20b:3a::22) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1080.14 via
	Frontend Transport; Fri, 24 Aug 2018 08:08:38 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=fail (signature did
	not verify) header.d=topicbv.onmicrosoft.com; yoctoproject.org;
	dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu2-emailsignatures-cloud.codetwo.com;
Received: from westeu2-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	HE1EUR01FT063.mail.protection.outlook.com (10.152.1.51) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.20.1080.9 via Frontend Transport; Fri, 24 Aug 2018 08:08:37 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (213.199.154.208)
	by westeu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Fri, 24 Aug 2018 08:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=49sn8p6vA/+40hBu6bDLv5VO5/4FMR84LW8GuMDxBrs=;
	b=AkhVkGclpePCA1SPMXAZmz8FYrSQh51YlU0VQpeAhtPUMyqb8+EYbOKV6lxjU6aR0mVZ7I6zhaDRLzuiy6Y3i47vlwIlhVkL/X/7+GrmMyaxqViXuY+K96wVGl4UeQCrKXtl3wtmunRqeESxVn4+LRzaEGWd4iBKh7enhHcjftY=
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from [192.168.80.121] (37.74.225.130) by
	AM6PR02MB4085.eurprd02.prod.outlook.com (2603:10a6:20b:43::10) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1059.23; Fri, 24 Aug 2018 08:08:32 +0000
To: <yocto@yoctoproject.org>
References: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
	<3e057c7d3483b73bb8507678edb06b001b771185.camel@linuxfoundation.org>
	<1534750854.15709.32.camel@hipro.co.in>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <70ebd96c-6d3c-67ef-d7b3-2ed78b95ce1c@topic.nl>
Date: Fri, 24 Aug 2018 10:08:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1534750854.15709.32.camel@hipro.co.in>
X-Originating-IP: [37.74.225.130]
X-ClientProxiedBy: AM5P189CA0018.EURP189.PROD.OUTLOOK.COM
	(2603:10a6:206:15::31) To AM6PR02MB4085.eurprd02.prod.outlook.com
	(2603:10a6:20b:43::10)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0366d16-67df-4c3e-0903-08d60998cbf3
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR02MB4085; 
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR02MB4085;
	3:uBf7wCXvysyP5OTEPUlSxNYsEwhvDE1JnNQu7366GkFOs2LHJGe450lDHlJHrL/7NOLK3SjmfLWSrcfKaXMlC3ywTOnrxz66xoZxY39BHzFJsFYvi24LbhrT+NwmocT0TKjZB1prLcm2WksXhJhqO833uwzsXFdI/GJcpjo+/SttN2u686RI4GR9dcbcWjp8mgMdMDNIjrtOca1xKhxQay686GFdflLaNmiJHhgM1u88+pN8tgzhTsVoBGo+bgbB;
	25:qq6jid3fRU5JevO6Z9eFtOYyYfa6R/5wx6QJQsLAvsaPr5/+yRDU47LCUGczljv16MCTb9YdQPZ0jk76eGsyxTM+fCDzqjz23iXicnM3TGMKBxbiS77s4JagYohuc+ixMQZdQ8U5L8qMNbAMq8bbJ09XPSoJAbO4TQhv1mjXgWfwbmytAp6it1pTL8pBzHYIgkuhDjR3FTm4rcoYpuXwjJ4nY+k61SN4nYX8BqYb3lJ/yPdiH9YrCnwJKh/pKtL1bl2HyTIdMoqxvxCbCwfgynzkUK7IGBXWUlM6wNeCkt8UCG0ApG/Tein2Q1t6jk74TwJ0pFtoNRhOtqD7acmrzg==;
	31:9N6nnfg9nOw6sesoThMQHOYg0WAW1lU5ug13umzeJRgygcuG2j1eIpX3LiOGBLiV13o0yJdCXAeVZM3+uQP818sVfyeSUMZXfmLaPiEjpI2IHR+PJNQwgDPg+Vn1HjFgk4dw5LnJJurPnAHiKHlcbIiwSNqtMtujUVJ7dMuFxcChNhlL+31rNFGlEotJTqZvcU8YEwlIjM+af0tvh+zzcebmbZT7wxR4zWNJH6z3oHM=
X-MS-TrafficTypeDiagnostic: AM6PR02MB4085:|AM6PR02MB4135:
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR02MB4085;
	20:+y4Rt/NNUmwH/1CFQ+OfkhOxU2/FG98oQgZEF2+9BuPiNOMPrQoducis9ZyQYlpNutPSnqfi4K+jytjv9ZKUjnm3RkVl7DbCPendLF3msks0KYFeS+PnecrjG/sQX9CtoMzA7qeiB99MpBw5E9w/NMFJeQy/tlkfefNGu3k977o=;
	4:NcymCPU41gbwARcvHW/yqG05uwIdL3VEeF91AUQMPx5u7SGVwxCNy+7+OdVzExqXZeuPNvKbnFBo8wX2y168GzQC0lVR+NgjNm4YcrJWLqM4E+VaGYV/hSpSCn5cuPshQhZZYBFnskwzMQM7jmZNErOWZBBgSOILFMLk7BwkjuUve3QtA2kTMccBgwmjjGxvdivQkPlk09s2sCdQJwilvFf7ms680a3Wh2C+R37lEghHU1+80kj1S9UmXLoAk6Cg+qVjQGDaiOGrYuzqAz79/WjrD0wDm2q6PE563NRu44OFSiCbetJtUSpRc6JPYehK
X-Microsoft-Antispam-PRVS: <AM6PR02MB413578958164A388314E7EB096360@AM6PR02MB4135.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863);
	UriScan:(158342451672863); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(93006095)(3002001)(10201501046)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123558120)(20161123560045)(20161123564045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699016);
	SRVR:AM6PR02MB4085; BCL:0; PCL:0; RULEID:; SRVR:AM6PR02MB4085;
	BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93004095)(10201501046)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123562045)(20161123564045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699016);
	SRVR:AM6PR02MB4135; BCL:0; PCL:0; RULEID:; SRVR:AM6PR02MB4135; 
X-Forefront-PRVS: 07749F8C42
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(6049001)(376002)(396003)(366004)(39840400004)(136003)(346002)(199004)(189003)(26005)(77096007)(25786009)(6666003)(6246003)(478600001)(65826007)(6916009)(117156002)(81156014)(8676002)(53936002)(97736004)(5660300001)(81166006)(186003)(16526019)(386003)(476003)(11346002)(31696002)(956004)(36756003)(50466002)(446003)(74482002)(2616005)(53546011)(229853002)(42882007)(6486002)(486006)(64126003)(2351001)(2361001)(316002)(16576012)(58126008)(106356001)(23756003)(105586002)(2906002)(3846002)(7736002)(68736007)(305945005)(6116002)(52116002)(67846002)(230700001)(76176011)(31686004)(44832011)(36916002)(8936002)(66066001)(65806001)(65956001)(47776003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR02MB4085; H:[192.168.80.121];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-Microsoft-Exchange-Diagnostics-untrusted: =?iso-8859-15?Q?1; AM6PR02MB4085;
	23:dd870wqkWePnV+eh5wXfPQD3UEo2dJaTNuKTKR?=
	=?iso-8859-15?Q?1gNCTySC1iSqK3ZxdkseS+4BtvsyK8QSIzxlJdHaqjj5jvMSV2NjIAlGv?=
	=?iso-8859-15?Q?xhKPrUVYnzkL//W9ua0Q0NNmWOJEmN3FRKOZbkalrS3qTvujt6PhssPKk?=
	=?iso-8859-15?Q?0JBxDcPYzdenAh7PEr8PHpOfVikaUqxtUJ1PDqrGLySH2OiE00tOFUQqY?=
	=?iso-8859-15?Q?nJ0FnXf9u903SVBoy7I//VZ7DGFBDrmnDnQnkVVZBjNtyZR2ykwpdykUg?=
	=?iso-8859-15?Q?WpneRMh3QGkGdlrKTNn0abAWhp910Bthuthn+Hyz0/yqS8Ts4GdcLmBf0?=
	=?iso-8859-15?Q?ueUQKzT5tWyAGt1M1JAU63CZEQqGDg2Q5HT8d1pOVQeWvptq8zqgfu6Nr?=
	=?iso-8859-15?Q?12DfShakHAzpYScGTEVWkWKZhXpGCrg8jvzmI74jRUWLEmCNpzcPcLRrZ?=
	=?iso-8859-15?Q?A9YjjIlPo7uXxOiBx2Sb6Xn5vVVn6WFqOMtLWEuQYkg1aDs+19j8dC8gQ?=
	=?iso-8859-15?Q?l+p2l+fIWXUh2z+3MDfyu9UjXn+uKwpLFcDXEwH4WnpfmdtcbUUyX8afO?=
	=?iso-8859-15?Q?ejXCMnK37+SPz27jJwzzrr3NV+6CwK0aQ7iiXTXfDb/Yb8K5zg5N61TQn?=
	=?iso-8859-15?Q?+TQGrWFI7d0Xx44xXaxbcB6/3vIAPVSZP3c/PaVeVXIsUIVEUbrvmQaqE?=
	=?iso-8859-15?Q?0+0mNLizCTdrfc4bYSz+aqY6BGWvFKV6t2CXXA0EDSBJUtdQDQkpe5eeH?=
	=?iso-8859-15?Q?o3T1uTFkhjERFz4jmKLqqwUEpB++EgWedqsDtkyhqcgEPUxG8EltIE63S?=
	=?iso-8859-15?Q?ZOJ8S3qdADyTfeUmUX+qprVwZw8jBJUwOtLazK8aTmK3F7boAX0WQckdo?=
	=?iso-8859-15?Q?EBw4+zbfBh2/2dJfrLzv7Y0J0NAbHpRTHwKXwKe52DBSYOTvA4l50yS2v?=
	=?iso-8859-15?Q?asJ/oD99D6Dr5CV+3+2lJX2eDtK5YF9aHX7MxYFC+hZVt+h43v85xBMyC?=
	=?iso-8859-15?Q?hTmHUsgRHTRFp1TVbn3FlDzAu3nM5WVgIufqeCw00I1+UF1LYNoUFAzvd?=
	=?iso-8859-15?Q?AsDW+lGJYakEf6W/bziD2w/4vzCantAL3wDOXh9CWLc/p3OffA1rrnUzv?=
	=?iso-8859-15?Q?zfjSxuC4U3+/d/fYGpumeP/qsrNkvYo94QeLoALuPfE96EG/b1ppYRCgf?=
	=?iso-8859-15?Q?3lbnEQWpEeEASRWJCC5JWWxNd4r471ypoR01eG0mRuhLOk7l2iIX+G1Hn?=
	=?iso-8859-15?Q?7ESrpMTK1VwZZjOnXbvpPgrHNgqfNSbo5Qz0SdHKZDWIDuCMtu0enPW7G?=
	=?iso-8859-15?Q?E+iKlWl0/nTveeldJIIAUyUJvtcybvyee00Tb4AcZbONndUrzD1Z4qzVd?=
	=?iso-8859-15?Q?uQ/0yf/ZSUx5Pz8Kl9kPbmcQGWF+UFSud28e9XNE81rZjrNASQ88Sb5gt?=
	=?iso-8859-15?Q?SsWSvj8tVw2yXO+7HK/Z+ogef9pHzlUGOyMSxlrbd5DNDlCFnUPKbGVHd?=
	=?iso-8859-15?Q?TuEGqn/dXf7/NMfm4SC2SnsQvdAY2rRzUb280TLPZeM+9+knNQ59UPN+K?=
	=?iso-8859-15?Q?vvwaYv0YIU58xh3bXZYcgx8CFz9DJIQ=3D=3D?=
X-Microsoft-Antispam-Message-Info-Original: Xiwsrdsoj3HysYnL3R0pMVZCZuidZ97E9llg/InSSOP10cvGRgw/Ljw/7KXSqCVaJM+EEsgtcfzc6/3IBTHQ25lt4WhxUVePrsUfuCFEOiNhMp41ngd0JZ4OeunBHst7wFiDV/Vuq5Rix30sAUl/Ivht0GcsuKlJUaf+0Bn4ketmfdWUdiOq/EO84jIVU6rg2QQOMFGpeuouTagaKYIbXbb7RBqkSrbmnR7+Rog1CMn7C+fyKx34qD3IKKny29BLcD302zIAq+Esv2NKQxqt/f4IAFhkEponkH8GJi+M8eArdSJabxZSTOF/RFzeo9GsyFT/cer9dW6h/7COx6bL5wzrxjmy6XYPIsqgbyBOpWs=
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR02MB4085;
	6:fCyH0GsVA4tPHoIS/tK3knoey3dfsszi4JtZlOPFb85YXBKk8gULehtdTx0Xo3chJo2kjdkt335SPPq1eROEd5QuIjrQ31bRvohMHhh4hEe4toZ8pqryR01qTPKwufK1GM0kvP/20vS0InfTNZjuF+N6I6HBrShNT6dYCm9ygLuWdpjxPuPuOx0xDGfW1PshA28SUQcAdRETs1HESKLZKJlzyJvD2U1uLbKXsoeqiZCHfegt0tMVv+APdz8s6fmh5NUN8DH31S3JD894YtPSnJaZDVWN31nFGcSIJgncPwTFaiNqV2EMlVAAQP8yZD4AfHfNAb6UOpi74jioHZSAo+P8XFPAK2owzcL5InhWT/ugdJw5J+0f5oSFyAQesMAnohWa/tS4k/TgHpKbucUZc8e1qMGvtTtBWz6dLBsZOq7NCizI96GB8SYS0xxHuELb6iWuv9A9r0SHG0IwkavcUA==;
	5:SzeF+BJKPLnlaKcGsdpt+ImAAsOrd6Nv6o43tVIP3Xk4bGWPqUy0mCjMCYTTAbOcx2yRqx2myU/DRDUFV4TKKz6rbxW3NsCD44qqIaEu1HPe6iYralKkUH6MzxMwEDrQuBN1j2Db+LDc2dB4BeT+ONVEzS1Hkc+bUissa4rq6rU=;
	7:GdUO0yDKQ6gWudRjRjPewXtsPHbsah085BE8htDh9fKT2YgoOjHO6YS4RiPEiYiTYHPIir7iBb3F8tUIMK/erDhDdmLdTlyCe5txMh85j67kejUSMTTn4riYF3v9n0pXZ430EzGq/hf+Ny5Ofyr9LUO7PhvwqOXE6wpbE1uASG+rSLIFTrA/4ou4TSj3h7jIqH8JcxzlINStbfWqS15G0TyPy0URZqMj94kBj/OW9ltsUymdNLlYGNz0bvFuDFjf
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR02MB4085
X-CodeTwo-MessageID: 20180824080835.e4d3b547-74a0-43e7-aae3-a2f41341c3a6@westeu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT063.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(346002)(376002)(136003)(396003)(39840400004)(2980300002)(438002)(189003)(199004)(230700001)(246002)(47776003)(117156002)(446003)(8676002)(476003)(11346002)(64126003)(956004)(65956001)(478600001)(65806001)(2351001)(106466001)(66066001)(53546011)(186003)(77096007)(486006)(2616005)(126002)(31696002)(16526019)(6666003)(336012)(7736002)(7636002)(65826007)(42882007)(7596002)(44832011)(25786009)(8936002)(356003)(386003)(6916009)(26005)(23756003)(316002)(58126008)(5660300001)(50466002)(6246003)(36756003)(305945005)(106002)(3846002)(36906005)(6116002)(67846002)(6486002)(229853002)(36916002)(2906002)(16576012)(76176011)(74482002)(31686004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR02MB4135;
	H:westeu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu2-emailsignatures-cloud.codetwo.com; MX:1;
	A:1; 
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01FT063;
	1:Bcphoc/QPmhwornQRvUwOqh/cpPXmL1CrAyeyWyYj9JNqqmHrETFEIUQEYcXujUyEar5se86ZNMC22xlKmYnpjQdiBtbsmbgj0VY+hSHOYvVqX6hXiWiJ7awemsWWjTU
X-MS-Office365-Filtering-Correlation-Id-Prvs: 720f9246-d267-4798-40f1-08d60998c8cc
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(710020)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR02MB4135; 
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB4135;
	3:/sTTk4JfoqNpqFtIDwVXpzQgBjYazNN6iJxUgoeb0PC5yv02ACwS4kt1QwEGrHhtmud91xrJpE464vTfbPJfqA06RAIUssizDaP4SLLo9FJN6hqPzwZ+l11bMRz41CEYq1AkuhOt7RUIQMPCbyVV7V9SG6t0pFVv0uvxFJwXNwxM5UsoKnQII53VVMid/IBJUlJL+Xbi0PVX2ec2H3E2uEqC+fSvAS6N8NfpP8YgVkVVnfozCwxIgOu6sZCf1hhkQD+JtG+rP6E8pHidymt9zlELwRbhrLTV99wyawUdRR/XL3fF6/sdlb+XcVUJfarWBKpOHKj9dhPxeLIwGtzczF2TF3dUIz2RsnxibpDGy9g=;
	25:tRd1k9G//xCWdPvN4I+1crHOcxQATFlQ7BbmOYCOlHVWWWtflmuEdMjlbN4mY/mLefasfBWIyAToymFlOx9hujUGrIdszzRErY78hMX3xvgm+ARCXRSh9SRMxD6gVEC8hnhWUWN0oEAZjBXREuaNlQiy8K3G2fI+rPl4QfeOeUkIH8lYCqy4klGkait0IPRWILnJy4BHIRPZeG8H4rFHvTsCGzTi5qg2PhNM75s4RQxf+tVt4gfOVa9P/xLsmO/UiSapbKDMmGM4kITwT31NqQRIF7bNlpV4GIS4764r4T0qfJHxf/eVtWPfzxGzBVVULFJcw787VxXl5TEERJHtBQ==
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB4135;
	31:Jh6XhLFWEI+8H2y2WtlvH2ngF9HuTwNGz7wzfgi7eUmJ4jHdWN270lvSqDCl0tOEsR2vH9VtfeD0hNLXZQPClAgDJg2KIJIFZz6VjOJDIvR/f7oDwzIZsCCl02zD/VkOXeATc8VnIqW5EwAPj9IDgIndCqTYdY6cIgQVMzRpdBkk8Z15CmYup0MXB9YTeoBcmR/55lZMEhgcvxUn9bWRHS2qXOWRfB2/aG4/+IV+zLI=;
	20:VZMMjEOk7p+aCwH8jN86N11JtvSRo/0SniCZSQEH1n6SDa0VvlrDh6m0NvrhnkJjrO6vquKK5egylgpzMn/HT116kNEEx21CEHX/3NnFb8sDQitN5TuoV8i/2+woVpUZhNTvJd4gR8LR4emB/p1VMg3IaVDQ2m49yPMf65LEu7k=;
	4:PwdxVf9qECEiofe5leaJ582znG8V4U9n4DyF9YR+gj1PstlO7d0X6pGs92sPMGKPpC/hIIH2gQpWEm5vkIzVqpCxIAjoPrbGGLPpp+4VJ5hTbRWBWgJHQNdhAAMzW3PMrSqtf1ZjgV4IiQKoI7MuPPI+ddTiGgr1IuT+GQIgBq7vexLo2i8Ubo4fU3reyEnlP7fJkqt9IO9gsdh9x5Cz7SF/Sloci+nH1xGgMQdN6EN/g3pKadZ3bvZDPNbhm24ujltqyTH9vyTtRGXlv7E/jRJl9Hm/+bGRk32kx9XHJguo1a0R7ZjnvMH8fprtEKMj
X-Forefront-PRVS: 07749F8C42
X-Microsoft-Exchange-Diagnostics: =?iso-8859-15?Q?1; AM6PR02MB4135;
	23:LLlvcQOPNMJlDp7Z/HKansv+KpL5XXR/8zGr56?=
	=?iso-8859-15?Q?1n4XQXGC4ZZm2xxBrl0HiNwNaZearAIXxcvDArWLBgj8TFjXWoShBpN6I?=
	=?iso-8859-15?Q?WCdfJgtwojPqBeO96oMXevRfdd9UEsBwMFFZSy6djGqeL9xtixZpFRz6z?=
	=?iso-8859-15?Q?++GpjMFNHXOi02tzg6H5cka6fIiBj9KaEfpdzd2ERTPqdYDfs9vNU0Yo3?=
	=?iso-8859-15?Q?1KENQhNLmNZ6cTzyeaZWlZcERdZKn3KndGSdUG/O4B/sPIeeJ+ou+sa0R?=
	=?iso-8859-15?Q?hBMzpw+T3gPbd/0eVAs9J3/AcbKb8B2RC9rZM0KLmu/jxW46z4gX2NqbJ?=
	=?iso-8859-15?Q?/Kge3wVRXJPogyFsWO/J8F7Rk2RTZaoxQ2IpoFAGAZUgfD332Hh9vZ7/l?=
	=?iso-8859-15?Q?S38L6dOvlMaPI5OcSt6p+GcPrQZSWpi+Zsrtwzc0TYo5R4p/H+csUU80M?=
	=?iso-8859-15?Q?7P2f8qICgeC3KahZ6G+Rsr24aDNIodfe8cyzmkNMY59OTe0ChuAibNds9?=
	=?iso-8859-15?Q?YlCizTkhEBLBUFCALFCgd4c+VX+HfaK9qIdyp/b4OzVU0BTy8s6tsyoE6?=
	=?iso-8859-15?Q?DRQENBt4kbb+vKBPrnKSGMj7lFKQopIbPcaaovFDKrcmwA3LyHcG6c8ki?=
	=?iso-8859-15?Q?4xXzpJhgIJf4MW3uxXxee96dsLtNzUQcS1m/pqdOZ1U8B4YFTEZKmAILn?=
	=?iso-8859-15?Q?tU3suh3Bivdr53hHJUtRPk1uLRPa2uQVdKXuNLhuR9acclNxtImTZRzyP?=
	=?iso-8859-15?Q?LUqwROAzzRg5xlUeKRCApavEjRIuJd25FmptlLDa7B4GKOCSmhlFxRcPM?=
	=?iso-8859-15?Q?+9qR/aJ3grGq6Qk/ypCgeWaniAPnwZnk9Ac5KkWH+wsqX7C6roi/Vk0sh?=
	=?iso-8859-15?Q?udUhMsIc/DMyB9hglgh4zjfuX/zLtXLhYjT1KPN2ctsiyR5sfaNf1RBv7?=
	=?iso-8859-15?Q?yOzpcPkttIB8jevmoNUXIhPkEJxxlN9aOTyt1AxqhMlUyZjljRMvUtJr3?=
	=?iso-8859-15?Q?xtjUMmOER1dYKcARd41FydzT1iafDwSY2fjxbuTu3vfLMjKgiXV4qddn9?=
	=?iso-8859-15?Q?p/KJHPhRLC5V+zWE2A4dIoaAUJQPKOjgIKQ2fibI80E/DbMRavrcvaVUQ?=
	=?iso-8859-15?Q?3rs/tDVw0dsNJAxd4iwNM5N/F0ljYB+lSOb6irhIlysF4bKUKqVcLfIVc?=
	=?iso-8859-15?Q?0CEzXt9jM/3g4U1Sbky5sRVqX/5p84XrVWqsrzsHxlD5dD2AozUCagaxR?=
	=?iso-8859-15?Q?OkIw6pd4bFd3V+u0xU6/T0KheMyZWOv/qoslF10kCLUPMt9h/VzlFvumf?=
	=?iso-8859-15?Q?/YIbPLUzCxSocn8qEW//KWSdvcrGVwY8BsOHqhrjxNobKrlVKyTFp8wa9?=
	=?iso-8859-15?Q?m8S7Q25N1h5SVXnGCA2wE14nxN22WaWPpQtJJwRmAQqg7AsEoJixv9D5Z?=
	=?iso-8859-15?Q?L0Ly/cHZ3O++VzhbgnnVOENkht3hgEGZyCn8DTG70DMj58HTjWDtGg5L9?=
	=?iso-8859-15?Q?MeiG1r7yS7qPfaVQ+aZGrmbrCQT3s3qpZg4LIfopR0ErtCA18WkOWhZ2Y?=
	=?iso-8859-15?Q?45hQZdTXW?=
X-Microsoft-Antispam-Message-Info: XC6kuTj6ck8qW7cFsEDmdEDdQazBVf2v9QFO9zYUP1CRXsjDkLFA2LxnSwBMAfafDq25qjs/G131AzynQpl2azxgErv/gOXs2jnNQ6IWNTktb1wtzVUlMZ7aw5eVacsYG2odzzdaAskkkJeS9tDcljSUzVJine8fXKEyVn0yZysfY95zAfbGCMRgL+d91i8V4Wk6H6OmFp6JUu9q2PTezX5f+krotUMnPz1GQgx6fnmetcyo/zD39ThGliNWm5E8PeD6/jMzQ16DE2ezUEfxF7DhOCK+I03hs2C5Q1UMRYdfnge1QvGVIriNb2F0dcB6nCH1pkswXd2WL3cMp9a30fTA/FwWeRsm2/8ddc3df4Y=
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB4135;
	6:+TyaWVBQwjGsM3ZOOUS1Hs0MEGac5KphKeBDxjMGY0wOPFd1PJ9V4JQqKeTe3ukh6u0icJ/y1x3jS1mIhlQvHVHZagk78VjfQ7rPutPUpCmHEBhxPz7b/C2C/p6m0qYqGsW0RUtnHbmooQfQdPh7+6X3evZJ9q4iPjvQCxUOVo6EuLkBv7skQh+ezmXe6W6PEvv3fDOPzIDpp+KOKpTBzxark9vftfcB+bipPWt5nci9GNRMgVj5uS2/xuqOh1bBaay8ANFInv40agA/dJ8VKwatpCbYSLGtuzJD/6ewZdhBrL1GX/QUEQi5QFo7XgspgzWY6U3RRs2qBA2gKqLDjRE7ATLnvzw5Maj8kXmjhFdoDwjPHE+VLnJTeUD/bTox8iHTJQRJoxttVM0ffl1JqxkokxQ0kA9B5RRN610n/5d7Ow2N7vODh8fAYCbepvApN0PddBWrRO2Xv+0kB5SkqQ==;
	5:nbI/Yr9D3U1RDGJzLpvPZagof6QZKdlhyEvMpeuI3s4mOM/P9KX0MX8cwc8qHLsY5HMAtlb49F2Yt3N15Z5S9NmWx1K6fwR/tIO5vbewZIOke9ORsFAnOB8TJoIFRIOqnPw70Qh+SDuYUylcUhkOjlVsH8xap/h5xoxqWRrGYBQ=;
	7:bDdI/3aGqCrT9BKfVfXG/H/VHYadyYdaX21mlA2bwU3KNKZhBRhzaIRYxPxhoJyGGBOUfX5KqwZkPODol7/pp+h5/i2CVm7Xc/vACWj41la6sXs2gVsUgHu/PefYP+7XPdRvIJ35GOR/Rw7jREX9m3Q5GbCV2Ge0bhxmQz4DAOPyfG2AsOxGfrsZzF0Bs07itmA1MHDizlEBTRou7ET66hDZ08WOJlsoAdV/kf7OjGhXRni4mgzSunERU3q2Lnnu
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2018 08:08:37.9635 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a0366d16-67df-4c3e-0903-08d60998cbf3
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR02MB4135
Subject: Re: Yocto userbase in numbers?
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
X-List-Received-Date: Fri, 24 Aug 2018 08:41:21 -0000
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: 7bit

On 20-08-18 09:40, Joe Steeve wrote:
> On Thu, 2018-08-09 at 21:43 +0100, Richard Purdie wrote:
>> Even if you just look at the fields the project is used in based on the
>> project's members like Comcast, the automotive industry (e.g.
>> Automotive Grade Linux), several major OS vendors (Windriver, Mentor
>> Graphics, Montavista, ENEA) and in TVs (LG), the deployment of the
>> project is significant

I think it's a safe bet that if you see some device running (embedded) Linux 
it's probably using Yocto in some form (unless they used buildroot, that is).

As for installed userbase, the open settopbox project openpli.org has a 
install base that is probably somewhere in the 10 to 100 million devices. Just 
the openpli server generates over 4TB a month in traffic each month, which 
mostly consists of fetching "packages.gz" files for the weekly upgrades. 
Again, out of respect for people's privacy there aren't any solid numbers.



