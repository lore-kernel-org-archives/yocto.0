Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A66BC83F12
	for <webhook@archiver.kernel.org>; Tue, 29 Aug 2023 09:46:49 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.42])
 by mx.groups.io with SMTP id smtpd.web11.13746.1693302406604666558
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Aug 2023 02:46:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=sYefFV8S;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=sYefFV8S;
 spf=pass (domain: arm.com, ip: 40.107.20.42, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRfZT8tgYsOug6yDEuvNoOzzTx8XX8nCYSHCCkPO2h8=;
 b=sYefFV8SlFdIX7DdxFUlLTLcf4Z8vn535FScAFwK8aoLqImhzfRkiqhWOwjQ4EsPqK2/0wodTPsP5mbBA7pXS+RSxLkDA6wxkQYGWRgr0xmlVQ6OwoqLytPlyv6az5bJ2ajGg94rkrD6ijuccEHARWhGvkLnfzfuCDTi8FSTv/Y=
Received: from AS9PR06CA0262.eurprd06.prod.outlook.com (2603:10a6:20b:45f::16)
 by PA4PR08MB6190.eurprd08.prod.outlook.com (2603:10a6:102:e6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 09:46:43 +0000
Received: from AM7EUR03FT035.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:45f:cafe::40) by AS9PR06CA0262.outlook.office365.com
 (2603:10a6:20b:45f::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.36 via Frontend
 Transport; Tue, 29 Aug 2023 09:46:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT035.mail.protection.outlook.com (100.127.141.24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.17 via Frontend Transport; Tue, 29 Aug 2023 09:46:43 +0000
Received: ("Tessian outbound 1eb4e931b055:v175"); Tue, 29 Aug 2023 09:46:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: bc865990f8e79934
X-CR-MTA-TID: 64aa7808
Received: from 174724b7e08a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A852C7CD-59D1-4809-8225-527EF8535CDB.1;
	Tue, 29 Aug 2023 09:46:36 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 174724b7e08a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 29 Aug 2023 09:46:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgQhuASdar5Cb6SW2L9GTAtMXrTLqkQ17EolCno/K8M4xNbwEaKdblv+UxXlep6QLI8w91CAtwFu9DgJFXPzdmMpxEiDhgPn86+aY/xQA4H6lu2E919YSdxiNL8HZoTd2R5524fLGbS0MFGdEBChCavuIJvA1i73MU1usZ+kzbTKn0kIL+hBB3FctOZyprK0kko7A5E1xOxVA/z9hKwIs8Nx7yxAvK4MyPLDdjeRRwX6vFfpMoPv4Id/y0cpa7itrX+NZw9sQr+hIiMr/vsh2/kZmOIi4s2uX75TujOdXgEzzQgAaCXrTHs3bWWNS2HDDUFRyNraS++M/8KKaTvjuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tRfZT8tgYsOug6yDEuvNoOzzTx8XX8nCYSHCCkPO2h8=;
 b=BJutDrnQyIcUNQ6jlwHL9qeyvAmY+EunMyzq65rkwCcdc/Qrya2Tu7/3GGyOJIe25cBN/2jACCPM2LZj97bJWcJMHmRxmHSPeXa5o7Z0PyCyZyGJvE9Nb3YdN/q/iap5lr+hD5Drr9Mkur+OO60ViI8qp371VCt+I8/hFT0BMjLfGsbZ3H3Cn/ZVsQY6Vr+mLeqLhrR+wkvdMi9kgdlV+kHuLiu95oa/o0OS8JIaHgfqUUDcYMSkKExxv0tPDdEMmrIC8nKWZUurMLADhuGmwCyf/qlRsd/9u0HgWnpZk61Xc5/qqjHquaWf4n16eHd/gKXRtJ49HKUQObMcbnBfpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRfZT8tgYsOug6yDEuvNoOzzTx8XX8nCYSHCCkPO2h8=;
 b=sYefFV8SlFdIX7DdxFUlLTLcf4Z8vn535FScAFwK8aoLqImhzfRkiqhWOwjQ4EsPqK2/0wodTPsP5mbBA7pXS+RSxLkDA6wxkQYGWRgr0xmlVQ6OwoqLytPlyv6az5bJ2ajGg94rkrD6ijuccEHARWhGvkLnfzfuCDTi8FSTv/Y=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB6417.eurprd08.prod.outlook.com (2603:10a6:20b:362::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 09:46:35 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 09:46:34 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "ayahassan2877@gmail.com" <ayahassan2877@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] how to make the recipe get the repo from local folder
Thread-Topic: [yocto] how to make the recipe get the repo from local folder
Thread-Index: AQHZ2lmpUqtSzQHsxkKx3VWSB3hcY7ABBqUA
Date: Tue, 29 Aug 2023 09:46:34 +0000
Message-ID: <8453BBB3-CE81-4617-A0C3-F71D4096520B@arm.com>
References: <y0rG.1693300645632597280.FHke@lists.yoctoproject.org>
In-Reply-To: <y0rG.1693300645632597280.FHke@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB6417:EE_|AM7EUR03FT035:EE_|PA4PR08MB6190:EE_
X-MS-Office365-Filtering-Correlation-Id: 4067089e-313c-41a2-52f8-08dba874da45
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 pPnTR1KmOYG8ItpnNRsiEApdjTwlTdxhY3lpHozp9P/yyhFupKy+NIdJExbvfEti/IKcOrqQzr+8If9xu6JkXQ9YuIMH3oMQSsoqOyLMo/gxbTNIOIhzt60qz9MDhPSL0U+pbtMyt2xjp5PSW95EIcej910rW2Ics76DtP9CBzIDxMOF6GO1QMUwshXe/AM01PyTixWUgKr0pEW07+4hF0F8f38eI69j3aKlIa+LlPnx+jeJNYxYS9OxCKb+tUX6jNiV7do3WQGv0g242JyhwxSxYM/9E7y8vvzuCf5mu/RZesIX5BqKp43Hm2PouLqBF8uY7wH322MfrijoFldd4M9MuCqDwd6XSvXKsEE/CQWyYG6W6cTV5LRw/KASDzaf/h7A9RFrMk8viy+H7nsuoAJ6eBvIbdVzjv1M2VqD6pCclUQNH7jJKlqFVKzMDF5rMGDEfpl+0iyfx5/UWCzcRfnaXsCPxHwcsluASux6oOdiANyr4W0PthdYxFuufNKYSPVk8n6KnDTvKXofGjUcmLCXAbAXnl8oPMmHG+WCloNfdLGLYjWdX81iGeEkMAhsdlAeXG7ZZLWrIg0iTBOi51KhlcGr7cqDCdQZ1DCcW56PVxtApsViLbP+wd/cPgP1WutJEL4JU/bitdScI43ECM5ecHOiXCTbWI/zQ9Im1ZI=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(346002)(136003)(39860400002)(376002)(1800799009)(186009)(451199024)(6512007)(6506007)(6486002)(71200400001)(33656002)(36756003)(86362001)(38070700005)(38100700002)(122000001)(478600001)(4744005)(2906002)(26005)(53546011)(91956017)(41300700001)(66476007)(66556008)(66946007)(8936002)(8676002)(4326008)(76116006)(5660300002)(6916009)(66446008)(64756008)(2616005)(316002)(15583001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0A6F55907BECEE46B61C6E7E26085253@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6417
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0a43b3fa-98ed-4a3e-cdf6-08dba874d517
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8ej+WDCDc0Th6S+zpH0fCKw3SK/iPqi3N8xkIsPoUge/km5X3Dc13dKntoa/My9usjy9e32OrGA16wEx4ZX6wtqozakDM+JF5V2jRNE9xxhdrkl7oss4t8t1dSfy3gUK4LmNLZpNTrIMHXvI/SE3Hlxj7tOJ5Iy5q2IsTOtYOVOalhbiEEkjgJ8a0wjr3/VsxUAfz44HT79dXloNJ46X+7oajUeA+/6Dge3TrgAT+8ZaL9Dr61nBjyOi8usvKVDnAaszR+4Sdi/zwYpkYmlafB5+OEvk3EYGb1QxlmRdBKEXWBRxRbMcqVjPYjJltR2hjF7cvUSIIngLW2iUkrv6vYUmF6Ux1IhV2jz0PzO460Z8yg0jIem/W7h73H6QJ+9Qumzs/GMCjLThU7O+krl0xuarEEv4V7dGYngj7jcfMwQBN9+peoWhzuvZWUKyGYsYojKqEesP+B2GKU82opBx8zk7iNWJnkYGzG5n/bOkm1+EUit+8UGCJS9Iy2+41usN6wPR3TC1Qw7gCnMAnQYLEOrrIclIvkqdPyv7VSb37fNE1PUbWzdfga69ToF0Sk0mbrT8BrfcBSFVj5TJsSNVpgD5/i0ZWXtjsuqq5ijmaaTDVZciZKAXj3/JprzWtzL75ZcDQWvpeCNueR/2Z9emlg4RgRuC+DEfvUHRrdIIOvo3bpqLDJgVmR6CnxA3OtP034pxLj1+D/9g5xQeeSGLVqawN4eJ/RzhFEtViKX2Mgi3mRoIOAwjjsyQzufS/99+U1+6b8GboJGF5fLOICuj6Q==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(39860400002)(346002)(396003)(136003)(82310400011)(186009)(451199024)(1800799009)(40470700004)(36840700001)(46966006)(6512007)(6506007)(6486002)(53546011)(478600001)(4744005)(336012)(26005)(2906002)(2616005)(316002)(41300700001)(70206006)(70586007)(8936002)(6862004)(5660300002)(8676002)(4326008)(40460700003)(33656002)(36756003)(40480700001)(47076005)(36860700001)(86362001)(81166007)(356005)(82740400003)(15583001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 09:46:43.4081
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4067089e-313c-41a2-52f8-08dba874da45
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6190
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 09:46:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60915

On 29 Aug 2023, at 10:17, ayahassan2877 via lists.yoctoproject.org <ayahass=
an2877=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> i have cloned a repo locally and i want the receipe to  use this folder i=
nstead of cloning from it as it takes a lot of time=20
>=20
> the problem is i don't know what exactly shall i write  in the .bb file=20

Use the externalsrc class, how to use it is covered in the documentation.

Ross=

