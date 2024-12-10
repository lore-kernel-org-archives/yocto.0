Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FE5E77183
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 11:17:28 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.52])
 by mx.groups.io with SMTP id smtpd.web11.8041.1733829440127240672
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2024 03:17:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=kK8uGYBK;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=kK8uGYBK;
 spf=pass (domain: arm.com, ip: 40.107.20.52, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=R9LnfB4MLLdrJjOy4YWWHjW294JCMVnDJa+jRP+sOInhujPch+kEtt99LhpqR1DVsw6KHNa/fmLZGEsv7+ZqAXEkELmbaoK+AcieCc6s/tY1ApMoCBl2asMaxPFnuiQ+/w9oWqsZQpYIIJwHoqsFUigCkuC6Msvy/B0a5yHJ8Rj2Do2O6HsrmD/nSjLmbUWKN6I/IYKhPQShpMup1hW5cE6opxRxYuqNrBaQDVsnGNaUm7FyDw6DEqtafHiH6iqiX5nO3NP3F9Zkw41JmbmaAKdZ4OjfK1XWudDGQM8xZWuVQFqH0hOHm/geCsTpgVzTO8aJQImqhxf/wWwl+qnz2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tqnt/+aK9ng+7N+l2wuqdBXUd1w2LxQ4tSF9BydPiTQ=;
 b=PzyTlO/81DZGyZd+gQkVppJNIXdkh8YnGw4YYF56tQ9veN1G9vWaF/5bj6EYMSje5saMsxzOVNiITefTZViNNZtH4jiquyu7KHxd6lFlmRxzrNCTb4VPnHT+wcXhdjo64uFNox9PGgZkoOxAvcxYIB4jRLmjtr9FWi7EradeZqxMIxz2E47fUHcx/i0Otl6Wec+USuAmWF/zW/+speRnqpVVO6mDazDK25Kf3UInFJh9vbWaNEUkXdW5YEAF9kCRlCLYwPMH1fQShTEz2a2HwdSqdb5Gxcl8Q7y1jjgkKWu2ydBAXIUnzNXUsyadyzLHZc1D+w/0z4xt7WDlnC8BfQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tqnt/+aK9ng+7N+l2wuqdBXUd1w2LxQ4tSF9BydPiTQ=;
 b=kK8uGYBKUq3SsAAsQMjbKyET1FnipHrcT4jJUbNhF35XUpNzSW08UYqIYvP2IjQiJECTQ7/PDIKKNdlZbY07I3xmqH+1+TkY5F8fPLhJJxbqekMBDx/WD8n3yDlmgDi7QZc3P8Y+oqjN8FhFyCii/usNK6ONRfOSCxSa9+jMDoM=
Received: from AS9PR06CA0327.eurprd06.prod.outlook.com (2603:10a6:20b:45b::22)
 by VI1PR08MB10198.eurprd08.prod.outlook.com (2603:10a6:800:1be::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Tue, 10 Dec
 2024 11:17:12 +0000
Received: from AMS0EPF000001B3.eurprd05.prod.outlook.com
 (2603:10a6:20b:45b:cafe::57) by AS9PR06CA0327.outlook.office365.com
 (2603:10a6:20b:45b::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8230.18 via Frontend Transport; Tue,
 10 Dec 2024 11:17:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001B3.mail.protection.outlook.com (10.167.16.167) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8230.7
 via Frontend Transport; Tue, 10 Dec 2024 11:17:10 +0000
Received: ("Tessian outbound b1586bb311c4:v524"); Tue, 10 Dec 2024 11:17:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f6edd964da1f75d4
X-TessianGatewayMetadata: Wavshf2aNilUCwARtH6+u6EMYIPeajSPE31NjLCSXmJAWrWr4Ckx7KCFzoDhE0LoN5GzMHgjuG3Lcma5aK3mKxipGLBpkqLHWahciwJegwTtWFTU3XAgMqM899KxiTRP8FkNroZ82r5ejxYP5rbm53BNonSfyME6b0addn8ZgZI=
X-CR-MTA-TID: 64aa7808
Received: from L84c7831c3f1e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id EB34EC25-CCA0-47AB-A661-1015FB2C496B.1;
	Tue, 10 Dec 2024 11:17:04 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L84c7831c3f1e.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 10 Dec 2024 11:17:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w9ty0xXZNBtwsDVD2PD5/pPWOt1rYEaQ6BK42sJrXHXMiqba/iZ1e1k7vT2puutw9zwMJU6WZ5VVvV8sZXeS6TULfIP0D0s6926EhvVmQBsKcw6f1ZI+ayKm4By0hKx26yr/qAA64kI0w6oVNrwds/ABf5p1FLCfzsO/rP7o1ed8mo7CK6kIMIrFhe9frdF9gTB5B4sd6LXDE+83IzBthDu1287dlP0nnIDCrGjFSm3In2ww9WM14gPNoZO+D7JRfO6PdrWhrsMiIrKmiWPJLN5RqxwcVOuTgIDjvZf/3EldAkGZlPz3uzCl+013WaJpPEQe8L4BYZVJjQzsnmXZhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tqnt/+aK9ng+7N+l2wuqdBXUd1w2LxQ4tSF9BydPiTQ=;
 b=VpjGnFNapdTcWPcvpHYDFwdGRSmLNtIAvkRLDVY9iEr3NxzPEnqe+qUWDvS2JMLrgYRQCqVb+pUkbYeaV8f3e4VgnTQRvmIlRrikWsSGnReutMkMVSZyWY5IrfiyrNp11Ay8xAWzSKeEH8RFksawux4BHwqwRxEmIPk8vuB4Pl7CIr+P7i1rI6aHq1rnXLnsXC+/0UF6w5AbIh2aWqgEAr/Nsfekfey8EVcR8oxG3ULod5sU8VS7h1pKrFbECaHtoKYB9SXviv/mSEKemgGQm46A5l1R6p9PP25EABNijq7vIuvjFuOmRSbmmOfytlpBh0XpX/6YM20f9Am1zblKNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tqnt/+aK9ng+7N+l2wuqdBXUd1w2LxQ4tSF9BydPiTQ=;
 b=kK8uGYBKUq3SsAAsQMjbKyET1FnipHrcT4jJUbNhF35XUpNzSW08UYqIYvP2IjQiJECTQ7/PDIKKNdlZbY07I3xmqH+1+TkY5F8fPLhJJxbqekMBDx/WD8n3yDlmgDi7QZc3P8Y+oqjN8FhFyCii/usNK6ONRfOSCxSa9+jMDoM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBAPR08MB5559.eurprd08.prod.outlook.com (2603:10a6:10:1a4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.20; Tue, 10 Dec
 2024 11:17:02 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8230.016; Tue, 10 Dec 2024
 11:17:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"joel.winarske@gmail.com" <joel.winarske@gmail.com>
Subject: Re: [yocto] [scarthgap] meson.current_source_dir()
Thread-Topic: [yocto] [scarthgap] meson.current_source_dir()
Thread-Index: AQHbSp3At8zc1PJhYUi1MzANY8V/f7LfVMsA
Date: Tue, 10 Dec 2024 11:17:02 +0000
Message-ID: <6A076E8B-7C98-4C7A-B208-496EE920AAA5@arm.com>
References: 
 <CABKMkP+yADHpT7q3LjhfE0VLN92Ct6MGd3ywAm_AJN4se+LVGQ@mail.gmail.com>
In-Reply-To: 
 <CABKMkP+yADHpT7q3LjhfE0VLN92Ct6MGd3ywAm_AJN4se+LVGQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.200.121)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBAPR08MB5559:EE_|AMS0EPF000001B3:EE_|VI1PR08MB10198:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e80b17a-88da-4b91-98ff-08dd190c30e2
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?8A7c9WUNaQuAX8T1R141Ib28u8MAldi/QbkGwQ1cq9ddWM8LiEt8kJa4pXRi?=
 =?us-ascii?Q?qJ11pWAFOxUGqKqCpW9wNo+fQpUhud7z2TMNrv1EhCGo1PlGRJwLEM27GYtV?=
 =?us-ascii?Q?aZrBJurcIW0stwlpiZNjz3/wNJwy8FLSE9GV0AEu0OsB0AJNcUiDBHhG097a?=
 =?us-ascii?Q?vtUpTGFaOp5SstSjbhq2OmjrV1k4BP50qnss1/qKMXywG67OAd3/jwu0oepk?=
 =?us-ascii?Q?pxSBpIhpl/3Ho0OUwlvp/ieg/Q6XztjlEAqZLEXCKvktW/HlRXw0k+mgmO10?=
 =?us-ascii?Q?Pg707zYsbG8ZGpiQ3e9tK471738eBTRIgMbyK/+CCwi/Ip9eJ+UWRjhNn3Ed?=
 =?us-ascii?Q?Y2ww9J5jEa3Y3N/cFmGINOQCtPCWGeKvEY0pyhJjP6ytHwVoavT8Os/j5MEy?=
 =?us-ascii?Q?S67v5hF4cfEoSLzVy+NoLLpLqP5X0DIe5lJK+BLNlcL4ROFb5/qF7mS4FNFv?=
 =?us-ascii?Q?PbYCrR+c6aUKl5pWquyksY7ZsZ4LM/I+nNWfcjupVBMZgQjIxasboqhXHBcT?=
 =?us-ascii?Q?DQemLwJq28k63hRXVGd18nZ4vi5lRWadkI0oilJ4Ipa6QS420TgSbRmZThcN?=
 =?us-ascii?Q?NvFMHMvou8thZyLnFlG8l1EWPfay+ZGZ8WaQEC0lpou7Gg1brdm4i9BcyIz8?=
 =?us-ascii?Q?v2f7dpdkpTmiDFp1GFCsPdRM4+bqQJmqh5yRAUxnJ4IDyJqXAvrWrGQ0X/QT?=
 =?us-ascii?Q?1+VwFe4McA4sSfW6wpAnKHBsWpt+yypFThIEEp6J11GUT6qLrmF8DG+q3YM/?=
 =?us-ascii?Q?jHRL2KVIOpuW2COli0w67jZHivn4EdFoiiw8Vt8zF3WChfAumilyc0a6XEwF?=
 =?us-ascii?Q?kh/mP+zgo1pKEU5TjVgYWM6rUUNZ7aSTcyt2RTOKaipW6ulalSY4j8gorYei?=
 =?us-ascii?Q?K0CuLH2Lbrtj8xit+A97C9PlS37zz9tvJKXJIr28Nz8VeVYuGyop+jGzdIQN?=
 =?us-ascii?Q?hm7cT+6NdBwzKyMOFdZ37IsHzThskeS9kpKMZ5apcEVir+mZepRGCvUbg7Fd?=
 =?us-ascii?Q?yfNxWeUEmW3KYfxVOvdErSj7/9dNzbQ/yrn3CxDhHKyrrX/W6jEybhshBubx?=
 =?us-ascii?Q?ZVxPv8pEAth1jk30QNTrWr7ZGjTm4y3Bshnfd6eMisdBa6pqQfpj3koh198B?=
 =?us-ascii?Q?aUeL/sg9joUEo33iqN21aaWAgnZqbMotaIgSG7emnaEK+wfZZ93lCZnC4hVp?=
 =?us-ascii?Q?xwT9SsdPhP1FiG3Y6kpVq9z6kqQOEZUrUYbHb6H0guA9NhaSi7ZelKUFdCGu?=
 =?us-ascii?Q?nycpmf5uR/Azhs29o/n1RvqQQLvXNATphixCcWeIvlTkjW/t7KH+p9wDDtRx?=
 =?us-ascii?Q?hrhHVo+wOuuixm8luGcHcmYF5RXdB28nLkcWHt/EC9T1+0H1LZ8JPHeA/M8k?=
 =?us-ascii?Q?MGuxgJMeQwSvvdpV9TLMn58MTcHW6tzExHpg2i/3pwBeoD8mUw=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <94E2D72134061A4CAE8E46EB35EADBE3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5559
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B3.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	4fd6089c-78fe-4eec-2c54-08dd190c2c04
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|14060799003|82310400026|36860700013|376014|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?IoL+r8TYMgxhIthNwWj1kxZAllVuesXPnKpiNOQPQ5hQh5+fgbSZRnZ7YJsq?=
 =?us-ascii?Q?4+7M2qz88ufpabuNdyNuBGGVOc/rX0w52cRiwpdz70pESJmnjHzjsmgY512Z?=
 =?us-ascii?Q?PRVyd/azPSSwWGQ26aqsecIm2NJHQavvt6C11R3S4bAkkmFJ7EJS2uGzTGeb?=
 =?us-ascii?Q?g8IQt1JbcMqNcwQ2vCMoz5fUad2uorv6YhPWsvXjYEnx22XlqRYQuJKPjuS1?=
 =?us-ascii?Q?TqFcuRsGDUU7LR6urr27aQ99AwjhhiPtcQuyC/WvDAtfF4PeXVi2adgJR/GQ?=
 =?us-ascii?Q?IennoX4aMSyCpSqk7UJDWoL2+zaCY9tGMDGdYDpes9rpNSa62lBkhaAxM4gQ?=
 =?us-ascii?Q?u0/hW9hgaSNEPoV+RI4t2u7bbmL2quhabtTWPlfjEOthpj5xtfYAZ8OdeJme?=
 =?us-ascii?Q?HyW/X6/3rvzkIt7QbtdLjSlxrzriVULiRWICwAYRy8JFXuf2frvlVTQxY4IQ?=
 =?us-ascii?Q?9LmOkqvdhKAo+zCuR/FhGx6BLPtfQ7s+HgVLlV//wak0xIt51bOam+WOZ9VT?=
 =?us-ascii?Q?8VembEEV2/7/L0Lj9u1ySS8y+8YJoTlN7IdpUE/GsqQZXHfffx4+eTlaW+ZT?=
 =?us-ascii?Q?A8F6khmA92N44y1DfcldVeDhWQBBT19+P1XbA+SZ+kRVaJhdHIItIfMH0q45?=
 =?us-ascii?Q?gKddqURXCMWNiE7Po6P35imJOjXHTeXe1xc6X/0IvLoVV5qZtIP2/LeCt+Gb?=
 =?us-ascii?Q?3Z+/PloSUq2NfAWIjr5asVpYVid8CXSAHqcw9WArrGE0Nr30jKeCV6Bd0O7h?=
 =?us-ascii?Q?BSat0NIgcFJa3dWasUT/wB6T5+A1LE8KuKS3nspOnylwbwfEoB3l5WSgMeIn?=
 =?us-ascii?Q?RoUsRwpIzli+aePY1VynsWdUKxaIrn0c5Wu3FzC3FPFwyvG2Mm1EPZBNM3GS?=
 =?us-ascii?Q?RaytN5Q10MrO7uwzzmNBUFCy7RLYo7zhZva7hGbmwog2i5vJkPM19CpopC2u?=
 =?us-ascii?Q?u/omEkuVjGxH84St+oS5/mdZpQRfP5i3EQseuaVHWv9UvCure/LV+lWw7jy8?=
 =?us-ascii?Q?vdzrpBJSR4bhBsdJGhCjELnPtjd7JVTLWrSg8ejR00saNhEc7N7OMqm5GJ/F?=
 =?us-ascii?Q?WmG4Cckge+4h1OarOBxee+AzmrbHIRG/AKISwEMANOqjeylrVaM/uKtdR8q2?=
 =?us-ascii?Q?w9NGwN5LYc4kYqajOapFAu4YqvU9TTxWRlimkh+TevJnWnm2shyPbyC246J1?=
 =?us-ascii?Q?3+FPNsq8ve00zx++j2mt+ajQmB8Tha2F0n8Dx2lp1vOVWxMZYIYNrEMiXaJp?=
 =?us-ascii?Q?8XFXRoL0ty7QGI9EXqEWOHOOG26oaVcnTIqj7bNdZrKjntD4hlJVUTEhuaGc?=
 =?us-ascii?Q?+3cjQbSul3wPurK6uOd7R4lOh8xCL9CXBCbO7pYRb+I60AC+44uML/0WXYHf?=
 =?us-ascii?Q?reeSSr6uT6fMF2GLgmi5VuRHgFE9lhigGhKdc+L0mlwnR8W7FFZLtC0ThM+W?=
 =?us-ascii?Q?GMFtuC3rR0gYve15rTfPHtT5GWZm5kYFYj94YgSHVuVq43dTY5xIeA=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(1800799024)(14060799003)(82310400026)(36860700013)(376014)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2024 11:17:10.6468
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e80b17a-88da-4b91-98ff-08dd190c30e2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B3.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10198
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 11:17:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64423

On 10 Dec 2024, at 00:51, Joel Winarske via lists.yoctoproject.org <joel.wi=
narske=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Building on scarthgap I'm seeing a problem using meson.
>=20
> meson snippet:
> ```
> lvgl_opt_var =3D cmake.subproject_options()
> lvgl_c_flags =3D '-DEGL_NO_X11 -DLV_CONF_PATH=3D' + meson.current_source_=
dir() + '/lv_conf.h'
> lvgl_cxx_flags =3D '-DEGL_NO_X11 -DLV_CONF_PATH=3D' + meson.current_sourc=
e_dir() + '/lv_conf.h'
> lvgl_opt_var.add_cmake_defines(
>     {
>         'CMAKE_VERBOSE_MAKEFILE' : true,
>         'CMAKE_C_FLAGS' : lvgl_c_flags,
>         'CMAKE_CXX_FLAGS' : lvgl_cxx_flags })
> ```
>=20
> Build Error:
> ```
> | In file included from ../git/subprojects/lvgl/src/core/lv_group.h:16,
> |                  from ../git/subprojects/lvgl/src/core/lv_group_private=
.h:17,
> |                  from ../git/subprojects/lvgl/src/core/lv_group.c:9:
> | ../git/subprojects/lvgl/src/core/../lv_conf_internal.h:54:42: fatal err=
or: /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git=
/git/examples/lvgl/lv_conf.h: No such file or directory
> |    54 |         #include __LV_TO_STR(LV_CONF_PATH)
> |       |                                          ^
> | compilation terminated.
> ```
>=20
> Observations:
> ```
> $ ls -la /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdr=
mpp/git/git/examples/lvgl/lv_conf.h
> ls: cannot access '/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-po=
ky-1/libdrmpp/git/git/examples/lvgl/lv_conf.h': No such file or directory
> ```
>=20
> ```
> $ ls -la /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/l=
ibdrmpp/git/git/examples/lvgl/lv_conf.h=20
> -rw-r--r--. 1 joel joel 36431 Dec  9 16:39 /mnt/raid10/yocto/scarthgap/up=
2u/tmp/work/corei7-64-poky-linux/libdrmpp/git/git/examples/lvgl/lv_conf.h
> ```
>=20
> The same meson snippet works correctly on desktop
>=20
> Why does `meson.current_source_dir()` in Yocto build return an incorrect =
path?

Can you replicate this with a minimal (like, just message(meson.current_sou=
rce_dir())) meson file?

Ross=

