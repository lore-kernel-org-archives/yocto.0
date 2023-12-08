Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87C11C4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 16:28:25 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.72])
 by mx.groups.io with SMTP id smtpd.web10.40251.1702052897992573443
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 08:28:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=y9Ph4DG+;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=y9Ph4DG+;
 spf=pass (domain: arm.com, ip: 40.107.104.72, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=doiLTf4xjqMUy2n/O/FPlvGzrh2ebuNC2nYIsGhsaz4/E3v4crwhwfuS6y7cjN7MqMlmUk+RQv06O8dy+1Wp0WfUvZyzU9APiOe5s6cJuENGqPoMit20pWqxrHFILBsYSUy6pIS/f1Ix7zKeNgam7aOtsajYd91DZIbsp0Y5JpzhtLpQj70GbBpP5Gv2/m1zQ1e/8E87Ru1daoP4LVf6oxMDLUMjzSGKC+EMoRoDA+8cTCWCEMTkkAcJx3aPfIwDt2DOGKVUJRv6p/MhpwxE4yiBT+joRkpaTYQfFVqazeCMdamQYFlsBntOFHIocPGPO0fFTqRC3Lemcd1cBDlt5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S1lvuFe3Tp4kRZECJFllM/aeZsK7++0nO21zs39Fd8o=;
 b=HpGVXN3oPYS4GYn6naez7xej0TyUSRQzeRLS+hsJuKJw0J6/6CVCsvFaIFqRwxmgQ185YzRwzsEtAL7uWwqkBBJIirWlpcCF04GY+ogzGkMKiBAarNJk+BhpjjiAu9WE+N0OvyoApP6cHXMSNGWCNr+Jrq/HZ9TxRVO8PcFo6Sf2c9sWmUeWNAJlkFIQ6ANfecAZgI7crj3MxKNUvkRbZcjF2YNklIha3+9xC2+3Lh/AN0tCLVZuLxLg6DZg0Z6h5Hk/DFio6KiG3WuJMtyC6bffyuNekhHS8vJKoxK+zQCSfmTzV+EWc+SD9tg4fLecenRfyOXtJLSWQFSY1YGk5A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S1lvuFe3Tp4kRZECJFllM/aeZsK7++0nO21zs39Fd8o=;
 b=y9Ph4DG+1TYyIhxi0BPn4EopYSPv21AUWmOH/EpA/mwT6194mLTbLh75v1TK8JNgbRdoAMVXu06RMIFjQauda3zkYMFozM7AHVYyjLkgcSpeh3IV1Qdn5aI9yTmpaNpl/1pRfTyDAv/1e+q3sEQDk/Po0pjS6FtbkxmlTIZXoU4=
Received: from DU2PR04CA0286.eurprd04.prod.outlook.com (2603:10a6:10:28c::21)
 by DU0PR08MB7519.eurprd08.prod.outlook.com (2603:10a6:10:321::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 16:28:13 +0000
Received: from DU6PEPF0000A7DE.eurprd02.prod.outlook.com
 (2603:10a6:10:28c:cafe::86) by DU2PR04CA0286.outlook.office365.com
 (2603:10a6:10:28c::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25 via Frontend
 Transport; Fri, 8 Dec 2023 16:28:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000A7DE.mail.protection.outlook.com (10.167.8.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.20 via Frontend Transport; Fri, 8 Dec 2023 16:28:13 +0000
Received: ("Tessian outbound 7c4ecdadb9e7:v228"); Fri, 08 Dec 2023 16:28:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ba5500838ad53216
X-CR-MTA-TID: 64aa7808
Received: from c1787cdaac4a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A6D8728F-023A-4B94-AB4B-4B155A18F459.1;
	Fri, 08 Dec 2023 16:28:06 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c1787cdaac4a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 08 Dec 2023 16:28:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IwDq/KGEDH6Ea/zWsAoGeqB7Iaj490qB5keuQxDCUO5agXf75Xr3tHv1bVcAwnjJrOOwW3agIjQJcv545WL+JSJX59u76MY+v0h7kGHxZ3WExORqCYPlNUaz4CQlD7NuSaT9GpSr1iw7bNxPFLDH8KyxFK4Sz+PC37D/HTTxjRIut7Eqza0wPXsl5PwAjr3QXelEsg4x1q+7Nf0+pIs9Veo6p6fAdFvM8rkQ8kAWCRU8zgjYogGedE6dAguQUvqnUtQmb62wsbBt2fc7Cy+bW2pGVh0gn4O1ekH66aUejh/AmHwSmvk/CUlElZxY3U3bLRJRhOZqAjl0bkepKMqcqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S1lvuFe3Tp4kRZECJFllM/aeZsK7++0nO21zs39Fd8o=;
 b=baeh7fI7v/NWaRZYZYLLx4vYL2DhGGguE5fyGSfHaQwYZV8nDoN3UtEAMUbSZyoUiyqD5QF6BSPNZWQfLSRXlDOflgGJdvrRUGrjtTrDcRwZLX1BfoodMopGaHHpDqljg9WNayMQtNeGF2qAihH/9dPc/w74EQ6qcFQmjPFzOmloIfYlneWk0IynDUYboSLrNS3L26kQN/g1mndMS2vjc5V4/FFZ3adHweWOS7yhryqqr9r4ayRvmsOeZnQ+qGxChcuJK3EaPMUTgKtAls2VD3Uf+CX66KcAAb6/rI0pET4yyc2Y3af4KHYyu3tjxReKCF5AAT2c73sKJL81rwKqkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S1lvuFe3Tp4kRZECJFllM/aeZsK7++0nO21zs39Fd8o=;
 b=y9Ph4DG+1TYyIhxi0BPn4EopYSPv21AUWmOH/EpA/mwT6194mLTbLh75v1TK8JNgbRdoAMVXu06RMIFjQauda3zkYMFozM7AHVYyjLkgcSpeh3IV1Qdn5aI9yTmpaNpl/1pRfTyDAv/1e+q3sEQDk/Po0pjS6FtbkxmlTIZXoU4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8466.eurprd08.prod.outlook.com (2603:10a6:20b:568::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Fri, 8 Dec
 2023 16:28:04 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 16:28:04 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mattwood2000@gmail.com" <mattwood2000@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] initramfs creation
Thread-Topic: [yocto] initramfs creation
Thread-Index: AQHaKI3o4sGZw42kw0aZzfBIOIUew7CdqOAAgADBzACAASjhAIAAAlQA
Date: Fri, 8 Dec 2023 16:28:04 +0000
Message-ID: <B7F1417C-FF82-4E22-A57D-18FF100E555A@arm.com>
References: 
 <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
 <35CEFCFD-4EFF-4EEE-A151-132DBF65E58D@arm.com>
 <CAMKF1spaN_MxCUui0JdAqV2qbuawuyEdkp0NEUoUuudmttnYAQ@mail.gmail.com>
 <CADjezmZndd5oPJFu=50YyfQ5ECBcxYE2e4XOPzqexa_hs3d2ug@mail.gmail.com>
In-Reply-To: 
 <CADjezmZndd5oPJFu=50YyfQ5ECBcxYE2e4XOPzqexa_hs3d2ug@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8466:EE_|DU6PEPF0000A7DE:EE_|DU0PR08MB7519:EE_
X-MS-Office365-Filtering-Correlation-Id: 352ae739-54cc-42ad-9b7c-08dbf80aac92
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 ge4CBsi3bUr/z6xcfcnF5C68XzOdqCpN2okztcvKJW/Cy3V3N4y7Y3vi6x4IU9E2OHk/oDmM/62vzRLVLO3K3l/ZjZEFQ0Ib6UMGlktCA40zgOjDHAvkyFzoi3I+L/hFuNX+SFjpcvQhajDDLaNOG+0YpFTOGtMze+zZ1d/upGSuvT/vqtY3zZiyFTNLuYklfNXZigssrY0LClrksKh21PxcisLhpjTGfVWtrdqiBdwP4pUjne63hR+01E/fPmpTicRtFWShQc3zXcx7eoUXgewjW4+BYFfm2+RX57fDY4mU1Xu5AW5XmaJQSQjrDwtuw1ZrFurcHYBVT5sP4Hc4+Y0s5s714gOnObAETuCxZMAsWmYGgklUW8MYdO6M1JohTBemo2KZNgb3FS5TvHKudlPUo83BJ/JcrpY9BV4OVl2ByqkeVIFZNyat+9Bk4T8a2opznbgttZBcQv3oFUUcCwCW6l3fAWA3LTkRc0s5EjISDVI21p68AA6guMcuezChSBKHFfeAWw7QzNQadqU9cj45AO9O98vz1MdPw5ReXtvjlr6tLLdS1v/ekJMYQAv0kdtD33Nka2VxItR38l19gjtEsWikbs6jklAQpkVZ3Mq1w7nYWmtqejq4+IXBrNGfe0A49SVOqYU1a7kPKMFSiA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(33656002)(2906002)(5660300002)(122000001)(558084003)(8936002)(86362001)(4326008)(8676002)(36756003)(316002)(54906003)(6916009)(76116006)(66946007)(64756008)(66556008)(66446008)(91956017)(66476007)(41300700001)(38070700009)(38100700002)(6486002)(478600001)(71200400001)(53546011)(6506007)(26005)(2616005)(6512007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD152AD89833244F8CD211ACAC9C7DC4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8466
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7DE.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	28119e73-f705-4d44-bfe5-08dbf80aa79e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+xrbUfKhtLd4IgOhCpjAaf1hJWsLzqKArqrlIO+2DUYMFQEfpzr3quZrC1wU8RLNGX1DuEsEGnlJE3WbwPZpuPtQVi3OsSe76vg2N2ge8U7Wx2YNiXOxLjcefZCr+ZzxwTPNOcyLoC0yhHjb4WZ/ZAGsnQWSWLte1ViqdkPmW3sLmAjnJpNvydeFUXAA6M+LrHItkmXDmAMKD65QCdWyktc2+bK0Yp9tpp4LDpbSSXbGTjup6ig3S8Ap9QhfkaZb/56s5FOq157WKUwMmcXF8KN7CEnbvYt2Xj7NYx1yPg3kT8IhXehWcZePvC0DtooYvvVGWxp8lzWH468wHsytbD7HZyZ/710bM5AijJtxQJ9xVN/+je+ypTPlEGrA6/6UhT1++LkNKvfTfaemHg7V6Ij1lSToS49pzFN+ZrbSyVVaLjfBoHcJA3wBWvfOuUUazGrrsG87uQuul8OAfm0iv7AHVt89b2GmcSPxXIzHBkQSm9sHQM3zcNyiziYINxK19/QFsNN5x0j++m8i9Svlh4bUwKcwoxtpd80MSPvfg9fYhrAsPVVV83TivwDU9N5Fo/tBmTmEFOCBe4yioPOXlbjpHKs+BtG8LhqchoLSSTrajIn8YycccvFvM/79gWyd05bwCQ9bmZoHS7J6GSVCrTayLEv5jN0LeobUKh93t6jNoMHEehj/OCGz/TdSHvqsV1/3k6L8ZDqkipDJQp1HME+AWqsUFjJFh/N9aJcRs7k=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(39860400002)(346002)(376002)(396003)(230922051799003)(1800799012)(64100799003)(82310400011)(186009)(451199024)(40470700004)(36840700001)(46966006)(336012)(81166007)(82740400003)(8936002)(6862004)(8676002)(40480700001)(6512007)(558084003)(41300700001)(33656002)(40460700003)(26005)(86362001)(47076005)(2616005)(36860700001)(356005)(6506007)(53546011)(478600001)(6486002)(70206006)(70586007)(2906002)(316002)(54906003)(4326008)(36756003)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 16:28:13.1707
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 352ae739-54cc-42ad-9b7c-08dbf80aac92
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7DE.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7519
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 16:28:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61844

T24gOCBEZWMgMjAyMywgYXQgMTY6MTksIG1hdHR3b29kMjAwMEBnbWFpbC5jb20gd3JvdGU6DQo+
IA0KPiBUaGFua3MgYWxsIGZvciB0aGUgc3VnZ2VzdGlvbnMuDQo+IA0KPiBJdCBpcyBub3QgYW4g
aXNzdWUgd2l0aCBrZXJuZWwgbW9kdWxlcyBhcyBJIGhhdmUgdGhlbSBpbiAvbGliL21vZHVsZXMv
Li4uDQoNCkluIHRoZSBpbml0cmFtZnM/IE9yIHRoZSByb290ZnM/ICBJZiB0aGV54oCZcmUgaW4g
dGhlIHJvb3RmcyB0aGVuIHRoZSByb290ZnMgaXNu4oCZdCBtb3VudGVkIHlldOKApg0KDQpSb3Nz

