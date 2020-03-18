Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.80])
 by mx.groups.io with SMTP id smtpd.web11.16383.1584542217751847031
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 07:36:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=EHLDSFrc;
 spf=pass (domain: topicproducts.com, ip: 40.107.0.80, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RP3QLb2/NpHGvX8Vm1If3jTBqVSmk97/xAnUvWo765w=;
 b=EHLDSFrc9O8+qSUcdPQS676+JCr1e9bhJzPucPAkX/JpJX3kiUS6cUX42BxeSySOccqAoSR3Iki1wDz2tHBcMkNcyXUPory+h8a+wrBMO0zv0hSRM7sBIl0jT5diwF6dyaLk5QZeESfzz8YogVJzIKLTA+YDKVe34K2SMX0PYcw=
Received: from DB6PR0301CA0038.eurprd03.prod.outlook.com (2603:10a6:4:3e::48)
 by AM6PR04MB4102.eurprd04.prod.outlook.com (2603:10a6:209:47::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Wed, 18 Mar
 2020 14:36:55 +0000
Received: from DB5EUR01FT017.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:3e:cafe::68) by DB6PR0301CA0038.outlook.office365.com
 (2603:10a6:4:3e::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21 via Frontend
 Transport; Wed, 18 Mar 2020 14:36:55 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 DB5EUR01FT017.mail.protection.outlook.com (10.152.4.252) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14 via Frontend Transport; Wed, 18 Mar 2020 14:36:54 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (104.47.18.108) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 18 Mar 2020 14:36:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g07J5ejOnhVPSuBguFdaCOGB9pZhpOBysj5CNZRnY9GFBNSyd9NUuiwPe74C8T2GbcideqYfDczxhwQ533Zq3e4EcfrcMsTGly9FiCMvPleiKf6tZ+XKrcHihSF4wZs6BruWfYQxBawOUc3YKdBfdhHfdtLM4ERsV3yXROUJvxZ17DWbe31/pe7dulDv+R32UV41kaX47yrP5zKhh1wixVJzuy7sSMVsWY3B8wA3hh16FNweapTjiT6iVT8pD3O+I6P57k/A48hv28H0iWXUjTyLw/NFHT/3jnKYxsXSj04450SRaRChU1pJtSnElm2iWlI8UacvWTe/jOuXviZrhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RP3QLb2/NpHGvX8Vm1If3jTBqVSmk97/xAnUvWo765w=;
 b=E870FrCSmPDyk8Dkx2qjcPjYCggzYf0PkQNDk+kIYjUTV8TtQOxVf9kjCadEfUdKu3aR09N4Dot1BwvfZnaZrQL/x+AL8f2z6QzBDymPpriJSnzM/u9Z8a+EjHkITjm5SmlTikiCPtSb73wtYm69rneE+uMxY+TewoCI32kzHSlnEvJfNcnWWNOxHKqjr1CEjwvtoebh+XI2PKQHcDgNJvdo9/fwtUOOvPjpNH/eVVDONFXYMbDgfJ74g6JH2Cl6Phm/PV+tMo1Ujohp/4/1k/k6RrEQflp6QnCBmp7CpOViG1qoGt/4fNSCOAHv4BoQA4Q8FF8aeyHYpHvAdl80uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RP3QLb2/NpHGvX8Vm1If3jTBqVSmk97/xAnUvWo765w=;
 b=xnG9muoSYmHB2Hed0w77Nn6xtvlnCN6ksi9rhF6kY/dOQ1EleZIKHmEXdUCPpa9IVWZhDCkfylmSfGCwE+WSrD1THQTu9c2pgZUZpRqYhs1jbt5w+MCIsz2YFRr6k9jildydgaEwr+qHMwN9Jnu8Rze3ufSP7+T14AtlvGVP7BM=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3785.eurprd04.prod.outlook.com (52.134.71.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Wed, 18 Mar 2020 14:36:51 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2814.025; Wed, 18 Mar 2020
 14:36:51 +0000
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: yocto@lists.yoctoproject.org
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <15FD6B43E957AFDB.13190@lists.yoctoproject.org>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <5bf4cb3f-cb68-7f26-37dc-b027df0c1aad@topic.nl>
Date: Wed, 18 Mar 2020 15:36:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <15FD6B43E957AFDB.13190@lists.yoctoproject.org>
X-ClientProxiedBy: AM4PR07CA0031.eurprd07.prod.outlook.com
 (2603:10a6:205:1::44) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM4PR07CA0031.eurprd07.prod.outlook.com (2603:10a6:205:1::44) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.12 via Frontend Transport; Wed, 18 Mar 2020 14:36:50 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9dde1a85-1061-4c52-85ec-08d7cb49ce3c
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3785:|AM6PR04MB4102:
X-Microsoft-Antispam-PRVS: 
	<AM6PR04MB4102810DA681CF5665F2313396F70@AM6PR04MB4102.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;OLM:4714;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(136003)(376002)(39840400004)(396003)(346002)(366004)(199004)(52116002)(42882007)(66946007)(2906002)(2616005)(956004)(36916002)(26005)(5660300002)(53546011)(16576012)(31686004)(66556008)(6486002)(66476007)(16526019)(6916009)(81156014)(186003)(81166006)(508600001)(36756003)(31696002)(8676002)(8936002)(44832011)(316002)(4744005);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3785;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 yHpJa56jHawjFzsPXElyCPcBmEbbgBfHt5ntMKJJPDHEGe3LXZasYacZQqtki4wlLJy9mdkg4O877Rknq2USCMuM4VbsH2cJdZrRqgqIaG/IuMvTHLXW9CYoaDibbMB1fZ2L766vVULHlSOm9BDfdlvTV+TXVEOJucRxTBWsakBTdoU6dD8A363vZitKtyhCKyJJWI9Pb3fuH/R2s57klSbzn2Fxk5MmFpuGtoCXzsn+PV46ffo/D1P5/CoghT9LXb3wPPusT8VmXaDbftCzjKDFPcQnRaYuWSr3Fs06FpUSBDjboBcGFHXCbrNICIAzjJ6/4ahrugFmwlZp/+CPq1B29dsTDGTfwUseRuHaPUUHqt3MkJV/9S2sd6hBRu/0D8vFBMuTZORrz35bOOpiXzUyu4dCcJu7MaKPrqCWG8hE6d2Fk0B860gFa4pjMQ3e
X-MS-Exchange-AntiSpam-MessageData: CH8LqFb6aITTn/9+JdUEAzTjd3ck5oJ8rzcFu4sQ++AzYdKlKvqNCdUI4SrPw67X1mbhjEWxnAOrrJGUsP67T4w68ev3l60r5v1eHSxUdCeR5O4SvceigVYsqIB+uP43NgapBJoudIgTHdgmMaE5Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3785
X-CodeTwo-MessageID: 7ef15ff6-82c4-4c98-bba2-5bd10c344a44.20200318143652@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT017.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;IPV:;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(396003)(346002)(376002)(136003)(39840400004)(199004)(46966005)(356004)(4744005)(42882007)(336012)(8676002)(82310400001)(246002)(7636002)(31686004)(16526019)(26005)(186003)(47076004)(36916002)(6916009)(2616005)(956004)(2906002)(53546011)(44832011)(316002)(8936002)(5660300002)(36756003)(16576012)(6486002)(70586007)(7596002)(31696002)(70206006)(508600001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM6PR04MB4102;H:westeu13-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu13-emailsignatures-cloud.codetwo.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2c80def5-e513-49e5-c6a4-08d7cb49cbe6
X-Forefront-PRVS: 03468CBA43
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	27MIc03BiJsBH5LB9Q/IYWLrrv1vfSu/ykk6Ex+bibix8Gc390VyfSMeaDdibvs+IOHURZkM2YAxpOosvYH/CLr73k1/Pj6Ib6sn85GbexN3uIcclYazYnBZNDnjaJmyNuuabgGhFS/dLSKuHlt8P6AcPWr7mjL+GkX3dyWB2q6mdw9MfBPUQrTrGTRWuF0HS6eHdjP9Ogj54qOCowfZPfOMw103KoX+yjeRcy8+AQB5dwBKe908i9gepy5yP50b6QCrqYc+Kya3H4v/rm55hLTZXxeeUXoowcF4r5GdegX3Xnv9kj4y/L6PNjTfFt13k7GB+1ssQZrcV2EWDUyeTqgvpwTAkHnyofqFNU9bCE7mS13AW5d1qW+RXgFfmbQhyDrEotI38ch1ACA0b5PHqiP+X5e3n0qkwcSCBB07q5kwLIgJA7i6CE0Cq01a1phBZiRMgi6LlnCyicFMNJCADwWilSE5QL281JSl7asGTotnsmFFnYxBy1qglkN/Pdyz
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 14:36:54.8879
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dde1a85-1061-4c52-85ec-08d7cb49ce3c
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4102
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 18-03-2020 15:09, Mike Looijmans via Lists.Yoctoproject.Org wrote:
> Big ryzen is a good choice.
> 
> My home rig is a Ryzen 1900, with only 8GB RAM. It's way faster at OE 
> yocto builds than the i7 at work that has 32GB RAM installed.


Sorry - wrong number. My rig does not have a 1900, but an "AMD Ryzen 7 
1700".

