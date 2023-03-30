Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89464C761AF
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 12:06:41 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.51])
 by mx.groups.io with SMTP id smtpd.web10.23155.1680177999724598076
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 05:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=hcOuxHJi;
 spf=pass (domain: arm.com, ip: 40.107.7.51, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KEhPa4x+3agACowjuyAzIVzpu7eJp0NwA+ZmeIgTdYk=;
 b=hcOuxHJi7Yzu+G38Ldm8ftKqkMEzPgHjzLbSdtvDrMRbwL8Kp/sgYu1OHjA6yOvxcwBItS3o3R68u6+JdJYUXxuZ7i1Omjvom+gd77V/QvUdzrLarb58wqpFtSO2JofDw1wJWycCqwc1rtLjNT1PpYFE8SX1kQmuht7IT9lfONI=
Received: from DU2PR04CA0340.eurprd04.prod.outlook.com (2603:10a6:10:2b4::12)
 by DB8PR08MB5372.eurprd08.prod.outlook.com (2603:10a6:10:f9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Thu, 30 Mar
 2023 12:06:34 +0000
Received: from DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2b4:cafe::98) by DU2PR04CA0340.outlook.office365.com
 (2603:10a6:10:2b4::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.21 via Frontend
 Transport; Thu, 30 Mar 2023 12:06:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT018.mail.protection.outlook.com (100.127.142.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.22 via Frontend Transport; Thu, 30 Mar 2023 12:06:34 +0000
Received: ("Tessian outbound 5bb4c51d5a1f:v136"); Thu, 30 Mar 2023 12:06:34 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: eaa95bf89e62012a
X-CR-MTA-TID: 64aa7808
Received: from ce618b5550b9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 6464C79D-8889-4344-AD5B-880C18A14D0E.1;
	Thu, 30 Mar 2023 12:06:26 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ce618b5550b9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 30 Mar 2023 12:06:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sur7XAA1aHiyWzMMN7dufP2oUKOyZpMNTdJyGBq4TJzSfrkp6AN0+RXgemi3HzRs6P1athte4jbWr8wo67gWsGZJrSg2AxNV8piYHKtDGsL2SAljeYNCdF2eMwPsC5zWkeieMnx7UP/kWhdWcnWnqSTdZo/wXjMa/UPKnjGMUop0ipZjeDXf0yQaWnVVK05j3N129yovnZL5mSA0wEh+cNmUYxV6dpAmQNod7VHvFdZfadFO3rUK8Ah20p86rFdTMVnHwUUyBN4bHnExAG3p+dQSjMSSkDA8LbBFxGzBwFpRteyjqTDr2LNHX5whHtn7A8zHtyhSJR552kwxEB4z5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KEhPa4x+3agACowjuyAzIVzpu7eJp0NwA+ZmeIgTdYk=;
 b=YnMugLHIFIYjdrYdaMqqpd5vwFuYkov8HW1xNm3CV3eZTBI4Z0ZrIwJCjvAoHpePOh8ERgPmwLViy++c4EFKApSGJ4sBRgkAd2qcclShuN8o1PZXJh0dOCILjC3x2XzbpfPz+2yu2h4ytCKL2N+VQkISvKJ0XKrdmLZLOZLcLBmxDlT3zCvasgap1v5fhAZvdUEyiwf3PJjgoz8lkQh4g9gzPLAreMaIpSf59YpRQ7Zi+xFziRZIXEuBtX2kx/R/X2AONaRWNRAYbGmMo/finUyu6mmbC3+0Pw2L+SirONscc3LeJZqltQSjW44vRlvqkN6zqsdIqgPswdPmfzLfbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KEhPa4x+3agACowjuyAzIVzpu7eJp0NwA+ZmeIgTdYk=;
 b=hcOuxHJi7Yzu+G38Ldm8ftKqkMEzPgHjzLbSdtvDrMRbwL8Kp/sgYu1OHjA6yOvxcwBItS3o3R68u6+JdJYUXxuZ7i1Omjvom+gd77V/QvUdzrLarb58wqpFtSO2JofDw1wJWycCqwc1rtLjNT1PpYFE8SX1kQmuht7IT9lfONI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB7345.eurprd08.prod.outlook.com (2603:10a6:150:20::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Thu, 30 Mar
 2023 12:06:22 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ba7:a556:599f:4369]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ba7:a556:599f:4369%5]) with mapi id 15.20.6222.035; Thu, 30 Mar 2023
 12:06:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "hrsourabh011@gmail.com" <hrsourabh011@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to add missing ca-certificates to truststore in older
 version of yocto?
Thread-Topic: [yocto] How to add missing ca-certificates to truststore in
 older version of yocto?
Thread-Index: AQHZYMpH4A2I4C+/wU2yvRVtb33sea8O8haAgAACzoCABEmQgA==
Date: Thu, 30 Mar 2023 12:06:22 +0000
Message-ID: <454CCAE7-EAF0-4FC6-BE75-73D5CAB0072D@arm.com>
References: <C522C48E-CA7D-4527-990B-D5A6DA875AD0@arm.com>
 <32718.1679942271905418406@lists.yoctoproject.org>
In-Reply-To: <32718.1679942271905418406@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB7345:EE_|DBAEUR03FT018:EE_|DB8PR08MB5372:EE_
X-MS-Office365-Filtering-Correlation-Id: 74f35807-4e9d-4653-f0b4-08db311734ad
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /s8T37Tj7g+TnZ7GfRHAngeH74d1tmJ140fUAZlawFalWeCQU21BubX4PNMyFsWW+NhRIy4ywtaFPJMGToHG7nwHPwsZJ5Mci1merisHSFV0x4YG/S72HiTwSoBknGLsIU7i8mLihuZ+oAkqwjEsxeYhN4zbDxFIZB/M8IedyfXexiQjNcqQZOKZ6kp3i8h2YmOKBXzauMWGhaI/e8Q0c9+Lr0LEFMhCbvBQtR16P44fSP6WEab3ZmSw+Q6UMhP/as9m0YlAvcL5b+1u1VSFJT3bvjCsGr9WhsnyOwu9zpJCjBbfhXPA2S+3f0HsPAH3wPbCEC8oro0LdmVZP58z3VirNtV4yVapINM5bWdhQ1Iw7FqKz9Or7tN7bp/GvxVLCx90OX8AevVeTKR6gB3hF/u56nn5LY4cqyQEpnzOjZ4P/MhX92w93gLD8e/ZCH7Tm3I3ZJIUAGsnzPOzsBVyAAf12S9lx7GJnnOgzd57EXHeTbMR8wJsdQiCVsSqycRyd9aYvGAsvQiReoaLtckuceiCP9IlYND3AMKLPabLf10CVNZ6h55CkaLkJMbVTWkxCBDC4EYKJl6sk66kn2lfPbBK8I4wH9Wcw2yyvYK2cZ9F8eS2If+8Dcn57yesoEX0AJH0y/cjL+0MRoW2PwsjYQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(136003)(376002)(346002)(366004)(451199021)(36756003)(83380400001)(8676002)(6486002)(558084003)(33656002)(316002)(41300700001)(38070700005)(66446008)(38100700002)(6506007)(66946007)(2906002)(91956017)(122000001)(6916009)(76116006)(5660300002)(2616005)(71200400001)(53546011)(6512007)(186003)(4326008)(26005)(66476007)(66556008)(86362001)(8936002)(478600001)(64756008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <ABB3F84C6C2EF24884FC6209FC6C192F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7345
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	8dd83c5a-1184-443e-1d8f-08db31172dcd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	F5XO+o4HodbqujDMc87tZ0mYTJLFZx5WFq3zKKVN9fljtJdgAR3Q4hAMkcUQ2iBcPlozCT4UFFwaMJT6+GJwr8++T2Q/B8PO2saSL5QOX8QQr1pw5VPHhSoi2iHL9hF1MiDiEHHmHGtAKV+ZB5yehvCDwMqnj0/BGf5mjNrae2pWhxKN8JMVT95G9p/boVT+OqiIlJX580a6MJUN8cZ1ecf7pu/eAtsD4t2Tgl1nEIFCfpKvTSkf8ywAFZpf8jknh6aXF5N61dzqVQ0UchOEbFJps2pKe6eHBGfv0WUlfeoLVVpBXlDn/LCkZZ7gqpHVpxW4Z5XRsdeKZqk2uB+skIj/tQ7rsGxJhyMvFOrIN5Ot1gDesm1w/Y8KzpN80IcR/xzaF6OHy2pabjBXoLC3VONPmtktsltuEvdEpV0x0uF9si7lpfXG80CMPgy1fWw6UoGb1d7F0VfGdvRApC8ARyEjaV+JjR9TzYo98l4Wu4T23w/Nu05ak99FM4aOT2R4qPtN+4Vjf5TPu8e7Vl7S48ux8PrcZjYoz/xZXQbFa9Nf5xURA4RlW539sEKPPSXz2RLb36JV5s9yWkd3H8kG7VE/WlIHKqX1gBWe4klBJOzz1FG5AW/q1uVDqh09vdpnWwymYgBvikYxGES0v0H77dubNKmgFIBOyZ5/9GGdXJEpDRcZCF1YcttFNQwi/2dOpMs/fu9IJtG9t4ZXLR5Bdw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(396003)(136003)(346002)(451199021)(40470700004)(46966006)(36840700001)(336012)(47076005)(2616005)(82310400005)(83380400001)(36860700001)(6486002)(316002)(478600001)(186003)(26005)(53546011)(6506007)(6512007)(2906002)(4326008)(5660300002)(6862004)(36756003)(40460700003)(33656002)(558084003)(81166007)(356005)(8936002)(8676002)(70206006)(70586007)(86362001)(82740400003)(41300700001)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 12:06:34.0880
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74f35807-4e9d-4653-f0b4-08db311734ad
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5372
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 12:06:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59548

On 27 Mar 2023, at 19:37, Sourabh Hegde via lists.yoctoproject.org <hrsoura=
bh011=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Thanks Ross for quick update.
> I had the same approach.
>=20
> But will there be any dependency issues while installing new certificates=
?=20

I doubt it.

Ross


