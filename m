Received: from EUR06-VI1-obe.outbound.protection.outlook.com (EUR06-VI1-obe.outbound.protection.outlook.com [40.92.17.53])
 by mx.groups.io with SMTP id smtpd.web12.36847.1613419927548824605
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 12:12:08 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=IK1uTmRq;
 spf=pass (domain: outlook.com, ip: 40.92.17.53, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D1ZN3kVLF/NjLrnUZ0oRcS+mQoKEwJq1+doTUynJkFhiWonce4uEgpV2DJYMTgchEf4xvsz/NHCgViu53Kp6tz3dDlNYAE+X0JhxIBI+AacWBZ1GRdSDNO9wq3olyLhdiqQexhnWbuxWqConPAuWwUj7rUfkJDhKVsmsglRos40r/7HZffgj2ZKcEVL0ao0i/4LlI+fF2z5ev/m+ccBYD6LH70hkwrVlK2NKTZoZwBzep8pb2ANr0p+myS7f7zK+rASlxNAX9tamZxF0RHKE2MKBryjkzGIRkURp7fAFW0u1v8mqUKHU8uiTzyowPfOGJxJvWHXT2V2wZZRBS7V79A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bbm3X3OVQLr9PsA8Z6R4CTrGx6Hfnf5w6dwfmG6XO8k=;
 b=Z5nf8eSLa2JibJmRZsyVq0BM6XbzDpifvsYOEcvmXMUBR+qlzaVHPiqL8pbODcvZhM6ev6wJ3TpXFmmaFkPUsQtod8xk0U4VqCuw9btNylIQVRan6X+MBDc23FKjf4FTFz9ENfIU0uTFLV4DSm9zg+qfkWWllL+h+zjebMprZNbjJLDHC8WoAOD7q6eofe+yqEK1L3iC3Qjy1RJ3fBbukUEwLnBmKJYtyl+sOcmr2vUqDC2asBy8TFkrDA6hb4YoQYWstIwrq1dBoQK8HJeZPDSyzSeyA7V9YLXfP21t2cifHvNDZzMRb6t+XIb+bS48Tyha3q9PARHKzCd4tYxwNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bbm3X3OVQLr9PsA8Z6R4CTrGx6Hfnf5w6dwfmG6XO8k=;
 b=IK1uTmRqIa8RcTQGqsqrJY+d0DIFBQgZm5pnQjkTiJNX5uswRI7aSdv23D+plY+vFJFz/9MLwi2y7BclSSqr9W7kEQDq+WA36nyJXWG/LgvYc74W6grXcLFhlMASrezWJvaB65fqKT66CT4t/xmQAVaP2AU4b78Kw2A+2gj0uYyKH7dyuqQG1uhrFRXbpCRxeP7bTVZMda3UCoo4e0TH+zubNZEUMRQinWZpGdtzjjoDYiXnRMFW5Uosa7iuUHX0GQOgeKrVKD9V3TyWx3gu+s8sQppm6j+3kVtpPRrDTx5K5As3ovFSY0xXlRr/PJXWmKcnTBfrHLJdbgotxzrfWQ==
Received: from AM7EUR06FT028.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc36::4f) by
 AM7EUR06HT143.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc36::90)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Mon, 15 Feb
 2021 20:12:05 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 (2a01:111:e400:fc36::4d) by AM7EUR06FT028.mail.protection.outlook.com
 (2a01:111:e400:fc36::500) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend
 Transport; Mon, 15 Feb 2021 20:12:05 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C8EDCEF7690F0780A5A633601910BF375C698668AD7E14545B9FA99B08BA9AC2;UpperCasedChecksum:DF4E5219ECEDFB7B8EC95239D916A47066BDE682091A5C8DB07561FAD0F76D34;SizeAsReceived:8625;Count:47
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d88:562c:471c:9560]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d88:562c:471c:9560%6]) with mapi id 15.20.3846.042; Mon, 15 Feb 2021
 20:12:05 +0000
Subject: Re: [yocto] Timing a recipe
To: yocto@lists.yoctoproject.org, rustyhowell@gmail.com
References: <fQ55.1613419717498551221.Ltf0@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM9PR09MB4642A3B12B44A1F158613D13A8889@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 15 Feb 2021 21:12:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <fQ55.1613419717498551221.Ltf0@lists.yoctoproject.org>
X-TMN: [bWhawjZsj62+4rrOwLgCGRs2uNzf4fDN]
X-ClientProxiedBy: AM7PR02CA0006.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::16) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <7957b685-6447-9c2d-5161-cda341692f10@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.91.24) by AM7PR02CA0006.eurprd02.prod.outlook.com (2603:10a6:20b:100::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend Transport; Mon, 15 Feb 2021 20:12:05 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: c1f20468-a97d-4a86-ecda-08d8d1edf6ce
X-MS-TrafficTypeDiagnostic: AM7EUR06HT143:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Y6+Jafjoz7FXs7uk49ycR5E8wzwaxgXyVtu1TWdUhKOYjm9+75qOzOemE6iAY9efalgImYbV3YANEME/pwwieT/zRgL7SSNRJmTALJcJYgo5FlpFVLOKZvC/2mG3pvuxfIExnBpHLLYbCw4lqSbOmeurEqO6e30bqwv2S7RRfmctEfZBu0UvgcA5XsSi7xiBHuW4AEoNklB9sfkAU1hL7akjHbPG1RcVaFx5aN2UATV9NqDPlnuQ/tDXZ9cq+WBvrGJzd0tL6/F6R4bc6Wqsotrs8YvicV8f6OERLyX4DrcJANfWhgl98f9BuBOQCFQg16j4JKfrGoeYMQyBdtEqHGt1EdwQIMILeMNhGlPab/Iv6mznoDl018nDM/u+A0XNnzCzcieCIc14rltIkWRjmdHyOObHEsuVo8HDzg9ZxckMPBXZ6dghOl3grRIQKw68
X-MS-Exchange-AntiSpam-MessageData: 
	LVOR14/5G6XVQuVTrqjFxbvauVvuk86UhrAQgEyd7BiXg2y/yYxiH9R5blMFxzahqyXbAJ8sq1sxOm/71YLZiLQ7ddrZcHErRm+KesqbVNgwpXlAMT1OZiGG971AtAU47F0IB0E8Wv1bQ2Rc+XEsIQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1f20468-a97d-4a86-ecda-08d8d1edf6ce
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2021 20:12:05.2868
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR06FT028.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7EUR06HT143
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

buildstats [1] maybe? That can be inherited globally and does give some=20
neat results and insights

[1]=20
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/buildstat=
s.bbclass

On 15.02.21 21:08, rustyhowell@gmail.com wrote:
> Is there a way to automatically record build time of a recipe without=20
> modifying the recipe itself?=C2=A0 I have a recipe that is a monster, it=
 has=20
> many git URIs and produces many packages that are coupled. It should be=
=20
> broken up but company deadlines have kept us from taking the time to do=
=20
> this. I was talking to my boss about this. He said we really needs some=
=20
> concrete data about how much this monster recipe is costing us before=20
> green-lighting the massive effort to split up the recipe.=C2=A0 I agree =
with=20
> him, so I would like to know how much time is spent repeatedly building=
=20
> this recipe.=C2=A0 I figure I could do this by adding do_fetch_prepend()=
 and=20
> writing the time to a file, and then do_install_append() and writing the=
=
=20
> time to the file. So after a week or so, I would have many start/end=20
> data points to discuss.
>=20
> However, I did not want to modify the recipe itself. I was hoping to=20
> augment the recipe via local.conf. Another bbappend in a new layer would=
=
=20
> work I guess, but I was hoping there was something simpler. Thanks in=20
> advance.
>=20
>=20
>=20
>=20
>=20
