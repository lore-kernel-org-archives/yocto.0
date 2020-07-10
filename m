Received: from APC01-HK2-obe.outbound.protection.outlook.com (APC01-HK2-obe.outbound.protection.outlook.com [40.107.130.121])
 by mx.groups.io with SMTP id smtpd.web10.11789.1594391088545148259
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2020 07:24:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=NBRRwbCs;
 spf=pass (domain: hcl.com, ip: 40.107.130.121, mailfrom: b-sathishkumar@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rVov7CnLvXSM0gLuWKoU7e0bPPazbQslwGutv21gmao=;
 b=NBRRwbCsRSG4/wt1Tf63q3L8w8V74NXP7QoO0QC8tFCWtea9KEUM2UCl69XnstdwZSR9cI3Y3SoTWe0E94NqluPAa9Br8gyGK/hcNepllmCMO1nunWK567v5A81QPWG3g3XLdIUx3r6z3MCwcd886cKjZd/YJwaqpaUHKTv97bA=
Received: from PS1P15301CA0018.APCP153.PROD.OUTLOOK.COM (2603:1096:803:2::28)
 by SG2PR04MB3351.apcprd04.prod.outlook.com (2603:1096:4:74::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20; Fri, 10 Jul 2020 14:24:45 +0000
Received: from PU1APC01FT056.eop-APC01.prod.protection.outlook.com
 (2603:1096:803:2:cafe::36) by PS1P15301CA0018.outlook.office365.com
 (2603:1096:803:2::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.4 via Frontend
 Transport; Fri, 10 Jul 2020 14:24:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 192.8.195.57)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.57; helo=APC01-PU1-obe.outbound.protection.outlook.com;
Received: from APC01-PU1-obe.outbound.protection.outlook.com (192.8.195.57) by
 PU1APC01FT056.mail.protection.outlook.com (10.152.253.98) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.21 via Frontend Transport; Fri, 10 Jul 2020 14:24:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DhyjIRHQYGIAtgF9hn1+Bwg2xhDnByFY+sUZQccQ5zh8MShTgdBUrSCn8Y7j6YfiosXzDKpVDwfJGtwemgGp6oTBhMwho5jnF6y6LvEqWWGhjxTVeSZMNSI6GIxuQwDlD9m1pr27+QzVPg9s/WlbyzZ7YBYWH4NyG1mYTTX3ZdLVrrBe4dQLeQg6kbwPZ+1ZcN6vn3HoET6j9x0fs1W7x05R18EPfA3XFfWX61KF95HHd+L40dzDTVo+CjKbFaf40C0ViUCimzzz5BPpEaSfNjPjTpzl4folomXFuzgex2RTk7HJwCFAc5MCB7jXKAOe7I8x1puHEl02xZOGxw2viA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rVov7CnLvXSM0gLuWKoU7e0bPPazbQslwGutv21gmao=;
 b=irm+y4ouXLtHpYWMfhF7vArM0ZE//uK/fCng7wgExTmh3QK1my487HvabuDRtVYpeD7opRyDeQ3tF+TyvXBcyEODX8UJYpsGDeRvibHhmVP2CEhjpSvGTgxF7+13xjzGkoV7tbC03tWb5N6TwxmOO2Rt9N7WTNfHt7V0vIuaXNTvStYK2ht/vbiCg8I9DuuHsYXN8BQ5nDRGRyXtqZCK9kNDJr0Td35FeQzY/8n2o5pnB4cYTjMG1qRXrMIDM4Rja/GdGVjlHEuAfld5DCfMndTx1MNBz0CIexY7SAJwzLB+72SkDtqVQnn3eRchQUrJur0/w2KagwaQbWDQU9MZ3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rVov7CnLvXSM0gLuWKoU7e0bPPazbQslwGutv21gmao=;
 b=NBRRwbCsRSG4/wt1Tf63q3L8w8V74NXP7QoO0QC8tFCWtea9KEUM2UCl69XnstdwZSR9cI3Y3SoTWe0E94NqluPAa9Br8gyGK/hcNepllmCMO1nunWK567v5A81QPWG3g3XLdIUx3r6z3MCwcd886cKjZd/YJwaqpaUHKTv97bA=
Received: from HK0PR04MB2259.apcprd04.prod.outlook.com (2603:1096:203:42::14)
 by HK0PR04MB2371.apcprd04.prod.outlook.com (2603:1096:203:50::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.21; Fri, 10 Jul
 2020 14:24:40 +0000
Received: from HK0PR04MB2259.apcprd04.prod.outlook.com
 ([fe80::d077:63e7:da25:d6d]) by HK0PR04MB2259.apcprd04.prod.outlook.com
 ([fe80::d077:63e7:da25:d6d%4]) with mapi id 15.20.3153.032; Fri, 10 Jul 2020
 14:24:40 +0000
From: "B.Sathish Kumar" <b-sathishkumar@hcl.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to add Percona Server for MySQL to poky 2.7.1
Thread-Topic: How to add Percona Server for MySQL to poky 2.7.1
Thread-Index: AdZWxX2rhgPWzc78T7ePDE3BOYGDhw==
Date: Fri, 10 Jul 2020 14:24:39 +0000
Message-ID: 
 <HK0PR04MB2259508A89688442B32BE8F581650@HK0PR04MB2259.apcprd04.prod.outlook.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: 
 eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL2hjbCIsImlkIjoiY2VhMWQzYzQtODcwMi00OTU4LThkNzAtNWFhMjNhMTE4ZmUxIiwicHJvcHMiOlt7Im4iOiJIQ0xDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoibnVsbCJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxOC40LjE4NDMuMTIzIiwiVHJ1c3RlZExhYmVsSGFzaCI6IitCenRPcmtMRUswbExOYmFKQk5QV2xQZ2RcL0cxMFhNRTdQTnhLa3E5ZkR1VWhUaUYxS2VLTitXTXJDQ2g3SUNGIn0=
x-hclclassification: null
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=hcl.com;
x-originating-ip: [117.217.191.190]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: faed8f27-be68-4ff8-a1e1-08d824dcfe27
x-ms-traffictypediagnostic: HK0PR04MB2371:|SG2PR04MB3351:
X-Microsoft-Antispam-PRVS: 
	<SG2PR04MB3351E2387FAAEBBF7D96BFD181650@SG2PR04MB3351.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 SLZzcxMehUiiQ1qVPaHJ+HOOD6TAT6Vb3BbsgLxTR3yjLl2iXaP0BIOvZEduVom371nwdQNe7/3FRW1g5CshKDc6/9MFRsceKN4h21FsmN4xude6qa+pXu8n1kM7XY5+4wAcd3S12/iQ2jb06/s4go/O2qHcnmEuDtMj3aMQ3Rx5RxaURmzwt5WaIZmfFZZ1cMUSLlVhXwIuY9xsCB8iVFAKD8yRYLT7DAkhK7b1wdllMV3+65wehoU5iMHq2oj4EsAZbNMYdkTPYTO94NxiBi6hr+Hl1vlEPnEkVgDEvTGT5mhYxLaza0LZFyMIrxHNBL23O++0lBmQdEkjRwdODBZ+C7kZc90C1EV7Z1xkBimhtf2Hk8uVVWSJ4EhJi1Q6sx3RnOAaEoqGO/qz0pOKXg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2259.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(478600001)(26005)(186003)(5660300002)(52536014)(966005)(66946007)(76116006)(66476007)(6916009)(33656002)(9686003)(64756008)(66446008)(66556008)(55016002)(8676002)(2906002)(6506007)(7696005)(316002)(71200400001)(83380400001)(86362001)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 kCTPpMFNRNRTZgYQe2S+urCsc5q4s1F4YQJDneZz7Wne3ZKKd1cFPHKNO/JJ4jnmP0wY1nkRaQuuv5UEcojByG4jj/07248SNVOJ29teEF/aVHiqo6YITRBLWAMyQ8BDsfQGI1tMMIBXYbQZgIy9IqmakGaToK2COOaeZrk1BVw4TekKFprcM6MKt35LLxGMeQHRx0dzzN6bPkNSYxWxvEuD4HqbORqmErpxzxEQlIoIIv3YfdQIF8uu6/mVOTuNAJTnilPsyWSeE4JpymNMzOZV2puNP3DwDW+sePE1m9IxoL5BWXxwRBzES37O17xU3eRTIuywyRTa5Eu4bRHbXHvL3TXV2cTBx8nnXil5T5svXz+5ehILgmuj4O0rgXSNYc0HMp9+ffHIIEDcenuqZOm9iTZ+alourSyOXiVDGA4xeEOUhbV+8d29vwTNrqjJOqSq64LhkbJQau/EjFdAF7UTBCEh+CuLc//ItVpoV7t8YUqm8BwNwuI2qlR7+GF4
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2371
X-DLP: MSGProcess
Return-Path: b-sathishkumar@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 PU1APC01FT056.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.57;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-PU1-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(46966005)(966005)(2906002)(26005)(8936002)(70206006)(70586007)(8676002)(6506007)(86362001)(5660300002)(336012)(36906005)(52536014)(316002)(7696005)(33656002)(356005)(81166007)(82310400002)(83380400001)(478600001)(47076004)(82740400003)(9686003)(186003)(6916009)(55016002);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a3621f4a-7bc9-463b-a803-08d824dcfb5a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IAUSfbvHhU9jixZm+D2PHJZGc2Jw37ig1u4IbYeIVz8b4W5arIlpu/vBCeQZvAbW49AVVwxwy9pBHmfScjDlRsNOEEOyVOvYERsIy3wR8j0YD57TmgJf2ij6UnIljnrggV+q3HcdxK9IDix1YgXrCvh/HfzfMU6ve9CSfPf8oquCvYDzft1nrrXW3OGKZWHmBkT4IEv/3na7bBYErvHHWbedrZ6/CPUJix3cS8JHpOxUpyGpQS9LKFa5PVHLcaPdJRl9VD2Zx9RvTPyGle+2ysjA310lWEjrT75nrHwqlxfonSSAHeEbxMIMdyhCWlDM+TPuIvD8nZVt3tDLCOVoAManJxRuPh5Bft4lmHD7USy5WO8+iybOibXo4Vw4n9tHWubGWUljqNmwqVOY1Rj7kfi8NQ6jT39IcxlcjAu8fWEpASiXQzf4nS08PlGMDGeXLJ0nZCf3S7XI6DhTViux/C86SH4z5HD9oEgBQ0jDoLQ=
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2020 14:24:43.8055
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: faed8f27-be68-4ff8-a1e1-08d824dcfe27
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.57];Helo=[APC01-PU1-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	PU1APC01FT056.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB3351
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Does anyone have tried adding Percona Server for MySQL to poky 2.7.1 ?
URL reference - https://www.percona.com/doc/percona-server/8.0/installation=
.html

Any suggestion to (easily) include this package with its dependencies ?

Thanks.
::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents (with or without referred errors) sha=
ll therefore not attach any liability on the originator or HCL or its affil=
iates. Views or opinions, if any, presented in this email are solely those =
of the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, distribution and / or publication of this message witho=
ut the prior written consent of authorized representative of HCL is strictl=
y prohibited. If you have received this email in error please delete it and=
 notify the sender immediately. Before opening any email and/or attachments=
, please check them for viruses and other defects.
________________________________
