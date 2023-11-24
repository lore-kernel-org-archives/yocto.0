Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32B0AC61D97
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 17:12:59 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.41])
 by mx.groups.io with SMTP id smtpd.web11.144627.1700845977871853865
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Nov 2023 09:12:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=vSlw3L5a;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=vSlw3L5a;
 spf=pass (domain: arm.com, ip: 40.107.7.41, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=aU/UHIS/zHAufpARQiHchCZAloTbuS8iXISq1NLb5SqIz+ClvmoEJoizbGpVWXAK18WN7XBZVFxCZsUlEbDDEwxEM4fGtsxQTlRclh3fyheeaOUzXv0TC07HavIc+uubt9V3JI0VSgI1YlTuo+B7Lehjrk8YRj+HWYMuS5TQEbn23E8HZX3iijDf2DrEDXpKBwvb1IY+JigJJRbfVj3R/3wbJvl+YM4m8n8VZF6yZGFRbe1VbpjZkETf6YVEcpdOVYSBKrsqLfoxCQ8EdLpqO/gJ/Vhbj/2n0JXILC61/BVyx6KlfN3hp5ewWPCSI13ksNAskbBZVaugoN2fpsifgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbgS8kMuDE3dELQ5qZKw8nkKT/C2mzSxhBX5YlyGhi4=;
 b=euHq3KjNWYQE8WnuB1Rh7yVaM1J/wXoonUhxvuoGwYJREPiTWUvCYDM17rZ0ox+T5r2D6/DOwQ4/1V4LriPaezI6CDY5iXnq4G908taRLAiJrQNBaNIeJ5W4Brv1tb76yiPSMuzISNWTvwl+Elq81VgRyE1tof6b11B9qwYWFa6Kx6Sdjn0hSiW9qxlpKiMDoyl2knpnBEWDlurZ+XlE7wiI1YvMOVVOlCTnOGh9sQik2cGmTxn5TlK8dNs/QJog43fsGri3pzxRBklKRn/WK5wtnpNJ24gVxmYf58Js9tVou2U4IpEG6tJIggtbpvmW5+6p47igImJ3XXa+4gu4Vg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbgS8kMuDE3dELQ5qZKw8nkKT/C2mzSxhBX5YlyGhi4=;
 b=vSlw3L5a8/aFdpn/Wiq+AlbMGaO+S1Oaf3J1oQHXc/adXbX5T+jZeKtGbEkVwmWVsMs3+pasH+31XrYxECzTieJXqZ+RMralSf6n3zaiP4WnhfHSVIflKAwAgmYM+ByU2tis/OGxsfYBr2AgmQb6NymaicnYONTD4Zx/FEjfW2U=
Received: from AM5PR04CA0004.eurprd04.prod.outlook.com (2603:10a6:206:1::17)
 by GV1PR08MB8083.eurprd08.prod.outlook.com (2603:10a6:150:95::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.22; Fri, 24 Nov
 2023 17:12:51 +0000
Received: from AMS0EPF000001AF.eurprd05.prod.outlook.com
 (2603:10a6:206:1:cafe::7d) by AM5PR04CA0004.outlook.office365.com
 (2603:10a6:206:1::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21 via Frontend
 Transport; Fri, 24 Nov 2023 17:12:51 +0000
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
 15.20.7025.12 via Frontend Transport; Fri, 24 Nov 2023 17:12:51 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Fri, 24 Nov 2023 17:12:51 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a63b40adb3c911e7
X-CR-MTA-TID: 64aa7808
Received: from de1dcd20c079.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id AA5529BB-E20F-4CB5-BA11-60700A87423E.1;
	Fri, 24 Nov 2023 17:12:44 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id de1dcd20c079.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 Nov 2023 17:12:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdgw9TVuyoCnw1IUJOlUtoBVA/WrBRCptOypSZG5iWObBruMNRZlLyNf21Fn6o3lrX8xpiDj92dkPa7dUmLubHwei8aj/6S4THowcNRTvEDI0GgyffsFuexbrt8RMC49DIuPJy/HTudJXLGxWMMTrV0KYYW9OKTBy5Sv5FgYadmsuL768Y5jqnOIOTyHn3yH7YPsqzkMlKIjqemcDqc/wGrXGc+xrUrkjbh1QYG5Y29/pEkbhI3O3u8xzu7dBabcJldAU5sPnkYjVe6ByapdsaVYxV0uOibRqbIQNgmfo6mas1/ITi3Es/0joOVFst9lfbsfHZD8o+kNYFQpIRqkhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbgS8kMuDE3dELQ5qZKw8nkKT/C2mzSxhBX5YlyGhi4=;
 b=c7+Ztqlffad49NYlouiKvpIt41rvt3hbxAo/K7ZrkKFHLeCcyAu1u3/ceqV8oSXJ9ZrW/S3XL5fyg51X0cYAwuH/aulw21LprLB4usvJCg/ZwDtvgm4XpVCOWdqT/Ki3nLLNIxmgFhTjYdtk0mJMLxVVEWajI6x5QCD9FfiGb+H1FuJf9fY5vGOHHs33RhtJEknmGa9U8Nyc5nulKqr1NHYLJFRjfuYAjRDQloKxGEFyxm/J8mkbxEGWvEYoY+fg4y6asiapLVRqKDlL2o3LQGy94BNieDoOxLJHtrFKT095Y6HhaD4aNs5KEsINra3BTtXnaspvDfQuaptWnDpklQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbgS8kMuDE3dELQ5qZKw8nkKT/C2mzSxhBX5YlyGhi4=;
 b=vSlw3L5a8/aFdpn/Wiq+AlbMGaO+S1Oaf3J1oQHXc/adXbX5T+jZeKtGbEkVwmWVsMs3+pasH+31XrYxECzTieJXqZ+RMralSf6n3zaiP4WnhfHSVIflKAwAgmYM+ByU2tis/OGxsfYBr2AgmQb6NymaicnYONTD4Zx/FEjfW2U=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB6071.eurprd08.prod.outlook.com (2603:10a6:20b:29f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 17:12:42 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 17:12:42 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Index: 
 AQHaHOYJS+jGppb1UUOxtF3z9OWfWLCHzHaAgABQlQCAAUc1gIAAT3cAgAAC3YCAAAGjgIAAAM2A
Date: Fri, 24 Nov 2023 17:12:42 +0000
Message-ID: <9FBCCDE6-F419-4D82-B0F1-D84BF902A463@arm.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com>
 <750E6423-8371-46C6-96A0-DB901787BEC7@arm.com>
 <CAMKF1src_2+T=OOr2G2B+P=HmwXjTJGU+BGCn=bmrvHjaoCmAA@mail.gmail.com>
 <B9666CC9-7A53-49E3-98F3-631F1C3595E2@arm.com>
 <CAMKF1srpxe7n4fKyfb8T9kaU=RAUf7AoNjQQjR-FT25tpHnQ9Q@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srpxe7n4fKyfb8T9kaU=RAUf7AoNjQQjR-FT25tpHnQ9Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB6071:EE_|AMS0EPF000001AF:EE_|GV1PR08MB8083:EE_
X-MS-Office365-Filtering-Correlation-Id: 1199ce8e-5e4d-4460-0f54-08dbed109719
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /7hROCmy/4xeMJI/JR3XR7kCvYw5yejjY48NI+5RYCR8mcWX3T3AADLRRCXBEmfb0JvAl4SvjGUIC8nKlFFCQcX6xOcSbPwzsn2f/kPDL/W8YisvlUr4auPTz+QneoGeLGUnQJRA58O4DZ97q2qOPWCz3aCeZAMrHo73Nw/OUWH6dS83FexQTXPP1sNQNHylY/Ple3G+olsZXpd0lQunGI4ulGKw8bYKcSo4zqbw7zITSXEKPLnx0rkwPixNnYYo7UKQ1svp9z5C2EKQBzDto5/gW0G6dCTPwWRCEH7FL6R0+z/NquKFPPlCfvONob4OiB+IG+y92tn55P0AsekWtCwra/wlLnvKeBhB+4Jqi+nAi0r0WjnkV4yTgEnQrL4fGtkcanxMaGIhToRJCcKUEUnVD3LtAJGFmrDmkjKgBxtGM9cbqE76rblZMT6bGlXYhuNHxYw7FLzjUkEGaW8dWtYAh3N1WBAsLXqgoHGbI4ym4VbXsv/vMD3BV5JSLXcNlLOOih0AYyW2aB9/AWPxsl7Ffs/wpvKZSXU/6VAZB+Z1q1vwornNxlwPT/fZwTceCr2tllAEwq674laRZaemGgf+HWrUARe9xABso8vw4WPbWXb/FZCpEfmd/+BijiftU9iThKj1uKp3oRHXs838DQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(2616005)(26005)(71200400001)(53546011)(6506007)(6512007)(36756003)(478600001)(6486002)(33656002)(38070700009)(2906002)(122000001)(4326008)(91956017)(8676002)(4744005)(8936002)(41300700001)(86362001)(6916009)(38100700002)(66446008)(66476007)(66556008)(64756008)(66946007)(5660300002)(76116006)(316002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <E43D582290B7A9498C09DE1DB7EBD2B3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6071
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2d7272b8-609a-4f3a-bef5-08dbed1091bc
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8rt30Hp1ADGnrdXoR5FH4w1ohybnhM1mOpgrjjwkCvSs2THAlu9vJGvMMk0y70jHsG50PDAiLTkprCNqkQRchcyTdro9aL/mUnoTzyX9SpR9j2dG1GNQwEoIAL8GiQBtxEhN7Ni9BgTDdWXC58ZiL6SkocXlaonc5U2HxYDnZqAsKqgu/XQph1Jp2KwkGW145tetgJ6zVjZEcb4vcVAlp7O3/fY/w8u8SDdvMNNFLh57VFeh6u8pthxexdJ3d5xj+xP3a64JPemVfawqOKshA/hgkUSuPutdi2qfDpQsguOUnFg1x4cN7Aq7B9OH8TqrS/inHSl0/hD6K39QiIVQYeCzX9MMUk98vz9kwUCh7yoPXdTpyrCj+W7/YGkqOOECJI53UKvsJP1tBo0pJPVLtYm69kHU/V1u3Bh+FNDeMbnkB/Eo1DKJOVYyVFfAQwhE+dDjSl5ePzMaKeOoDI3A/BCFtTv4huylJ/J7ebVGdK8w4QD+XGeXIZSiA1zojK0BNR51HGrAzy3VqINTuo4mRx29CYEQ0WQ6EmHUSsg6OCrM7kuX12HOd+mc2FmVA3wRa6TSnCfnQVzIQt5Ur8tMEyucpd5QoBRt5qgzcid0YQ9vmlz7XKcXyPlRZIjekK0T7mcKX70OqTW0Fad7OlA2ooVoQTaJkW1668iHIkn6q2wP79K78k08jlkqshy0svope2ZYJPAQ5exbtfKQc/uQDzT/WJxiwCEulJZsrMV7qcVBXQ9/tO0+wKbhvHrN05YZ
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(396003)(346002)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(82310400011)(1800799012)(46966006)(40470700004)(36840700001)(70206006)(70586007)(316002)(478600001)(6486002)(40460700003)(33656002)(5660300002)(86362001)(4744005)(2906002)(4326008)(6862004)(8676002)(8936002)(82740400003)(81166007)(356005)(47076005)(336012)(6506007)(26005)(36756003)(36860700001)(41300700001)(6512007)(40480700001)(2616005)(53546011);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2023 17:12:51.2849
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1199ce8e-5e4d-4460-0f54-08dbed109719
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8083
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 17:12:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61756

T24gMjQgTm92IDIwMjMsIGF0IDE3OjA5LCBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPiB3
cm90ZToNCj4gPiBOZXcgdnRlIGVuYWJsZXMgYm90aCBndGszIGFuZCBndGs0IHN1cHBvcnQgSSBk
b27igJl0IHRoaW5rIGl04oCZcyBiYWQgcGFja2FnaW5nLiBNdWx0aXBsZSB2ZXJzaW9ucyBvZiBn
dGsgY2FuIGxpdmUgdG9nZXRoZXIgaW4gYSByb290ZnMgd2l0aG91dCBjb25mbGljdCANCj4gDQo+
IFN1cmUgdGhleSBfY2FuXyBidXQgaXTigJlzIGEgdGVycmlibGUgaWRlYSB0byBwdWxsIGluIGJv
dGggaWYgdGhleeKAmXJlIG5vdCBuZWVkZWQuDQo+IA0KPiBPayBzbyBkbyB3ZSB0aGluayBzaG91
bGQgZ3RrNCBiZSBhIGRpc3RybyBmZWF0dXJlIHdoaWNoIGNvbmZsaWN0cyB3aXRoIGd0azMgPw0K
DQpEZWZpbml0ZWx5IG5vdC4NCg0KUm9zcw==

