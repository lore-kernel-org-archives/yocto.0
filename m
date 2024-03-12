Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A44C54E58
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 11:12:47 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.139])
 by mx.groups.io with SMTP id smtpd.web11.6113.1710241960549784610
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 04:12:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=uxs8TxgE;
 spf=pass (domain: navimatix.de, ip: 40.107.8.139, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3V190fQKHlPiFMU6+9acuXQcuw1Y4dnpydfwBWJ1ReEJ94QdQxXNyTGWVO6+6j8CnI8J1imLYgaXXd0g+5nMYZoOAjoQkRPcSTmXr2xxzTAHHZmMB/caIsu2Il2mdCsbETu1g2yrywFy38DFPF22xoaxUx3d7Yu7XYaIgAsZb41+U1w8f0iCFPIK1zL5g8eGFxFnSe7dkixWdyPq/lUABWJxCtfzs7snToFV9uK7VtAqlAwLkU0qMJJvfQ+AkhBEztumBDMvh566kqBofrYzRL0poEqYbZbLf0Q6+gNdglyDHfJJ1f7ugw3kKmBrKOn7//Uaf1AB0miOLUR7Mj9Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pg63AUfYdoeIoNs8mMta0VewSxWcewb+sD6wya9c4ys=;
 b=A/ie47naYbiIPG821tpd4+n2683zuNw43ZtTzeEQk0HIvRCNKVlpWOLc02e7QTeYIT/Yo26cl1owtiusG0Z9u2ZqGkYR79M5tx1ia0E5Z2wxYiLr9muUeF1zkBiMmCVAHzZOeo1Wmc2vHvQHcKsj5G2sF0SFXxoLnbCqhu6dXWG7OCxAgVZq8DfFEAANEJ57R+5v9R3OkJ2H7/mhonzF2FzcYaKuDQKFqB3r0IPfBPcXPSz6GazKOWret8m0KmlpgRI80sj5jiR/rWP9UoG6Nagn8ap+rEeTuegakLdyoXsAGNZO9HTShCfj4No4mCVQ/xln69HF4SDpsXjk5oAVMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pg63AUfYdoeIoNs8mMta0VewSxWcewb+sD6wya9c4ys=;
 b=uxs8TxgE2M7QGQSMFKufsW91l+cdLWJv89ooyjGPO+HriuHWXKc6OcjyPKBJK/EzI7pDjtD09WEmu+8gn4fhUiBIhur+YmnilLgDTQC1ERxsNhbqs6YjQOHH3XJOzpWjNr7dfy2SDvJdFZqlMZk03ZM8h8bbi1lHDhLBXEHBxkE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 (2603:10a6:8:7::20) by DU0PR01MB10209.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:318::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.35; Tue, 12 Mar
 2024 11:12:36 +0000
Received: from DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 ([fe80::25b0:e60e:c5dc:54f5]) by
 DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 ([fe80::25b0:e60e:c5dc:54f5%6]) with mapi id 15.20.7362.035; Tue, 12 Mar 2024
 11:12:36 +0000
Message-ID: <9167b721-3780-40ec-a21e-ee36ea895257@navimatix.de>
Date: Tue, 12 Mar 2024 12:12:34 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Cannot ssh into qemu guest
Content-Language: en-US, de-DE
To: yocto@lists.yoctoproject.org, xylopyrographer@gmail.com,
 Marco Cavallini <koansoftware@gmail.com>
References: <27822.1709973725254624537@lists.yoctoproject.org>
 <27822.1710010738640962284@lists.yoctoproject.org>
From: =?UTF-8?Q?J=C3=B6rg_Sommer?= <joerg.sommer@navimatix.de>
In-Reply-To: <27822.1710010738640962284@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0253.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8b::12) To DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
 (2603:10a6:8:7::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3PR0102MB3658:EE_|DU0PR01MB10209:EE_
X-MS-Office365-Filtering-Correlation-Id: 664d122c-5890-4b37-435c-08dc42855259
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Zc/T5Zpami/N0Su7GrJ037MhqeIEqVDizn/AnUTc1eKZlaEjoLqSQBLF++1/RcL0FbxLzuh0x3UjqsI/7rz4xTqt3eGLqb+Un+NgQeDOQlHzNDV6g+aln87cez6Eea/fPKcSVIrXrlSt6oKI6iKQpBIfEtLClkXZJiEe6cmAY0hQ0h4tmzsMGxk9xszLl8izwBrBZwJftkry4LW3NPDLbzXHJmH8prf49F8lj7PS+Y11w+4EG22CKUNHWZevvGld5Xx+WCp9UoUGkG63NGRh3P/uNTlwZrIyX1sUEmJWMRQvYJy56WsTJdoX0OV1qQM9f6lDawBFg7NgFmz0ACK72qzAVPnmN3tc9UmvWVFoMJ+Um6KlTu+98a3txgQ/FIlGHl7dW+ykyUnct6DsgWjgQCTYIxni81fYfv5DJ7QPTzv1ttnxLRIJrTgWUOoJh0NacM4c3Xd1S77pey35k0kmnon4bd353Ul4L4kSToLSh9p+clRZ8G+M9wQeKNg8T6vY9dvAFM/n5gqxWxTjz4K68bveZpb5YhvbMKqULWKQW4mfP2WhtERSduELME/2P5j5JnkQMo3it9s4LfNrpbkUNudQaswBaXh30RxiS7Cz+z8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0102MB3658.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?cVcQUgvWi3jP/nXSa0wBt8WFEbL3NXv6mETiMwKVi5J9AM/x4Vbn0pZnbs7x?=
 =?us-ascii?Q?KtgmMnuTThhSqEkCVi58qYPR/V/AtGTzmzUKmMddpm7zeWkkBulzXu0KDmXX?=
 =?us-ascii?Q?oKO7ohkVXECEx1WimBpEI/I+VlrwcHWMR9nwE2MC0ioNS0sjoZsfVM99vbZr?=
 =?us-ascii?Q?IVT+NTsfI5HqS6MVaN9+IGYm4asqET3xsrEvwQvY9EwV0LuhV/XdBBCOY3zY?=
 =?us-ascii?Q?0M8d+oeQb7iV13bOsGjana8O4ONTN+xCyN8jI4Quel0f+5IUpA1GtImSbGlQ?=
 =?us-ascii?Q?hsLFOBIINoMRKLwgtxSxzH1wTLkm0STcJCwx1bb/jiRa68im3LF0SaJFI8cD?=
 =?us-ascii?Q?bqvpDmQvrxeBE63qX8dhtWi89nXBqpnvggxMW+k4jWhkYhL5R6McunwZpfba?=
 =?us-ascii?Q?Wzc3W/Kr+wBl0xAnUvPqsv+hbHGCBHfHGPSM/RY1v8THo1n5OkaKY2uNn3xc?=
 =?us-ascii?Q?V2xYuGk2XHerSl5o3biN7EoCXsqcQJeGalFLdaq+ZwAqMg8VJTilCC7RYu0C?=
 =?us-ascii?Q?bzPr1riAIbHC2M1v5je8M5SbumfkAQGy8r2fM/Cph52zI5BjFHRb5tvQQnFz?=
 =?us-ascii?Q?VNxUdD9yMzYvQvu3XWZZf5hAlktq93fd6xK0KOhWRaU6ii3iZHIA2nBU/sVr?=
 =?us-ascii?Q?qmIAzfDx/T8HCh7RWmS0iUd8V1Vp3ynzwkLIC3QX40dqGf/5PFI6yGRRLXA5?=
 =?us-ascii?Q?0Uf8KfB/9QvofCZOEb7nbeI4w5s+FaVnW6F0ikMBfhHVXI3x2t0NLduHE5NY?=
 =?us-ascii?Q?Zo9Xn4Z/lXGutUzjsQPJqCa4tNg8wt0LBSuvq5ERA1LA8I+hHkYh3XIIe75e?=
 =?us-ascii?Q?giKL0rCBCYSLD9uuN/bPbaViTLxcOBi30la6y1SsSNV5t/cGJvPelGOY+R1V?=
 =?us-ascii?Q?zLZZAVC+Djre5PICt6HJx/xXrYwZH2CwaEzcXywSQnBCHB7oB2ii2reZSQ9z?=
 =?us-ascii?Q?zArs8YUkErJkCe2Qx8swL6O5FmT8D7hYBHSDQdl3Hz6cD7NkMAmcosrcUebI?=
 =?us-ascii?Q?HOgiPAfcHJ86B8oTEZaow++UBpNxOgvGxrNipqzYDX6iDHkk6Z4U4+x4yZqK?=
 =?us-ascii?Q?Z+6rVv3EfRuxL9O8n9K4elRiesxZEII81Y8O8CZxhwDR3z20rFhYiB09l8fX?=
 =?us-ascii?Q?CXFYSkJxl4ErdPR9ofhAKpvSRCn5GqVHkrLjKeKEW6y/h7saB8yGSTo1rzzx?=
 =?us-ascii?Q?aoVbHGh4MXdy0gforhu6wPIT0NkpHYXBDZKOC/snASrSsoLwq5j4kjiKNzyy?=
 =?us-ascii?Q?r7yjJ0v4C4Toq7mg+WMjVVhpmLKOJkk3g0I6iZb1DNG+1zr2LL7g20UmguPT?=
 =?us-ascii?Q?Z1ZhqyzmzsOIu6MnEwh0A42wShqcv7SOpVdYblvIjtO2TG5iMslOBQdEvhTL?=
 =?us-ascii?Q?8xHt8gPFOGTD8aqPJSYj1lTSOUp2h6JVKNJx7byfmIv6g5YbhGffn8p/Gtqu?=
 =?us-ascii?Q?2zkhdWfC3kia809VzR0HI2XJjV/qpjeO59cA1pmm8B0MskpcCAyKFhQK59fC?=
 =?us-ascii?Q?j8zbeeZoin2QZv6KuEillMdIJfMn6dBnkF4zmXg/fivj5CohJuIDWXZk97hJ?=
 =?us-ascii?Q?nuE6oroe+qbVzLfw2iMTvHrzHuIpKMZ9bSfdEyqBc3Jl52JnvONG/z7ZkWT1?=
 =?us-ascii?Q?zA=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 664d122c-5890-4b37-435c-08dc42855259
X-MS-Exchange-CrossTenant-AuthSource: DB3PR0102MB3658.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 11:12:36.0524
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xju4VLQcFumd3zm6awsho0TZxDfFInMTWoZfnY1UBASoTj5s5hz6R7HOdQYWIcuyIpDuKKDtIGrPNgEW5+SRQeIO91n9B6ULDRL9Sfl4qT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR01MB10209
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 11:12:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62741

On 09.03.24 19:58, Xylopyrographer via lists.yoctoproject.org wrote:
> Thanks for the reply.
>=20
> Still a bit green with all this but from the QEMU VM, *sshd* is running
> and port 22 is open.
>=20
> Checked by running:
> *ps aux | grep sshd
> *and
> *netstat -plant | grep :22
>=20
> *as well, I can telnet in to the VM itself by running (from within the VM=
):
> *
> telnet localhost 22*
>=20
> which returns:
> *Connected to localhost*
> *SSH-2.0-OpenSSH_9.5*
>=20
> So I think all is as it should be on the QEMU side of things?

If you pass the option `slirp` to runqemu, it forwards the ssh port to
2222 to the outside. Check with `ss -tlp`.

[1]:
https://docs.yoctoproject.org/dev/dev-manual/qemu.html#runqemu-command-line=
-options


Kind regards

J=C3=B6rg Sommer
--=20
Navimatix GmbH
Tatzendpromenade 2
D-07745 Jena
Gesch=C3=A4ftsf=C3=BChrer: Steffen Sp=C3=A4the, Jan Rommeley
Registergericht: Amtsgericht Jena, HRB 501480


