Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6063DC27C65
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 19:26:14 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.51])
 by mx.groups.io with SMTP id smtpd.web10.2968.1718133970399431416
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jun 2024 12:26:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fp8926zh;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fp8926zh;
 spf=pass (domain: arm.com, ip: 40.107.20.51, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=POtXXrfH7VJOUzQh88SMR90RYnY47FlzuAB3aTD6kFR53EqVGRh7c3uzPVk81dlzXseMpxrR1D96+lVcfO3nKjOFwOXOU+r9n7SWj5ieQ5qqsVSdSqniQ7ObwgDlmiomXWF56fhL9adG+MjjkbcFhiB8b0WApKdYPeEkP1Q9sBuGshFj/kXqMnsA/IKgOkdVCBJcM4GXjJPUQKWzsiEe8AxB6cY+R8myq/RFtTy/kBiPC/CYv2Ui+V5/6t5se0ICNpWIbX+vQxolgyBL6rMddfXojwi1u0yKE6XRALzoKFXKDo2sDb6EZyX3nI3vVivMRMqkjIVKyWNBIEoNRNir/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DsGfyZBPm8AOjX8oYwequg2o4+rPjWpGaeLLGWCVfw=;
 b=PhVU+Smk/TSF1qx/nszDKa1oODshLhuerwMgg+6aTS+FuygVuxqwlh/lxZuaPxvH2N9dKzFFmoriwky280n+3XjLvVaEBe/jGQbRge8bZuLioQX8oUQ4P2RuM2ryqzcqLklvq0ueKvXGS1GSpHxBc6gIVc8OcVKVkxriMveIIJRf58SwKo2/h/ievhf2A09TkA2+6V7R2da+dLVaWVq5ygfaMlbWtjhGSTElv0LRWoc1h+eadI3YF9AYwvRFS7dWUmq1UpQZc/m0kDbm9eA3DAw04jSWuSPEybmxWi1esF+uAJYNduGAunqdgnj8YU3cvQMlNceVKCXVC0nnkMtstQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5DsGfyZBPm8AOjX8oYwequg2o4+rPjWpGaeLLGWCVfw=;
 b=fp8926zhqSYtTC8oOE/gmkGqw3337QKiPwrEvMq1RQ58yuSuFqDVXA9uak9iaOrSUJBDqXL7tRPVayIm8bh4MyZv+qUcZwhB0/dd/3tgvzvduGuiZQ6HpCr0xOesjgYop54xrl0XQU9+tnsaJyI0gZHt8Nbopvn0rh2swMVzagE=
Received: from DUZPR01CA0054.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::10) by AS8PR08MB8945.eurprd08.prod.outlook.com
 (2603:10a6:20b:5b5::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 19:26:02 +0000
Received: from DB1PEPF000509F8.eurprd02.prod.outlook.com
 (2603:10a6:10:469:cafe::6b) by DUZPR01CA0054.outlook.office365.com
 (2603:10a6:10:469::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7656.27 via Frontend
 Transport; Tue, 11 Jun 2024 19:26:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509F8.mail.protection.outlook.com (10.167.242.154) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Tue, 11 Jun 2024 19:26:05 +0000
Received: ("Tessian outbound 949243bb8c19:v332"); Tue, 11 Jun 2024 19:26:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 717cd739d52d64ed
X-CR-MTA-TID: 64aa7808
Received: from 4f0627c5504e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id CBCA8204-C4F5-405D-9330-70C31070704C.1;
	Tue, 11 Jun 2024 19:25:57 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4f0627c5504e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 11 Jun 2024 19:25:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eW7a0yXnBhhdD0/xWx6JLTKNKE7uAgE0JFXv5tpEi7GXoEYHjs264hWN624hRp8A1zG4gVAPXYStImH/ffgPru4BYqlK3fkns/JTFf8ka6+4CXnbAIN0l+gHyI4Wkes+j1oyOAjxwoe0SPQAC+zSmodRAQF1ZeEUPXOAFZvPuI41Mgnf5FKZoGQ0LsZ6ez4tn24/EprCE2qeqEV9v+hW1uPRghBsy1Fb2BbOQcWUgwiO8TFHBPcMSmmQuNBt6vmonLqah//I3Q3OvUg7m9YBFOAOTJupekFCEgiHHFtTtALCYV3hmU/IhhDT+o6WXOv3tpOLJjK5rg6jv8zqHdGEwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DsGfyZBPm8AOjX8oYwequg2o4+rPjWpGaeLLGWCVfw=;
 b=bOdgWlvxnmLt7eeyoHK567HN9JnjCfOwDCGvTJze36qav6Fg2XWsNkQ3LKK9eerTVeY1QAzX3K060Gfd/9sq9R2dAqXBvOeO0kSfTp6zMKpgdQe5RDbPWJY+GEd3lBuBslIwvDLtI0N2gPG4+f9hZ9aSwlF8OQbylKI7hft1P/ALdm+dCV1dbAPKoVou45nudTF35UGbXDONH/tLHXCdm3BFiDYvOAPBzKYzgSfz50w1lfzkQXCkfuMXAdt+u6atqEjL+Gq+BZjnJjvwEgnmxbtSP/cluNJtmuoktdsI2T1QpI1TMPcUbVR6Kw47xjmMMcTL44bi4EA7OI/6eElirw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5DsGfyZBPm8AOjX8oYwequg2o4+rPjWpGaeLLGWCVfw=;
 b=fp8926zhqSYtTC8oOE/gmkGqw3337QKiPwrEvMq1RQ58yuSuFqDVXA9uak9iaOrSUJBDqXL7tRPVayIm8bh4MyZv+qUcZwhB0/dd/3tgvzvduGuiZQ6HpCr0xOesjgYop54xrl0XQU9+tnsaJyI0gZHt8Nbopvn0rh2swMVzagE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB10676.eurprd08.prod.outlook.com (2603:10a6:10:530::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Tue, 11 Jun
 2024 19:25:50 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 19:25:50 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"zoran.stojsavljevic@gmail.com" <zoran.stojsavljevic@gmail.com>
Subject: Re: [yocto] Yocto Project Status 11 June 2024 (WW24)
Thread-Topic: [yocto] Yocto Project Status 11 June 2024 (WW24)
Thread-Index: AQHavA8uc232STa4QkKB8j9JcVBMzrHCw7IAgAAufgA=
Date: Tue, 11 Jun 2024 19:25:50 +0000
Message-ID: <44C58C72-BC47-450D-886D-21C97CB75A23@arm.com>
References: 
 <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
 <CAGAf8LyRq4rUgZoSLmWQmU-U+WC0myJkM7_vYxN1v6AZ0rXHjw@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LyRq4rUgZoSLmWQmU-U+WC0myJkM7_vYxN1v6AZ0rXHjw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB10676:EE_|DB1PEPF000509F8:EE_|AS8PR08MB8945:EE_
X-MS-Office365-Filtering-Correlation-Id: 89682710-f756-4381-8f42-08dc8a4c5672
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230032|376006|366008|1800799016|38070700010;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?ER1jiBImKxKvhPNwEywSY/BNOzdQaztE6ra6BsgjqYzD7NLIso6cUobaGxpt?=
 =?us-ascii?Q?3JmUHOQFJvjTYDzD4O/j6MF4RDSYaTVonBvKZP/UsYpYg5TTj/rVADfKGS5A?=
 =?us-ascii?Q?8OzdmggHwyHk/MWRrsjCQ34Q5QnIq+UrAp0AVnO/S+JAoKyf7I8wHAbcCnC1?=
 =?us-ascii?Q?LM6oSLQeBuXEVrcrFRu4KQhkpTMwzRtoaIXAY+JHUubo9gHOz+rwxNCbjBtE?=
 =?us-ascii?Q?09MyjDPxI+FKq6ywiZYtMpSlr0wRHL7Onu26CjbaxBt+8HeoN3mQ8t5cZbvk?=
 =?us-ascii?Q?3UQczuVoj+k/jPKbZDawD0Dlo89njW6VOFfwhKDB+Ua7JLY+QbbLpMYvsnhR?=
 =?us-ascii?Q?zb99g1M+98xvVGfcWSSF80I+n+pODQEFToSfU89w2pTQz9s2Sm14HRphxbwL?=
 =?us-ascii?Q?r63/FpErZHolqDmorKpF7nVtbdt09/MbYfHgAODGzPaDwxVtugT+pJg8olQa?=
 =?us-ascii?Q?ig1sfKr4/kEb6/cBohSwl2tBzTB7Ios6j07DVWRAK3bxD8Hpi9QKSrTqorPL?=
 =?us-ascii?Q?JwMA1ndw+Sw7OjNkzJ92D23Ki7YNPqZ9xDPujDvGrjc9h6LvYuCh/rmJv6IA?=
 =?us-ascii?Q?LATy6To8cYzPfYyHh7mzSj/xvfvYQFjdrwqezCbuYDJVHjaJiAbnHVOaYdDw?=
 =?us-ascii?Q?Y8CnSXJOzC6gvZCAoPYmusxjd9Zg5n+UGzpAULeha2IG4XKqtMThYCb5QkGS?=
 =?us-ascii?Q?v7adPRrRrx+xAMbnohQeTkuUWIqYKvUP+Al4xh1qzJcfUfSwmcJ181ffQzhr?=
 =?us-ascii?Q?6is0/qU30c08veTyhFWeylNanIZ5S4tFWtsYhE9mqqjR+REsxYLBzvjQDUDW?=
 =?us-ascii?Q?UGcO4SjWCf6XTm13+AkmwckvE6/ezyzI2d9Jhxj1f8uOPA1vm+4SDtPLjx9s?=
 =?us-ascii?Q?vvBau6CH1Q24wGN1OOhVxZXghXhNSexDrC0F3Q91O8ie677Y1ehZMHhBvazo?=
 =?us-ascii?Q?GAv7wB1v6ty+HZTtsaVSCse0XqE4WWyOPjKbinkwO2qOU0L+ZQ7ucGs6qORv?=
 =?us-ascii?Q?40Whigm+necUSrVCd5u+6ds9SQtINetKjX5EwOmOG4jrvADj1kq0HYBj+r8l?=
 =?us-ascii?Q?CWpjk40zuW3yWqk4ZXanpvlXEvBm4MQmAtnVKPKo6IQ39ANw6gg7VwT7wSCo?=
 =?us-ascii?Q?+ZM9ATSBjQiRpkWCiKd+4YDTQLGQfmpWvH66x2+/ar+tny35nhOLn3Esy5qW?=
 =?us-ascii?Q?CN7sci8pFn6ggVCrfC4CoGybDTdCNlAUgSQdY+cJz5y92LdY1KKz5hovUzBA?=
 =?us-ascii?Q?h0EFo7Xfcv8fNDuEhiHTJ1SlrOcELLIYC/itY8Km65gQFbIgTUs3RGjLa9Xy?=
 =?us-ascii?Q?U3To5ZYpvD9QZTuIfK+xK8/+exA4QStdxNLn8fqU9qMC0tT9lQJMHCdoZo2S?=
 =?us-ascii?Q?4Qdleeo=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(376006)(366008)(1800799016)(38070700010);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <58D0C4DA5481964F8AE6D9E082CC3615@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10676
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509F8.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	abfafc6f-5d51-4ec2-b36f-08dc8a4c4d88
X-Microsoft-Antispam: 
	BCL:0;ARA:13230032|35042699014|82310400018|36860700005|376006|1800799016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?45He/OhT0/LB80zQl+Qc+/ejTHBtnOoDBwSZGhwv3J3zUioVVhAPbGPHQzZU?=
 =?us-ascii?Q?Fq492McRsMaUwTL8ZbVEPm6sKLsWJJsWgqAGIZ2sNPP2JR1inlngZxZqEbo2?=
 =?us-ascii?Q?wtPOC2IgPfN36zTpcdfpN+jYVSLt7jSNiAYIvNWXAgDCzR2FNUBKC+9nH37A?=
 =?us-ascii?Q?tN40yzfK2K0Rb5fA5QDPu6Cv5n2jZW8qZb5d/ijHhnj5+XSZV+AqFbbIImjK?=
 =?us-ascii?Q?u5uUSfRnmJYaYXczKWT4vvDUNPdpL/gcUTRYUfXXYMaGv/+aQJvSzhiWfVa4?=
 =?us-ascii?Q?X+8lVwh7P8shn9GYaPACKSmaL05wwaf+wTJxfCijrfUbx4QU4LHsUbINXOSk?=
 =?us-ascii?Q?wY2rceqK4exJAReWj978EI53VJ1/ctocd+GcUQJRIo1wR9KzYtvNGhYPGXqA?=
 =?us-ascii?Q?6MBZMAGt9noEL0cKz8BiJ/i0bGudGuKCyv4FXy2axY8s0keIj7GnZScQSfqM?=
 =?us-ascii?Q?WXzS2ofuIZDfH6IKYlUqlm2iwBx24NLoLC1BBKfRhbPjPesLuG0E6CO3SlD6?=
 =?us-ascii?Q?vjOXI6UoAbmrWK6kCTbttSySJ7MbqWgTFFiy3ErFHy+JkSZNE9PfNMfNE94F?=
 =?us-ascii?Q?PwCmGZ+J/TPL23KTqy/8jJrtHFRAVnchfdDaOD0THSna+n1Jn0mRz6M6hGWT?=
 =?us-ascii?Q?vQdSAy2Noo3n1BJrq0lzZtACuZGMmmd4Ae/SPlzSPSsNLS70ASnftgS5LUIm?=
 =?us-ascii?Q?1RJXPZB20kowT236zw57IkGMy5R1qdq1y6vZaX9JAMErvw+rREr8djUjVw1W?=
 =?us-ascii?Q?NA9owO7ztX/spPQAdXpoHfcG3JrfFxof/mmpEA0mqBymMIef0Sl3zguRsNkH?=
 =?us-ascii?Q?zoa2fZb/Lu1KB3k7IA3VYn9vvJEwprtQoC9gcPqe9QI2o/NZnNOfLAdGT5uR?=
 =?us-ascii?Q?S9sLIpn2f2TJ4iIjTSSwfimrZaylKSWN7iKJ5wGTzJUFp4VB2JoI6nyh4ps6?=
 =?us-ascii?Q?JwiDUFpjAGPqrtkVpsPMF6Rz2TmCB9uznedI6t2L6p53l2nmIF0SW/xCQ9kj?=
 =?us-ascii?Q?04WcHyJ5GYRi27kNKR/BuBHERJMIt2WMBEKUhgpHDLrr5WguWlRppB1FhQ/k?=
 =?us-ascii?Q?tFyqfTRBh+qOFM4ym8OY5EgmpGM2wAzI7Z6IxS+WNN6kMvIo6ycc4upYti6O?=
 =?us-ascii?Q?s1fBloHtaGSK6PmLWleBJ6kTAE50iTBy1gv93rBb+K+CliilZxR1rxFKzabB?=
 =?us-ascii?Q?PyjfnTHs6g33M8WWlk0tKKTn9YQPtcfu+5HhPP89k+/kHlsZPSD5gNJysQo4?=
 =?us-ascii?Q?znBp8ujZ4RwoiTdpfpRJKE/8t4nZfrfXdHDkg3baEfbcdlfMEszmzXlzExYL?=
 =?us-ascii?Q?rnUbj5MBN/h83l5wbLiT0yMcnlEVXel8PUoEis1QXlT2jhAT1AZVvlS8RIr7?=
 =?us-ascii?Q?CygcgBHwjv05HyDR8V5zFMYxmAN4PnYFH5RMcpQv81gtTUl2Ag=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230032)(35042699014)(82310400018)(36860700005)(376006)(1800799016);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 19:26:05.1951
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 89682710-f756-4381-8f42-08dc8a4c5672
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509F8.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8945
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 19:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63323

On 11 Jun 2024, at 17:39, Zoran via lists.yoctoproject.org <zoran.stojsavlj=
evic=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Hello Stephen,
>=20
> If you allow me... Few questions, mainly to clarify things. For laics lik=
e me.
>=20
>> We have a fix for the final Fedora 40 issue, thanks Victor.
>=20
> This is this problem with the GCC 14.1 compiler, correct?
>=20
> So, as my understanding is, the YP 5.0.2 Build Date 2024-06-24 will
> include GCC 14.1 package?
>=20
> Or maybe YP 5.0.2 Release Date 2024-07-05 will introduce it?
>=20
> It seems to me that the difference between these dates is a testing
> time, for the YOCTO testers and for the YOCTO community to finalize YP
> 5.0.2?
>=20
> So, seems logically to me that the YP 5.0.2 Build Date 2024-06-24
> introduces the GCC 14.1 package?

The fixes are to work _with_ GCC 14.1, not to _add_ GCC 14.1 to scarthgap. =
 The next scarthgap release will - hopefully - work on Fedora 40.

Ross=

