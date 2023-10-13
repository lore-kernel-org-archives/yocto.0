Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 198D5CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 15:14:41 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.83])
 by mx.groups.io with SMTP id smtpd.web10.41439.1697210073995445598
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 08:14:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=isLJPi9Y;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=isLJPi9Y;
 spf=pass (domain: arm.com, ip: 40.107.15.83, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/RB5GLRBaxb7AwqZ0ClkqSPoOszLByDgCdii6zxvn4=;
 b=isLJPi9YbusA3u0gw8tiM9PZcNXq9gcU0i2eouQvRX8tLh50Sc0rh6wSWxh7tSXLPYHuA6HpgYYmB8EL0UrdRdRMiTKTXZ65cvE7D+A2WLoA++Kwhw/yqciISEfBT/qJHY7JQN2W/gaq4mFjZbCSaL/JlDCKFlqnrH27r/JgucY=
Received: from DU2PR04CA0068.eurprd04.prod.outlook.com (2603:10a6:10:232::13)
 by DU0PR08MB8138.eurprd08.prod.outlook.com (2603:10a6:10:3ed::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Fri, 13 Oct
 2023 15:14:30 +0000
Received: from DU6PEPF00009523.eurprd02.prod.outlook.com
 (2603:10a6:10:232:cafe::ac) by DU2PR04CA0068.outlook.office365.com
 (2603:10a6:10:232::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.31 via Frontend
 Transport; Fri, 13 Oct 2023 15:14:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF00009523.mail.protection.outlook.com (10.167.8.4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.22 via Frontend Transport; Fri, 13 Oct 2023 15:14:30 +0000
Received: ("Tessian outbound 6d14f3380669:v211"); Fri, 13 Oct 2023 15:14:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 19594715d9afc8ba
X-CR-MTA-TID: 64aa7808
Received: from a595a99f221a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id ED5F0FF1-0BC4-4682-98D0-35E280F45D52.1;
	Fri, 13 Oct 2023 15:14:23 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a595a99f221a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 13 Oct 2023 15:14:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jgo510XK9aalSezOAJbqH4M/nCQuEtDG+ndqCv3yxaH/SQx0Oqbm132QAjAOZx48AiJwYE7CgOijJQ11G69khsDsgrFzjFqt6h57SYkLXCpVQMJhNlMYYyKn6X9Gogfju8h3SsPPxtEU2aEMBxHP9cCHTt2hcl4R6oGKw1Qki2Vc/7fe7Aqmp0tci091Dq8hocSAPEQs4I/W60NZ3ZRV5TcFbb/e9MEEYEDWy3KvGLGMwYtw4UHVftx9SLuqm9Uu/xzGnXlUdcMPMlRAdnJ0gtvdwzqCvwjdKoICvEfPA1Pq8mUGuCS+FRhzL9TYjPWTPlEHK5rMUea4pbmjybOhDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h/RB5GLRBaxb7AwqZ0ClkqSPoOszLByDgCdii6zxvn4=;
 b=QCwgwm7xtuZgdquVNNb2fn5reTorbKRk1jK0YY5K0T65nNmk9KFGYQ230SHTwoYqgBO8ZGLwgMDyzg7pZOPyLc4ZmyGe2gF52gl3+De8X207N+W14Yo37Y8aK9K0hfhP6K8T5KM2FH8PBnn9do0JmQbOWPWMEq9jJFer/TaCC37RHcyOjp/zBPP2IK/IAP4fHegM1oOLQnoRqah68XVCE2Gen/JvwWUjYxDuFzFRjVJIUC5q/u7XLDbEdsxb7n1He6zfD9PnGT+1pNU7XK4ir0p9KEMC+o9sQ+Hq7tmkJSJ4FA/X//Z/2AxoZ+/zEZqICH05icDuEWg4o4sfMOMA3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/RB5GLRBaxb7AwqZ0ClkqSPoOszLByDgCdii6zxvn4=;
 b=isLJPi9YbusA3u0gw8tiM9PZcNXq9gcU0i2eouQvRX8tLh50Sc0rh6wSWxh7tSXLPYHuA6HpgYYmB8EL0UrdRdRMiTKTXZ65cvE7D+A2WLoA++Kwhw/yqciISEfBT/qJHY7JQN2W/gaq4mFjZbCSaL/JlDCKFlqnrH27r/JgucY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM0PR08MB5395.eurprd08.prod.outlook.com (2603:10a6:208:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Fri, 13 Oct
 2023 15:14:21 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5%4]) with mapi id 15.20.6863.040; Fri, 13 Oct 2023
 15:14:21 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
CC: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] any interest in a YP riscv mailing list?
Thread-Topic: [yocto] any interest in a YP riscv mailing list?
Thread-Index: AQHZ/eB9VjVNmpi5Ek2EHpAiavqrXbBH1BQA
Date: Fri, 13 Oct 2023 15:14:21 +0000
Message-ID: <534574C8-5BE1-46D0-B91A-4D89B560DB8A@arm.com>
References: <92d1f96c-5360-f32-7980-44aa2a536736@crashcourse.ca>
In-Reply-To: <92d1f96c-5360-f32-7980-44aa2a536736@crashcourse.ca>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM0PR08MB5395:EE_|DU6PEPF00009523:EE_|DU0PR08MB8138:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f4f486-038a-45bf-0c9f-08dbcbff1947
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 OxrItIIVpd++dejQtStVmmmeV2FXVGTrYYSZfCqkZu7emsVHSuOE0gs7+z7iPb611jqJqVRz4ep0TpT3BWREbvjhDPWREFESCXwgooE1utwlGgSewVCfP6sYHeVYcXcAAYiK3E/Pi/PuXx/tiGdSau4b9ZuGkdEwcApZujPf7g4XhxI8m8+dGFC9H69ds4i4DaEvGf0+1JwbhrqWnOPaPFGzrAVf/XEO0IqqcUOilFRONs18+98bsqus6Q49OyyRlOaX6SXzmjk7AL8zl2Vz1sbUPoQ1wkzNNrzAb90d43ZPDlPklRaljZeK6pgLxwwXmAcgdddR4IpxJLuOQtiIjVHdTjddkuikB/OmFaWi7f5p1Sa4lJS3Gks3JqLuREolZfIDSoou6x42meRz+0gk+CADhZHTKvlX9rcRuWcd7RG4NGgQHcMy1mSTBGHcgnfTQ+EUUe7y7glnP9fNNpxBYk3HbyOkkZXWJebg7Il3C8xBpJSwXkfqbzHi9jsUpcs1612rjYpNTYspJHKTLpETtx3mr/W1zq42hwnhXUe3PxJZj8ixwIqzhZ0JL4qaGePnkPYelJ9W0b/pJHY2KA/HTCSVjScg8aN5jQMIQ9luPFYjtdT9zTKuJi6aCocX4zoGEvRiS586k25muFx2j+k/cIxYwAIBRKMWqMMRbNYjdBxh16Ui80mnSXIa7XwjtX9njlmnA1/ixt//48sQIqMdRLZ2iHMBzMDC+QtxOnYWTRA=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(396003)(346002)(366004)(376002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(2906002)(4744005)(6486002)(66946007)(91956017)(76116006)(38100700002)(8936002)(6916009)(38070700005)(316002)(66476007)(6512007)(66446008)(64756008)(6506007)(122000001)(66556008)(83380400001)(71200400001)(478600001)(53546011)(4326008)(8676002)(26005)(2616005)(33656002)(36756003)(86362001)(41300700001)(5660300002)(110800004)(45980500001)(223123001)(130980200001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6AE436E8F702F6489C1E76E5DA0EE877@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5395
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF00009523.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b7f03739-a9d1-45dd-b596-08dbcbff13bf
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Shs/82iN07GytPYXe+6z8JlliIoUt3kqxZ5P6YIc2qy9J0MKYdwX48KmaqLhc+4CZ0hhaSfpklqb4NPNONT2oUUbqxugSGlcm1VNQqFu29wd3Ml5jCEXwCeMx2F8BEuKNbS31r3f4e+9FD+tL9IJX4/9awlA9HjYIsUBQU26tNgdLNwo8Wh4agE8N0qJRvL6sg6QgppM0QBGT5NH1JgisClQQeVYI0nHj5pj/KTphd3EqRsCMAzztjtcPgnM4XzPVMwp8w7GWPvzr4lkHipBUvkJz+PfhGvBS8+ZW+3P8oBL2iHHa2I8cdeC7lJw/a/7+fiG3uVtJ4vkLqYX7JKXs1MOJ7lYr3FSev28Ws4KGuotEZhJJaw3LaXEyDeIsnJ+5bRGqr4o5mdL+YldPu4uTaxpfdMJUbmgk9+tNa+WC2ErpLxq+uJ/IbgfHDa/+qgbZTtELD9BGxs981GSPN/dRPZdchza61YvkoXfH8bNGsctAH3aGG0Gk5TPP/WkvZZouW6Lo2jt3OZGLBM+/v7Zum+RLElFYk0Pr3AT5r30nRW1Bb342nohIJvkN7RvKLk+0hKx/uV7Cnzaq6oiVJ3jseel+8Bk19hGuPK6jt+M/NTdg6VzWBZNsAJGTfN5QdGpnamFaMl9sjIYPnk6HQapLIMa0OSDsMTaeNv2W2zpkFLrtUWH84BzqvlKYeSQJycXIFCd7UkC0EOmeBuPdyJ0LgCLVjfQd4EwFPupZAQi+7BRZzM+G2Z/NvuQ4yRORQLmEY8Gh5qVgnEw+AxjeRmfM+RNURSE1zYDqkVhTFN8lhJbHc1ymwCeh4TdpmRDj6EE
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(396003)(136003)(376002)(346002)(230922051799003)(186009)(82310400011)(64100799003)(451199024)(1800799009)(46966006)(40470700004)(36840700001)(40460700003)(33656002)(53546011)(6512007)(478600001)(26005)(2616005)(6486002)(6506007)(4744005)(83380400001)(2906002)(70586007)(5660300002)(8936002)(4326008)(6862004)(41300700001)(8676002)(47076005)(70206006)(316002)(356005)(36860700001)(81166007)(82740400003)(86362001)(36756003)(336012)(40480700001)(110800004)(223123001)(130980200001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 15:14:30.4242
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f4f486-038a-45bf-0c9f-08dbcbff1947
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF00009523.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8138
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 15:14:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61338

T24gMTMgT2N0IDIwMjMsIGF0IDE1OjIwLCBSb2JlcnQgUC4gSi4gRGF5IHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxycGpkYXk9Y3Jhc2hjb3Vyc2UuY2FAbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+ICBnaXZlbiB0aGF0IG90aGVyIGFjcmhpdGVjdHVyZXMgaGF2ZSB0aGVpciBv
d24gTUwsIGlzIGl0IHJlYXNvbmFibGUNCj4gdGhhdCByaXNjLXYgaGF2ZSBpdHMgb3duIG1haWxp
bmcgbGlzdD8NCg0KbWV0YS1hcm0sIG1ldGEtaW50ZWwgZXRjIGFyZSBwcmltYXJpbHkgYmVjYXVz
ZSB0aGV5IHRha2UgcGF0Y2hlcyB2aWEgdGhlIG1haWxpbmcgbGlzdC4NCg0KbWV0YS1yaXNjdiAo
aHR0cHM6Ly9naXRodWIuY29tL3Jpc2N2L21ldGEtcmlzY3YpIGRvZXMgcHVsbCByZXF1ZXN0cyBh
bmQgaXNzdWVzIHZpYSBHaXRIdWIuICBJZiB0aGUgeW9jdG9AIGxpc3QgZW5kZWQgdXAgZ2V0dGlu
ZyBzd2FtcGVkIHdpdGggcmlzY3Ytc3BlY2lmaWMgZGlzY3Vzc2lvbiB0aGVuIHRoZXJl4oCZcyBi
ZSBhIGNhc2UgZm9yIGNyZWF0aW5nIGEgbGlzdCwgYnV0IGFyY2hpdGVjdHVyZS1zcGVjaWZpYyBk
aXNjdXNzaW9uIGlzIHJhcmUuDQoNClJvc3M=

