Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.49])
 by mx.groups.io with SMTP id smtpd.web09.9816.1618920666596579256
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 05:11:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=qG8Wi7Na;
 spf=pass (domain: topicproducts.com, ip: 40.107.7.49, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=faVgH7ZfaIhcjoIVqSyTyn2pgDmYA8yy8EIETb+IJyw=;
 b=qG8Wi7NadzlOqi4cpUmONnu+uHI60wkT9rxSuX+XoTYFgU8KiuTZUVCMsJsBenyYaeovnOB6LC87PHBrm4K8AU/7maVU8amGo0i8apHkauLjqY8n3JSocxI+o8CqDlNFR92xv5YJc0sQccuPLgotpXC1/56RS4kfZy2qWefHrMI=
Received: from AM6PR01CA0062.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::39) by DB7PR04MB5979.eurprd04.prod.outlook.com
 (2603:10a6:10:8f::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Tue, 20 Apr
 2021 12:11:00 +0000
Received: from VE1EUR01FT029.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:20b:e0:cafe::bc) by AM6PR01CA0062.outlook.office365.com
 (2603:10a6:20b:e0::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend
 Transport; Tue, 20 Apr 2021 12:11:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT029.mail.protection.outlook.com (10.152.2.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Tue, 20 Apr 2021 12:11:00 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.168) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 20 Apr 2021 12:10:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4Uv/td/2EGFrvJVpyRx1RHBKGpkrc7jpcpVADNSxd5Aj1kiBd0JheQPDwwaRyK55pbO5/C/7FO9tX21M7X90x6DsWa1HwQo6A85+iUKrPqutSIY7LGdJ0caalJaB6PIBzdnujBP9bidjSv9TUutXtFbbgfi8im019IdDfmQoRzY2yD4IKArS/gG3ZvKwLiaXL+vm377gLj7FeP3TuvS9BsLjtJTmISLsTtu0UUJkQCEBxC5fhS3bLtmcx0Baj1ypzH/60iwslq7yajyurU488OHOo6r2d1264ZAhkv/+ly72edg0GVI+MueZaRH3Ch2wRSbsE0kde1m62qtJEYVmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TgaoaV09x/mr3qhflBhTpXvUPdzjHXZRwZR8j3TZTVA=;
 b=cv2z1Yshqm2e0fUha90d/Rvfr8q5g86kCAJx8YQEt0Ht5o5EZBPzkF5rozGK7GENC2bL3EF8MEkwPyqT62eTyweZheFqSLboYJCvsTxm0kWli77QLXVibNHaQ6b7Om2jv3Yb7CAg3vqOTHGzmz6w6QHUhCyMccqlBwCcVkWp1A0H4xe2vkszDVJ/vIuX1R4nOMdaYeCDCs/B0Sqz9lrIJMGQIFxI+CMBsLSMU+koG9lU57u6jZ6AO88AXCUC/eQZ4rHRPGjF8hzEDdSIGiFL6JIejb44vDWfdhzWp7obStkUTzmOFvS1yKlNSzMDoaVjOaw036/jC1Xsx+Tmk3rWOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DBBPR04MB8009.eurprd04.prod.outlook.com (2603:10a6:10:1ef::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Tue, 20 Apr
 2021 12:10:56 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988%7]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 12:10:56 +0000
Subject: Re: [yocto] what to include in a "hardware bringup image"?
To: yocto@lists.yoctoproject.org
References: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.b16a2b41-8320-4992-a137-c71d40132956@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.acfdb89b-aaac-46d1-a354-b1df0204d82d@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <a33d6570-3db0-12f1-99e4-a71ceed72549@topic.nl>
Date: Tue, 20 Apr 2021 14:10:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
X-Originating-IP: [83.128.90.119]
X-ClientProxiedBy: AM0PR02CA0085.eurprd02.prod.outlook.com
 (2603:10a6:208:154::26) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR02CA0085.eurprd02.prod.outlook.com (2603:10a6:208:154::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Tue, 20 Apr 2021 12:10:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 239def44-3deb-4c0d-1f41-08d903f55c89
X-MS-TrafficTypeDiagnostic: DBBPR04MB8009:|DB7PR04MB5979:
X-Microsoft-Antispam-PRVS: 
	<DB7PR04MB59797495AEAD819BC00DBDD896489@DB7PR04MB5979.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 ogPLFButGCAYXKkST6YTlNVpzOuqrEU7/3fSAHQKVx4Nvf01V+Cel2Aj192Kvh5pHNBz/7B0MDsdzT6yKmJgk0vAm/VGP+vRIqXZ9j0mZTJ4RUehXhgwo+P0qhNciOkkdemhZNyRILT/SAjs0IGzPLvnT2lAMp/1mEOKz49r6+2MYqVsVToJnOsnwYnKuC2hWEh3mwM01FXVyPT4gSQeSUbii3EztxT3leGQFPsSA4On8Qz1Fq7fffIf4w2G9Ol0sGFSA1SZ7Z52QhUZPIkuLq1zIlvI0QAB1FyHAfJ8/5sU/ISniCaxMaTlWWS8PY+qWCiIlMG6IccLbBW6h0DW84vjd+2B3FVRdu6MOrLA6eVy7MNG3CkCh3HNnYKyjmUFXvSndxA2vCkutDhk2TRO8MhZDYr9TzoStyBW32hIjWPbabKFtdSaIHpmQIVxLuaqauFCCZpQ11CnS1tWZg8SRMSFIohIf/EnkPS/xfojVJDyBO5UAUZ+2zqfoZJSnMOHB5wMOcUraBXTmWJq28T43jQbTG1z8uQQFf1+V/lksymhVHahVsOqS8kr1JPmkMcYziBD7WjbugcAgp+aMovIEx3XpUUWTttaigAOKn2Ndc6Ehy5gB7iMA//1fnp0yhD16UhIxescYuYIYcnc19ZLnqx1RudjWNCsRj0eZzINKWl3j/qPCte4eWB42jIY2m41y6dYY8U4GzxPp+p8aM0F4A2cm0sQh8ehLa+YGXbGJEpz4v2MeZyHtoF2iE6YJFbqlF+Y5lUqOaCQwfsaXTve/IKMQDWVpjmYynOHnWuZsyE=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(136003)(376002)(346002)(39830400003)(66946007)(66556008)(2616005)(83170400001)(66476007)(6916009)(31696002)(42882007)(956004)(16526019)(186003)(26005)(16576012)(44832011)(53546011)(52116002)(31686004)(5660300002)(6486002)(36916002)(316002)(8936002)(966005)(38100700002)(38350700002)(8676002)(36756003)(478600001)(2906002)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?Windows-1252?Q?3T5AJlk2QzVhonEu8ctwC4yykk7TEBrG4Txty34f6h46Hj71UbYNnsvL?=
 =?Windows-1252?Q?QwmpgJCg7acvUWmmUXFc2pStQPvEV+XVXt+ux+XMSUz8eqqKqcnSl9gG?=
 =?Windows-1252?Q?BaworISs2KYD6dLvqnYSHtIEeJJPgtpEx185XcNu1SbGQblK86bXYuL5?=
 =?Windows-1252?Q?wFoRAkRca/G+DbPIs4Nv5z4LjBBv7NbshPmc/TvyNP8nLA4RZ+dFPGG7?=
 =?Windows-1252?Q?xGUF0eGkdaRMMidRG4covLZ31qgenn4XiX/PthTbVRLw5owRKVDejbTQ?=
 =?Windows-1252?Q?QrKzm/iRw4IwaizxIuhZrU4ODeHHmmZG6+QTIaFDKTlYtO1iACXE3qu9?=
 =?Windows-1252?Q?ooPfbzlaBh/BzD896zj1yoInI2Uwj/Oku3SMfBLTuiMcyTP7FpEHe3g/?=
 =?Windows-1252?Q?39NrqHjI/H14C19OKBEAe+kMnT1TZeeDioD89MGgzFBQSA9b876rfWvx?=
 =?Windows-1252?Q?pgcDnagpMEFvCYRP9OVSmI+rFEWGI9ywNF6rLHkWO6y4V++YsjdHxRm+?=
 =?Windows-1252?Q?+7sgJ2h3POpJB8ZPpq1gcBprbwLeo8UFyOZG0mg6odGwxHkCfocADAAC?=
 =?Windows-1252?Q?I5ctO79JuefaY41XJgQpndIouDJ8WOX3VOO4QmAmh9MzZ/oyq1Y5t+8v?=
 =?Windows-1252?Q?vxXcJEtJRNU2keza7WzrCQquILGUkE4SyIxTWTT+0QlxhjOsBri9gKmW?=
 =?Windows-1252?Q?7+/ali8Zp86ah8xj16U94OLsmRnN4IJugBzgUCC/e1evLLcMjRBwyosl?=
 =?Windows-1252?Q?MHIvmX5WlVakQHnBWx9g5r5t4heeOM2g511lslXyNB+V026+MSlzHJOq?=
 =?Windows-1252?Q?HykaRKR0Dbs9rcbPQLLkGvlbVdhJ8FIia7gv1TFVBEJHbKsG6W8gbo5J?=
 =?Windows-1252?Q?j0dCBQ0QIXNWP5L7ToH/79xn0Pqo/P6Q0fRSlEkrHaALWHRskz4RmqAh?=
 =?Windows-1252?Q?FOAKjKboO0giZtQblFkk6/NxybaJ8wc1xfk1WAsdmIk7XFnLNwCLT9r1?=
 =?Windows-1252?Q?uA5o+DWemO9ncWHFAnXJ+ZkLzJK9yroN7pdxIqTDmSo0C6q5Rg5d1VjO?=
 =?Windows-1252?Q?BEl3bqP6Wpp7Ivhin+MW7v0ePdic0con/N+dQZ4yhqeKn6rEKoNtnpS5?=
 =?Windows-1252?Q?Vx9XrDg9hMLDrG9rLmMfbVXz4GxeTfdXzNss0DrEifjeh5O3UCo+Y+Hg?=
 =?Windows-1252?Q?wg4peXYIjM1nHjdvSFZcKyGXaSF6MO5WG1PXY7UKV5Zm3/xHg6UAHEgu?=
 =?Windows-1252?Q?EdTMy+Grf2pn3NY5osjpZ7q2ba1LLEsh/rdEZAx7vH+TInzampSZTsGJ?=
 =?Windows-1252?Q?LGEIP9rMKI9/U0p/eRItlZ429Dxp751G+UKOdqEQhKNJBIZICQeg/M4q?=
 =?Windows-1252?Q?VBTNC577kfOQNxgVnlmzsig00rOlOAn+Nrdv9nK9OY/p8s5t6OMDsOOY?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB8009
X-CodeTwo-MessageID: a2a8454a-3c65-4591-88e7-7185d3471d42.20210420121059@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT029.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0a2e8578-f190-43e9-64c3-08d903f559d5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JNCTUFpbhUGQqB9nsbvTIYoA73T3lEE8bN4V3wcvSpZx+8ESIlKKsGSy+bJZtgjWFFmHn5qduxAs3iJgdm+78ZYbDCnvYKNBhAMyucWG9kPuWvIdheg6BTQ1tAfanaHrtelKn5hOVq5u8sh+TBoY7cpaAF1PTo3fZnLuN++f5E97pYyNe6jUVeWXYQx5qYhxz4jC2T0wI1D+i9nZ1wZMdw/UHhKcK7lCIDtrqpLUy4Xb2Sf4MYrQgPQt/zoCSYmQU08uMeNQ4y5FbmKfCVpHGxfERc/cv2+HVixfvtZlhRs0givDw58wP22gKwPj4qaShXYUo+cLWjIb5kVPAewJ0rhwKZhSivLTperyFWwW7NiQo14c+f2gmHT3lyTrPNyGrbOMLi8KEzf3104xhIpDgATmvD5I+5nsfgPpINkt5Nnh2sM66kkLlMcly28MtLCSUa4b/qSeJJP4e3nD4vQ4x18K3kKUyHXtWQTMs/fLXR9PXjRHm/hC3M+TllHiU/RMS1GZNAbibF3Pd/Pjg41u+gpoZn0o24TmXnP/Kj1BrN4xBsP9m6QZ5YMgcTBxL2MfUlA4PggOV/y5aIYfUcW9mFnpvuYfH4lw4L/ZmjuK9EbyNaXyvZAEJ4h501RK4rV28jLazruUnzc6ns/9UkyfLR4vohsg5QHbl9bSUpe136In5GYWhA9A1+waJqnD2GVI8WIb3dPPbznA88QO2eg0HV1m6W0nZ9PpGJphuZVR6kAsNOlOGocni9RG3VZ3MsVGidlV54SzwGhTz0cgEckSyA==
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(39830400003)(376002)(136003)(346002)(396003)(36840700001)(46966006)(8936002)(7596003)(316002)(2906002)(7636003)(15974865002)(44832011)(16576012)(83170400001)(83380400001)(53546011)(6916009)(966005)(26005)(31686004)(8676002)(70586007)(36860700001)(478600001)(6486002)(70206006)(356005)(47076005)(82310400003)(336012)(16526019)(36916002)(5660300002)(42882007)(186003)(36756003)(31696002)(2616005)(956004)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 12:11:00.3097
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 239def44-3deb-4c0d-1f41-08d903f55c89
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT029.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5979
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I tend to use a reasonably standard image, usually the one that will=20
evolve into the product, and once the network (usb, ethernet or wifi) is=
=20
up, use "opkg install" to grab whatever else I need from my build=20
machine on demand.




Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topicproducts.com
W: www.topic.nl

Please consider the environment before printing this e-mail
On 15-04-2021 10:24, Robert P. J. Day via lists.yoctoproject.org wrote:
>    for a current project (and subsequent projects), i want to define a
> hardware bringup image; that is, a really basic image chock-full of
> low-level utilities for debugging initial board bringup. this means
> precious little unnecessary userspace crud that has no value in that
> context. (at the moment, the target is aarch64 but, naturally, the
> ideal image would be maximally applicable no matter the target.)
>
>    i'm thinking of recipes that allow probing/configuration of memory
> and busses and that sort of thing. off the top of my head:
>
>    * pciutils
>    * usbutils
>    * libgpiod
>    * phytool (or other MDIO probe/debug tools)
>    * devmem2
>    * spidev-test/spitools
>    * i2c-tools
>
> the list can go on and on, and i just ran across this which i had
> never seen before:
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-supp=
ort/c-periphery/c-periphery_2.3.1.bb?h=3Dmaster
>
>    suggestions? i suspect numerous folks on this list have already done
> something like this.
>
> rday
>
>=20
>

--=20
Mike Looijmans

