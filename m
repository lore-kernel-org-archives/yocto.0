Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10E04EC8724
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 13:32:51 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.46])
 by mx.groups.io with SMTP id smtpd.web11.13056.1694093569503453641
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 06:32:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=mcKztYZn;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=mcKztYZn;
 spf=pass (domain: arm.com, ip: 40.107.6.46, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYWktZasOD5r1ljGZhcDhgBsxM26piK9bEqFSezgkyk=;
 b=mcKztYZn5HWmG1ATj2FG+VDolhj79w2wMWddA9qKfLAv6NaovCnHFNIwQ586g4DR6OsdCRibKo/wE14grPtYozTpWRc/+w7P7L4BGOLncJOTfh69FWb0Vw0T34pBuDMuXA+2D0XVmN6k+zz5kPrEqJChk00pOdibXp/FV1FHe9M=
Received: from AM0PR02CA0074.eurprd02.prod.outlook.com (2603:10a6:208:154::15)
 by DB9PR08MB8411.eurprd08.prod.outlook.com (2603:10a6:10:3d5::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 13:32:44 +0000
Received: from AM7EUR03FT037.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:208:154:cafe::c1) by AM0PR02CA0074.outlook.office365.com
 (2603:10a6:208:154::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36 via Frontend
 Transport; Thu, 7 Sep 2023 13:32:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT037.mail.protection.outlook.com (100.127.140.225) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.28 via Frontend Transport; Thu, 7 Sep 2023 13:32:43 +0000
Received: ("Tessian outbound 0b7d6027328f:v175"); Thu, 07 Sep 2023 13:32:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d4a2eb5fb1348380
X-CR-MTA-TID: 64aa7808
Received: from e01673ce589d.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1F258625-3627-4982-B3F5-231D5D9E503E.1;
	Thu, 07 Sep 2023 13:32:37 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e01673ce589d.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 07 Sep 2023 13:32:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mM6EfhGj3ze7Jy3jdlffhnAyrvb/pUrvdG7JXAuKfd6F9mUftyeR20EEWqIiXGbHQpWOnPr0X5a9tqOwMSGMzd7rDLiF+FjWVCSBKhcO7Hh53Ju94TQD5KT11fEpaX8bnb8Vr7KBypl1SzmGJE1C87KI5qu+U/50Tgeetx3PyWjuc2a3RAkOp3cgOQJQG+PyDvekljiujII99Bi4CcAEG2YOGC4KspbAXskpezMrpgt724v4X9Qph3kDcXxAxy/snnr79o8tnCgqcuGQEuWTJtgFTPQUDE1LcXZyeDVoWNTeAFPDXb4QaA6THnya6TdWhDISzHG/8TBpadiegGhyGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYWktZasOD5r1ljGZhcDhgBsxM26piK9bEqFSezgkyk=;
 b=E+VstmzeN8CcSgZQ8G5as9HS7gHky1M9t0JMwgW8FkdmTSzkG1zGrM3lTuM3SHEfG1Yypx2MJaN75pavMjj5iOTIiDCd/lKAcZYyQO0XJxnmEyLeFlocX9mt/yy0nR776av69MCxDLZsJ5kfay5jSAeOGtdf0gieuKedtNtWWY4orljTGw9gvFUH2Bpdzd1nbZoxplXZUbp69DeTHDKCge4f33tVKql2DS8faK5rYFImbbs+x+NiqrFuP3B5dpJmp8PhXtNg1wpY1sYJdBietE2eBye5TL1hewgAG6eioQ/IsWLFEsYc5Yy0C6ynIJseuAJPye57GaZEjLUXM71dlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYWktZasOD5r1ljGZhcDhgBsxM26piK9bEqFSezgkyk=;
 b=mcKztYZn5HWmG1ATj2FG+VDolhj79w2wMWddA9qKfLAv6NaovCnHFNIwQ586g4DR6OsdCRibKo/wE14grPtYozTpWRc/+w7P7L4BGOLncJOTfh69FWb0Vw0T34pBuDMuXA+2D0XVmN6k+zz5kPrEqJChk00pOdibXp/FV1FHe9M=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB6525.eurprd08.prod.outlook.com (2603:10a6:102:154::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 13:32:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 13:32:31 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "shrikantvaishnav@hotmail.com" <shrikantvaishnav@hotmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to start application/script at startup
Thread-Topic: [yocto] How to start application/script at startup
Thread-Index: AQHZ4X/keFEHY7Ym8U6n8xtULRo+QrAPXHKA
Date: Thu, 7 Sep 2023 13:32:29 +0000
Message-ID: <E7867E22-E791-46E9-9374-F71E58824161@arm.com>
References: <Ttde.1694086725000620282.RWGc@lists.yoctoproject.org>
In-Reply-To: <Ttde.1694086725000620282.RWGc@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB6525:EE_|AM7EUR03FT037:EE_|DB9PR08MB8411:EE_
X-MS-Office365-Filtering-Correlation-Id: cb9660c3-6576-450e-46a1-08dbafa6ea84
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 yejOkIAPqKL62frjO1cAWrT5uwA1jtgm05ynZMq7L84aL7JqWhT7j9xFi4vNp7k/t66gCqyw7DXDWcPbBEr0hawv3762em3okdlAp5t/2QXBNWjrjjilMZvCQOOSLDpxhAOMizNMwtcFDfKQr34EWREqtM7RTlTn2buawvjev5D3lpIzJJMcgoQEd0ZSqlvbawzDIgrwQSrrp7SoNYaN2lNtrAijAgV0NkdAO4RPRj2vcy0pXgMVJ+vZ8DhkuFKl6jcBV8HFELaW/I04OwzKOIAh0M0nh88Dq1Oe9re78Pbefwqsb1AE3ghmFlDnWaVeM1x2WBjH+ERFPQx8q4ptD+X+nK5gvCUqsjNpHXMb3hIyPfA38MHOOADoenNbh9W37opHLX2Wyjahcni2efvYoA2xd/ckRT880o+jFXvtjLIse3hTXnd+lTTaoIcZiujCVa1s7o5a58r1hTLWi3oxg361zql3Vfk4Vfx5YJCyTWeEVVKeMS/JpApmpT8x8KNXXWfsA+fQpZrI2pUgafunOSePDyP+JUWmrwQbkR+WvQJgzRzbefKtlb22uTp6bGwh25bltmyzPcPuw9wwRd8GmPoKShP9t3LqnPPmh8THKVU0Drt21VfnqdTNujKd7PeORtyMcO+67tjjMq4fZmAR5ev8STCmOyP/YTD+W2FkSf0=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(186009)(1800799009)(451199024)(38070700005)(38100700002)(478600001)(966005)(36756003)(83380400001)(6512007)(53546011)(6486002)(26005)(6506007)(122000001)(33656002)(2616005)(71200400001)(6916009)(316002)(64756008)(66446008)(66476007)(4744005)(2906002)(8936002)(4326008)(41300700001)(8676002)(5660300002)(86362001)(66556008)(76116006)(66946007)(91956017)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <99E4EB95919C4F4E9FC3C269F2A9040E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6525
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2a3c0da5-a980-4e4f-8d40-08dbafa6e221
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OqADrWCYU99TQMXfrGAcyDgqcTiXdzE7LnEbUzbb4K39nshRfVB4wHMMYVA0T5S2HxAk5SgiVD8TTdIoajihSfAcP5Y9muGk+p5G/9gNCqyg3tvm8xJmmvk3gzCI+osWljPuizWe4kGQjLXHQOqNwUOafOSeIM/LVigX+gaX7YXFEMUKj37jbgIridCU8WkTPJrHFJTXj9iKYg1wswC5p34PmnnsK4WJ0244B4ALw8JUaUbzm+ZN8o48o5wE1VUOeUeW2p5i9+cfclTyTufZktK5CTlcc8aeI7BRyf39zKHWynpwhjaDODLpx9+rVm1hzlrgZrEpZoZEz5lqcdaSwzxWtmSQli4Wy4MmCC9OZmAnXhOMXZ+T2VGstyc+rYUHPvQZQ7it6TGDuEIy1oDTdwSUlMlSaSCrdkdINF6q2i/fd5RcdN6BVraqIL03hG7+aoIKW6mRolIvhWVJwrZG8BVbZnXRffXxMFJGaESiuKJgHdq9GggUIP56pkDCxIKciErbKT/R6DUGrfJlJ/aPqXp10x29wydVWzs4gAlf7kbiEeak15EsEoq/SbIGhelbPL3Ifvha4+sHhT4kZaBCVHX5xK1oGwFuCAVsxDR7LwdPXaIc0yIEamZD33NPkmEq8Mvs+OR8OzJRzQbLpcs71gkaqhovdcZ9tx/ow+elaKr+gaH9m1/YnwvnwGVa0fnsIPTTMu0Z6fscI5C1A3Sofungm1hA7z3sWU8apmkntJNtOcH6wDQvYMLGtm4AGT2SShlH4No8fJX7gQSgalMeRg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(376002)(136003)(346002)(39860400002)(451199024)(186009)(82310400011)(1800799009)(40470700004)(46966006)(36840700001)(966005)(8936002)(4744005)(4326008)(6862004)(478600001)(8676002)(70206006)(70586007)(5660300002)(83380400001)(40480700001)(41300700001)(2906002)(316002)(33656002)(86362001)(6506007)(6486002)(6512007)(40460700003)(82740400003)(45080400002)(2616005)(356005)(81166007)(26005)(336012)(47076005)(36860700001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 13:32:43.6401
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9660c3-6576-450e-46a1-08dbafa6ea84
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8411
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 13:32:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60932

On 7 Sep 2023, at 12:38, shrikantvaishnav via lists.yoctoproject.org <shrik=
antvaishnav=3Dhotmail.com@lists.yoctoproject.org> wrote:
> Hi all,
> I am using "Mickledore 4.2.3" for "Raspberry-Pi2" and for init I am using=
 the default "SysVinit".I want to start my Script/Application immediately a=
fter starting and disable all logs. Please tell me how I can implement this=
 in YOCTO.

First, write an init script as usual with any sysv-using Linux system (for =
example, https://unix.stackexchange.com/a/20361).  In your recipe install i=
t to /etc/init.d and then use the update-rcd class to register it (https://=
docs.yoctoproject.org/ref-manual/classes.html#update-rc-d).

Searching poky for the update-rc.d class will give you many examples.

Ross=

