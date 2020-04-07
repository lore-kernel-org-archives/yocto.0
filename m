Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.65])
 by mx.groups.io with SMTP id smtpd.web12.9315.1586267334450825361
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2020 06:48:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=y2eLQwBb;
 spf=pass (domain: topicproducts.com, ip: 40.107.22.65, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P97/M1h78ASxwmnHq7jCywC82b67uoNtoURUYQneH6Y=;
 b=y2eLQwBbaE5QXXBp3+4d4MkA7mc++KKW8C874dLfVLjQwwkiUzkxPVU8vxVDI7XwS3x3HvI0B2HkthKnudwDXDU4uNn4iHWCDkXYAqYawCC0l1G+zoW2ZpxcB28Iq04JX+iZWcVGF4AXFJwqRhkWfY6jp+6TQcezDbJ0iw7BKKg=
Received: from DB6PR07CA0177.eurprd07.prod.outlook.com (2603:10a6:6:43::31) by
 AM0PR04MB6113.eurprd04.prod.outlook.com (2603:10a6:208:13d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 13:48:52 +0000
Received: from DB5EUR01FT049.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:6:43:cafe::53) by DB6PR07CA0177.outlook.office365.com
 (2603:10a6:6:43::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.12 via Frontend
 Transport; Tue, 7 Apr 2020 13:48:52 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 DB5EUR01FT049.mail.protection.outlook.com (10.152.5.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Tue, 7 Apr 2020 13:48:51 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (104.47.0.55) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 07 Apr 2020 13:48:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HuWRfV4t3M8IXJEdt0z4xvS0iFCzPGf7pz/1iy/3Xrmzzrs7WUrMN7I8nmim6QaL83N9FgRbjuGM5chmprpv85AIdDQvuM+apjHHfXywtVZU5OtARJLrRtfjvx84x5mwimHTV/b/7ug4XojKZ3wZYUq/BiS5cqlQ4WviYLiGUKRMZ6HOakz/g0nv2rBS3X2oYGIOLLs+DfYW+k1blmFahJZNWWyWljoOvTC7h3ONizuIJHFpbhhtI9M5bLMpQim8ArBrgxN2sL2kOErG1511D/kCSPBgBKOCqCzcPZSw5+1hRx8bDKWdWnRRAG3mlAT7E41R/7zbOrqH7zZ5FTHL4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nSL23N2POpeJcD1iwEapCiPowCJT8nR1MuZsVUJveio=;
 b=MsOqoiTJ4U85kWb5fnkjyOI3gdZuWSBsjOLYkuOOSbPk3Syoa0pr93/qjAD82cdkctKOn/g0O+x9WosWzbRiyxpjBnO9XXtiMHRmsGzkUT+HgUoGaBLGuDr80jz0ZAU0DnIT8AiufJ/xXZs9FyPZ0G28GUu2UrzZRimVLPzTBIUXwGUks+mUnpBOUFDd+38KWYhclWm27u0tlkPtRvMbyzAnNXgnHjdNyP2XglvD66WPB+5Kd6LypiQNQJN9SO/MORNWQUQ2ELU7dI6MyGuMH7c7IUsnaFUhrmZ7oxVjQhypGDiGhhQne9UYuwLysvETIzw64CY2p7Y8UrCNx6xUuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nSL23N2POpeJcD1iwEapCiPowCJT8nR1MuZsVUJveio=;
 b=XiHsWROulhAZzeZZWzwIYFtT1YONRTrSYb5Hw1oIjSWCfR9WiMPyHx21wik/nlgRFaPs/LpVSWLvpNErAO6z85mngBAC9+Es0US9O+YT7ddWPOlowTVH0J+t3XjJlYCypWNZV/ZItBINqSaWTkkj1+JesgZg9lm3v7sMnhNQgOI=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (2603:10a6:8:7::19)
 by DB3PR0402MB3788.eurprd04.prod.outlook.com (2603:10a6:8:10::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.21; Tue, 7 Apr
 2020 13:48:46 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2878.017; Tue, 7 Apr 2020
 13:48:46 +0000
Subject: Re: [yocto] Novice question on makefile in yocto environment
To: yocto@lists.yoctoproject.org
References: <CAKRDAG--FgfkAkYiLodkNzQxKo66pKN+Q=s30OhhrBaptRyVhg@mail.gmail.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <7a7a4b87-3b55-9be9-354e-abaf1728368a@topic.nl>
Date: Tue, 7 Apr 2020 15:48:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <CAKRDAG--FgfkAkYiLodkNzQxKo66pKN+Q=s30OhhrBaptRyVhg@mail.gmail.com>
X-ClientProxiedBy: AM3PR03CA0075.eurprd03.prod.outlook.com
 (2603:10a6:207:5::33) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM3PR03CA0075.eurprd03.prod.outlook.com (2603:10a6:207:5::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16 via Frontend Transport; Tue, 7 Apr 2020 13:48:45 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ddb559fb-3096-4229-afbc-08d7dafa6804
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3788:|AM0PR04MB6113:
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB6113E5BC2EB25F2CCEEC372196C30@AM0PR04MB6113.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:8882;
X-Forefront-PRVS: 036614DD9C
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10009020)(366004)(346002)(136003)(376002)(39840400004)(396003)(53546011)(81166006)(8936002)(66556008)(8676002)(5660300002)(2906002)(66476007)(36756003)(81156014)(6916009)(31696002)(66946007)(4744005)(44832011)(956004)(36916002)(316002)(42882007)(31686004)(16576012)(16526019)(186003)(508600001)(6486002)(52116002)(2616005)(26005);DIR:OUT;SFP:1101;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 5mE2rlxAZWQly57LiZha1eKYaxDmUCxpYGRKzkf+NuSpa79CyLSYzZqC36Wa1aSlELqGjmfw04tnxm0MCs3z7awHdjWazA4mD11C8l/LDdJzvKhl/1SfA7L4KzygdD06vS/xW11hP74oksuoFW26IcHiooREYw1NgT4ZgxUGQH4TfBlEzHdd6fFGN+6dQ1VHdCDfDLjkdvpZF/VdG6GSc/XK3HNhvEl9uZtGsSTjkL9nEybBQi/Nq3I8u81St6VHGDDc5TvJ2qsinXaAyZ8pl8T/IIbcFHuopAgK8Bsw0IiZdXjNwjVdCuye9mEAjhi4JVQnzQCq0suQWhFNHAqK+i1bLdf/VsQBvW7ARdq9p/QV8DdK/H2jRCk5UlYfjugCcM2N30cK0EeLR6RupKI8vCWQr3mJULkHM4DMgYGXszuxpBUh88wqF3PgqBdnj+ve
X-MS-Exchange-AntiSpam-MessageData: v/riJArrXmkAAn/+NYCA0Zdcb9ztXU9TBb1iazxLFEGONr+SUY4fWZDvMgp9uzwXoHD4G95r4sBNHbsO6fvbZtGgVMHDrX3DtDo/yPn4ak2p9WBnaXhZFcIZNbFR62k1tctuj5uXfkzFmrmoll3xPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3788
X-CodeTwo-MessageID: acd0d674-73e3-4651-8d76-30b338ebebb7.20200407134849@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT049.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFTY:;SFS:(10009020)(39840400004)(346002)(396003)(136003)(376002)(46966005)(8676002)(246002)(16526019)(31686004)(2906002)(186003)(26005)(508600001)(336012)(956004)(82310400001)(31696002)(42882007)(2616005)(7596002)(16576012)(44832011)(316002)(7636002)(356004)(5660300002)(6916009)(36916002)(36756003)(70586007)(6486002)(70206006)(4744005)(8936002)(53546011)(47076004);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	553ad125-1caf-4df7-f379-08d7dafa6470
X-Forefront-PRVS: 036614DD9C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xFJOQ52lKGpsqlunY9fP0aad/CmTsXZZycRma36I9Z0KX3i8QBIFuVu/otc1XmnxDCJXLXm6DGwl4IhOP5a3cLGmKB8RnxzBnPdnmNf4Fk2E1DTQZYcUoEvUgsCnZujccUVnjeCCS8v3+jllF4h592q8p8vvtlrWXixXnO615mjZCN0RZUmT+EiPObWXTg8kmr/K74g4meaAtE4uFn4ml77HvEDoOH9VE4KcVZ6XoPf6CMj2f+ZRj64BzirAZfamngiBh1O/sDVjj7HwEFEHG9458Y5A1PNBRokFYSUlSrYeCrQP4+tV9yEsCW2gIo1zyZklaqlACBJ+3WuK1QjBXBDHMxT+ttn/+X1EGi9ytI6SJ7MkY1WrKZ+R1dgt5khGRIMTpXkM48TMe3e9iL8ViauvVT9yBLgmqgkc9gav6SafNhWCuSNmMnw5mvtfQsguHwpkEXmj32hpRuckUrXLce/9Blct4vNe2Lp7/bE8lM+VAkePaUEZcOdszvOcrT1HpTE9RiPo3wgIdE+vzAHqRA==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2020 13:48:51.7521
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ddb559fb-3096-4229-afbc-08d7dafa6804
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6113
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 30-03-2020 05:08, Raghu Icecraft Software Trainings via=20
Lists.Yoctoproject.Org wrote:
> Hi,
>=20
>  =C2=A0 I have some general idea on makefile in C, C++ environment.
> Related to my Yocto project having a very tough time in getting my=20
> makefile ready on shape after almost every development change.
>=20
> Is there any specific Troubleshooting based guidance available some where=
 ?
> I have also tried looking for old posts in this group.
> Please suggest if I have to post this question, somewhere else.

For anything more advanced than one or two C files, avoid handcrafting=20
makefiles and use autotools or cmake.

A helloworld makefile that takes "helloworld.c" or "helloworld.cpp" and=20
creates an executable can be as simple as this:


helloworld: helloworld.o


And that's it. Notice the total absence of compiler and linker=20
invocations, your environment already knows how to do that. Adding more=20
to this makefile will usually only make it worse...

