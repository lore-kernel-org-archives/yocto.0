Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E39C10DC3
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 13:47:27 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.56])
 by mx.groups.io with SMTP id smtpd.web11.83969.1701956838543926462
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 05:47:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=P9alYae+;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=P9alYae+;
 spf=pass (domain: arm.com, ip: 40.107.105.56, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=MWq6snFTMIRrHCDReKL3HSdb+NYuPvFNJMvcpR3cAqKZ3hXbs6YiPik+wEReSp9lCUEU9YdKALBEoI6/zP6jdbJu7yWsch8pkyy+dwjK2/vZ3zDQMVSGb1REMWQ14dqqZbBcoEKkv0NqYAah1yyIsgoU8R/++9o5NAmoQOH3Bg4tT9EBjO2yq09lm0SVN7++g2F1MkE1jjuSW8kxYQHxsjQeQNQfwuhOjdxSTagNzZEBgSYh87rqOdzESsrPf8QX2u24TEeUQZn1er9tH2waawuVGqHP1Ct7IUKzZGMAow+3nSLmev3akw5y2AEzpJZPWpYgtiVE3yXEHu71cinFrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJqBnlh7AiJc6+1DXVLCZ0lrJYvQ7SdSCPBEyYvGhuc=;
 b=gyIxnNFX9C5WHCfBcmcMAqxo1Qv5MIVXAgA1SJcyn+xQ0f72PHIPiS0f2zBSiBQg/8NkPKkqK8sj9hBbo5ylUY10/XmRD90wnhfV1MWfLc4QalP+FvONpmykKHsLoYDSbQk5v3zsgqGPMy1bC2lxLyuL3A4ePG6gOHz5e25KUcF/xcCGnVrXpm40UAqqZh1xrGDNpmbLT0v30W6rnqfHZHNI4hSgiNxsac9o21sVEdaEBuXRto5gLt5qyJlyfzqdcxmsriQL21Wg1Fy6jOo3dFeWjeXoGadZSFpwbqUx2wFM4I++5ocaWDAo1Naz/FT97d4Kb4lSR+bakhk2Sd049Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJqBnlh7AiJc6+1DXVLCZ0lrJYvQ7SdSCPBEyYvGhuc=;
 b=P9alYae+f5AHTXE624wwp7STJA228DDOkb6jrTTvVBTxXeiAswLXyF5Vx2T7R2VJig9KvR+mOQE1GRLV0A4wrgpvQcdeqLYboheNT5h5jmBLbOWMOzov2JmGloiwgtZJiQIppPgXHd/57HNnyhOO/gWz287+e/ZnV9zhNbqrGDk=
Received: from AS9PR06CA0673.eurprd06.prod.outlook.com (2603:10a6:20b:49c::17)
 by PAWPR08MB9066.eurprd08.prod.outlook.com (2603:10a6:102:342::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 13:47:13 +0000
Received: from AMS0EPF000001AF.eurprd05.prod.outlook.com
 (2603:10a6:20b:49c:cafe::51) by AS9PR06CA0673.outlook.office365.com
 (2603:10a6:20b:49c::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34 via Frontend
 Transport; Thu, 7 Dec 2023 13:47:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001AF.mail.protection.outlook.com (10.167.16.155) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.20 via Frontend Transport; Thu, 7 Dec 2023 13:47:11 +0000
Received: ("Tessian outbound 7671e7ddc218:v228"); Thu, 07 Dec 2023 13:47:11 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7baa467b2b012b26
X-CR-MTA-TID: 64aa7808
Received: from 476d6d216aea.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id EFE71580-2E19-4C50-ADFD-FBB3D3C431D1.1;
	Thu, 07 Dec 2023 13:47:04 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 476d6d216aea.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 07 Dec 2023 13:47:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWqrZao8aha/sg2BCQ2CBTcyVmVDQ6LNsZQO+qn+zPiNUe9gH1fI34UT8euuIWXSX2rYItYy5rPpjASU1Sl5t4WigZ7ojd5Bmp8GE6oZCprKJe7wD72E/YKkDpp0WRN2viiqAb7mcVpGiog5cbB32bpZdE594i52LNRbpbX/7CDEC7n3I99BP//DSXm20UdTF5GhDXMGbEO5HEKNjBV9DViE5ZCqY7EPbjWLtyR3zFixUnvkhSzUH2kqTeBJ3HLNzIOlGtqpFoxP4pDWAuKcEfsDMc+deb0eXqJIDqcr/T4794mo5LnzcYS0mht3ZrWs8SkmRDtxQn+f6GndMbzKyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJqBnlh7AiJc6+1DXVLCZ0lrJYvQ7SdSCPBEyYvGhuc=;
 b=EGHJazLaJtu84wYs5VhzQIXv8e6PkKC+1MR2dgOvHK2fFMG2uUOsuJeILFGuImItzQk7to9t9nTstox9jeMEgjuLagzHEWf72PavQjewD1o9xG+yO8yMXinE2YVlWa6iVuSeKpvZo+B00vZkNflasjk3FFytUunw00+4WZ5d5EndeNbunLqlT4i7iaZnQlnSInKFKJmC7n+Zf3jkLosj4HGsIxYZj4K81YozJbJscUZGrJHmLAzFh7bE0K+i44WTOX/doydEcIkr4siNrilzTEUV9RppeQa2gNLkILFTN68JJuKAFciX3z3z4JnPkroU4xicMyXJvLWfxVHZHALprg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJqBnlh7AiJc6+1DXVLCZ0lrJYvQ7SdSCPBEyYvGhuc=;
 b=P9alYae+f5AHTXE624wwp7STJA228DDOkb6jrTTvVBTxXeiAswLXyF5Vx2T7R2VJig9KvR+mOQE1GRLV0A4wrgpvQcdeqLYboheNT5h5jmBLbOWMOzov2JmGloiwgtZJiQIppPgXHd/57HNnyhOO/gWz287+e/ZnV9zhNbqrGDk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9601.eurprd08.prod.outlook.com (2603:10a6:102:311::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.26; Thu, 7 Dec
 2023 13:47:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7068.027; Thu, 7 Dec 2023
 13:47:01 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "iurascu_teo@hotmail.com" <iurascu_teo@hotmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Static library created by recipe arch is not correct
 #yocto #sdk
Thread-Topic: [yocto] Static library created by recipe arch is not correct
 #yocto #sdk
Thread-Index: AQHaKRJVRBpRutRBvUqKUConA8Io4rCd1YMA
Date: Thu, 7 Dec 2023 13:47:01 +0000
Message-ID: <1D9994C9-84AD-4A67-AB5A-040A6439466D@arm.com>
References: <49B96581-E340-47A0-B858-858DDB5690C0@arm.com>
 <8726.1701956150907740081@lists.yoctoproject.org>
In-Reply-To: <8726.1701956150907740081@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9601:EE_|AMS0EPF000001AF:EE_|PAWPR08MB9066:EE_
X-MS-Office365-Filtering-Correlation-Id: 542489ed-0878-4a66-7855-08dbf72b036e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 yVpFgDp4RWZGbWLRSMznOiQsVJWv7oSa/RMGqJSkuAoSUSV8xQ47UAqa0JmN08bXdOCVzgCRukPUm2ewSlgwMVuvyiPosy54Lhfo1bzW97k44A09HBtauH9FelLIx2Hp0d59vU1HugQJFaWcsPqi3VCtlGdwXaSSiqjc6/8tvhWiH0ZJA0NliT9E9LZdOcHV4cTSlyiym0/CPNSKQZWy2IiwEr7OzM5MbpCaWnd/Zo3gqtxTiAjKn5cfooVr2hu7o8h/Jd5fHaqHRSmM95qHGzB0/qCQDbqTsfekZfNHUXBtyJdP0mebFaNm7eFtRVgLB5I9G24GgvQk8Cjj8/AJyeL6//jfhopid/awlBKzqacfcC6ufr4j5RbwuK7THsWuBUtzFXgZiQs8ltl/ovI3F1XlBEq9r249DdF6tshz8YTAJC6KnOawYvAXg5IIszMSqcjt9h5tOx7WnEWJmldR/UftLuoIp08Vy2aQPMyU1gDA2eY0sRwE3gGTkyQncmeJu9nlvHBoBELz/j28fQyXhyML/0XlhJeXFAWe+MhU9Qe6rm3D5d3mCmkXOW17MomJqMKe8OfLA/tH/fhtqbj6u8baZGqLRbK7MYzjOg9HsHQPHzH/64iJ91J27fKjm4+iXg5v5eY80SCUkkjO4yZsrw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(346002)(39860400002)(396003)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(26005)(53546011)(6506007)(6512007)(2616005)(6916009)(316002)(71200400001)(64756008)(66446008)(66946007)(4326008)(8676002)(66476007)(66556008)(6486002)(478600001)(91956017)(76116006)(122000001)(8936002)(83380400001)(41300700001)(33656002)(38100700002)(36756003)(38070700009)(86362001)(5660300002)(2906002)(4744005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <37839A95837C9D44889792F84348F85F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9601
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	040cf58c-ef79-4bd7-aaca-08dbf72afd32
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ygh/HIDH+XKoHjP59UAEjNVctDmLQ90zaD4v+yzvFwdyE46WCSQUCw8jd5j3474MRb/ILsNl1yza5G7Vy2drwwc8PFZ7Ui6zRP/tGMGfY0kloxVbgFaSh5vwGIJShMf6YiwIiIe4piwFHIFSEkQyZb9teF4nIUxiCy8RXoh5AWkVAaxYTAlbRI4uxjQz+F7d+tQJeDc183nA8NqnLQ7IwZo3HOvRa9ojm2ZgLNmZ6xvQi2Zwrz5naUwHLsW4Fio9d/nl5H1e31sKafC8BSEMiS4+thGmMnNptIbkvw07O8wnWUPSmBWiaraLH+iRZ8x+ZhbWuUcSFbO1TUJQBgxMGhlsECzpMKjVeit+gOF1Md17j9kT4lhe1wAS6lHjS1VoBI1m4/oRvJe01XAnQBTYX1DKFolZJWb4GgYtlvVXuhcmz2bNa7mYLhwa/UCo2Uf2ndJEewE43cgppGLp9ceg9bS3fNI377gN13XKR2YPKJ2n40MBuivlFrPKdsg8SUnZyremsPXp1PBGoLTKGpSnS0TrbS3qMBoVwix6vOar5DC9Hmsi/aOmnU8jO5ei9rZClg9oLKhtr8AU3o2z+Bzm8ruWoKxdz23iN8TxJhIH0Cv8d/crAhOwkMyP9za357TY1wjHZoCrJoek1OjiKq5QB1lw36EpljPjLzwVs7AnnDm7qVNq0VVQq1Oo3hGUxymTaq7FqqMRF6JHlh+kZB1CbEJIGxMsqwKo35bVOx5sv6yfBmHELkNFfgG+oCEG45Xb
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(136003)(39860400002)(396003)(346002)(230922051799003)(1800799012)(82310400011)(186009)(451199024)(64100799003)(46966006)(40470700004)(36840700001)(2906002)(4744005)(40480700001)(8936002)(8676002)(4326008)(6862004)(5660300002)(316002)(70206006)(70586007)(40460700003)(47076005)(36860700001)(2616005)(6486002)(6512007)(53546011)(6506007)(36756003)(26005)(41300700001)(336012)(478600001)(82740400003)(83380400001)(33656002)(45080400002)(356005)(81166007)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 13:47:11.5814
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 542489ed-0878-4a66-7855-08dbf72b036e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9066
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 13:47:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61831

T24gNyBEZWMgMjAyMywgYXQgMTM6MzUsIEl1cmFzY3UgVGVvZG9yIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxpdXJhc2N1X3Rlbz1ob3RtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gUnVubmluZyBmaWxlIG9uIGFueSBvYmplY3QgZmlsZXMgaW4gdGhlIGFyY2hp
dmUgcmV0dXJuczoNCj4gJCBmaWxlIEJCQmlvbGliLm8gIA0KPiBCQkJpb2xpYi5vOiBFTEYgNjQt
Yml0IExTQiByZWxvY2F0YWJsZSwgeDg2LTY0LCB2ZXJzaW9uIDEgKFNZU1YpLCBub3Qgc3RyaXBw
ZWQNCg0KV2VsbCB0aGF04oCZcyBub3QgcmlnaHQuIDopDQoNCkkgbm90ZSB0aGF0IHlvdXIgbWFr
ZWZpbGUgZG9lc27igJl0IGhhdmUgYW55IGNsZWFuIGZ1bmN0aW9uYWx0eSwgc28gaXTigJlzIGVu
dGlyZWx5IHBvc3NpYmxlIHRoYXQgaXTigJlzIHJldXNpbmcgcHJldmlvdXMgYmluYXJpZXMgZnJv
bSB3aGVuIGNjIHdhc27igJl0IHNldCBjb3JyZWN0bHkuIEFkZGluZyBhIOKAmGNsZWFu4oCZIHRh
cmdldCB0aGF0IGRlbGV0ZXMgYWxsIGJ1aWx0IGZpbGVzIGZyb20gdGhlIGJ1aWxkIHRyZWUgd291
bGQgYmUgYSBnb29kIGlkZWEuDQoNCllvdSBjYW4gdGVzdCB0aGlzIHRoZW9yeSBieSBkb2luZyBi
aXRiYWtlIC1DIHVucGFjayBiYmlvIChhc3N1bWluZyB5b3VyIHJlY2lwZSBpcyBjYWxsZWQgYmJp
bykgdG8gZm9yY2UgaXQgdG8gcmVidWlsZCB0aGUgcmVjaXBlLCBhbmQgdGhlbiByZWJ1aWxkaW5n
IHlvdXIgU0RLLg0KDQpBbHNvIGhhdmUgYSBsb29rIGF0IHRoZSBsb2cuZG9fY29tcGlsZSBpbiB0
aGUgcmVjaXBlIGJ1aWxkIGRpcmVjdG9yeSB0byBjaGVjayBpdCBhY3R1YWxseSBpcyB1c2luZyB0
aGUgYXJtIGNyb3NzIGNvbXBpbGVyLg0KDQpJ4oCZbGwgbm90ZSB0aGF0IE1ha2VmaWxlcyBhcmUg
aGFyZCBhbmQgaWYgeW914oCZcmUgd3JpdGluZyB5b3VyIG93biBtYWtlZmlsZSBpdOKAmXMgZ29v
ZCB0byB1c2Ugc29tZXRoaW5nIGVsc2UgaW5zdGVhZC4NCg0KUm9zcw==

