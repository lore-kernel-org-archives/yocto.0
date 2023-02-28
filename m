Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43A20C64ED6
	for <webhook@archiver.kernel.org>; Tue, 28 Feb 2023 11:04:18 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.41])
 by mx.groups.io with SMTP id smtpd.web11.20680.1677582254028057520
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Feb 2023 03:04:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=wkuk85DM;
 spf=pass (domain: arm.com, ip: 40.107.8.41, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FwpFo6adZ7E372aeZUIt/cB3KGmTyf6RkzGmC16heic=;
 b=wkuk85DMwy1tGHSuY4tFnewG7wi4YPFA185hlTKKNUSG1EgXQ2j8SIS0PwQArBr3dhQoRy47ILerwWUoX0q4g5tetIvJRjPMJ9sCafpku8fl+Pp8HW9WxbF7oY5mOwRVBdXY+1xfpljCrBw/E7ZuTVfq6B2EBFP46+6t0mClBSk=
Received: from AS9PR06CA0025.eurprd06.prod.outlook.com (2603:10a6:20b:462::30)
 by DBAPR08MB5735.eurprd08.prod.outlook.com (2603:10a6:10:1a1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 11:04:10 +0000
Received: from AM7EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:462:cafe::60) by AS9PR06CA0025.outlook.office365.com
 (2603:10a6:20b:462::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30 via Frontend
 Transport; Tue, 28 Feb 2023 11:04:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT033.mail.protection.outlook.com (100.127.140.129) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.12 via Frontend Transport; Tue, 28 Feb 2023 11:04:10 +0000
Received: ("Tessian outbound cfb430c87a1e:v135"); Tue, 28 Feb 2023 11:04:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a954bae5e4356a5e
X-CR-MTA-TID: 64aa7808
Received: from baea700b55d7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id CD786D0E-FCE7-45F6-A90A-1DE029E383F5.1;
	Tue, 28 Feb 2023 11:04:02 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id baea700b55d7.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 28 Feb 2023 11:04:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScTDwJ1v76OzcNFcoQpda5w92bCMzxthVMecPdmdMFnIU0vtmLCOyHvNw2UmM4fbPCzStCLux01ekhJui7KdyL2sXryK4Cp8jw4QoumI16Wae2sqnYTzb7YkxxSzY7NDo16l1EZdYkzsmvkKSazUw6Nwl3J9XI5RgNdxWoXtB7WYBJ9xvLWEcXrBVVwv0CvdDGP1pDFgr5aIDXK5lZj8uyn2A0jDstprB23SQwtOAyezEddXXl/xhyxrzLJ9kqPu2Q+Cfm5n3H0pksJc2u/TuhP/8hpZUgq453EWaxeTvEUnaEiiz2g9bS9XhWSHA7lo8rxJrHfzFN/vvsBAIDeApw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FwpFo6adZ7E372aeZUIt/cB3KGmTyf6RkzGmC16heic=;
 b=ICOINNk+OFBzqIqmhXL5vQGu9IBQCL+UBzF1PpvX4ziPfjHacgc6VcKuvw/7CnBGY0/W3BwJeEYfinQx/Oz53U0ArZ5RObMhpuWNn/mCRkGxEuDCyjYrBXSZtZI2CBFnwXy4cYRUz3t8bH2VRxw6M/cAgmzFDTS5q3N5VJRl4R7upPfziNfx+TEZGC9a17uHeiBQ5NabT2FQjczpNb2PZ2cCuRDPYNPyJmA0Fhr8iKBnPSshxEHVSG5BtzFRDZk1DvqCHH5GpBTi3HtlbC8a82XPRgXhJcU7DXay6vSvac6h1GhC3HTxEM+L+GNkAuXdzzbH7NzrrJ6e9G/+ynwmgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FwpFo6adZ7E372aeZUIt/cB3KGmTyf6RkzGmC16heic=;
 b=wkuk85DMwy1tGHSuY4tFnewG7wi4YPFA185hlTKKNUSG1EgXQ2j8SIS0PwQArBr3dhQoRy47ILerwWUoX0q4g5tetIvJRjPMJ9sCafpku8fl+Pp8HW9WxbF7oY5mOwRVBdXY+1xfpljCrBw/E7ZuTVfq6B2EBFP46+6t0mClBSk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9259.eurprd08.prod.outlook.com (2603:10a6:102:307::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.25; Tue, 28 Feb
 2023 11:04:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 11:04:00 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mauro@faresoftware.it" <mauro@faresoftware.it>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] recipe e licenses
Thread-Topic: [yocto] recipe e licenses
Thread-Index: AQHZStUnPxT/ICLoFU2gs9n5RVp8vK7kMwIA
Date: Tue, 28 Feb 2023 11:04:00 +0000
Message-ID: <A18B1D64-E93E-4113-9948-3987E29CD021@arm.com>
References: <29763cd2-a26d-ea2b-b0da-95ea3b8b86d7@faresoftware.it>
In-Reply-To: <29763cd2-a26d-ea2b-b0da-95ea3b8b86d7@faresoftware.it>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9259:EE_|AM7EUR03FT033:EE_|DBAPR08MB5735:EE_
X-MS-Office365-Filtering-Correlation-Id: 85867d7f-3ead-4e83-a44d-08db197b84dd
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 pdNNRpmeLwpj6dYHVQ6kD/lHThgvXN4gGtrdpG1cdYqACGnWN6jorSA8Y3CtQkRChMA5GnJbr8JEWcqQiKb6xn76wxI1buWvOu2anbsXt38lj+9EdJzEpC5Lv7vKwrqpneAcyVsHXHRRZayja3lsN6o4F1o6jLjbiq2JlKgpbCKL1owjftCgTa+TwobM8F9DJgRpwdPO16bzNBHdpvVLeEkMI5DpRloAA6KhKd/aKGwW7IlOpZlrH7Q+Ovc/pAXtZwsD0GnidjyIlVXAdmOzIlecLK4+QolEY9Lm645jf8duu/0S9oKfI/QBwPc3yDBy/spOFCkMWPaBcWeK6QKnLTaR7qNUyLTQXeyBNltA/tw6axMTANSmFRs/HYwn1dSQH1D1DiAWHfzpoBKWyYMrBl95oiEFBx7eBf8iOfyUL2TjWAAxrrWs4Pgg5LO4uDHNg0k3BNM18MvXtu4cM5NKJ7mYFR9VBM48z47bGs0kq/D5ppROw+Io/NpwC4tloEXkwYHVLRUmk3+tmgq91kgL3V9hIXM0vk7eyYKmNYARHhxHOSIJlPpH3BhBWrHb0fwW1h9efMe5QKOM0Q8IP8zAWJ7CHupkMkBlZTQRXadcPaQW5FvuSiC4rsogD9fxma/T9dtGhGRxBvjuWvWVI7cBIe5HdMSsJUrmHh+6H84WKddG8b+zHDoKxRQ9xtdNnzoacGF72xQZsP/Gwr5PpB/lPUW5lSXtDiAB/m0GOBmD7lA=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199018)(36756003)(38070700005)(33656002)(66946007)(86362001)(8936002)(91956017)(478600001)(41300700001)(6916009)(66446008)(64756008)(66556008)(4326008)(71200400001)(8676002)(2616005)(76116006)(66476007)(4744005)(316002)(2906002)(5660300002)(186003)(122000001)(6506007)(38100700002)(6512007)(53546011)(6486002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8387BF1321E89346B30F36125CA2040B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9259
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	acbbacae-8988-43b0-c0d2-08db197b7f25
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	49wRm/5nrcCZv/o4mhVun8RosXwm2GP9Vu6cuPMnYiv1fbz3GP2LMY/0YvdQbYSTkA224zz8ZFbsLEJsT5Wqsf3rNKbWA2GYRDe6LiIKWHQ5b/CHyZTf9djL+nzyaWl6CFotCKRWvw3XEcaOSlWNIQcFPWJiRXH1VfQ5y3JSGrhz19NM2xaJrk9wm/guRcH50ZtNfx5OsHVWDIRdhQAX94uJNjl3eVHgU/C/R5ZcLoJzWSGCYLEdvUfhtQxjuP3VZbl8+eh3Uw5D72q85O32lkQbYRwgP3ERshC1KV2MEKllfe/OMYaWfWrHrHjOAdM+xNqrkFt0Kd0pv7fvwOZWGT3g/Scv98AUrXGIYutoznb2W/e+3jvq8MmzPD2zkfYSa8lqi3HuxhfLYhz03FSm2YCVAHlryVq7p+SFWpk6OAY4XC5KfZtBf3KbovBoAw/iLQCNlWc+LdbfIlOsMlncV3uM5FbW1H2PAhbsjLShkbJdTV24xzMiH3uB/28p6Yqx8T2uD5E1J3paGZxFt7MG5W/26XU1hRp6B810ij8+KptcTkGiJ6iGOTRK3aqHaR0TyCBcmyw3uCxJCiaCKH8p1vRviRagwvtfPB7sr7XkicGQaTTGBGtGA8HMwAOZNLJdTlCiHuAvXEcZc4ddayWb7EDZVbUqb+gAtgEJQfaWN5NTWYuhlkoWtxC5RDftEekSiiUZHAIH4XXC6MB7/aOIPA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(376002)(136003)(39860400002)(451199018)(40470700004)(36840700001)(46966006)(36756003)(4326008)(86362001)(33656002)(8676002)(40480700001)(5660300002)(2906002)(41300700001)(8936002)(70206006)(4744005)(81166007)(356005)(82740400003)(36860700001)(6862004)(6486002)(478600001)(316002)(70586007)(40460700003)(82310400005)(47076005)(186003)(2616005)(6512007)(26005)(336012)(6506007)(53546011);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 11:04:10.3222
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 85867d7f-3ead-4e83-a44d-08db197b84dd
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5735
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 11:04:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59320



> On 27 Feb 2023, at 17:58, Mauro Ziliani via lists.yoctoproject.org <mauro=
=3Dfaresoftware.it@lists.yoctoproject.org> wrote:
>=20
> Hi all.
>=20
> I'd like to add a script to my recipes which collect all licenses for all=
 directly shared linked libraries.
>=20
>=20
> My recipe build the main application of the system and I need to enum eve=
ry library used by my application and for each library get the license.
>=20
>=20
> I try to look inside DEPENDS variable but there other references then lib=
raries

When you build an image you get a license manifest in tmp/deploy/licenses, =
this should contain all the information you want.

Ross=

