Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03EDC25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 15:46:23 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.59])
 by mx.groups.io with SMTP id smtpd.web10.20074.1715787974286992097
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 08:46:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=DVxz1uLC;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=DVxz1uLC;
 spf=pass (domain: arm.com, ip: 40.107.13.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=FamgGZ6xAA8+oyut3yB3cgf+bbjjNR6dCiM6SRdAgSweU1O1AZgZhcF4sjBWZsDcs/JldZHIaBW+sTQJQO55h5XrRLpOJIpqIv04N7joytjssA14F/T3JXdPDiU+5F+eDCq/KjuxFJAdKnnz5R47tg+0Jll+9fr6zZg7rgwpywpjJsiX1eyM8+JLylbDYpur+tZepdjFKvQIoBP9mzyA8GCEarilcoXYGLJ9+BuNgeEc54NzxpfG1VLQfQU9IY+NC5Jr6UFUusGJER5ouoleIDFg5QyC/gzZCRD3ecmrSrw9FrE9wIa9CqMxtahej0x6bk9CkzQ9FNHwx9aUlpr9YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cLyK7TIEkzhW2X0Vk/IT26z8Z8IM+Ngr8Y4TqDsHKHU=;
 b=fpZz5Th5VKBLxecFfjLHDsH4/OYZpOqe3eL7nDmMhvlSGuAxKapbU2n2FicrMLBNwO1ct3GAipWy/GDlOs2geIQOlBjble5/yygknaxtaSRgPnsQRfR6vNfpGEOSvnIRO2yjydMmNh7qd6F48I3dur+ITs/XjulkHuWzTB7VioWuUtBkNdNmPv23tpkFDmIN9ywBQI5U+kjV1wNqfqPDFi9ypTKt0HNQjQB81zjHcriv1SeQxVQwSEfZB/WboPDeQY3S+iLUXKNSufchi32ojyetOienqUIpY6zmlYYhQjFCRJWlNFgsggUqjpJTP6S1iNIpMM/5gaFC96zVt/s/Yw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLyK7TIEkzhW2X0Vk/IT26z8Z8IM+Ngr8Y4TqDsHKHU=;
 b=DVxz1uLC/kFL+Aovec6BLug+1eAyMVggUNQqoOrA4Sl//GLA8Diwzp3xryW1oP9XtVzbgEjkfTe17mTJok1xOx3IrXGEN7MxdSCMQ9grIVDEQjPKwwti9vPTMADjRpGcxq4Wg/31N5GsqanLISyo9RFzjwxPlXmXqN0RXspszw0=
Received: from AM6PR01CA0058.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::35) by DB4PR08MB9864.eurprd08.prod.outlook.com
 (2603:10a6:10:3cf::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 15:46:09 +0000
Received: from AM2PEPF0001C708.eurprd05.prod.outlook.com
 (2603:10a6:20b:e0:cafe::43) by AM6PR01CA0058.outlook.office365.com
 (2603:10a6:20b:e0::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27 via Frontend
 Transport; Wed, 15 May 2024 15:46:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C708.mail.protection.outlook.com (10.167.16.196) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Wed, 15 May 2024 15:46:09 +0000
Received: ("Tessian outbound daa456608199:v315"); Wed, 15 May 2024 15:46:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 33e23730babdfbaa
X-CR-MTA-TID: 64aa7808
Received: from 3eaa22742fc6.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 19F9A66A-EC1F-4B0A-BE3E-5BC1F81923CB.1;
	Wed, 15 May 2024 15:46:02 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3eaa22742fc6.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 May 2024 15:46:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HZ3omj4Rq7UXKx3fucc1Emlr4Bg5HoKc2kKLaJDUfqsJpiG+5czx0aI40Z+5vLddLogR0huZUPpSOKY3Rqwhg1ODVXHar5qfMg4tsoXSZ2rDHYvZdvtRdjesY+NA/e1GxrhQRgBVb00Aj+iR9Nu4RZk8HSGA2o7M+7PkSlwyJAJMuCEJS71902wEnG9YwBLRvrRZQWudPBW6YEGDi8f0xPLYOedSzj4msf7XaPACxxXsJa1bySAR8RTVuM27LtNcoSgMfROuVqp4ol128o0nGQpEttmR7KA912sPU6b6nKV9gFK9kSn/CQN3EoiuKr4F+DUo+zww7rkM5uIVH0nUHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cLyK7TIEkzhW2X0Vk/IT26z8Z8IM+Ngr8Y4TqDsHKHU=;
 b=b9yhtaMAlIAHzhwq1F1obMlR9V5omyQ1A9dDwWL1xtEMhJLAl3cbHd/QZKz1KrVoSwNL+V/r0N2U1PT0BdJaouZm7JkHCpYY5CWzaQXQkTgwwaFkqFuqVIBpZAQgcSDtuBZsZzO/+FeUVZqqTbFbxt5ZFWxWP/Sn0ZzTz1opcUnzbhiQvEy1y98kXXQE5fu2mv0upDpAGY16IJZqeOGIpkmML+WDZvBSxmG70ETkEFygrwLOE/P4VQyfrjpv27cW68436Os+b00ZrbylvjPcWWZvzmyaO6A/jQx8ubpJE/AZ/ElOwDGLD2YEi7dyDHFQfdCOUUXXCZXsZXJcN1fwog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLyK7TIEkzhW2X0Vk/IT26z8Z8IM+Ngr8Y4TqDsHKHU=;
 b=DVxz1uLC/kFL+Aovec6BLug+1eAyMVggUNQqoOrA4Sl//GLA8Diwzp3xryW1oP9XtVzbgEjkfTe17mTJok1xOx3IrXGEN7MxdSCMQ9grIVDEQjPKwwti9vPTMADjRpGcxq4Wg/31N5GsqanLISyo9RFzjwxPlXmXqN0RXspszw0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM7PR08MB5526.eurprd08.prod.outlook.com (2603:10a6:20b:108::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 15:46:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 15:46:01 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"JHarris@westell.com" <JHarris@westell.com>
Subject: Re: [yocto] devtool update-recipe/finish fix in scarthgap
Thread-Topic: [yocto] devtool update-recipe/finish fix in scarthgap
Thread-Index: AQHapt5v/235fq4jwUqoyuEc1GUZOLGYcC8A
Date: Wed, 15 May 2024 15:46:01 +0000
Message-ID: <8DEE5F3E-401E-4675-BAD2-B77091659941@arm.com>
References: <risQ.1715787710688910509.4hM6@lists.yoctoproject.org>
In-Reply-To: <risQ.1715787710688910509.4hM6@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM7PR08MB5526:EE_|AM2PEPF0001C708:EE_|DB4PR08MB9864:EE_
X-MS-Office365-Filtering-Correlation-Id: 08222fd2-395f-43ad-1a50-08dc74f6241d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?oewehBqRs0qqgT/eVm+GIgP53ZkaA3R2QKaOqpwwajdLT87TYWEq1ykoDYbn?=
 =?us-ascii?Q?V6755mZpurnzDpNDJ0tppYHGtYsx1NSWyEmPobtoooDylH314+LT5n8hW/is?=
 =?us-ascii?Q?gEHMG/k3zKHw9nnaASpoALt4iFogaGNEJGCN9B+aqVrIV46oTUarrX/3htUG?=
 =?us-ascii?Q?0y/MFxb5YnKdnpFydH0JKdxeQc5/bzlFSjYfqSIkjrDN7PFR4wJmE6Snui9x?=
 =?us-ascii?Q?VOjW+sS8WpyuZQz9mX82uT2T1DdMhfKq4CK7f16rI8VbMzHVRqOW0b76QO1e?=
 =?us-ascii?Q?XEeFn9HH/Fivlst02w77wJyP9qAyIQW4TxvbvzSGrnuQ4CprKDp+5q7Ga0aX?=
 =?us-ascii?Q?BW8PsWYwo776no38ri2cJUZoXEDl10c+WSDX+03ebkRJGq845ewaoMSzdPTW?=
 =?us-ascii?Q?hH5VT0TwmqmGU29371tzDpRD6IMZdlRCoIP1rTM2U60zxUnhu8UztNVhNbMH?=
 =?us-ascii?Q?nljDyxY2bXNHKq7wozVHMkL53vP8j5y88fkJ/oBlSpWloUMRQgJ0GThje04L?=
 =?us-ascii?Q?xGLqvzyXaghK5zrDhQNj6ENVmzDbG6Pij9krvfwZ+k2mXpiGZuTAWzno2Lzu?=
 =?us-ascii?Q?GUeKf8NlvRYMGLMIzXmaNTlnzONRDAogn1yXVtC4uZ5sS6mCe9gEf+jZNawQ?=
 =?us-ascii?Q?ekvRwlQqnk5U+8z3WmK8KtTDX/jBFsXR1HvcfnenOAiLZJsNZuvuVdsn3Ewm?=
 =?us-ascii?Q?lsk2PBic30D3UVMi6GBS1TK5qDqLXIm5UWZSfW6GMtV3GY2jzmOqXTp6Isx2?=
 =?us-ascii?Q?bKXRFDpfC3/64dlfG6gPz+yI4DQrY/j3gUIB72/kiSEhdTqiyZDfios7zJZl?=
 =?us-ascii?Q?NCt21ypYDyCVPqyAkh/cPpKw5qkKxC93fMy9SfImtIM/sjkGyLpxrB6DybqL?=
 =?us-ascii?Q?LWN+JldKeNJLLc52zRuz8FeIRPdp1FQLseB9QP4xXjynvJTqGvJGtZ3caPYj?=
 =?us-ascii?Q?tnFYTBnn/dhph/lcOnvohUCs1VodjplIupImvQLZxd4/VaZFSNL74V9QqI0l?=
 =?us-ascii?Q?Zxb3h1VUxC0WgHQRsYEJhrYD8X4UXVPtk3OUAqBrUgjPV6Z618KnjluODHm0?=
 =?us-ascii?Q?ZFSiun0yA8mI6N4dcbpQmkBdnnD7wny8Uw2GjwJKJMz5wIz5ZmKjTpuTM0Xy?=
 =?us-ascii?Q?Ar/kAPS6arV70tPKBM2rhrIPNmUr/S/CICswwu+esxUULkvTjsha1pQY9Wmj?=
 =?us-ascii?Q?XEZFxP2yoUH+rWyhyztvh4W7MZ4zdPP60mwvAohetOhPcouHoOKqNq4ufmA9?=
 =?us-ascii?Q?vmT2DDBPGuBg1NvD27wjOmoq5L+KvrMOUM9OarwlwqrwUBDZNTjQh5PlZyJu?=
 =?us-ascii?Q?dI3+DjtNl3KNnH2PGrLpPqP1ESmUmxguKlnfnD6JS0xF6A=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <79A4A225D7C61F4F905E113B344C6049@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5526
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C708.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c6fcd5fa-bad3-4652-ffbb-08dc74f61eff
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|376005|1800799015|36860700004|35042699013|82310400017;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?sEaFawwNjS7LXTYm0B8TrgvPFvmew70tFIEwNde0RAXSpnq52/a5DVbW+a+M?=
 =?us-ascii?Q?zxPW2+EelRMAPhNQM5FrR68V9XT8JpHD0WDAhoXCeKQeWwkjMOwhKocBLnXh?=
 =?us-ascii?Q?A6uYEyre4KOD18xnVmMF4H9q7TUPuCKFJAfMCN874jUVYp0qZQNvyOgRZ7lm?=
 =?us-ascii?Q?wBbCZGIA+8ztg4lnqeC30zFGqqIdW73hFcH+LaXPYZAFcs+NXxjtJCS+4edH?=
 =?us-ascii?Q?Nyp0002OfI0eNa77wV2KTKVvmwPZB4ntawCHCi/7wjq0Va5J9bOLVVeWbt2Z?=
 =?us-ascii?Q?cX/ay03LNwZaE0EP//WmfhFqi3tS4YarFRgu97jV4AgI8mg1/5oOwpCKWE5g?=
 =?us-ascii?Q?VR62KwLylYHEfCZ82leKc6jmqe/naf4ZJE7gIiKO6Lsp4TuzrTOTUUu8Ffw8?=
 =?us-ascii?Q?m7qpGUzgmARvH6pLp4oe1MKBP34myJMSsBs8oujycRadJUdnYABs5E4X1e3z?=
 =?us-ascii?Q?ZlBDlIRI8+aObcXBnzFnfPNkqIVPmRq9VWEMcxALpneduqGg0UzkYV11A6V9?=
 =?us-ascii?Q?tE5IyQR+wIGbl1O42tezP6imNKTiOngN6V4lP9eBdQ01D4ID5cpfh8Qh6mhp?=
 =?us-ascii?Q?GaLKGWLhQ8vAOw0fT0Ge8ZIRT8jYQnXlGMhfbJx5pCsk7opZciTD1kD/VGbi?=
 =?us-ascii?Q?Im6528ZJJBztpqCguJcN0BHhp5Mf9Vzl/m1lbjfiUaqEepH28dzKQjj6P9vr?=
 =?us-ascii?Q?AzbRYiNPI/Vs6OTGqFHh0uDD4t4qA+z58K1sPbWguuhOWKT7qwm28LBGK7BM?=
 =?us-ascii?Q?FZTYJEGZeE9/dksA+jvYMLCTqXxpn2uZ1BctcWhuyCeLVEaibn7IbMk+Ko/x?=
 =?us-ascii?Q?cIoHJT3SoJD+qtEEl89d0UFvkp2IoWfPTPln9rid41O+VRR8BLezobf140zi?=
 =?us-ascii?Q?KvXZ2pTuzGHt7zpA5cqC67KdM4Y73RQubme47UCJG0JjFMUwZ46X7b4naEK/?=
 =?us-ascii?Q?bNAibfEuLo0mzyR2hKwUSzzZ/gt9Rhw5dtmIjihvhXBCLqQ81qhOUJ9tc4op?=
 =?us-ascii?Q?lUXLKtLROBEGiLJ5LT84UYegvk5RH2yYuSfLdBq/413m1FW1UZxfVjtKMfc3?=
 =?us-ascii?Q?iGjMLIKKpBvnD44pcHoYB+1/820mwm/Xuvxx9hsHXegDC8Vet2Zg6Lu23JBk?=
 =?us-ascii?Q?67CmAF8IP2DT+vqRR8TJD97Nfu05FqaHR+MIAMsghfSxA6m9PxqqbxwtmkDP?=
 =?us-ascii?Q?H5ISBi9q0oc2tkGVO8mtTpykMq78m/uaex0buxPiodGKzhqZS5XfcqcAyYhA?=
 =?us-ascii?Q?VO3+Gjr3XhhUvjC7SL6h8QeMS+3pJI0kaQi7onNGkmSktoMC6eNrlBuMEeKw?=
 =?us-ascii?Q?b1ZPkmrNNauMo4vR1S78xGkyOM9Fv4nAYPSjiK0KKFSPlcaD2P3qtTUtzIT8?=
 =?us-ascii?Q?VmTD+rn+jnghUnsADlpBzlSNxv4M?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(1800799015)(36860700004)(35042699013)(82310400017);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 15:46:09.5806
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 08222fd2-395f-43ad-1a50-08dc74f6241d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C708.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB9864
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 15:46:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63096

On 15 May 2024, at 16:41, Jeff Harris via lists.yoctoproject.org <JHarris=
=3Dwestell.com@lists.yoctoproject.org> wrote:
>=20
> Is the new devtool fix for update-recipe/finish in the master branch slat=
ed for merge into scarthgap as well?  Commit 28516320d81f1767be24fb3226021f=
16b425d355 fixes a problem that occurs frequently for our projects which ap=
pend onto the linux and busybox recipes and have customized menuconfig frag=
ments.  It would be nice to have that fix to prevent having to fork poky ou=
rselves as it doesn't seem to be fixable in our own layers.

The quickest way for this to happen would be for you to create a series of =
backports of devtool fixes that you know fix your issue and pass the selfte=
sts (oe-selftest -r devtool).  Post the patches to the oe-core list with th=
e [scarthgap] tag in the subject and the maintainer can review them.

Ross=

