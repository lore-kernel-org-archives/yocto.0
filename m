Return-Path: <Nishina.Pervin@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A338E00A1E; Tue, 24 Apr 2018 05:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0114.outbound.protection.outlook.com
	[104.47.101.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34C1FE009BC
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 05:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NESTGROUP.onmicrosoft.com; s=selector1-nestgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=fqjki2upkV0q5ixef03lRmoQQqwz6I1MdYzNWsZcWXg=;
	b=kFweAgjFdFm2UqL9aR7MeChmI2ahy1y3uEqwx+ZOUNPFG+WuEkG1H2rga6KlrR//A7eumPsSzKrHKrL0tDjOnChM04kPTXUNxuJ+5o27a1YqQTFdbSCVJGFm92C/cJ48MEgpg5aFhP77CXUUCZ+sSfbiFBTSlW+rjlb/DNX7zWI=
Received: from MAXPR01CA0054.INDPRD01.PROD.OUTLOOK.COM
	(2a01:111:e400:5a63::26) by PN1PR0101MB1470.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:c00:14::14) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.12;
	Tue, 24 Apr 2018 12:38:12 +0000
Received: from BO1IND01FT004.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea5::209) by MAXPR01CA0054.outlook.office365.com
	(2a01:111:e400:5a63::26) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.696.13 via
	Frontend Transport; Tue, 24 Apr 2018 12:38:12 +0000
Authentication-Results: spf=pass (sender IP is 220.227.133.133)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=nestgroup.net;
Received-SPF: Pass (protection.outlook.com: domain of nestgroup.net designates
	220.227.133.133 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=220.227.133.133; helo=mxchn-out1.nestgroup.net;
Received: from mxchn-out1.nestgroup.net (220.227.133.133) by
	BO1IND01FT004.mail.protection.outlook.com (10.152.202.115) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.696.11 via
	Frontend Transport; Tue, 24 Apr 2018 12:38:11 +0000
Received: from [10.4.0.135] (port=42828 helo=webmail.nestgroup.net)
	by mxchn-out1.nestgroup.net with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Nishina.Pervin@nestgroup.net>)
	id 1fAxCy-0000uO-2k; Tue, 24 Apr 2018 18:08:08 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNFE2.chn.nestgroup.net ([::1]) with mapi id 14.03.0319.002;
	Tue, 24 Apr 2018 18:08:08 +0530
From: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Error during Importing pexpect
Thread-Index: AdPbmsBe7Z2vkZs0RaqXJJU+eEQeXP//0L+A//90UGA=
Date: Tue, 24 Apr 2018 12:38:07 +0000
Message-ID: <E3DACD6AA0B26143AF16244886B5278E1FE92C04@MBCHN01.chn.nestgroup.net>
References: <E3DACD6AA0B26143AF16244886B5278E1FE92BBF@MBCHN01.chn.nestgroup.net>
	<CAJTo0LZT_KjCu=FK-ymwvXjR+1qDDjrcn_ZxLAFRxbyGU3eGhw@mail.gmail.com>
In-Reply-To: <CAJTo0LZT_KjCu=FK-ymwvXjR+1qDDjrcn_ZxLAFRxbyGU3eGhw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.0.177]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:220.227.133.133; IPV:CAL; CTRY:IN; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39850400004)(39380400002)(396003)(376002)(346002)(2980300002)(438002)(13464003)(53474002)(189003)(199004)(186003)(26826003)(77096007)(426003)(316002)(476003)(106466001)(246002)(4326008)(126002)(6246003)(446003)(436003)(6862004)(11346002)(106002)(486006)(2906002)(336012)(55016002)(305945005)(50466002)(7736002)(7596002)(5660300001)(7636002)(229853002)(47776003)(33656002)(76176011)(71366001)(59450400001)(23676004)(7696005)(2486003)(102836004)(2900100001)(53546011)(2920100001)(356003)(86362001)(72206003)(478600001)(55846006)(5890100001)(3846002)(8936002)(26005)(8676002)(6116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:PN1PR0101MB1470;
	H:mxchn-out1.nestgroup.net; FPR:; SPF:Pass; LANG:en;
	PTR:mxchn-out1.nestgroup.net; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; BO1IND01FT004;
	1:qMik0q2+No+tLtqGNkJhTXQuYd3l1v6VLmnD/YdfszMgYPSaaw81F7rEKfdDMwdig08r8f9f2m9badlS7Ojh+LlgfsL0nIBtsTROsfQPwROrjrtOILSBwrQbgAB3nQT/
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:PN1PR0101MB1470; 
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB1470;
	3:dt2lZ92rvlt0poCgqnv57xNb9rbnNb1A9gDiT7verBBAnwt3TCDqkNV+3VviaevD9eXvNyqPmVAePEhfpc518Yn9iDeqOB8wJNSA9gNBg084+l/I2OpmhFcNBX8QsjP6VRAVik/Dch1b1PP8AMuTpgENUyAE1yAI+wr3gW+DimbB1wielw9eMZhl2wsjXBmU8LNyyOL0kTzcUXMWPOrARK4HjvG0UaQkHIMB5gNqs8ocPRTR7ql+cnnWgW00EsUGPUXrI46b6DK+6RdeegAFu+RkKTHO8yFdxlHPbRsKFoYAH4YMUMtPYvwQ8US7PfYRDIh5zVBcMfIo8g/le7Pyz7SeexC6oQ0wJCFEGdYMC3M=;
	25:SssTi5upiUhzS2sLRfCRmxPnCc0HGhGOfpHE6Wkgd3voKh4GMFgFqDKOgE9jhrBKaxVgayjbxu0lm9/TMqqZx/i60YY5ilW/vXdKdQio4aIIdImcozYSBGWZS0jaF81MtGjbXLv89vQHaErOozyCX6VEyfPRcqL28wwngZgzgbhEWKzk4SyfTyTIPUwIJ6NMRj9kAjaERiWdvgCd3CvU8diHHt2BYj29kBH+6DVLFQddGP4lXKcvOReDE4mUnjaxkqdNwW7ZenO59HLuOpGX9314faDz0Jqm0pEs4LrULdZkuN2fHwyEqNmoPPA5r8qWMWaw40phXHRMa78kRFzL1g==
X-MS-TrafficTypeDiagnostic: PN1PR0101MB1470:
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB1470;
	31:Z1L7U7xdzM3JYqn8h2oYYXv7Tv9xe1/XvbTx6g/sUtWrWClW8teWVaRVRCSuCt73hA1Uq1XzLV4tSbyG7SafXJVfhuZzu0fSiHA5pWFDOs2uCDiwNuAwtXGYxFLLDQx6uCww2yHRB/gK+WLjl0iLLXr6YhNU4NKh4j+jv2qAOzxVT/F+S/5xnN8Kc6yarjQ0zvPpjxBGoFKvvdqHJ+VLqqOL+huYjs+I8+DFhOCb10Y=;
	20:171bLfeJvRCAFLxeXUPG+b3h7KM6ksTDx7N7UWgclJbGePLxRPbYsQryStK2V5AfhypWPPgC/EIyeUPOfhdQmmEvEAmj2Fe/AyQvTEAW6OEfKUpDt+577aHbSvJrufG9gJdkfQu0BRyqWvhp4/ZHL9GUJWIddrvPge7nMTC7lJKP30nKInlX0LiLKELC/ScCcujKjI2YTgnexb1D9KffISAcQKA/JhChKP1xgSTc6/jnTqwECq+uJ3VKNPY80OaJsBMIm4X/zGBEvxyIMmPcyhmPxBvv9hhRH2KycNDZc3i7CRegcosa8RMbmNNWfegC1ImhKZ0PUVkNytZ+esKkjluklyTy6gJg5VFgUQrPwBNBislqiF0mBC+FNMra13QV19Kn+WOFCKVmaRsL0dPB+1gBRwK1w9jPmGbNZUgX2MH7dYmXzmahrW4sWeahNx3Gjc/PKShGZoII9MMUNUgMu7PMt6d2iy4D61z2o5Ay4Nx9ucpswOFivycqIJI8q5J9
X-Microsoft-Antispam-PRVS: <PN1PR0101MB1470CB5B3B3BB2977A867F079A880@PN1PR0101MB1470.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(228905959029699);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231232)(944501410)(52105095)(3002001)(10201501046)(93006095)(93004095)(6041310)(20161123558120)(20161123562045)(20161123560045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:PN1PR0101MB1470; BCL:0; PCL:0; RULEID:;
	SRVR:PN1PR0101MB1470; 
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB1470;
	4:zGYcENx0GE7bUp61cJ84iVSeem8JHWRgXcHV02tEjvtNfUXZK0L8J7Gr4v92R/BUFHdnascM8ikKqoWz3lxwdYJc9mQEaeeh3yYRh8oIgoViBDuXlofcjiO5SUyvF3CTV4/b10PPYT7ap3bIEDh6ES6xqc+ftkDDibF9Xec+KbTDAJNqed/vnIYe3GX3qhQxGlSJt5wr/OhaYOgRdTDiinETGsDr8kUD8Z3Qso2OEC0l3T8wdXj+h6iGi2rm0Dh5y5eOUuFc+yu/985K+LeAaY882wEnxYzo8uUirEJdBvJy3SNAX4LdBAjLTyQCRMTp
X-Forefront-PRVS: 0652EA5565
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtQTjFQUjAxMDFNQjE0NzA7MjM6Z1c2YmRSTDQwZHAxVmpOVnU1aHJnOXRU?=
	=?utf-8?B?NWN5L1I3TlpmYmpQbjgwcGhwRmhYS1FvMExid09jTEVVaFhYbVhLWkcvUkpx?=
	=?utf-8?B?elpnZXdTaUpmNXpqdnhZWHRXanJLRmlzbGR3WGlxQ0Q4RXZqR3V6cUEwMFps?=
	=?utf-8?B?WFpzT24zVnZpckFSV0lBcmVCbTNDVFJkb3V0ajRtNitYKzRwMHZqOGdSNXlD?=
	=?utf-8?B?S2xMQ0NIR293RXd5dmxyNWFpZ2ptK2NsT0FlOG4zcnNhY0F1SVFUa1M3UFRw?=
	=?utf-8?B?YlJwMUJTV3ZlMlhmQ3QvKzdjVGFNaEJ5QmdSNHRreEpoc2xUWVFqYTdKSFRa?=
	=?utf-8?B?RmhXVlc5MGJWeEVRdFZUZWpSWllpSVdsbFoyQmZTSnJqalZjQWJJQ1owemVO?=
	=?utf-8?B?YXU1OFY5VzYvYnAxcFExbVVTMm44QUVvYkJXdTE2QXpSR0xZSFp3cUROc3pP?=
	=?utf-8?B?OUFOcGNkVUFUYnYwSU16eVRsd0lRY1hZcjZ4VDllRThoZmd4MEFKcjFkZ1Bj?=
	=?utf-8?B?WHBXR1k1Ulh0WXFLdkJ1byt5VjE2SitkdVdsTlRJdHhoc3FDM2RJSHZEdExz?=
	=?utf-8?B?Nk12MHdRZWpJRW5OV2ErUVNhVjZqNnJvL1JHbGtXM1B3cTdqVDlMVi9Oa2Jx?=
	=?utf-8?B?VVZxUjZQQkh6RDI5WGlsS0xvV2xJK1l2NDZJa2pMaWJHa1IxdjZxWU84a0Zq?=
	=?utf-8?B?aWlKbHR1ZFJUV1dOMjZLSW5BdDdPRUNKTlU2elRNN2lhL3Q1Q0RFVVhSU0RT?=
	=?utf-8?B?QW43RjlvWWx6S2d5RkRXN3dNUTlSc1FkTlNlaXFTUVB6S3hpMy9zeFVDUVRl?=
	=?utf-8?B?Y2xoU3pIT2RMREd0dHVSQlFtOWRjdklFYXR3T0dxSkhXQmdHYUd6bEpYbmky?=
	=?utf-8?B?TlBibWhrTUx1SWQxaFFzQUdsZXBOUkxBRVdSRDlzTXQ0SUtRWVJ6WmdKUmZv?=
	=?utf-8?B?WnFWQmNBNjh0QmJzODI2ekltb21WSWhNOThNMEJldFg1bWtWa3QzVFd0bUJi?=
	=?utf-8?B?WHZ6NGhDd0N3aHBjMmtYQm9uUlVqVFhSMXQ1ZTFtUUh2SWNJVkQ3N3d6SElL?=
	=?utf-8?B?RjVBNVNUeUxhQkdwTG1KMG01TG1acTZYRDEzZzBoMmoxdXVQWWZjc2ljdjdE?=
	=?utf-8?B?WTFUait5VFMzTkx1ZjNCc3dVL0pvNFVINmlnVzlVbHJsVWdCajhjRk50bnhM?=
	=?utf-8?B?U3BVQjQrYm5yNzJrbERhdFk2ZExJcTBUSU5lY3pibW94QlhMUXBsbTR6cE5y?=
	=?utf-8?B?SjF0eDRpZWJyN0MwK3VkUDJBZnFLMGhmQkVuN3NlMW5tWnVnNGpSN1hDMUo3?=
	=?utf-8?B?Mk9nMjJmNnpUY002bGh0UEVCbjBnSlhHU2ZydmxWNk1KVnBKRXZydWV1MHJG?=
	=?utf-8?B?Tm1ScysyTG9oeVlwRDdJZ3BpRDcvSTlqL2xQTUNjcmdkQ3B0Rml5bm5vL0wr?=
	=?utf-8?B?OFAvMXkyNlJsYlhoZDYybG8wS28wTitqQ2ViNWtSZTNOVDdpSlNmcXIwSFAw?=
	=?utf-8?B?SGFlTU5EZGNLU0VUaTJmVVJHc0V1bFpScXVnU044Z1RUaVFtMnRuM2N0aFFI?=
	=?utf-8?B?Y0JTTDJQYkhwVk82QjlKUHBTMkNaaVZpc2pBWU12Z000c1pTZVdUL2d4bUZ6?=
	=?utf-8?B?WFJUV0hOY0crbjc4RlVoeVJiKzFuTlhhOXRhRkFaVXNiQVRxRnVCbmFhanRy?=
	=?utf-8?B?WkZuREdMZlI2NU1Sd01jTmZqV0FUTVJvelIyQTJEalZhUThNTll6UlNnblJN?=
	=?utf-8?B?WmRxcGlZZkpJTEx2b3hUZmwrN3lBdTY4Z2xRYUlqeTZUZEFGTVBnQ3BpVVZj?=
	=?utf-8?B?QlI3K09vNU1JdUlSQ0NYQURZVCtpTFp5ZENUeVdKcDg3TXo3dz09?=
X-Microsoft-Antispam-Message-Info: zGVCS/b93Z4pEmi9t1bJLtPBQh7sUl+suv9FNIsRiqpef0bI2Z8RpNSqT8vdhOgDW49vLETnF/XLMiDGx9jK2tkXhl5eGbxAfhj/H3FMDuH79ny9/jOgw1Vs0A4F8mDYCxaHG0Kx0+F1V0nOB14G0iTQoXS06t+RNeEFPDsfrxRodr73RYI2tb6LOvlB2cpT
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB1470;
	6:phH5STIHQVLY8az82lR+peQ1taRtKcVkPhZB54nYH+QqxQA85yMjD0cAZot7mFVbSY2gAwgj2n1+bsV7JsLwIST/IT0S6JF+5SnBfibA+wbH1cDAA/+FVcmWZ9rpIdRnh7+zbG9LWpFCazDezdxK3upA4UT7l9QmDrz/AorAXkWh1c5ck0sIpJXFdpqRqGDOvUuM0cE3j+fsxaGBPYQr22Y6X6k+4oRDU2TAWW1JFqY7ZurpRpuxs87rXzHWSXVtrZ46MctBUsUsOTZFc3DWZ0i5hch3zHj61eHNbrkTw0AZVVWpiTecvZy5aBTpodE0BpKtcGa2/y+1T9Vv1y5gULE6/Sm1o+XJF5kOL7j0UjHhkB6BduF/6zBIAXQjCSf+R6ucatHyHGYUqx2DScvjGhP72fV8s92N+lLrWxA8MHgU5YD87zhMOS1Q1Rt7xQxcXhnMq9y+BpX0b7FAPuZMvg==;
	5:TguX8E9/uE/WmLSS0SFwh3Zqe6NtTYyA/LdX7CtGGnW3Y8jUptuF4KBVDAGE4GmM6mXeRrXE0n0AEdf8hVYHYbfjn1poW3wN1ljY+V0LS1nYB/ZxNNSc4ilewH307bvg7PEpzr+iEvCzY90iAPma0vVduhzYmV/lwwNARuFTjtY=;
	24:zzJ8ukV4jECMpQ/Mj0jrss2DcEK1bJe+Qhfcc5SKjILGtvmQvEh0RWq08l/CyvSqIy+S7zF4KEAyN1MpOiFOvX7+ABvB0Ytyg1FZB7+2EHo=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB1470;
	7:6sHpNd8M9YM96JIQvcBl/3V4Y1YSns5jobdqKxF9lamidrKiWsP/udj2GhNNCfULwjaZXYp/tLHR9ULxYeBhHCwpHQkZO+jFgh80+sO4RxH/5CdBvkyZpepepTfqBC8n5ALr4+dps3pp9HuioAI4t+2thGcwl13Pbrd8V4SlbMFuMF8ejc3vydKmhg7Qd+dNgfL3cfcrt9+dY+8+l8y2HnMrEW7b9pbPgFqTr2qsF7XV1xB1JcZFM0zLdUbNwkda
X-MS-Office365-Filtering-Correlation-Id: d790a6bb-867b-4e1c-9845-08d5a9e03de6
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2018 12:38:11.7209 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d790a6bb-867b-4e1c-9845-08d5a9e03de6
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[220.227.133.133]; Helo=[mxchn-out1.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR0101MB1470
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during Importing pexpect
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
X-List-Received-Date: Tue, 24 Apr 2018 12:38:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IHNvIG11Y2ggUm9zcyENCkl0IHJlc29sdmVkIG15IGlzc3VlLg0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0
b25AaW50ZWwuY29tXQ0KU2VudDogVHVlc2RheSwgQXByaWwgMjQsIDIwMTggMzoxNyBQTQ0KVG86
IE5pc2hpbmEgQS4gUGVydmluDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDog
UmU6IFt5b2N0b10gRXJyb3IgZHVyaW5nIEltcG9ydGluZyBwZXhwZWN0DQoNCk9uIDI0IEFwcmls
IDIwMTggYXQgMDg6MDksIE5pc2hpbmEgQS4gUGVydmluIDxOaXNoaW5hLlBlcnZpbkBuZXN0Z3Jv
dXAubmV0PiB3cm90ZToNCj4gV2hlbiBJIGFtIHRyeWluZyB0byBpbXBvcnQgcGV4cGVjdCB0byBt
YWtlIG15IHByb2dyYW0gaW50ZXJhY3RpdmUgaW4NCj4gS3JvZ290aCBicmFuY2ggb2YgWW9jdG8g
YnVpbGQgZm9yIGlteDZxc2FicmVhdXRvIGJvYXJkLCBpIGFtIGdldHRpbmcNCj4gdGhlIGZvbGxv
d2luZw0KPiBlcnJvcjogUGxlYXNlIGhlbHAgbWUgdG8gcmVzb2x2ZSB0aGUgaXNzdWUuDQo+IHJv
b3RAaW14NnFzYWJyZWF1dG86L3Vzci9iaW4jIC4vU2Vuc29yVGFnLnB5IEIwOkI0OjQ4OkJGOjE3
OjA1DQo+DQo+IFRyYWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToNCj4NCj4gICBGaWxl
ICIuL1NlbnNvclRhZy5weSIsIGxpbmUgMywgaW4gPG1vZHVsZT4NCj4NCj4gICAgIGltcG9ydCBw
ZXhwZWN0DQo+DQo+ICAgRmlsZSAiL3Vzci9iaW4vcGV4cGVjdC5weSIsIGxpbmUgNDEsIGluIDxt
b2R1bGU+DQo+DQo+ICAgICBDdXJyZW50bHkgcGV4cGVjdCBpcyBpbnRlbmRlZCBmb3IgVU5JWCBv
cGVyYXRpbmcgc3lzdGVtcy4iIiINCj4NCj4gSW1wb3J0RXJyb3I6IE5vIG1vZHVsZSBuYW1lZCBw
dHkNCg0KVGhlIGRlcGVuZGVuY2llcyBvbiBweXRob24tcGV4cGVjdCBhcmUgbm90IGNvbXBsZXRl
Og0KDQokIG9lLXBrZ2RhdGEtdXRpbCBmaW5kLXBhdGggKi9wdHkucHkNCnB5dGhvbi10ZXJtaW5h
bDogL3Vzci9saWIvcHl0aG9uMi43L3B0eS5weQ0KcHl0aG9uMy10ZXJtaW5hbDogL3Vzci9saWIv
cHl0aG9uMy41L3B0eS5weQ0KDQpUaGF0J3MgdXNpbmcgU3VtbyBzbyB0aGUgbmFtZXMgbWF5IGJl
IGRpZmZlcmVudCBmb3IgeW91LCBidXQgcmVwZWF0IHRoYXQgY29tbWFuZCBhbmQgeW91J2xsIGZp
bmQgb3V0IHdoYXQgcGFja2FnZSB5b3UgbmVlZCB0byBhZGQgdG8gdGhlIHB5dGhvbi1wZXhwZWN0
IFJERVBFTkRTLg0KDQpSb3NzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpD
b25maWRlbnRpYWxpdHkgU3RhdGVtZW50IC8gRGlzY2xhaW1lciA6IFRoaXMgbWVzc2FnZSBhbmQg
YW55IGF0dGFjaG1lbnRzIGlzIGludGVuZGVkIGZvciB0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVu
ZGVkIHJlY2lwaWVudC4gSXQgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLiBB
bnkgdW5hdXRob3JpemVkIHVzZSwgZGlzc2VtaW5hdGlvbiBvciBtb2RpZmljYXRpb24gaXMgc3Ry
aWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwg
cGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IHRoZW4gZGVsZXRlIGl0IGZyb20g
YWxsIHlvdXIgc3lzdGVtcywgYW5kIGRvIG5vdCBjb3B5LCB1c2Ugb3IgcHJpbnQuIEludGVybmV0
IGNvbW11bmljYXRpb25zIGFyZSBub3Qgc2VjdXJlIGFuZCBpdCBpcyB0aGUgcmVzcG9uc2liaWxp
dHkgb2YgdGhlIHJlY2lwaWVudCB0byBtYWtlIHN1cmUgdGhhdCBpdCBpcyB2aXJ1cy9tYWxpY2lv
dXMgY29kZSBleGVtcHQuDQoNClRoZSBjb21wYW55L3NlbmRlciBjYW5ub3QgYmUgcmVzcG9uc2li
bGUgZm9yIGFueSB1bmF1dGhvcml6ZWQgYWx0ZXJhdGlvbnMgb3IgbW9kaWZpY2F0aW9ucyBtYWRl
IHRvIHRoZSBjb250ZW50cy4gSWYgeW91IHJlcXVpcmUgYW55IGZvcm0gb2YgY29uZmlybWF0aW9u
IG9mIHRoZSBjb250ZW50cywgcGxlYXNlIGNvbnRhY3QgdGhlIGNvbXBhbnkvc2VuZGVyLiBUaGUg
Y29tcGFueS9zZW5kZXIgaXMgbm90IGxpYWJsZSBmb3IgYW55IGVycm9ycyBvciBvbWlzc2lvbnMg
aW4gdGhlIGNvbnRlbnQgb2YgdGhpcyBtZXNzYWdlLg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0K

