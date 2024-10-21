Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448DD15D95
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 13:44:48 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.50])
 by mx.groups.io with SMTP id smtpd.web10.46742.1729518280671498277
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 06:44:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=m/FCVIUW;
 spf=pass (domain: cherry.de, ip: 40.107.20.50, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j6KX2b0RNFat7NZ2U8WfFBrp0of9qcwVRikzRLenbShwLRLENnSJKcLtUURMaShW7ks5HZA2DMTFGS7Jsrw8zCcdtV/Stta0ea/qBM2OLm2jMvAX1K1j780fvpKWLxR+Cr9bnNlGTRTghd13EA5+s5Swb5SArLVpGDwIf2w8J+x4z/XE0xGH8b10Epa9F/PanFG9V61wvZ2DJitwgDdUB2rlB3SKbDUXnDgjuibTVO5IqKUvydD/0iU/l8A3Pg4GJ9/pZCKoVhzD8FQQvmedFF5PQh1rElKBeY0IRtkpGQjzUcj2W9fdolpiaeatrmZp3fH2zt3x6DReqWwwQ7Gieg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJ5Mb7qeu6qEXCZPBttwGv2Csp7QyGJP4e9xsg5Ip9Y=;
 b=sBJ22XL9Ov7j01h9nexX0+26J3gCBFL8BLLHmDiCiBp0N8bnK3OyC9HwxosqHRRNjXFUbrZgzcLS696SKMG6eazkkuokJesL5vxctF6+x8KEsnto+xwNRaGMtadRQ8mPmDR2LOiql3ZCCpIvhZ3mwtnTKkCvW9fM/BcoxJyQOPKOZe1RpNwQ68IRT/TeGF+DfCmtWgTIkIHAau3+z7PWMPb4Vxw7lvGNK0QLryK2IdQwFSG9ZkF18G+Mr+CRU8/SqG9PSvX1QfgH4cizU5wCtCtCFZ6qtOt0pwqduI4+I9iNvs0KFppQkd3Ra0BQoBJMj7i8yr7JEa+MyDhYPpPqKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VJ5Mb7qeu6qEXCZPBttwGv2Csp7QyGJP4e9xsg5Ip9Y=;
 b=m/FCVIUWJn2mpXkPi9d8D4hyDJXmdN5ULP6Gu0p7V0ZhbVxZ+X+6Xzw6mS9k07wS9tjFZUh44NneaMuRmRxQXDs/+ioZ/Mywl9bGAn4J2rPWj6FaPvcU/kKQlogUXnpxa/VEcDtbAgmwJaqe4zICL+5LxIkj6iJGjpfi0vVwKEk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by GV1PR04MB10351.eurprd04.prod.outlook.com (2603:10a6:150:1c5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 13:44:35 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%5]) with mapi id 15.20.8069.020; Mon, 21 Oct 2024
 13:44:35 +0000
Message-ID: <51960f52-d4d7-47c5-8555-4f63e23da372@cherry.de>
Date: Mon, 21 Oct 2024 15:44:33 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Information related to RCW file used in FRWY-LS1012A
 evaluation board.
To: yocto@lists.yoctoproject.org, dhanyalakshmi.k@priyarajaelectronics.com
References: <jW0a.1729510575607728217.yf5O@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <jW0a.1729510575607728217.yf5O@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR0P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::14) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|GV1PR04MB10351:EE_
X-MS-Office365-Filtering-Correlation-Id: a3f40eae-8b3e-4fab-87d1-08dcf1d67fda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?lnM9Iyc2Jo8+bNYGuMa4yBrsOeREamEHwj0U2mtNFP60pnre4PkIOYvOnqpU?=
 =?us-ascii?Q?Xiqlc6EaV9DA4GZ/OHhN6AYyqUCbdYlvt1o5+pT+j4jWbXFsDbUgcKHbE4bX?=
 =?us-ascii?Q?HhIuazjC+9lr687aEMbko0RXlyLKOQqlG4DwfoBnsDpixbP/CG9YsFf8x/sC?=
 =?us-ascii?Q?OdPOKJIdMGws1iJSriuXFSAvvPsz+j/UHNcXdochhS1ZNAYKX1zvt2BZuS/b?=
 =?us-ascii?Q?xj8lbBObzFpmwJrCK0YT4o4ItD+6arN7iQgOInyEJtfsQpYdKcjyRnN5hMsT?=
 =?us-ascii?Q?feP0tX6DMebLJ0gOo1sDSzFfcOBCKTzJDsMUkeN2PU/IfQSbBjmkbC3Ndzq8?=
 =?us-ascii?Q?2VyFzrC3gBRclYTwLivpkC8yMjxHgLsNbEGpRGyAcJPuprZr9Lel9pv8TH9S?=
 =?us-ascii?Q?kF+lwfyyqiZ9f5shH4DwLonySgP77S8d6S9jOOC+U1ySKlLh4syKUkyK9imH?=
 =?us-ascii?Q?0YQt36BP6AJUXGOyZrufUCMBjNXOFw8AN4Jdw7qiVUDJFglspU44eiH6L1Zr?=
 =?us-ascii?Q?0CbnQXnCT4e/Dq9CfAmP7FwFn5GDM1i4acilzNDw/45Kw9LXdFfE0U8um/Si?=
 =?us-ascii?Q?itabryLcrpk5eqzGwZ5AwqaXEuuklhUEEeHVhkKQg7WWOasK8jGxR4YNdTV4?=
 =?us-ascii?Q?ER+qa2TSjYYRJ1lbeZsSE/o9conKmkdyqyoXyUgpe7CrNcwMi3eQc84dOmGU?=
 =?us-ascii?Q?Xr4vxv7blPv+uqflFAkZkcDCdq9g1BykNmgr0u4JXse2+9NGjojUCAqL9Nil?=
 =?us-ascii?Q?OXboTYjRs4MwJ9QIRbk8ClB8vaAK4J5WFs0p0Qc3ADu7VleffzXvDVEWApb2?=
 =?us-ascii?Q?sV4w2aC+h1YDO+3QZcy96eEF4y03pPiZA35ezG1RJLOrkIU4jEgnQ8pHiCee?=
 =?us-ascii?Q?9GdWce69IIpautoHhg7wfcMd0MTw/IWqWCRFkZ8XHdbWGMuLMis7xL+wK/NF?=
 =?us-ascii?Q?6p8/fbg7kHaxPiEU0qxmOfm/z5WYBEXIsQQGEQZSJP2gHn1A0UAL+rtT/NG/?=
 =?us-ascii?Q?w8G15Vdogu3/T3owLWzptGMoX14F3A611PQaItyaqgJixV3KsaYL7wLS5Lsk?=
 =?us-ascii?Q?b2eovxuX7/WKpoYBW3BgRusUoQ/bM5kaKj5jX9bKAl7nhOYyZQK4zFjjAW6E?=
 =?us-ascii?Q?RbQuZrA9vWZpdcboiRAV+trxznVAxycnyGj7L9f4r2iDHr6vR+fIgS9CeKeh?=
 =?us-ascii?Q?GGphzDdAihlG408FYSDeoq3J84cKakHv/aomJAWIOqz0CBUL+bSfY7Cu+JTU?=
 =?us-ascii?Q?jonm0q4Hc+C78c3EmHg8Z50TO7ccsi0V+UvmOQ4ts0D8uUXOae2jWMWlCKzG?=
 =?us-ascii?Q?HkcIjj5ruxCnmTt19tFYBpBG?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ABrSENQ7Gn28gTTZ6reAnuhCNMze3lpK/SE1lvvEnsEDxuxL5CGeq2dxzugo?=
 =?us-ascii?Q?xtpksx85xSwqBGi8rKYhGQM5EzAiZg8J3BJFhtE6zdRXCQChECGNmDny2OG/?=
 =?us-ascii?Q?GgALLq3L6fj4F8ULIFi3k6DXnlNRWsuOzz74KGIQfboUiJb/Mmeqj5+HQVIb?=
 =?us-ascii?Q?yAjE7P2qnjTCbRh231wl1Rh7zn7hcvVdiCBNnOr2zu2dqRiJL9dioRiwBzLj?=
 =?us-ascii?Q?0LOa8vCa1yTZGAnuWcPFX8R1Wc4Y4H2iAoDyYbHAEECYyZo9AXVg0aexCs6o?=
 =?us-ascii?Q?McuWsPFUzM0sOgDjsQLazHm0C3AjNdQIdXi/1vZt1o2odDFR4PbUzrRpDgZN?=
 =?us-ascii?Q?FzmCVbR7/B0Mibvo8p5TDZ8dXeP+ZH3tdldkFJ1YNG8BayXbHAXvghITf1pz?=
 =?us-ascii?Q?Gv+xog71eEzclgjTodk2abGEGFwGRJ7cHK9C3U8TEdg+fU51wJd99zqN3flY?=
 =?us-ascii?Q?5unNYAfswQi9xmdT5cyHZlnS0AOP72vVkqiPmARAi1ey0gJVACZIA/j3mAkU?=
 =?us-ascii?Q?MCwPHKS3zo9e8x3mcO8u2eeGeqsQqQTeTFcL/n6TKQw/aLirqpomM4hBx1Om?=
 =?us-ascii?Q?ViGc+qSAnjxVx/2mFroCiaAo7SsYoPV8wCJfDVNyNbS1R47Nmpx9P3HkXdCn?=
 =?us-ascii?Q?5IsJ/bDO/yXwpI0HJqP/xxUlx4ItdVv9HOFqiJNmX+XaSDsK2oRRsoYVEsoN?=
 =?us-ascii?Q?ARA6AIEyz+RZTG9diqkpEuu90ZB3xYi4SHq5p6FcJeWcJwtxrCstSqGwLZ5y?=
 =?us-ascii?Q?TYRJT0IPtBjhXVi/GijF2rZkRg4l4RuKhamm28mis03Il6u1iVOK6U0hYPGo?=
 =?us-ascii?Q?y3cGP6arw+lx5Sedsm5Zq1Ayq24n0P04HfwnsiHYBmTAHxeQotpSLj3Et4j6?=
 =?us-ascii?Q?1OK1QB+T2MrwbiWAK9WOHLYpee37NAKCGrQUrOkVWT62ZwHl1RntYTGdFTG5?=
 =?us-ascii?Q?RLImwkPIb7N9xaosASuFvb+NcQUUx5lXiQxVUagBncXk6X3XPaHIc3+AF4cd?=
 =?us-ascii?Q?He+Z7BWAKL4MintKChFk23eK4YdquHNpdQpBzTm87iTnhwtPoApfeEklvNgL?=
 =?us-ascii?Q?lcN2vNHezIX46I2U1cZM10VuRbLuDItHVywcyh9LGtiApDkEYaompDIC1Qm2?=
 =?us-ascii?Q?w1oND6qCptp5+zo1doPxA6akQWIHFt8xAWYCqXdiI7brsR9yKek7v0ckVIi1?=
 =?us-ascii?Q?AgFYOzoDtcXWtcEUdtVNdz3p6yvDvyY9ItmT8LahazMBepzNupFIOLOQT9vO?=
 =?us-ascii?Q?22lc7lI0PCEoORw28taLT6Pp9HWHG1/fn+5ZXSiQJvg1IODjgioZXrzYu12h?=
 =?us-ascii?Q?bXFX6AJ/1gh1iO9rxlmunQBWBdgmDNyRBaMprTgujuy5xetsto4Y0mHBjtTV?=
 =?us-ascii?Q?MxWJa+XQRdKoSUBV6DIv/t3HzPvb7etzfmNPNLGfsdK2w7MOXdOJ4SLoBgvA?=
 =?us-ascii?Q?mHblMDQY891VCxA8OD8wwHEUOLib0hHRBeyegkWJXbbjnqVvhANJnP4Kos3l?=
 =?us-ascii?Q?fAHBYiziDznR4EV1S3rKYIW+eTVxwiMk3ARbWMFoEsR+k1jEVA3BKyMRv/Wq?=
 =?us-ascii?Q?SWPytzIdPEEu3pQV+jI3x9+FRpnle8dDDQniYQdAf6hjnDkc+aOrv4nyMeFp?=
 =?us-ascii?Q?ag=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f40eae-8b3e-4fab-87d1-08dcf1d67fda
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 13:44:35.2121
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MCfFDtaz798+sWB9bTQecUp2iIK983utH5EEpH+81ih3Vscf3CoTBuCGk/2td+JITl4RqcOOC4irf/SSaihk0OeXQzJ1AltyY/lqJmwJUU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10351
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 13:44:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64069

Hi,

On 10/21/24 1:36 PM, dhanyalakshmi.k via lists.yoctoproject.org wrote:
> Hello team,
> I'm Dhanyalakshmi,
> We have designed a custom board based on the FRWY-LS1012A evaluation boar=
d, with minimal changes. The main differences are the removal of the audio =
jack, Micro-Click connectors, and Ethernet ports, while all other component=
s remain the same.
> I successfully flashed the U-Boot firmware ( firmware_ls1012afrwy_uboot_q=
spiboot.img ) onto the custom board=E2=80=99s QSPI NOR flash, and the board=
 is booting correctly with console output as expected.
>=20
> The next step was to load the OS from a micro-SDHC card. I formatted the =
card and copied both the OS image ( ls-image-main-ls1012afrwy-2024080604264=
4.rootfs.tar.gz ) and the bootloader firmware ( firmware_ls1012afrwy_uboot_=
qspiboot.img ) onto it.
>=20

Very wild guess, but it's possible the qspiboot image isn't supposed to=20
be able to be booted from SD card but only QSPI? I can tell you for sure=20
that the U-Boot SPI image for Rockchip cannot be booted from SD card (at=20
least on RK33xx SoCs) for example as it's a different format expected by=20
the BootROM.

I would highly recommend to get Yocto out of the way and make sure that=20
manually compiled U-Boot images actually do work. Once that's known=20
working, then you can check what's going in with Yocto, if there really=20
is an issue there.

Cheers,
Quentin

