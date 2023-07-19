Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76242C0015E
	for <webhook@archiver.kernel.org>; Wed, 19 Jul 2023 09:17:05 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.40])
 by mx.groups.io with SMTP id smtpd.web10.9845.1689758223848072106
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jul 2023 02:17:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=qVTLKCiC;
 spf=pass (domain: arm.com, ip: 40.107.8.40, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v/I7UfJ5+CFfTpdSR8vMhbTCi7dO82n/1gTbnlQJr60=;
 b=qVTLKCiCoXcFR0h3WPI2uMfm/5n/hsxPfGPqOiAArTLE4SKwOwtOYX6WWHPlxW2v7+i8AQT25vK5IV6vy+lITBMBcKC+gdc9Mlcxoc05LymGPUbT49/IS+jEcqt+rSeGiE1NbD9S5Pto0HEl4NkVA4f962LRF/E0zDlzmrA26Oc=
Received: from DB9PR02CA0027.eurprd02.prod.outlook.com (2603:10a6:10:1d9::32)
 by DB9PR08MB6394.eurprd08.prod.outlook.com (2603:10a6:10:25b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 09:17:00 +0000
Received: from DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:1d9:cafe::8a) by DB9PR02CA0027.outlook.office365.com
 (2603:10a6:10:1d9::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33 via Frontend
 Transport; Wed, 19 Jul 2023 09:17:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT033.mail.protection.outlook.com (100.127.142.251) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.34 via Frontend Transport; Wed, 19 Jul 2023 09:16:59 +0000
Received: ("Tessian outbound d7adc65d10b4:v145"); Wed, 19 Jul 2023 09:16:59 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1fcbf740baca2aeb
X-CR-MTA-TID: 64aa7808
Received: from c04614ccdcb7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 58C2FE6D-952A-486F-9D51-E28513B2BDAD.1;
	Wed, 19 Jul 2023 09:16:53 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c04614ccdcb7.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 19 Jul 2023 09:16:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+cebdrEV9Hb2VlKGyTeDzv/fEHZeZNi16vtwkcTpS5cIcdt+ez4t215GG7bL0eyzRbu2oU2VR0S3bxyP2K3ddXgckDxcjuS5/yxVuiIpswKwrXPfQtCYUEdWRu+/fMgbkVCw4/+CNKUtL51hXqPAFeSMEKTK0nuSBT5p0PaINi0CqvgAKY1NLlPgeX6PzvGu4ICzoX6bewFKp2TY5pRyXFDsr6DxgWX2bd5qzgqT8iOwfLpLgjyeydnYvq6zwBo4UaU4AUsJh8UNUTL/2/vANSUYfz88wduj2IVM2aRKq37WQKsXeHOP6IN8ATlr+aLsMVWNuntkPX959PebvBTFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v/I7UfJ5+CFfTpdSR8vMhbTCi7dO82n/1gTbnlQJr60=;
 b=oAHw0FPXpVN4adq7QQbLe+fRbGiNrTNgF2QH+5+8pg5IoVo0HuJovp1m05BqX3jEBagFdG/a7TZ6KHrpzjXqOZWlRTxYWespad8ArWkeJvL4/NTClIp3HPbh5+VwvI1tUUO+btkc8dbNIzyvOmFmGJ/Klcb1DhbF3wzBBZzGXek9222C2er7pSzwiqUkfTnxkWxrcZG+g9GqeVBAbGkZm0EcCbU0XYLeazyUnnkWQCjWAgT3nQ9FkekdWe5L9xoC6octhDHYIj15PTOg6Z53YtQj84PrsDhjrPSY3KgRzQ1h+iMUzYkWGQmq9nRHCN6GI6BATlF/X8iObj8+qraQwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v/I7UfJ5+CFfTpdSR8vMhbTCi7dO82n/1gTbnlQJr60=;
 b=qVTLKCiCoXcFR0h3WPI2uMfm/5n/hsxPfGPqOiAArTLE4SKwOwtOYX6WWHPlxW2v7+i8AQT25vK5IV6vy+lITBMBcKC+gdc9Mlcxoc05LymGPUbT49/IS+jEcqt+rSeGiE1NbD9S5Pto0HEl4NkVA4f962LRF/E0zDlzmrA26Oc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB6702.eurprd08.prod.outlook.com (2603:10a6:102:134::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Wed, 19 Jul
 2023 09:16:50 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239%4]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 09:16:50 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "bahugunaayush8@gmail.com" <bahugunaayush8@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to avoid "Bluez D-Bus thr_core_dump.gz" creation in
 every shutdown
Thread-Topic: [yocto] How to avoid "Bluez D-Bus thr_core_dump.gz" creation in
 every shutdown
Thread-Index: AQHZuhZTNfDnYgt6VUuAVSDIt2wSuK/Az0cA
Date: Wed, 19 Jul 2023 09:16:50 +0000
Message-ID: <038EC6E5-5F1D-4685-97F9-AA201E207650@arm.com>
References: <qiGq.1689753291409635156.81dO@lists.yoctoproject.org>
In-Reply-To: <qiGq.1689753291409635156.81dO@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB6702:EE_|DBAEUR03FT033:EE_|DB9PR08MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a1f2cfc-5111-4180-8607-08db8838e842
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 i1HBLBY0jYnqaXxxF5XBSfrzvHQwmkp/xTDR8z+68HCftSV99RRKYXoOOm+xyc5ZCVQz2HDyWHJ3HqtsWdbX5fCVywUbbsGRGUfr2SJ0GcEaSeyC1CtUl+98yFIW7eqZX3RniDP21MMqc2JYZCEaHNZRqBVSeV2P2yk9nyUPV5fFiv75foZyN8euDewEI+qzpH9flONIAI1gmvo5rCopNrCwsTdIWvCM5iu61o5oY5rLMxYti7EIfRedZxqINw7mnZJdlqwioUjvrg+/1wZXsoc7z3wPC46IUOv89LjQ8UWwYGNDBRkxvuuWXsetQKHvVXxOVdzc9O+M3DpX2wxKAgOyDRBNiu129DhbK15yAU92X8N5NaXWDK2Z4gLbwcI2FdnHLeOXE/39BEfrBQsmFggT2w/i1rzr3BkWLzf9btdjSg2kWNp1tPN4H4PxUqFTXS8yMNze8RCE0qSLnSkZwJzDdEiMnVPHBQHRGlifNUO/nRhrmf8rGC1vyMuS4O6CffkukAenDrfhDkOnqpahXl95huUGk/+syL7KcpH6brMOK3gMiwktqcut0aZsPFUw/hSTbILxWnkasNO32OenTWgslB0k0R7udLUKRNV8BgJSUDGC7F3OeOSt8GUG2UGFp1J3p2pINyc0cIPUDGlxI0LwOMf24keXOeDXzYWyjR7pSbjMIhT5dK9l7x1infYi
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(451199021)(71200400001)(122000001)(6486002)(478600001)(66946007)(86362001)(36756003)(8936002)(8676002)(2906002)(4744005)(33656002)(5660300002)(64756008)(38070700005)(66446008)(4326008)(38100700002)(6916009)(66476007)(66556008)(91956017)(76116006)(41300700001)(316002)(53546011)(6506007)(26005)(186003)(2616005)(6512007)(83380400001)(485434002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6C9EFCA6BBC12E4D923E7BFC1E84FFDA@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6702
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6e2e8ce7-7247-423d-6074-08db8838e29c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lW4PVgr1UpevEUsfNL0wKtUxeWpHlzSxcposLdKsZUFk4MUwdiKq/uB6KWlxOHWQhhAEkbw29sjrZLDs/vQ7/Ckfct4TI1lzzk6tuPJ4veGun0lb84mwHwgjDvXYoyqM4T+XlBzUOI0l4Toj1ej+/rThQ56O2DDv5aFUuEyQIcxTDCtr/SjtvIoHRU1eRj3m9i8wy7vVX9UTo/QFECajl4rL+pmsFt7HTfO7VHK6aG1rkT9fAMcKvm9khjUBNLN9CmVxbIL+EPxNpOJJ6PudnbrR4Q/N8PRqXJplhW4T9o3KV3z0WarPFmkwzrk6oLOmFXsCRW1l+LJ+zFjZsnm/VF0ujhu7SlEv05HiWV8xwuUtADd5QZabdN34uTJKBkKAfnQPIA1ms2wQOH+Q5y3t+cuEA6SEcz9wqEAZcGnGtxl9PGOoMoWschLtmrjb22qvnSwoC7QgeVqZBpDOPJdF26O7VSnKL6szbwFWpp74Q4LFwY96u5TsXqK2JrjOF1/SyhulCs5aUtSbdxes7S7G4qgQ8cWZ6Gd5+4c9ewZ6yil61lEsGpqLcXX+/Y0KDRLrhRnhn0OmJdO4tn2OKpTqoCDSrxT5Z/s1w3GBG1N0Ug51CqFhVNBis5BelaJhRvaZQd4R9UETnfRx1MLR0IBWQ0Le9y6y/31D+x6A7vloJ8xM9/+W/qqRKkPnEEcJhJXrrTpzh/5nvxQ5goVfZVDaywu1NtgDewhGq4cQF6n9lGfDfdQUqwf06HtxPPIDp5DF9zWcpLjSHFe25jPlrWQyyA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(396003)(376002)(39860400002)(82310400008)(451199021)(46966006)(40470700004)(36840700001)(4744005)(2906002)(41300700001)(316002)(33656002)(5660300002)(40460700003)(6862004)(8676002)(8936002)(36756003)(40480700001)(86362001)(6512007)(6506007)(26005)(478600001)(82740400003)(6486002)(47076005)(53546011)(83380400001)(36860700001)(336012)(186003)(2616005)(81166007)(4326008)(356005)(70586007)(70206006)(485434002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 09:16:59.9120
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a1f2cfc-5111-4180-8607-08db8838e842
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6394
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jul 2023 09:17:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60614

T24gMTkgSnVsIDIwMjMsIGF0IDA4OjU0LCBiYWh1Z3VuYWF5dXNoOCB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8YmFodWd1bmFheXVzaDg9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+IHdyb3RlOg0KPiANCj4gSGkgRnJpZW5kcywNCj4gVGhlcmUgaXMgbm8gQmx1ZXRvb3RoIG1v
ZHVsZSBpbiBteSBzZXR1cCwgdGhlcmUgYXJlIG51bWJlciBvZiBvdGhlciByZWNpcGVzIHdoaWNo
IGhhdmUgZGVwZW5kZW5jeSBvbiBCbHVlejUgcGFja2FnZSAsIHJlbW92aW5nIHRoZSBCbHVleiBw
YWNrYWdlIGZyb20gYnVpbGQgcmVjaXBlICwgc3RpbGwgZ2VuZXJhdGVzICJCbHVleiBELUJ1cyB0
aHJfY29yZV9kdW1wLmd6IiBvbiBldmVyeSBzaHV0ZG93biAsdGhpcyBtYXkgYmUgZ2VuZXJhdGVk
IGJ5IG90aGVyIHJlY2lwZXMgd2hvIGhhdmUgZGVwZW5kZW5jeSBvbiBCbHVlejUuDQo+IA0KPiBI
b3cgY2FuIEksIHN0b3AgdGhlIGdlbmVyYXRpb24gb2YgIkJsdWV6IEQtQnVzIHRocl9jb3JlX2R1
bXAuZ3oiICBmcm9tIGFsbCBzb3VyY2VzIGluIGJ1aWxkIGltYWdlLiANCg0KSWYgeW91IGhhdmUg
bm8gYmx1ZXRvb3RoIHRoZW4gcmVtb3Zpbmcg4oCcYmx1ZXRvb3RoIiBmcm9tIERJU1RST19GRUFU
VVJFUyB3aWxsIHByb2JhYmx5IHN0b3AgYmx1ZXogYmVpbmcgYnVpbHQgYXQgYWxsDQoNClJvc3MN
Cg0K

