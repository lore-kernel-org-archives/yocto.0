Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B119BC47DDB
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 17:32:36 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.74])
 by mx.groups.io with SMTP id smtpd.web10.114.1706290350964043049
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 09:32:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=oJE/VyuI;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=oJE/VyuI;
 spf=pass (domain: arm.com, ip: 40.107.105.74, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Qu2KTtdvOtTp4K9ekt0iWMsi84JI50hYxhbtb1ZB6ubDekHZixR7/V/N6Rkr7WHAOG/k4U+F0j2HeWphhbpSF50xCyxU/M+up5CQK/eihX/gAKxL/NiH9l4FQC7rf/c03POsRx7yGInENnnf1x7ZaVmdD18+fAjHf/rJwCDDqfkoDauL8xbpc+ui+9K+dwgsH2LlUP3I1dTpz+fBZH/6dmM2Mp7Mcp03zqUnqRBjQz78PFCASkm4TFKHPBksohueZrM551LmdPHsF2qHoD/nHAZ6PD4GgcdVVTeU1qBpWsTkhMN6HMVFpQF6JDtRxWXkud/dJH9Vf1178e4E7OLvBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0cP36ALvJBDkLj6bqULN0zyO3LIdSpBktyaSdChGLj0=;
 b=kvVfO0M0px7FOl2SG2oknLN8NsVVMJMr5ILdnTB8FAs5t/VmmJGDevZcPzViz60wY9GU2QYr9BCg5CTSWtZjLj+ICh/yEcREBvSIRojI8uryPdZPj7zZtn+Y8fzHToW7VcXkFMVKUaqE1rWdVTg0e96gotA21vxcHWhXv0sFLO0sbuIwSuxtQFCNpyid3DtcjSUhsUEGAHjr5uawhc+Uig26GGJrdxKvQcIdkZzBbHU8w6XOaSbi59Gy1KB3wjRUd2xoWK+v2xG6WD2SFt4Mv0at0gLm4JbA+3O06xZj60WIrysOWVC/qcf9cWle58GmKUU2WloXQ3H3oUAQHMtwOA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0cP36ALvJBDkLj6bqULN0zyO3LIdSpBktyaSdChGLj0=;
 b=oJE/VyuI0K33leju3eYz7FopNGobNiCVGgKL/sz36nKSyxwq4VnNdkzDr+N5gIwqK+scKL2/SKP69sNtQw4xKazt0zIx1MdoWEDixxy8+XK5Lnj+mu+fBd1dyZjn6wHFzFAQLZSiqM1BhBW8JTBdsccufvDMNBeOxJFUoEXr8ec=
Received: from DUZPR01CA0089.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::12) by AS2PR08MB9500.eurprd08.prod.outlook.com
 (2603:10a6:20b:60c::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.27; Fri, 26 Jan
 2024 17:32:28 +0000
Received: from DB1PEPF000509FC.eurprd03.prod.outlook.com
 (2603:10a6:10:46a:cafe::ad) by DUZPR01CA0089.outlook.office365.com
 (2603:10a6:10:46a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.38 via Frontend
 Transport; Fri, 26 Jan 2024 17:32:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509FC.mail.protection.outlook.com (10.167.242.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.16 via Frontend Transport; Fri, 26 Jan 2024 17:32:27 +0000
Received: ("Tessian outbound 1076c872ecc6:v228"); Fri, 26 Jan 2024 17:32:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e92158d5b749819a
X-CR-MTA-TID: 64aa7808
Received: from d0e256bdda72.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 8A895BDB-0897-4E55-83A7-49573EC21193.1;
	Fri, 26 Jan 2024 17:32:21 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d0e256bdda72.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 26 Jan 2024 17:32:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQCXde0yFihyeIyIo4Y3FuKXjg1kRqjRUcKU1zxKbK7lIr5MTUfaGQF84X7p6donst3HWhYjhNPiC3bKlTQGuRR7pcr0T0itY+9lc5N2ocASP2aM02yCg5mspb+X59X8zcPv9MJn2TcwxkVBLso8k1ZpQKMlP+IeR10zfGku5mGT/6pvcedj5jiXvIYiUXzxCD/0aQ0fXgyuRNdVxQvYMCfI6OLiYmaKb4Sj92x0WbPi4y9N8Vhhefk2e+mn30bMwzmmlR1B36lKjnHk2CIxBEfG/Cv+nt3Y3upM+5dZp/+XbVCg1VwLwE1Iw5/KsWtnwuio5J72DChR8LC3H78Y3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0cP36ALvJBDkLj6bqULN0zyO3LIdSpBktyaSdChGLj0=;
 b=Q3lyLhqKeFr2dnJOjUywsrIk0rxkgIZACjH2W9ANkySJru7iMyJ2EbajltA2JeoHbnA2HD/b48RcbQAYbXVGRGpfrPVeJMJnD+7dQSl6x7nVzoYiQupQS/9+IpjgduXU12gUTtUiI9zRdrtwORVBT8GmCHpvOHrgj8cA5aLu8m8GB7oxQYMQs3bBmlBQzonFDE16F31IuJ/3pS5TwV6F3htFsTiU+tsXab9zGBXM6R4L57qARD9+yEdptIAhxNrF/p7N/mL5qkhXatHjQSaaa4C+DqVdBjIZrLJd9hjulFle3P4kpWk8eVTf+A6+H2lGdBRN5OPw59iKksFaAnVoRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0cP36ALvJBDkLj6bqULN0zyO3LIdSpBktyaSdChGLj0=;
 b=oJE/VyuI0K33leju3eYz7FopNGobNiCVGgKL/sz36nKSyxwq4VnNdkzDr+N5gIwqK+scKL2/SKP69sNtQw4xKazt0zIx1MdoWEDixxy8+XK5Lnj+mu+fBd1dyZjn6wHFzFAQLZSiqM1BhBW8JTBdsccufvDMNBeOxJFUoEXr8ec=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB7697.eurprd08.prod.outlook.com (2603:10a6:10:390::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.27; Fri, 26 Jan
 2024 17:32:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7228.026; Fri, 26 Jan 2024
 17:32:18 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"daniele.lugli@gmail.com" <daniele.lugli@gmail.com>
Subject: Re: [yocto] etherlab
Thread-Topic: [yocto] etherlab
Thread-Index: 
 AQHaSZIq9dWGDz4VWEW/dwgaNylT+rDfHIaAgAD8nYCAAL6LAIAAPZ4AgAIY5YCAAoU+AIAAwg6AgALBOQCAABl1gIAAQzoAgADSDQCAABR2AIAB6TcAgAAE6AA=
Date: Fri, 26 Jan 2024 17:32:18 +0000
Message-ID: <8A285CC7-DF8A-4E2D-91A2-F975A5D8B944@arm.com>
References: <27265.1706184216103968266@lists.yoctoproject.org>
 <15235.1706289274206381565@lists.yoctoproject.org>
In-Reply-To: <15235.1706289274206381565@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB7697:EE_|DB1PEPF000509FC:EE_|AS2PR08MB9500:EE_
X-MS-Office365-Filtering-Correlation-Id: a805fd32-e232-41e0-438d-08dc1e94c467
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 zml12Ikx4x2VKBoWkTuvhdFHmN2Izjv+LYwWlzsAvPMiKfUloCErB6rXjqZdVDEOex1xtegXIupq1OTGTE+LuBAX4pmqzB2X62glaxAa73L8GXC2ukFKn15rvntDUTHZUli5Jde7FzJJ9JoWtcJuaoA4LrdmQka97mWqKqt4TlT1RrOVu3HP3LXDTsmnO/oci7G6Lq9/ZM7tMhB2GyTi9whbsdvx4JgdrxamTQ4QyMZZGgSl83dy9Cg6VsJtXsNitzRaHaVyQPE81IEFOLP4P87aNlzOUNdSJBo9J+K8jXDQUdu11FAozD4JNOVz8J8WxrTlkexTjiC0c4LHvcHYlhznSHtjcjDbL4kIKn0s1F1xEl4jKCP7aMb2BjcO+fampftcljoJINyaQO4U+ON92G1MMZ05SEuxVm/LFRc9hjjw2gAK9Qh4YyqaMC2RSTGH92zK6csSIL3C84NHXFI7eTq/T9/8V+ryY4Vpccduy6/ebYltZzT0X0jN4nR37+hIN+3B1qlEyiGDzWvCiHOrMWMQa1dEQj9Clv9TZzHStNmH9e6GgJPFmQzfetBf+JXgVOiARkSZJZM4niyBJtZ4gk2EGufCHx3ROsn0iBknVoqaMFNEqywz5uvedk8p7FW4ePsjEP2qiNwCtrkDoCxsTw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(41300700001)(26005)(6506007)(2616005)(71200400001)(53546011)(6512007)(8936002)(8676002)(5660300002)(6486002)(316002)(478600001)(64756008)(66446008)(66476007)(66556008)(76116006)(91956017)(66946007)(86362001)(110136005)(122000001)(38100700002)(38070700009)(4744005)(33656002)(2906002)(36756003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4B1DFF7EDA255C43899081C6C67F6672@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7697
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509FC.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bdc5ac35-a86f-4530-998e-08dc1e94bf03
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	s2x7x35RPtwcKR7H8eZ56Dn47bK3nlsjs965cJpFcHFTZeKeAyz7QPLpcTHQqld4WoMpBTTlQzcR28VuSHtBu5jwm1S0vMaSEWee1x7z+fVR/UOg0Swidg5emQTcoCmInIiSxZFCCpc8HcnDiSMSqC1RkyhMRySQa7VTjySkDXBUlSB2vqpS1DfhB2L8A8RwqIBKG1UXlR5DQ64NzAtJFMENWDJxdd7Kkr2QNLFrpcf3d5IDblrvsFIbZ3da9CX4xnrXWhtPEm657nEW5xyXXrOZyj+1nIwujr3mgwrAlhAMswFy6uh+ClmkWn+7KniOMNMCFWm+2+K0LGNye0Qb0Ll74p1h7yjIxIOstkSmnLY3LWZL8GyFmgufGwXH6UUpHFL306QArUzxZR3J5mNqcUskGD+9J0pTfeFqXQtl2hiYq+K7cL8hAovCVMivbc71szt0QhBH5a+ZS9/rl+ihWFl92LgSGQ2/RnVGT3c7EWia4E73DfcnnjYHVBpD8muIGLINadlGwCxJAVhF/IQx4/xw/O0YLZ8+z/kQQj80cwanZJUgreqEb9IppKvbtN6n4EOU7+M3n4RYvnR6/CmYjhaO1ycsiMiOjG7/SnTwYll/otQHwnHQzHOApdLZqrQ5CPgjYS7fIpAJpmkGSF20bfLfQ743pdcQPUNiylrhxlci8uedjlfEHBGCwIK2wlVhMEba/A1NPiEsd4bvGGTRQc4L4xryVW3xs3anrXfITeltIOaJbrLUVQ7YQNKGD+5l
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(376002)(346002)(136003)(396003)(230922051799003)(64100799003)(82310400011)(186009)(451199024)(1800799012)(40470700004)(36840700001)(46966006)(33656002)(4744005)(2906002)(86362001)(41300700001)(36756003)(6486002)(53546011)(6506007)(26005)(6512007)(70206006)(70586007)(2616005)(356005)(316002)(110136005)(478600001)(82740400003)(81166007)(40480700001)(40460700003)(47076005)(336012)(36860700001)(8936002)(8676002)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 17:32:27.8862
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a805fd32-e232-41e0-438d-08dc1e94c467
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509FC.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9500
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 17:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62305

On 26 Jan 2024, at 17:14, Daniele Lugli via lists.yoctoproject.org <daniele=
.lugli=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> On Thu, Jan 25, 2024 at 01:03 PM, Daniele Lugli wrote:
> I would like to have autotools available but to decide myself how to use =
them. Not possible?

Absolutely possible, the class source shows that it provides default do_con=
figure/do_compile/do_install implementations.

Ross


