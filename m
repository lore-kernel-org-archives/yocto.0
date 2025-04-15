Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73D9C369B4
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 09:30:22 +0000 (UTC)
Received: from MRWPR03CU001.outbound.protection.outlook.com (MRWPR03CU001.outbound.protection.outlook.com [40.107.130.32])
 by mx.groups.io with SMTP id smtpd.web11.15836.1744709416900435284
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 02:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=WifIYnM2;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=WifIYnM2;
 spf=pass (domain: arm.com, ip: 40.107.130.32, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ONcPnvTlvl1Jir60HqIyZ7GwiaKpNWuq63gdfowqDBKvHVgkEbKtRFsIiAbd5oN8xrrHFA5K/U5z79TgU+5fqR74lxb99zzqshlD/PlSQ42P8nyoyyBUYCsgLkJYhC3397bJFvd18ihb0xaZmUuCYzeN2dHxl58rsICkavHYXZy7kgUxxD9lbAonGQ7+A7KNJvb0LFVMdK5d+zJy6linqPLeqGWFzLu+kAC+IT4OLEvOLbG07tuvtY3VZebVnSqZ4P6p823F20kOtYW6wvwQWGV0U8Dp56ImWhR66Nq8vaeii2S3e8enf7L/CrNx4VGgPro9JDNQs6wuqPnyL13GzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Np2C/1HIR4hLuhE0iIo4rtAvrIVGiJ/mzH3/rHzBOVg=;
 b=CWlXQPi6nrWtucWPvQZ4J3PHPMFHs0OqKYGPMqGqoEkJ24LuHcZX2NN+7lGwYnVsp+7g6SMJaKolmy+cFL2FNrsPmyITit1FyV7QNbTYeZHVN/kjxV2DNxAuXMh1TnlVQtoSO66AiSHvp4H0ibQbtGNwe56Gr1APBQtu8CtUrkQ0RgU9CX1PITLSp5P4i9fi++T+DX86xJ34BYIsKiPPorN+hEfnbjkACXscrkxdsoVjtRE2A2fE6IQ3ZbjJTR2IHdJKNIAWToqEBqMbWH1OImLmesMW6op11dSwLPWLZqKHyrUMBZ+BOZkX5Yl/nP4twAFDiVmd9WblKbDeXSigXg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Np2C/1HIR4hLuhE0iIo4rtAvrIVGiJ/mzH3/rHzBOVg=;
 b=WifIYnM2pw5nHr6ZseBqKNMneUDKSQtk430dOrET/FNqgxOOsix5GOheqrk9I0EDQQM7Md/sY20CnajTnbWngttrMoukwk7BPAjIIFQvHrCe5eueSJkUChkoSBh6uRAXK1LPusL9xB7tlPm+Rehqxb7b74oSgYVq1QRDcQsMmCk=
Received: from DU7P189CA0025.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:552::32)
 by DB9PR08MB8433.eurprd08.prod.outlook.com (2603:10a6:10:3d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Tue, 15 Apr
 2025 09:30:13 +0000
Received: from DU2PEPF0001E9C6.eurprd03.prod.outlook.com
 (2603:10a6:10:552:cafe::de) by DU7P189CA0025.outlook.office365.com
 (2603:10a6:10:552::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.34 via Frontend Transport; Tue,
 15 Apr 2025 09:30:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU2PEPF0001E9C6.mail.protection.outlook.com (10.167.8.75) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.12 via
 Frontend Transport; Tue, 15 Apr 2025 09:30:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AHVjB841aWwzdVuEa2PFxweKX4klID81e/+3pnONn7CSAYTy0txMydv6GkOFgBi0tH2d3UvcU3W44/hSruT/T8VqSJNPoCNR/hZkTR9IpcCD34s/o0vew1+Wp9mm0662ob4ngw5wPmQX9OWfCJAc2HlDnfYYq6HEezvVncm2QH3qLFryGn+BRNeJL9hJzzoJ0vBPUWCmnXAtF0Rhaqu5BMHHmSgRjXrFt2C0R5+Yl0scUHP83lJJmWUhAqpiLECmZVm49r4R9H4QnvYQ7AInRUW3halprg27FGTCIpesMD1Hg1EwRiY+wOcEb+DSCu/lxOeHehvVUUntUJ4ruGWShQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Np2C/1HIR4hLuhE0iIo4rtAvrIVGiJ/mzH3/rHzBOVg=;
 b=pC9mo+68tAAUR5wzrFx/J8RfnEkZWc7GTfMTdk8Wsr4x47IFb1twRKoW3RnC9I1yuAuzGV2BaFYvvR8QDKecVH2PnBfJDKt1KhHzrKOyYQsp2WGHstycYvdTzRynnrxp5nVVFG3vvD/622z085RbWkj8OQsq8vMiOBDJFNS2JZyx5wRJaxrT+mqA6NWyNBcHjKO2jkp/xyuq/j6dcYkFEQ7uYUcb1mMhZXzuDzWa7pX+N1E1qfC/0Y4GvRqqOgDJeHvxfv8op0A1+P7oGObFwowW7sY+sn+d8u7x9Kp+FxFI2i2Sg0FAM2hQ9eJ4ILHm8A2zYLs+b+GicaRbPJCy3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Np2C/1HIR4hLuhE0iIo4rtAvrIVGiJ/mzH3/rHzBOVg=;
 b=WifIYnM2pw5nHr6ZseBqKNMneUDKSQtk430dOrET/FNqgxOOsix5GOheqrk9I0EDQQM7Md/sY20CnajTnbWngttrMoukwk7BPAjIIFQvHrCe5eueSJkUChkoSBh6uRAXK1LPusL9xB7tlPm+Rehqxb7b74oSgYVq1QRDcQsMmCk=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by DB9PR08MB8412.eurprd08.prod.outlook.com (2603:10a6:10:3d4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 09:29:39 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe%4]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 09:29:39 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"skandigraun@gmail.com" <skandigraun@gmail.com>
CC: "kasper.sloth99@gmail.com" <kasper.sloth99@gmail.com>
Subject: Re: [yocto] sdktest.bbclass does not find custom sdk tests
Thread-Topic: [yocto] sdktest.bbclass does not find custom sdk tests
Thread-Index: AQHbrS0ppt2Nnw9V6UuwaoA3GtTldbOkVb7ogAAhrYA=
Date: Tue, 15 Apr 2025 09:29:39 +0000
Message-ID: <5000FA76-7714-49AA-93CE-7ADD74AFF8D6@arm.com>
References: <Pnq3.1744354339757137128.EBko@lists.yoctoproject.org>
 <18364374250CC5A7.10767@lists.yoctoproject.org>
 <7f021913-4147-43bf-8718-fa253da664d7@gmail.com>
In-Reply-To: <7f021913-4147-43bf-8718-fa253da664d7@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|DB9PR08MB8412:EE_|DU2PEPF0001E9C6:EE_|DB9PR08MB8433:EE_
X-MS-Office365-Filtering-Correlation-Id: c4204f46-34a2-4a8f-49b2-08dd7c001f2e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?gwSNBhTSCOueW7KASobvCD2+CN8K9/rMHKRRvkKf9zqCxIUQjBpIzfWEpXxt?=
 =?us-ascii?Q?xKjJv/2vUpL00uHgj226E3v+7f3VLQZqRHaonPG7HTf8EnvEt//fo31k71Pk?=
 =?us-ascii?Q?3LJe0KPKkF29e8b3Owqlx7wThKH665xRwjO59hUh3ksttrkiH4cJvN6uFVtw?=
 =?us-ascii?Q?HUwDkELDU6SaEPUzf1/pq1zsdwu8HUAP6Mi1imcJerJJ6qzrm6tHN4hQChGp?=
 =?us-ascii?Q?EvipLJ3Nnmcu8YkhvlspGGM0I2CwOIP0d0HN5cXEgfP4f4/wUrlmBuh6Pl4R?=
 =?us-ascii?Q?2A3sgxUq6EP0oFfhlyqtvXW1Wu2tmxWX/hHbhqsQvik6dO5bHc4vLzw+a6g5?=
 =?us-ascii?Q?WqdoQsJ369TjgjyX2eHqNreT9x7miO75sRWlZQ7/l49AXktnpWtPZXIU1BhF?=
 =?us-ascii?Q?8P0OmC4uSaAMbtqbZwvqtlwF7TdZFqmvGWWAUoB76/bPjLTRjbMvc0fBY71k?=
 =?us-ascii?Q?VZNrjtbw2VCRmAf0kobZpiBRHfonOy0GN3Eom8wMjGHNx/mLTN/TvZNHPpH8?=
 =?us-ascii?Q?Z1BVaXYEI9ZiXYjsX23DUObdxPoBVWVbFAM9IYnUSevvIyQWz1Ax2kLcXUY3?=
 =?us-ascii?Q?CZwEe0nefYAU4KyC034Yl6jG67Sk0l2OGvWXjPxemRU9ezh3it8tuFku/Sb6?=
 =?us-ascii?Q?hQYc3l1ui/j0yDkF/EgGMoVLiZqW6WEo3G9uv8u+nWsshu7oibmcsnEm7U1N?=
 =?us-ascii?Q?+VHa4xj1PF2c5bp/ppqHmHMylV9A+1dq8IO5zOPdnYlNFAGz8oX8LJR7BlN4?=
 =?us-ascii?Q?a98ol/ufrkOlAUF1ttM1amceDQYEB1ky1zp1o2jCLphULkSaafaUy7vz7V2U?=
 =?us-ascii?Q?wtgXCzbLfBJnVr87HznhWVwPBylnYgoOE2/vfe51MWugI1aTupO/jzwuz05I?=
 =?us-ascii?Q?G2IQHrTgayHHCARbknlNrwuMMoa7b/eMS2U/4A8BFwi4YcC69HqNtT2BR8MU?=
 =?us-ascii?Q?Tfd/Ser2Rv0+e2Fi8CiP7e4lFfiXxobJVL+nsWSWohd/o1l8YDdZQZpDRMpf?=
 =?us-ascii?Q?R7EOa2BnqqzLFOvBeHrEIL6J9cHTuRDm6LaQ0FbUpbg0HsNco4aixxnL7SU2?=
 =?us-ascii?Q?ngx5Ag4fFeH3ncsVqmE2YfTc3NXeLGNXYHYy6q9FPFKYxCmhZCqXnwIveLKr?=
 =?us-ascii?Q?OOyslZmjNs+5PtyrirbJPyU9sOefaG7w0XThzXEmvqHI3uDHaw5zEsiiCq1h?=
 =?us-ascii?Q?uWJjCS7RgW8vcxFBupSROLChfBv00he3CcQHuPqto3OkxLDO2EedZUUB4MUI?=
 =?us-ascii?Q?PPN3cwp38fcBv/tR38FHSnzTGXSvsFWw07v+6+1EHGSzUDw0lbS25xyd1Ipw?=
 =?us-ascii?Q?emd1i2kylahclimLj513Ur6lbOu8UAXpTpEkUnNEeGmSrm38+cmmFvz+9npe?=
 =?us-ascii?Q?cXgLOPfGxS03fFyp0U4I8ydo0Nclr2VjWQZMen2h4FNEaAqloCtJpkKBNVe+?=
 =?us-ascii?Q?j7uw5HaZPvi8VjyM0VdPHvTKuINCj2YYraDywy8a0DPpAftSEwc9yA=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <258D62BD03D7F642940CC69AA0028CA5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8412
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a94bb6a5-d36a-40a1-f632-08dd7c000bd6
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|14060799003|35042699022|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?zfsF9FT5qN5/le+aRRGAgc8//B1FOj0aYA3a3F8OVAATPkXZ5bY7+o2YacZG?=
 =?us-ascii?Q?71vt9Xi8PGYAxDKmxAsBNFquJJ1Sweq7U1kI/Yya7WNi+E0J4bGJOp/Efyd2?=
 =?us-ascii?Q?KEOU/RHjF04p+dL1R0HfdMlN2WXdKy2fGWNVpVQJoTsnKu1GoMZR4GMBmgDg?=
 =?us-ascii?Q?UaBr9WZeTh7eXqIutHeUD529B276HMPvKyyuF0w4MxSFrd9uyT962aNkYC24?=
 =?us-ascii?Q?YmLbZKTiIkoFiFv0lF28vKr4u9U8vMuXIRIE6tieb9tdisLGgoTPoulYWSVe?=
 =?us-ascii?Q?sNUejfcRbtiEyzS+gy0NxQwsAxw3Kll/qwZVqM/dC7LSou7RFlYyCDAdalIc?=
 =?us-ascii?Q?7WT0I/6Zl8joMCYZAq1kWw2RQGveLgiK/pFKR83hnkHCP5CvaZUuLsCl4EXJ?=
 =?us-ascii?Q?PI9ohoWa99LG0m4j54SNdqMjada4y2qUT4Lk2TWMkhurRxH+etenlmh+AuNZ?=
 =?us-ascii?Q?6VxH73wW5XZBY87QgN6bUOlJtYEN3TDFnpnkt3NL12Y5WXDgUwZt4QKvcbSw?=
 =?us-ascii?Q?D97HYH5L21spx7qfz+oh+IY0S1qf1Esca3+Zsynf+k7kt77c62Qj5p3I2Jz7?=
 =?us-ascii?Q?+4syKiU9Wb0Ovy6bU2QtOPukq0Z4DJWlf5k7IBY1jUlzicc4anfzpEA/fUgL?=
 =?us-ascii?Q?3Z+gfeU9mUeVudwIZiuUumu+NwDhciwhWpZtItSW/J5p0e8cuRwKZOJnXgud?=
 =?us-ascii?Q?MYy1EJ7URuNgFEGkxWGJbfwQy8epKgbexU0ADAHESCHonMY89AqNK8KPUNJy?=
 =?us-ascii?Q?rykCat8Ge+3y+qqW8lQ0zqZ6RwLWVmsO29lflWfeW73FIAB5Hb7lsveSgBTD?=
 =?us-ascii?Q?I7zMKX2Y0625QxlUuYdt+h3Sb1UBxc8dxBvsTclih/BE3wjwvoeEgeI9p+VN?=
 =?us-ascii?Q?Tq1DfRuV5hOYZKEVhfoDPtZMGA/SeVZFzqNdY5/dlqqqb0fen1rlhm3V/ZxP?=
 =?us-ascii?Q?LGhhc6gJ//e6C1A71yrgJr4+G+sR8Qzscr1DM1pFq+C28JyAEWOTnna4lxHV?=
 =?us-ascii?Q?0FwJl5d1GQFWXeRHEIWoCpSRMd5UXem0xznmbg9BwuiFiFU1NfO6HRN3JMrz?=
 =?us-ascii?Q?/LjWthwUBpeZ6OWpyB9TdLoPIBpbYcyFZLy5wM2Ou66K3oA/aj4Ak4Wh8hAq?=
 =?us-ascii?Q?rWKgGv8nj1L0wXPMRoY8AnmO1lCpiwVq20Iybbj12dEEWlbMl793h23QYZAZ?=
 =?us-ascii?Q?E6NT6tG/00PBbeEi3a47Sn1xla6lJnnYl4v8iZHQuekDOdsWV7e6mHkQhJc2?=
 =?us-ascii?Q?jqRsNM7eiut3m7syC75RSzqvbbKijn4/f3HiOQmFE2kZy33tZU6fl5Kjr7a/?=
 =?us-ascii?Q?+wQBsId1/MLRVsdmmjulRBSR8PIDxqzOm6Pm6qpVHJLBAEbHhkMw//u3ANQb?=
 =?us-ascii?Q?IPGLQ401/KlFU9sHWSyRvTVgblQyXuPlmTZuXzNS5g1umn3FxaXAG3tZgxBz?=
 =?us-ascii?Q?dCkXQNFESLH5z28DzseDaeRHfhcOhCVFnc8/G3vUANareJi20ze24LjL2yk9?=
 =?us-ascii?Q?Wi89YIiaW1I1iPQxmImMHT+QIME/S6tHwIuD?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(14060799003)(35042699022)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 09:30:11.9731
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c4204f46-34a2-4a8f-49b2-08dd7c001f2e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8433
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 09:30:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65168



> On 15 Apr 2025, at 08:28, Gyorgy Sarvari via lists.yoctoproject.org <skan=
digraun=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> After having some sleep, the problem is still the same, but I realized
> that it can be solved much easier.
> Forget what I wrote in my previous email, and add the following to your
> image recipe[1]:

Whilst that works, I consider this a bug in testsdk.  If someone could file=
 a bug (or send a patch!) to unify the test case lookup then that would be =
great.

Ross=

