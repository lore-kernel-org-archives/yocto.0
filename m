Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDE2D6DDF9
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 06:51:15 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.93])
 by mx.groups.io with SMTP id smtpd.web10.34788.1731912672474027214
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Nov 2024 22:51:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=lJmp2UIg;
 spf=pass (domain: navimatix.de, ip: 40.107.22.93, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FiOIdLiPKYiA8ODRc0qGf3ZiRd9gAHZX91w4Cf5Vx5DTCcTMgItcDPZXDhBmxUYeSSa4QhcE8jlQf8wqTDlQsaWN1kvrLCP9HdSbQvvOuv0qvUURSNWc1lCRBkNrzK37jnjbmGQSWPoqKETrKDI7kxopAvg2ss+NUuA0hcpNWOkY7+tPd9bxhBmbv1xLdbQFaDUJS6cQYRLkJV+vOb/iN8WBaCjul4sIplz8X7+iLRRneNShfkHNRHBK0XkJ21ce4Z+MljLgn/RnxwzYEm5+1clsQdRDuA7/39+dMc8KtygF+GYkGnsLz5+lvxC1FZYSJQylI2862qrf0z3DqGhcWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfEYVzN+B36iQn5tTPGtfeECxD6NlmFK48Pc0YjU2tQ=;
 b=pXHALI7nsWcl7S6T7B5ok2DRghVydBpFTF1b3BtmqV09cA+4Q+37c6e4cmBtLG1CAbxubdAtblo+JIPXJptZT3Ffo1D0eZmBPow6hVPTSdwwsUWSa3WM4i1cl7L6q4V/oiKmscZFw44+FM6elyyCjg6FoDR1BSVHFnCVm9Pz6mtLvgBntk1lPQMtKKmdmoBvm/2pACOIkiQW7VCq3zwOjTdqALaE3wX8MaSo/UnVrKf5nY5ljxOrDGa3/97h/FysMCxfWIeE7Tr6MNF4uXryI1I/D8sUexGJbSQ3XAB6LB/s+lSdUBQfZcNU21wP+xP0RmmgSSz6ciudZJRtElotLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VfEYVzN+B36iQn5tTPGtfeECxD6NlmFK48Pc0YjU2tQ=;
 b=lJmp2UIgUb8wq6U6lXbIzxdkdNybx1s4SjTy+wyqftRbUnvRpocg5+PGPcjEqCdPrHuATpOzYhRvWz3hRtsjtivnaP/EoQgX4hlDdzNGZWEZ/344XVGEscgUrWvFV2pzm+Ow2sE5H1VWwOGys2g7sVhJ3cVJ0uAVQ5y/h/aQEOA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by DU0PR01MB8950.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:355::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Mon, 18 Nov
 2024 06:51:07 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%6]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 06:51:07 +0000
Date: Mon, 18 Nov 2024 07:51:04 +0100
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org, hchanuy@gmail.com
Subject: Re: [yocto] Sanity check on a flashing process design
Message-ID: <ynafctjoaoez4csrzfrrsfi2mueyv5jnghilcxb6f6ycndgou5@ksdoeqkpxbxa>
References: <txnM.1731862131559699819.0LTy@lists.yoctoproject.org>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <txnM.1731862131559699819.0LTy@lists.yoctoproject.org>
X-ClientProxiedBy: BE1P281CA0237.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8c::8) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|DU0PR01MB8950:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a3bd856-7ead-46dd-3406-08dd079d60b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|27256017;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?5mr2XnsLnnuR500XJ9d2jvCzV/CePNh8EcDz1hJgk6IfHqLzRU09pJHHYbew?=
 =?us-ascii?Q?8MwnJHNAHt/wk56LDM7u9xz1xDDltr07Z78NCCGiETFvejRR37EygSEsPOsB?=
 =?us-ascii?Q?N0K0f8rc2KV8tGCaSDVbEVGsOB7bwA127I6TQ0W5ZoqIQzYxe++eryWAihMY?=
 =?us-ascii?Q?ZmHoJSWdLFHSjmPJtQX5AD5ZLCKWA4h+Ps/Y8LWJtIaBSUMHSA59EraTCuk1?=
 =?us-ascii?Q?KpqXkV4eZkmL2TAogHG7NbpOgBdqHY1lgH0Sjxz5aLSUKEC7XICKvOXuuaqU?=
 =?us-ascii?Q?tooY/f45IXZoHMjH6Rt5p7KAixX1CwiOg7ZsCvE0hPw+88g2Dqlszk4t8q5m?=
 =?us-ascii?Q?kLpLXCEojxDiwt+xa0Gm1AyMbla9mzJL0rhCy1q4LOW2QWOJRkzOkZBcDzn8?=
 =?us-ascii?Q?TxEwQvFfTqpf3Ogg99U9AEVg7LcUFC4t3ervx7VxBK5+Dn530+t8luIZBWaR?=
 =?us-ascii?Q?B1gr5BQORcvlwosby7Bd7fPRUSCTfLqhMF2SI/6GYuK82QKNZx5+FA9vEK0a?=
 =?us-ascii?Q?X8zu7qAMh/smfXpXcODIvMReHtWESJJjUyHtJ9gmr44YNgfEx+kTPMuQPI11?=
 =?us-ascii?Q?PWD/pD27hFGOiR56sZuHl+I94geQWMiXRgXB6VxRQr6nUopkW/vtGs5KXkPC?=
 =?us-ascii?Q?bh2hUfvyQXNe62eYP9P+JV6+WDDdVlnF+nslB5+7CnHRxF+10/oaoCiKKYeq?=
 =?us-ascii?Q?XhegGvpRzgH7VoGXLdwhFjZoUjlak1D2q86QfVZmfsXYgZFfJjquzClxdtRu?=
 =?us-ascii?Q?167Rm3fMUICCTWA0hjVlTGl/6zyxy9HSNzkhC7oFxRXM5INSCJEqEo2icVaH?=
 =?us-ascii?Q?LGA1nd+Bc5NcuQIaZqJ5YCQXS1sn7AmEUbb69XuT5t/R9QDdW73ukVKWsrE3?=
 =?us-ascii?Q?34mhcd3Dy0LOlk5KXSBz1ukEKLFzNvLuQqwatkSwzhP5VrULUbfMOMsNa7PN?=
 =?us-ascii?Q?PHEIzCBBPefi52VKnwdmWLuqJ6zsHcp2eUsoAttCUQSpj2uy9rau8RgWbIgV?=
 =?us-ascii?Q?6JfeP6JTDBhb4X481za469p0gjZrshoR8ZlnMPKqHoZ3oAgGsPdmJUAY8NWi?=
 =?us-ascii?Q?dc+MZ1qNGD92sExG5BQMWDlnZ0HlHoChwcK5ojAgb9Kgk8PgxbGosjmJux/p?=
 =?us-ascii?Q?HtRLfRnlp7sjiYdqBc6mHXcpq3xdsFah//meh+XBP4rHnHcpMbfEhDQZDl/t?=
 =?us-ascii?Q?F+z7OmmKk3FsWZuq4O2s20RdLJaUt5F9GS3b7lwzf2q4eeFxljY1rEXo+6+O?=
 =?us-ascii?Q?SbUrlgwuQgCJy/XgOGeOWi/2BK5rnw9xPUMWZl4vSPEpae6r3yNXktSMSebD?=
 =?us-ascii?Q?gBg+K+4DoD3JYjFi7bBXranwpo9QHTgwH/7HL442hUuIvaF6QjvQCe6+aQaL?=
 =?us-ascii?Q?WEppXXE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(27256017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?9c9mLNvMXi6v8EF3wNC7VsoTLYczyBjX+u2Jhs+Zy+qvazuqtv9cGRMo3v4p?=
 =?us-ascii?Q?UArEAs9f/C6dasZ1UTRqpEkOVUdiXrT63gB6EKmK7i5hw1IBTmN9Z5w8Jv/s?=
 =?us-ascii?Q?4UmykQ9pNv9FG1p61dHJoPQaaCUQ3rhW9W+D3FLW6iuyqISQag+T0NsN8Sdl?=
 =?us-ascii?Q?cxScHGK1Ff2mBKW+uEDH7To/zlONQaOr/oJuau6y3cuD0ykFoLwrBeBVzQbv?=
 =?us-ascii?Q?rTi27XIs1ba+6qO/Nc47T/qnZSYpX4qmn4UsEmIGyCfhTVAaCdgqd6enu+28?=
 =?us-ascii?Q?ThuHt/14MpN+HBAvBQbFvSHvXVIyQqk3idPmSoKTmxoyRvKEn8oWyAZ0uNfT?=
 =?us-ascii?Q?BW/pUMMiajrZpIx07iq4YtH6z8W9sw6ECe8s67G3CmN5F5TrhqpaK8qonl4l?=
 =?us-ascii?Q?LZdxvhsckjn8YuA/t7s6QavhlDyNVD0H7AYkCsnid4CnmlkQqIPDOkg522KD?=
 =?us-ascii?Q?OgPJFm423/5inOJZvytsRWq1T5OTDcKOs+jAlUqXHl9Q8I0xBNOBYGkblH9/?=
 =?us-ascii?Q?Y75f8inBynWwYUcdPtcJ9unQ5/ZK69AqzZVqccVNLV551MmyRztUdgNoAyoD?=
 =?us-ascii?Q?lXXnDB00n4aEaXzD0sriJxRVpIgXFV9PgV4/+YJafjrThhwEpirTD8/53HZm?=
 =?us-ascii?Q?sKrmlxOZrCewt19tfjTv6grONEGuZd7PJqv1AnoVpAkbd+H/jwzcvdYCz7ks?=
 =?us-ascii?Q?wiK/yZCu9DeDqySQZUuz05ildzeGrc7PFc7YINVmYs2LoiYEC3iwc/SVa++P?=
 =?us-ascii?Q?IEDYHsfi381aQh9NJA/YP63yoEh+6c3LWMVnAlo5D1Hr4L3YThXKRyFMG3O5?=
 =?us-ascii?Q?JI3BzKI1v2ocIvTN8Kh/MfFZGf4m4+/2ZbVwo10NDWPJ21NdcT7DG20Y/Bvx?=
 =?us-ascii?Q?vDZH9SsOF8AF7rNA7JKRECg1e0AmiMEZsdhWydQ/srrneHpEnt5klWt8uyxW?=
 =?us-ascii?Q?qTKve6EBLnyV1Qu25MaGUKkRzZvS2vYAMJEv/N8SdnlwqugUD3shuCm+WkhQ?=
 =?us-ascii?Q?M5lEM9qFHgVZCotIgLClS2+hhYi5sM6HtKN1D46RX5PP/wM8yVDze0C2kXlC?=
 =?us-ascii?Q?/OzBUfMtvBldvquv/S1gouDNTbLuIiW2NTIJ1PfCymrQYUpyeg/chalctz4r?=
 =?us-ascii?Q?PF5ffN59LT7WOTz9qCTKjjBbxTz5HjKj5zfF+HoonOK/sEjbl0rxWXt1Ue8H?=
 =?us-ascii?Q?cbMnXU08AMpQKG+/MPiloESUoFpQrEf5h46QcTHg+H3LqeVnAhK9tzy6tY0h?=
 =?us-ascii?Q?TEkYP1osEw0k0h5TgzDqT89VU6ydLoMVyRSFgFm1A3J87qnQzMjUn0b7YPpa?=
 =?us-ascii?Q?zMuK4CVvyFY3N0SLzN0HsYJl/VcfWFC0cVF6eSVhmGrMCVAU+KowAbpkxbUe?=
 =?us-ascii?Q?sJzCwZUOhygdxmEO+vCD1t0ti0D4HRXG6sKJ42ii+eoBBysUkg8NpFrQwcud?=
 =?us-ascii?Q?Zp8KSfRoNC4E2LXvikEehlEBoP6gWOGNsV/dtCsE1eLMzjhalMdrRMQsKLLC?=
 =?us-ascii?Q?7wjsESUrHbExCMFz2rsuswWQK1VLo1g64FKmIvxmU9Pu8G7UB723mcsajwIU?=
 =?us-ascii?Q?+e2l3gpe9mFuJWv7NeeG+9Ri4JUoIV4wEs5jhOXzgDElGoukZpy3trYWCVND?=
 =?us-ascii?Q?LA=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a3bd856-7ead-46dd-3406-08dd079d60b5
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 06:51:07.1570
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4yaYm1zmxg8D9w+VTRmEvIKdFRI3kgmA+mlreZhzovTf98jRIrI+Ste9wWr/tc3ZjCsVdbEWgJlXCZ8VCAvdZymGCeOUJ1/su38HL+qytiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR01MB8950
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 06:51:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64285

Uy Ha via lists.yoctoproject.org schrieb am So 17. Nov, 08:48 (-0800):
> Currently, I have=A0 a functional Yocto image in `.wic.gz` format, and I
> have a ~7GB eMMC storage. I then set the size for the partition in my
> `.wks` to ~7GB also, but this makes the flashing process painfully long
> (by doing `gzwrite mmc`).

Maybe `bmaptool copy` would help or `zcat |dd conv=3Dsparse`.

Regards, J=F6rg

