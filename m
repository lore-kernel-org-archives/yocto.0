Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E35C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 14:33:02 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.80])
 by mx.groups.io with SMTP id smtpd.web10.13535.1682087575178954799
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 07:32:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=6Kgj6UmQ;
 spf=pass (domain: arm.com, ip: 40.107.14.80, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lt7f95cluxMyR6PZ144nbctgEYZVXYI1CHH6KTjx7GM=;
 b=6Kgj6UmQ2CIPO4EuWRqNkBSdAPrQ2T4MNkKKpRG8cg9QrcYUpfPDh7GolOmjcqdYsN7I8RxxZRWGNWRDfz6AXnYEB+LgKT7texFfJJ+qQs97+TQq5coivim6eQrfVeCAQhZzu/e/YJfEumD5d+Aq422N33aNYiNMC+Tb6UklaCY=
Received: from DB7PR05CA0063.eurprd05.prod.outlook.com (2603:10a6:10:2e::40)
 by AS8PR08MB9480.eurprd08.prod.outlook.com (2603:10a6:20b:61f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.21; Fri, 21 Apr
 2023 14:32:49 +0000
Received: from DBAEUR03FT036.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2e:cafe::c2) by DB7PR05CA0063.outlook.office365.com
 (2603:10a6:10:2e::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.27 via Frontend
 Transport; Fri, 21 Apr 2023 14:32:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT036.mail.protection.outlook.com (100.127.142.193) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.14 via Frontend Transport; Fri, 21 Apr 2023 14:32:49 +0000
Received: ("Tessian outbound 3a01b65b5aad:v136"); Fri, 21 Apr 2023 14:32:49 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 949ddf7ea44f87a0
X-CR-MTA-TID: 64aa7808
Received: from c783a54ed191.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0EDD7A36-F14D-42CD-B15A-F947C7868144.1;
	Fri, 21 Apr 2023 14:32:43 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c783a54ed191.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 21 Apr 2023 14:32:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzVe/zv/9Ju8j07wFaBQwT+Duo6MXT/wktOQl1yRPNhWNVgKHpaqWNeDwgh9o2Iw01oDH7nzXKFoKMXDSNhCck3GJCu0yv4JBwwvbpGwthruYfra1+ii7XGpKWPgHOHERdnwNWkcJ3ZnrUZ5Hrf04ZlRId1rvFRuoOK3C09u4cY+knCM6G1jYpbEWym9jf2xR4rYS3wQx6IP1tnM+k255XeLyiIYTsrvbaePQTUWEsolQqq4ssEf76DjJXyLBxuHOZXcVGrJKe8Ll0ZudAleFSHlsUMfIGdjBT6bNQw74jZPF9/GDBs7MrEroFwiCLxMz/xZwdsM1/IlEDk/zL8lgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lt7f95cluxMyR6PZ144nbctgEYZVXYI1CHH6KTjx7GM=;
 b=mRUDDLanOo42iTOzhPHowl87n6n3tDv6aprTS/nB/kVo/ccB+Gb5eq8s77Lp2ZJfNNFyWIXZMaw5RoSEw0VYIw+FjxwL/YehptXpyezkcx5RbsJPyhcYSeb0LzmCyu/ECqq3qGWoYTXac3tJq0j1m7oIpw6qX9CqGdiIHvtV9jlwl2LOrIVlOKqaVKwuH0G8eKaLQlhTOxVqjXgsnPYP3qzMDZcud2yt9WEf/5CVmXKoGSnVqS4Fixj8RmenaWbNTFb/KYNwElBX9DSiyunrzEwi50LXcHCKwKV1YUJ1Uk8QsHEjsnb38EKZL2MONBf0Rx94OguFDNAN+oMxh0gh7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lt7f95cluxMyR6PZ144nbctgEYZVXYI1CHH6KTjx7GM=;
 b=6Kgj6UmQ2CIPO4EuWRqNkBSdAPrQ2T4MNkKKpRG8cg9QrcYUpfPDh7GolOmjcqdYsN7I8RxxZRWGNWRDfz6AXnYEB+LgKT7texFfJJ+qQs97+TQq5coivim6eQrfVeCAQhZzu/e/YJfEumD5d+Aq422N33aNYiNMC+Tb6UklaCY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB9516.eurprd08.prod.outlook.com (2603:10a6:10:451::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 14:32:41 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%5]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 14:32:41 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "daniel-s-mendes@telecom.pt" <daniel-s-mendes@telecom.pt>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: Private: Re: [yocto] SFTP protocol supported by curl
Thread-Topic: Private: Re: [yocto] SFTP protocol supported by curl
Thread-Index: AQHZdEY+0NM0p2dRTkKAwhCJTwc26a81qQ+AgAAqJACAAAB0AA==
Date: Fri, 21 Apr 2023 14:32:40 +0000
Message-ID: <ECD63C86-5DDD-437D-9CB1-4B9BE59A0221@arm.com>
References: <0DDC2F65-2DD2-44AF-968D-E5C608EC2CC9@arm.com>
 <23569.1682087452773231246@lists.yoctoproject.org>
In-Reply-To: <23569.1682087452773231246@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB9516:EE_|DBAEUR03FT036:EE_|AS8PR08MB9480:EE_
X-MS-Office365-Filtering-Correlation-Id: 8071bf99-c2e5-43c9-95f4-08db4275483f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 TdINJ62D3g30bBnmRwslAjmhKjQCFwl71pnrSZhR8Arpk1iFVdQS7MCpidgcLG+q4LxPFrdRvDq9sHK17B58VR8CFyyYXJTOpK5PsL+U7GXf7moZkuiSArHz87bjvaFX64gSvL7n+NTQPvshw4ra/axGUI5X6JnQtppbFdyZdtyoi7Uxt2OEBBzdjsqvI5WD7Ht23FAZ7NwZF0sXx38j+x0NWRVSk0oL94rX/3e8GtXaaQ666emAtqKV1lQ5us/xKK5WK9wDOZUZldNCtSSsR27jckOY3H9zJtum3cSkaJ7oVI8GoaSrOlJTr5JyRkhvIWP9QoeNzkBrsp4Ktc/yQguKDGggamnsaM5Kh2+NwL0F3TxurtQXH/UbLW7FwwHsqyFtZev98weE78EodA6vGYAi+5hG5y47DJz7jjxPaUVm9p6xWRZN2Sjn9UhMz6smXzPDX5FT3nL6h5iGsNOb3W/lJHrw7xTtXg61rhhfOBHdZwAiI0shKa1AHT/nzqJ0Y1/fUypxPlSivsAv1Ch8qrT/vk78F3gllXBuT6mWzsXxvoD9mqnjQzpH1VkteQ3vJWnx99i5H8Q/LFGMDFEPtR12zDAqOqO5Q48sSbC1Cqk1a55mslj/LvtwhzNk/jeJMdWtTW1NCr6pgvWwyJErmw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(396003)(136003)(366004)(376002)(451199021)(2616005)(36756003)(186003)(6486002)(71200400001)(478600001)(91956017)(66556008)(76116006)(66946007)(38100700002)(64756008)(66476007)(66446008)(5660300002)(8676002)(8936002)(122000001)(41300700001)(4326008)(6916009)(316002)(38070700005)(33656002)(2906002)(53546011)(6506007)(4744005)(26005)(6512007)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F5205ADF269144E953DA0AD0FEB4B0D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB9516
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT036.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	67274154-71f8-4acb-0207-08db42754344
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cnAX9X1CoSrDfHT27YsGqYiimb/Eez5PZP68GqGLW4UcPufIA54UnCYw+uOJ3emvce2f1wz7THKanPblJR7LY1CG6sGB8wGz7Lecy8jmDeKlr3WKx6hhnO2qYMpBwpmezgizB2EsBgpa5BvVFJ7VCDUxunt43bfIqPCoQkk8aXOSWPj/WqF8AuyN+39Wjnw3hJ4bNhBusIQcToL6Ah0i52nWjzqsUdXdbVx9JnykBc/B9IA+BLZy6TbcGEtpKCm50ErSmeo4tPKGbUw4GnK3N3L8Xx+J8bEOJAZ4uQ6CROvAOcGp60FwjvjvGHRqyZX8zkpDuHwPyfa4FFCmUeJMn1NUS15DsYQ8Sd1HDGryXuCFJitwNZir/G+iUR+8VnsEBCcXFlhiH8TfNj1OuzvfDw1ZbnwLpPZfDp3G3FsbTON7d3qpgA2km9CCrv8m1JqIviHIa4Nkv4iNP5cfr7FhXgHoPJ0trciCY93S8Z6BXE+QJjWCrYOggdVEzWVeS4oMOJ65mA2/c1J4DiLQpY8dulTUDkD6+VDqEOk1eSUkUHKEvO21Q71+gcczXgJHLW0Y2aYh4U5L84s5L/3zj2irRutncDENea/AIp97Cfo7awSTwVe5nVt40fJ8pUb00iP/GJK3QbaVco+2eHSrgHzaNLCtekfvHLkeWyKqXfPspmT+PRtsOWt45opXvak90crOlbXAazQsl3GM7mVGN+z+xg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(376002)(346002)(39860400002)(451199021)(36840700001)(46966006)(40470700004)(36756003)(2616005)(36860700001)(70206006)(2906002)(70586007)(6512007)(4744005)(26005)(53546011)(6506007)(186003)(47076005)(6486002)(86362001)(336012)(478600001)(5660300002)(33656002)(40460700003)(4326008)(81166007)(82310400005)(356005)(41300700001)(40480700001)(82740400003)(8936002)(6862004)(316002)(8676002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 14:32:49.3634
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8071bf99-c2e5-43c9-95f4-08db4275483f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT036.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9480
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 14:33:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59755

UmUtYWRkaW5nIHRoZSBsaXN0Lg0KDQo+IE9uIDIxIEFwciAyMDIzLCBhdCAxNTozMCwgZGFuaWVs
LXMtbWVuZGVzQHRlbGVjb20ucHQgd3JvdGU6DQo+IFllcywgaW4gdGhlIHNhbWUgbGluZSBvZiB0
aG91Z2h0IEkgYWxzbyBtYW5hZ2VkIHRvIGVuYWJsZSB0aGUgU0ZUUCBwcm90b2NvbCB0aHJvdWdo
IFBBQ0tBR0VDT05GSUcuIE15IHF1ZXN0aW9uIHdhcyBhbHNvIHRvIGNsYXJpZnkgaWYgdGhlcmUg
d2FzIGFueSBvdGhlciBtZXRob2Qgb3IgdHJ5IHRvIHVuZGVyc3RhbmQgd2h5IGl0IGRvZXNuJ3Qg
aGF2ZSB0aGF0IG9wdGlvbiBzZXQgZnJvbSB0aGUgc3RhcnQuDQoNCkl04oCZcyBub3QgZW5hYmxl
ZCBieSBkZWZhdWx0IGJlY2F1c2UgY3VybCBoYXMgYSAqaHVnZSogbnVtYmVyIG9mIG9wdGlvbmFs
IGRlcGVuZGVuY2llcywgYW5kIGEganVkZ2VtZW50IGNhbGwgd2FzIG1hZGUuICBMdWNraWx5IGl0
4oCZcyB0cml2aWFsIHRvIHR1cm4gb24uIDopDQoNClJvc3M=

