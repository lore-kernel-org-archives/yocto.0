Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22E35C6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 11:00:06 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.71])
 by mx.groups.io with SMTP id smtpd.web11.97897.1679655601302558385
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 04:00:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=B0i7YjfJ;
 spf=pass (domain: arm.com, ip: 40.107.20.71, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jt4LoGFdM+FZ2GbLNwo32J6L4lY+6B4StSlOkUBOSRg=;
 b=B0i7YjfJX2ALpfU7NJJ+/LA634gfxttmMrJo8m2BK/sLNOHiCDbfYNqkyhiRnHF1mAqW5wwLW4z0iLhO5H4P8JEMdDtNNtVw1uSfXOBXn/YmP7dGQIq2AO5cduq2lKY0QLPSxqZu+vtDc2gjfKMOBm3a7tiNDgtAmWXFPizrYS4=
Received: from AS9P251CA0006.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:50f::11)
 by DBBPR08MB6060.eurprd08.prod.outlook.com (2603:10a6:10:20a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 10:59:57 +0000
Received: from AM7EUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:50f:cafe::32) by AS9P251CA0006.outlook.office365.com
 (2603:10a6:20b:50f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38 via Frontend
 Transport; Fri, 24 Mar 2023 10:59:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT053.mail.protection.outlook.com (100.127.140.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.9 via Frontend Transport; Fri, 24 Mar 2023 10:59:57 +0000
Received: ("Tessian outbound 3570909035da:v136"); Fri, 24 Mar 2023 10:59:57 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 841507d9402df72a
X-CR-MTA-TID: 64aa7808
Received: from a775734ff903.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0201A33F-8629-40E2-98EA-31EA6767EF72.1;
	Fri, 24 Mar 2023 10:59:51 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a775734ff903.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 Mar 2023 10:59:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pg+y8HXLjLtzEG0dmkdLrTQ5X4msSyfaw/bKh1jUxwLY56tz707znT/93bRhaN1rE4W96E2tTVsDh5rf+7LZZ0HSIH2o+DXxhZSQT6ia4f2t/wLqQqpAiYxjmL7mL/UWFRA0OOjS677YsdNhxTRudgbOlRBS6t09rzfTkliQY/wIFociBb4BnKX6kzomSG+cG2e6jpjvzNPwJmB9J58bZnQVVLKNO/ZI9J8tJOwBQL7guDumykdliFq8EyfgHeT5N/x7oPGX5q57qgq0HDOULJ9Xw0tc31Gy/z+z7dJiLRJUtwn0SMzFedHKXh2KDW9w6IvZmjBUkZppyJWXMSbmlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jt4LoGFdM+FZ2GbLNwo32J6L4lY+6B4StSlOkUBOSRg=;
 b=QKKga/iODMwSi16Eiu/x+6vAaNyiog6DG0zpUVMCsFFPb8o1jj4yV9NC6yl4I+5LGuN9xDfnvtGINwjE7yCkqU7GauzijZTqHWXyl0XfJ2VJX3bXTD2VmpsB+66zkiKrmU0ib2kWmnlAOcFd3lQwke41s7AS32plKu1pcsvpufr0IIlBlIPTjDGqK/X2x8aH5J7+YjGgOJWdrboumTr+/py1CGv/Q9wcM0ppI4iS0YZ1ZyCDunx1fTEu6+QaquvsoIzHT0uKxpY4Q4ok5zAGb7WbDMcE1z8YeYamcmmV4wNc6rmDwmPeCP3353vzKVMkreuC/m4AP/E/8fw365yKzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jt4LoGFdM+FZ2GbLNwo32J6L4lY+6B4StSlOkUBOSRg=;
 b=B0i7YjfJX2ALpfU7NJJ+/LA634gfxttmMrJo8m2BK/sLNOHiCDbfYNqkyhiRnHF1mAqW5wwLW4z0iLhO5H4P8JEMdDtNNtVw1uSfXOBXn/YmP7dGQIq2AO5cduq2lKY0QLPSxqZu+vtDc2gjfKMOBm3a7tiNDgtAmWXFPizrYS4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB7320.eurprd08.prod.outlook.com (2603:10a6:102:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 10:59:48 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6178.024; Fri, 24 Mar 2023
 10:59:48 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "hrsourabh011@gmail.com" <hrsourabh011@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto build error | AttributeError: 'LooseVersion' object
 has no attribute 'version'
Thread-Topic: [yocto] Yocto build error | AttributeError: 'LooseVersion'
 object has no attribute 'version'
Thread-Index: AQHZXYTNh3EcL6nI/UCx+YzCTIn9Rq8JxG8A
Date: Fri, 24 Mar 2023 10:59:48 +0000
Message-ID: <F36EC375-5C4C-49D2-822B-44706FE2B426@arm.com>
References: <PLD7.1679575278288203995.bOGq@lists.yoctoproject.org>
In-Reply-To: <PLD7.1679575278288203995.bOGq@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB7320:EE_|AM7EUR03FT053:EE_|DBBPR08MB6060:EE_
X-MS-Office365-Filtering-Correlation-Id: f2e2c99a-38cc-4032-a3d5-08db2c56e803
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 NoWbmpi386qz6THB7iWHyMUqon4DcNaL4DLSjBLZEf/BNS/tVzrcFpPAuLMOMlkBSmuutscwjNVTI8G7V9Mc4YITSF62mEKkDYhd1zbY75nYs4TgLL1pDihykgGkW81zbrd/E/kmzBSrTDvo0WwFMgWBmoQ0D2aEMzVSAvgWYflmU3iJ2jknE/RPfNX64AGoAI/R8zMQaC5oyK8OOtA+EuTKQbmzASv4/RLO5nZVjgXSloF1bjtUAJJS9iC8k5prpTIJBf6Ak0bfBVYMn1HzzIpamtFcArG6uTSz2dRzknmwbYvZxa2E6vp+zE7+/VIIvb6XjNXEuR+PSicQnNWP3wxu6XvJ8Y0tEuwXZpouYz580hRWPEPICh6xVBq4Uji2PMNbmQjro69lcAsgdMqGmobk125Enm7DpOWt/N0UcEfqMsxTS0E2nmdOtrZps4/x0a1G417eL4/6wf52iLY7DiGRhIfdmP2HmM/d3H2wu+MEZi0k9mK3YjeOIOEDcUiUKjAYOfatgrD5QFVb97bXnwIPgoAzRu2U+IwBitrm1Au+7V7fEfvDZaqkJmj6RZcCLXYncX/aj19PHeOeDrbckph7C9wpIQxRrvYAS8VCfLC6w2F5Guy1EtldE0sMk+IHCiizkuIPBMveJglXax+vSL6R/CyzUUgvvZURa0nZnxHAsmXac56xKqFbZPSrQoi5wEnoEstNm1rqFj4i1AxQrj0MMdEzQsshipGOL+AqqNg=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(39860400002)(396003)(366004)(136003)(346002)(451199018)(91956017)(66556008)(8936002)(66946007)(64756008)(66446008)(41300700001)(76116006)(66476007)(86362001)(6916009)(4326008)(8676002)(33656002)(36756003)(558084003)(38100700002)(53546011)(122000001)(6506007)(6512007)(38070700005)(26005)(2616005)(186003)(478600001)(71200400001)(316002)(6486002)(5660300002)(2906002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0A590053A5FE114ABB866133BB4ADFA1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7320
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	975f709f-50de-4d4a-eb89-08db2c56e2e2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nGmrcAI3euzrogVL/L9YC8aQRR4Y7jU10xb8jpieZEmw8fD32IMzQhZfEdaVikJcHTB1Zi58z5+Fp11tOwEGpeVXwgwoB3rErUe5NVzexfAHdtC2I5Fngm88xaeajYcZpHoWZSoVk5FfMIuLuRd7fBMtTeO8a8JFiNVzE9avvDrVpHZZAXq45i71SzjH7WAcz6fE1HT/ar7XHhu7ngVUAYU0XzdXGrDmCn2P5RJlwrudTAo7HmUUrCCYhYJRy/Go7E2kABI/HFUZlLJVkHqpw9JBFcspeBlNmQf+pFh8lMo/58Ra4sc1zR0ffdG8BEunwuBSF42tMxgmDanyhRptgiI4BqhfFEox208XPYXPr6UyZQL4gdoFh3ewi/MGERyKOo5LgTzfKtLY/7EUUb0Sj3fHQbJJDX1kkp/pKGdki699YMUwsW+ndPoJUcgR3NiapEtn9BeHmMu63NzYSD+YtnyhupEOGpk+LCRNsv1fDPRhIyrYURzQcbV8amXaQ9J+i+6nqzc0tIXhnfS9vf7xI3QbrBCa1ER1bV2lcCwdvrNOEyPK+xcvA21SAmKZVZQYhJ6AVrxGVzKi9Dry+PBojJrAdgVqVlzkiO9dyoPr7hr8/S0/waR8oK1lqwugifkPJ17dwsP2/ivk/sOG0SDqU6/qbGO7bgOl/hkWPP3JW4LMiwVIGiB2sRlAKVYcFeIVz8zHldARQcauepsh1akdBA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(396003)(346002)(376002)(451199018)(46966006)(36840700001)(40470700004)(356005)(40480700001)(2906002)(40460700003)(478600001)(6486002)(336012)(186003)(316002)(2616005)(86362001)(82310400005)(36756003)(33656002)(70206006)(36860700001)(4326008)(8676002)(4744005)(70586007)(26005)(6506007)(6862004)(53546011)(47076005)(6512007)(8936002)(41300700001)(5660300002)(82740400003)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 10:59:57.3794
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f2e2c99a-38cc-4032-a3d5-08db2c56e803
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6060
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 11:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59513

On 23 Mar 2023, at 12:41, Sourabh Hegde via lists.yoctoproject.org <hrsoura=
bh011=3Dgmail.com@lists.yoctoproject.org> wrote:
> I am having an issue while building a simple core-image-minimal image. Th=
e issue is reported by bitbake. The build machine is remote server with Ubu=
ntu 20.04
> Logs:

What release of yocto is this?

Ross=

