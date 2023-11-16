Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF65C54FB9
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 10:54:27 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.70])
 by mx.groups.io with SMTP id smtpd.web10.4267.1700132063499440677
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Nov 2023 02:54:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nigpJRrS;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nigpJRrS;
 spf=pass (domain: arm.com, ip: 40.107.8.70, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=ezO0GwQve8ORglCYhitY4qeZpHd20farXPusmTgQ+oS4S+wB9IcPKpY//viU3CqIxkRZPuN3cSx6bzlxV2/ioTeAI61iv3TJNxRsyScgoUjGhpLrhWAmvTPzoEHhT+CAWiCyxcZaQaSMRO3Nh8+O+Lne5d8gatJKh72PmYB6XUcMxri4Sark4PvdjJjcbTZ58ISWdyc7J9tiWq4NAsnLDKhaodOeNp8Em7NnAbeMeIL/MyXKKkcHxv8KG1BAZmTA+wmvPwKrsfQg1p0BJ5EL++8iYDstiqt7V4ne1qwQqYhp2QME6f2hM0hiG64PW/TGzzEOrnCLkF88C/j3uyNUwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WVfANH3799410/BnQHQ6Y2WtyLZZTU1NG2qtvplAFpU=;
 b=axLWJeP9jBwG4y5TKUXnIp60aBrbNRc2cBS2FPPGFkn9JsuP6oMJGLtMvqW54NOrwl7BxC5R1P08CGbIsE03n6KN9DHJDipbtsIUrZ36LJFKVKOoZ6S8aWEzYQgw3udgUQNFvugN/NvsIPdPjzcTnTez6Bl2+MCYB2hzf+d9ZSR7n4GmxGwwrC5iPwmPeXuR6OCXvtMJ00tCysfUpt9eRNQXz8HdPm2wuh87tdyDYm6JRyvz4F9b7ijUxHHUw6zM298TEw7q2rEESY3rmz0+kbMlYtWEa0vFsnrvmFX9aSpdeyMsPUNgDN5ntFlC96B57F9xFsG+fAKVlXPy0R5cSg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WVfANH3799410/BnQHQ6Y2WtyLZZTU1NG2qtvplAFpU=;
 b=nigpJRrSPW4/C5mL54oizRl+rGBnAMdriodLZaipXZ753/leGWGp97eRH5l1i2xVYXjmZhRShcyrSoY69+grgxVODLvUOkS+viwizrb3OUgH1z84K2IHuIGZDf448uK2Lz6ciWKKqNFL2G54c546vVrQaOd/XFshEa7iEVl9xhs=
Received: from AS9PR05CA0040.eurprd05.prod.outlook.com (2603:10a6:20b:489::23)
 by DU5PR08MB10563.eurprd08.prod.outlook.com (2603:10a6:10:523::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.18; Thu, 16 Nov
 2023 10:54:18 +0000
Received: from AMS0EPF000001A0.eurprd05.prod.outlook.com
 (2603:10a6:20b:489:cafe::70) by AS9PR05CA0040.outlook.office365.com
 (2603:10a6:20b:489::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.33 via Frontend
 Transport; Thu, 16 Nov 2023 10:54:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A0.mail.protection.outlook.com (10.167.16.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.19 via Frontend Transport; Thu, 16 Nov 2023 10:54:17 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Thu, 16 Nov 2023 10:54:16 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9dc297abaaa99fdf
X-CR-MTA-TID: 64aa7808
Received: from 5757c8b69e70.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id C8102BDF-F329-4A72-A119-C34A4F7A9DCC.1;
	Thu, 16 Nov 2023 10:54:10 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5757c8b69e70.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 16 Nov 2023 10:54:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vp7A84szF92gWWEk7sv8NUx4W/XnTMbP1NygRhsYns+sOT8YScP4aUEIZ9urVAgXoA2OH7xlvLQN5IUZlNZFiqNTx6s5MduA8KK5u10Y2ASE/08BP+OLf41VrPg7PfjnURfkc4wAImeh42o+J5Z5raHHsDn3hsbfO8Au7/JWeggQjWM8clcdunZ8KNu0ZvRrFKl19lloVqsH5syi8WhBtROayyGLRT6hRkGpNSiLlOqVaJ5IPhS8NpDs48LVHp8Rwm1AsFY3eKyldVQwLD0NVN4UXmxPzJUGNKgxAz1vVj3reOtTxUxBq/m+XNFHEJSSQ9Tzxdz70wI9jeGypa8YaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WVfANH3799410/BnQHQ6Y2WtyLZZTU1NG2qtvplAFpU=;
 b=OnB0LYP8A8d98aAnbaE4iXxlAfcG7ykU8hgbSPmRXL+jIPKIO51FKfZdvP4UMg08pL4D1zpF/D6dPnWSSW88KPc51kgSW68MBe64bgypt+AeUX0LlX+pOjI/5hR8Bs5m6WyG5KnAjNlDkPRbadJHV4/rHz8PC/YoXC/06FAOmd8Lzfr4bEgQF/AlVYDo56aYs9tUw8xUyH6qvxoe2p1EVt8sSbnW6yXeuG/DqmVyG94mSbl7t0UpBtqYDaazSHBoGVaG19G1FKzPqaNa5nsTMBRTR62vCKZJgkps0mxi5tZ7dt46lQyes5OXw+Rv/NSnVAms30jW0/9HCGfOcW3Ktw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WVfANH3799410/BnQHQ6Y2WtyLZZTU1NG2qtvplAFpU=;
 b=nigpJRrSPW4/C5mL54oizRl+rGBnAMdriodLZaipXZ753/leGWGp97eRH5l1i2xVYXjmZhRShcyrSoY69+grgxVODLvUOkS+viwizrb3OUgH1z84K2IHuIGZDf448uK2Lz6ciWKKqNFL2G54c546vVrQaOd/XFshEa7iEVl9xhs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI0PR08MB10710.eurprd08.prod.outlook.com (2603:10a6:800:207::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 10:54:05 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 10:54:05 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "hassanchattarki@gmail.com" <hassanchattarki@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] install: cannot create directory: File exists
Thread-Topic: [yocto] install: cannot create directory: File exists
Thread-Index: AQHaGFXeh4AmtqkeTEelQ/v3aqLUcbB8xbUA
Date: Thu, 16 Nov 2023 10:54:04 +0000
Message-ID: <10BD6CDF-4271-4601-9C79-DEEC4C74CEA2@arm.com>
References: 
 <CAPJWBnhmDJyFPSCC+_tuAhqGiH8=efYRcV41keDRq+WpBeVvMg@mail.gmail.com>
In-Reply-To: 
 <CAPJWBnhmDJyFPSCC+_tuAhqGiH8=efYRcV41keDRq+WpBeVvMg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI0PR08MB10710:EE_|AMS0EPF000001A0:EE_|DU5PR08MB10563:EE_
X-MS-Office365-Filtering-Correlation-Id: c3de68f2-37fb-4e49-857f-08dbe6926114
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 xkwqHV9tKC60LtiiqUftb4A95u71ymfq4FF09p/s06NN+Z9MCKck/wD/H+6bw625jWVoqFu6TQD/q4aN7Sbm9WdBcYKZ2m/nS/2OGs6JArzQ/2rPdI+G30qi6SITJX+AuCcx5j8ClokEnmogcz032JxoUBBNzVlzumU2ZgjzRau+TKZ2jhJDmR12VKEfVKNkwmdm4m+DMc4hZenGhfz1zEHlgd6HUxa87SiWWLi/DONDwy9ugu2RYXW0BxnKEf3ZWWEyhAUonfXrjL+eAYKlNFOOqezVlr2xzDyRIuxI5tHNUcph6VkYOKUjV8DGfQcM8gKkbuZv0sZkxosyOmO1qKBJBBZ9k1hPFjEfJsQM0sCtUzpvMRWwgEQ0QP9HuAteWUnFhmTC/blPfzMly8KgjKeBsKzvLAG5EI8YMYmZvUSewJBzAH7C2RkDnYZ8cTQ7ApM32ltVBJLGf0ZCbZ+q942SWmpMvvVLzVndxdkJTsdMhfvcuruXI5GyKfiDDFWc7/b8hIT29TDhGu4DbjRixMDfUnJRAflbR5AF+8KHClJHL0YYJOXCzqQbrFklxBuH9+R6M9hHxdfnfwhthcArM6rUqcvRnSVnGEUVo6/xKWCKOdBlpL7VwfZghu9ENQoJVMb5AnMQjnGiKbN236STLQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(366004)(346002)(39860400002)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(66946007)(76116006)(91956017)(66476007)(41300700001)(6916009)(66446008)(64756008)(316002)(66556008)(86362001)(5660300002)(2906002)(66899024)(4326008)(8936002)(8676002)(33656002)(122000001)(38100700002)(38070700009)(71200400001)(6486002)(966005)(478600001)(36756003)(2616005)(26005)(6506007)(6512007)(53546011)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <AAB7AC4F062E6C498BE1287481DA2AC9@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10710
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A0.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a3fda966-059f-47ab-39de-08dbe69259d6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7MR/61FoIEzt3yQr0a0vwAXVMsxI1/6ItsIlTCTxlue2bznZqYr+7NMPiaNIi5eN7HfYjYsGyJt3M9kkQfRHasAkhdFC4ZER2ZUApU+B3esDkG5pewYqqQdUkMpQuvBnP0KbTfzb6dEKyxxSJsWLA5WLVHwqPynFe2rYCU1Mal585gO5eYC5U4gMTGF0zrJt8LFQ9xkazVoEzBAfmG496m1URmxd7l9/vRseklXshoPW9LRa2ebKAvV+f4zh/rTMBJFhIq/FszQNt0KHoeHGHOzW+t6w5Wk9wiXpRnu6s+Vw2JTl/HW1lcLjLYaYEtmSNT8qVLysKAvC6KjNba9R1IEc+uNopO+FHCtew1OmMuqJbAkmH0ZxqnYR/BInF/qkelTEKP6++cR5TfEiVpZ7chLidNkRBcZdpJzf7zMNsxyVXZfDoFuyJoy8ebYe4kUP10d0tJxIgGyHqAefjNgIF1AKua+nRVdfFQ6zld+kfmEzKW6NZXNLYXFp3DDT3Itmc/j0yrNaJzFzWYZ3e7/hm5/O1riN1rtYCuP2gub7cG9cG6zyCNG18D3bTQfp/dXTuwmwCyAZwTskmLklnng64m4q6eqnag1/NYKpVmD9ourc/p56PXjnZcdI2VfuT09xvp+U7zconhLdmF6dvjcOUkn2s45+jDj1CB9xK7yhZDHICfIP7wwo2U1zKOx/zKqYUkaH5smRs9S1xoAC702PfY6hGOa5vA8PPVmJpCUPz7Q=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(396003)(376002)(136003)(39860400002)(230922051799003)(82310400011)(1800799009)(186009)(64100799003)(451199024)(36840700001)(40470700004)(46966006)(47076005)(41300700001)(6512007)(2616005)(36860700001)(53546011)(6862004)(4326008)(8676002)(8936002)(2906002)(26005)(336012)(40480700001)(356005)(81166007)(6486002)(478600001)(6506007)(5660300002)(82740400003)(316002)(33656002)(966005)(66899024)(36756003)(70206006)(70586007)(86362001)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 10:54:17.0780
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3de68f2-37fb-4e49-857f-08dbe6926114
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10563
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 10:54:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61710

T24gMTYgTm92IDIwMjMsIGF0IDA2OjI2LCBNT0hBTU1FRCBIQVNTQU4gdmlhIGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgPGhhc3NhbmNoYXR0YXJraT1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+IFNSQ19VUkkgPSAiZmlsZTovL0VkZ2UvKiBcDQoNClRoZSBlYXNpZXN0
IHdheSB0byBwYWNrYWdlIGEgZGlyZWN0b3J5IGlzIHRvIHB1dCBpdCBpbiBhIHRhcmJhbGwsIG9y
IGlkZWFsbHkgYmVjYXVzZSByZWNpcGVzIHNob3VsZCBqdXN0IGJlIG9yY2hlc3RyYXRpbmcgdGhl
IGluc3RhbGwsIHJlZmVyIHRvIGEgc2VwYXJhdGUgZ2l0IHJlcG9zaXRvcnkgb3IgdGFyYmFsbC4g
IFB1dHRpbmcgbGFyZ2UgYW1vdW50cyBvZiBhY3R1YWwgc291cmNlIGNvZGUgaW50byBhIG1ldGEt
bGF5ZXIgaXMgZGlzY291cmFnZWQuDQoNCj4gI0lOU0FORV9TS0lQOiR7UE59ICs9ICJhcmNoOi9F
ZGdlL25vZGVfbW9kdWxlcy8iDQoNClRoaXMgaXNu4oCZdCBob3cgSU5TQU5FX1NLSVAgd29ya3Ms
IHJlbW92ZS4NCg0KPiBJTkhFUklUX3JlbW92ZSA9ICJwc2V1ZG8iDQoNClRoaXMgZG9lc27igJl0
IGRvIGFueXRoaW5nLCByZW1vdmUuDQoNCj4gZG9faW5zdGFsbCgpIHsNCj4gICAgIGluc3RhbGwg
LWQgJHtXT1JLRElSfS9FZGdlLyogJHtEfSR7YmluZGlyfS9FZGdlLyoNCg0KaW5zdGFsbCAtZCBp
cyDigJxjcmVhdGUgZGlyZWN0b3JpZXPigJ0gYW5kIHlvdeKAmXJlIHBhc3NpbmcgaXQgdGhlIGxp
c3Qgb2YgZGlyZWN0b3JpZXMgaW4geW91ciB3b3JrZGlyLiAgVGhleSBleGlzdCwgc28gaW5zdGFs
bCB3aWxsIGVycm9yLg0KDQpIZXJl4oCZcyBhIHdvcmtpbmcgZXhhbXBsZSBvZiB3aGF0IHlvdeKA
mXJlIHRyeWluZyB0byBkby4gIE15IHJlY2lwZSBkaXJlY3RvcnkgaXMgc3RydWN0dXJlZCBsaWtl
IHRoaXM6DQoNCi4NCuKUnOKUgOKUgCBmaWxlcw0K4pSCICAg4pSc4pSA4pSAIGFwcA0K4pSCICAg
4pSCICAg4pSU4pSA4pSAIGFwcC5weQ0K4pSCICAg4pSU4pSA4pSAIHVzZXINCuKUgiAgICAgICDi
lJTilIDilIAgdXNlci5jb25maWcNCuKUlOKUgOKUgCBmaWxldGVzdC5iYg0KDQpUaGUgYXBwIGlz
IGluIGEgc3ViZGlyZWN0b3J5IGNhbGxlZCBhcHAsIGFuZCB0aGUgdXNlciBjb25maWd1cmF0aW9u
IGlzIGluIGEgZGlyZWN0b3J5IGNhbGxlZCB1c2VyLiAgVGhpcyBzcGxpdHMgdGhlIHR3byBhc3Bl
Y3RzIGZvciBlYXNpZXIgbWFuYWdlbWVudCBidXQgeW91IGNhbiBpZ25vcmUgdGhhdCBpZiB5b3Ug
d2FudCBhbmQganVzdCBoYXZlIGEgc2luZ2xlIGRpcmVjdG9yeSB1bmRlciBmaWxlcy8uIFRoZSBy
ZWNpcGUgaXMgdHJpdmlhbDoNCg0KU1JDX1VSSSA9ICJmaWxlOi8vYXBwLyBmaWxlOi8vdXNlci/i
gJwNCg0KZG9faW5zdGFsbCgpIHsNCiAgICBpbnN0YWxsIC1kICR7RH0ke2JpbmRpcn0NCiAgICBp
bnN0YWxsICR7V09SS0RJUn0vYXBwLyogJHtEfSR7YmluZGlyfQ0KDQogICAgaW5zdGFsbCAtZCAk
e0R9L2hvbWUvdXNlcg0KICAgIGluc3RhbGwgJHtXT1JLRElSfS91c2VyLyogJHtEfS9ob21lL3Vz
ZXINCn0NCg0KRklMRVM6JHtQTn0gKz0gIi9ob21lL3VzZXLigJ0NCg0KQXMgcGVyIGh0dHBzOi8v
ZG9jcy55b2N0b3Byb2plY3Qub3JnL2JpdGJha2UvMi40L2JpdGJha2UtdXNlci1tYW51YWwvYml0
YmFrZS11c2VyLW1hbnVhbC1mZXRjaGluZy5odG1sI2xvY2FsLWZpbGUtZmV0Y2hlci1maWxlLCBp
ZiB5b3Ugc3BlY2lmeSBhIGxvY2FsIGRpcmVjdG9yeSBpbiBTUkNfVVJJIHRoZW4gdGhlIGVudGly
ZSBkaXJlY3RvcnkgaXMgY29waWVkLiAgZG9faW5zdGFsbCBjYW4gdGhlbSBzaW1wbHkgaW5zdGFs
bCAtZCB0aGUgdGFyZ2V0IGRpcmVjdG9yaWVzLCBhbmQgdGhlbiB1c2UgaW5zdGFsbCB3aXRoIGds
b2JzIHRvIHB1dCB0aGUgZmlsZXMgaW4gdGhlIHJpZ2h0IHBsYWNlLg0KDQpGaW5hbGx5LCBiaW5k
aXIgaXMgaW4gdGhlIGRlZmF1bHQgRklMRVMgYnV0IC9ob21lIGlzIG5vdCwgc28gd2UgYWRkIC9o
b21lIHRvby4gIElkZWFsbHkgeW914oCZbGwgYmUgY3JlYXRpbmcgYSB1c2VyIGFuZCBjaG93bmlu
ZyB0aGUgZmlsZXMsIGJ1dCB0aGF0IGlzIG91dCBvZiBzY29wZSBmb3IgdGhpcy4NCg0KUm9zcw==

