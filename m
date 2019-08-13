Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E34CE00798; Tue, 13 Aug 2019 01:39:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.13.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr130098.outbound.protection.outlook.com [40.107.13.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D3F3E00798
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 01:39:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=aFIZWE/oP+ypLImAQcLsn30fUlCB8pFkDo/VG54eddms0niMXWMhkSxc5xrIf4VFhu/fXREw7OzsL07AVVy+Xl+ybZ56VzdfJ3mvD6DRfkn3p236QV0YoolMe6p42bx0oBWHQqAHQ5RGSjdZngXZ+JZKaCD83wSgiaM7VuA06eSSrQsM8BSFdJKy6R9gnAznh6vXvvUDlTSiYfn4mQqq8ImpcSSSMNdBfKRJVZr2SP6TCZzaf1e3Jv/VIg/huZfyXoURPtX6UoYk7WfI0nkrnRenvfVZ/XN01xvj+yAtJDRbWM5pyiqo8Ip+VRpp4M86PSTgMMfi2Pm/iCAlbcVviA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=EmxxdzAbrWM5R6oGhzMQo3PN1OzKPhBduEuA1b2hfCU=;
	b=Z9wa8mX53HHWRGKuAIkDzucWVUeBFpFjEssoNjEf8NSuGf+4RON5aedmN1daX7W99TGaIQGf0IUifqEIvn9sIkqlv2+iAy4VX2r4uZacxvM1rRyo8UAAOthLBuOPwSPYvy12u8kl1QDSuBPpr2pdyrbRdBhuqDqJgFv2IrC6TjUxg5HIap5Q5CAeH6absHUAXiBIBcPH/zc0iX1pKz/zvizpG9/Q4cD7qyMSA7UQZZoSiORXJ91B2vQJHSmRnyNb/bKfbFrfDXInVAB60+iDGcUka/bgzT8rNvDE8N723rf1/A1jLq5uqCQs63NQtPI+oyF+w9VFTGgRYHPG8xLu6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
	79.171.149.172) smtp.rcpttodomain=yoctoproject.org
	smtp.mailfrom=gomspace.com;
	dmarc=none action=none header.from=gomspace.com; 
	dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=EmxxdzAbrWM5R6oGhzMQo3PN1OzKPhBduEuA1b2hfCU=;
	b=FV+/tzv8cYyxXsTkaBXavmd12eDkPUww1TeBLxMeEReZuFjV1PwEmy3sJabhhWJ2p8dpyrZi0p2p1h4Gc22wTYjYy9FrMq+UKnd3gCpSjsBqZcRSngYtdk1wokrPpoguJ6MwzX3KTZoLp2/lDDA2i4hW4L5yPHrgA72pNqYM9tU=
Received: from DB7PR08CA0056.eurprd08.prod.outlook.com (2603:10a6:10:26::33)
	by AM5PR0801MB1874.eurprd08.prod.outlook.com (2603:10a6:203:49::19)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.23;
	Tue, 13 Aug 2019 08:39:14 +0000
Received: from VE1EUR01FT003.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e01::208) by DB7PR08CA0056.outlook.office365.com
	(2603:10a6:10:26::33) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.18 via
	Frontend Transport; Tue, 13 Aug 2019 08:39:14 +0000
Authentication-Results: spf=fail (sender IP is 79.171.149.172)
	smtp.mailfrom=gomspace.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=gomspace.com;
Received-SPF: Fail (protection.outlook.com: domain of gomspace.com does not
	designate 79.171.149.172 as permitted sender)
	receiver=protection.outlook.com; client-ip=79.171.149.172;
	helo=gomspace.com; 
Received: from gomspace.com (79.171.149.172) by
	VE1EUR01FT003.mail.protection.outlook.com (10.152.2.118) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
	15.20.2157.15 via Frontend Transport; Tue, 13 Aug 2019 08:39:14 +0000
Received: from Ex01.gomspace.lan (10.0.1.60) by Ex01.gomspace.lan (10.0.1.60)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3;
	Tue, 13 Aug 2019 10:39:13 +0200
Received: from Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20]) by
	Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20%4]) with mapi id
	15.01.1466.003; Tue, 13 Aug 2019 10:39:13 +0200
From: Martin Siegumfeldt <mns@gomspace.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: State of Meson build system through eSDK
Thread-Index: AQHVUbKVX3AG9/HGoE+WMMFZCkLZOg==
Date: Tue, 13 Aug 2019 08:39:13 +0000
Message-ID: <6332957486174883a87679522aaf246f@gomspace.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.8.211]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:79.171.149.172; IPV:CAL; CTRY:DK; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39840400004)(136003)(396003)(376002)(346002)(2980300002)(1110001)(339900001)(189003)(199004)(50466002)(40036005)(105606002)(33026002)(6916009)(2351001)(53936002)(8936002)(53416004)(2906002)(5660300002)(21086003)(14454004)(8746002)(356004)(558084003)(966005)(508600001)(8676002)(1730700003)(81156014)(46406003)(7736002)(305945005)(36756003)(24736004)(47776003)(3846002)(86362001)(2501003)(81166006)(76130400001)(70206006)(2616005)(26005)(5640700003)(336012)(97756001)(6116002)(102836004)(126002)(186003)(70586007)(486006)(26826003)(316002)(6306002)(476003)(23726003)(108616005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0801MB1874; H:gomspace.com;
	FPR:; SPF:Fail; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5dadfe17-9e06-445e-71a7-08d71fc9b8b4
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:AM5PR0801MB1874; 
X-MS-TrafficTypeDiagnostic: AM5PR0801MB1874:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <AM5PR0801MB1874FE9B3E082CA609370793C4D20@AM5PR0801MB1874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 01283822F8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: qkjXV2o76yGf3LKb72chmNVyStN4qsXzgrGzPtg9lPcM6gWsAmDZHk75CD4c99J+J3Skk7cSJQxSsjR/ag2/pM9WkLyGMHoHLhyol+93zNnRr/WHLYPw8aSLLePh0AymMhnAfqMp22ScrjJhPXvwB+rHG57xJez5jVFE7ybv6a5EF1M8J6PA1CkUGRhJf8BYFiDD4GYQt/0YsPLZ2bdOU7UdYmwdjm6EDu/mJZCkZ2is7cP02ke5y/fz24zvxqd/g6oXMXcSvNlSlNbg2rZ17ARkQSWa6lVZBtBZxk2Ddm4P68EU8HI62O/SYG23xaQxkd2iAWOS/InqQ1siUSQYOYbTmB/y78XkEwiF474PCxVd+F/MW4Xhfnw1EI6GvkcT2aay7qPddyxUTlaDIyeKdaEBLLAycd+iyxGtsRGbbWY=
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 08:39:14.2053 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dadfe17-9e06-445e-71a7-08d71fc9b8b4
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=91ed1e54-6d8b-4599-84d8-65fe75fda3d1;
	Ip=[79.171.149.172]; Helo=[gomspace.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1874
Subject: State of Meson build system through eSDK
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
X-List-Received-Date: Tue, 13 Aug 2019 08:39:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
=0A=
I am wondering if/when Meson is expected supported through the eSDK - I=0A=
don't see it from the list:=0A=
https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-a-=
closer-look-at-devtool-add=0A=
?=0A=
=0A=
=0A=
Thanks,=0A=
=0A=
Martin=0A=
=0A=

