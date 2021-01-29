Received: from EUR06-AM7-obe.outbound.protection.outlook.com (EUR06-AM7-obe.outbound.protection.outlook.com [40.92.16.29])
 by mx.groups.io with SMTP id smtpd.web09.2089.1611953431067870014
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 12:50:31 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=dVNrQ3XW;
 spf=pass (domain: outlook.com, ip: 40.92.16.29, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibVc7GTOgh1p59QCEOchAABpPEWg6J7x/pbPBm2kTiaR8ZKR0Oz24auEcgbTp2KJ/MhiSRVniuMiFqGe9d/C1fcI7uGZlvUkXGYwN5OCjGu3WftvOvRs2/Hq1D0yU4vyVaFQonQHhVT1QzHkgI6IQc/4vDcTeNESMA8+4JGYHd6NjloHkDJKsi91b5RWI6lKtStbHlA3pRkx0w/ArEH8y/TYyAspr3V7H+1Ughqq/f6nVlz5QiLu85QKl3HUx7ABr1fIWdXnCT7mmzzP5ySEC4r4J++TrXgwD4A81tFta8vDJ9wqytIWr/oLo8CZKTKM7GknhrN6RLIq3IlvYf6R9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvxYMGGFH4Teo1brgqfT/aKaWnM3T//0WxXpY6mXT3w=;
 b=UWWvYAbE2VgjLpOZ6HE6A19O/FuWKGGSNcgXMnmZHKXnFyDfYxzs7oypHHQq9Jx2fOFcxoXUU/KSEPCgfb6jyAFRS1SL64yfVU78vFWMOz56EzlfuOhtJiOpMY0FiBIL0NWZ8uWQC3o+r5Qv4bwoeIMnc3oojgBEvHRIAyKE9Wmpe/G43cGz3bvKELH0YmIflP/EXu0nBWegvT+NJhmR19TfKDB06jHyAC//YiQVdvWc49ZBHw4MEJLAbcFLhDHAArbQe/1au7ShKHK6dZNWorbsj4YBL76cjzVC9xe3gUIA5jjK6oUiKZnUxkEGEyYycCJpd7Wz0qfQ/AOfmSvzGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvxYMGGFH4Teo1brgqfT/aKaWnM3T//0WxXpY6mXT3w=;
 b=dVNrQ3XWyI6EWqap7CxyS9KDGe7q7FZxf7+KyMXkAcy8FbGxFW8Xz0/v9nLiGBTJRZsIyAqxPLZV7TKvEgjuf+j+VJ7hwS+Qmw6hDrzy4Jgg0Bz/j0XOo/oScLR7XtxEgJNqzWfbwB9BhVCJWqBuC+8CV1EohV+Hw25itRogLK2lFynsWQDWTn+4mpoWEtV7GZOHg3+q0X1dpAeZnKVvCAfNmNpaN7mq2ENshWU6ggN1CdJ+9xnpRrBrFeej06sgtUOPtyPSniHzPJ6UPGzWQqkSPBnrVucTzmJGAxU7v6FzqkYrPWx6FU+c01F8X5Dcmd0A4Qrudyy+QiPzibzHNQ==
Received: from DB8EUR06FT033.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc35::52) by
 DB8EUR06HT071.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc35::339)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Fri, 29 Jan
 2021 20:50:28 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 (2a01:111:e400:fc35::48) by DB8EUR06FT033.mail.protection.outlook.com
 (2a01:111:e400:fc35::324) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Fri, 29 Jan 2021 20:50:28 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:3CE6693E102C466D86D791A6F7453220802B2DE171B73E39207086CC617414FA;UpperCasedChecksum:C5B4B80F1A603CE7FB402EF1F086F4929CB9CFB3DA03BE87CEFD892E821BD49F;SizeAsReceived:8705;Count:47
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d88:562c:471c:9560]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d88:562c:471c:9560%6]) with mapi id 15.20.3805.019; Fri, 29 Jan 2021
 20:50:28 +0000
Subject: Re: [yocto] pypi setuptools based recipe fails ModuleNotFoundError: No module named 'pkg_resources' #python
To: yocto@lists.yoctoproject.org, ddbabich@bootseeds.com
References: <2ct9.1611952860604820411.DUaL@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM9PR09MB46428ADAC1E8CFF125D7FADAA8B99@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Fri, 29 Jan 2021 21:50:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <2ct9.1611952860604820411.DUaL@lists.yoctoproject.org>
X-TMN: [D+IbkH/R9cPKKK7JTSgR3sDswIy9sQNd]
X-ClientProxiedBy: AM6P194CA0083.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:8f::24) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <e54dcd26-322e-f47a-7fc3-0de09baa2e46@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.84.110) by AM6P194CA0083.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:8f::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16 via Frontend Transport; Fri, 29 Jan 2021 20:50:28 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 009c7b0c-baf7-4bfb-18e5-08d8c4978288
X-MS-TrafficTypeDiagnostic: DB8EUR06HT071:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RXB430FYlylb2/8OS8x3y6UYtZ5Knl69vXPxBS1/nFrL8zeCBjV3mNPNtUhg8QulqlpG3ITjAq+Tayc3blsgFfnmJfFN7hs2pc+uwB2k5yHN1rwOKq90cqZfY9SPYDMOaoeEdVC9DzaCcJWTaBhOmxSCeWhB3gQlYJ75Qif+fZyv1sNK1igpZgLGA3bHW5KqejEwjGkmCIBJXCsTHz+pzeVx3ERke0rmRmQ7uvNnf0HFscqvuJpflQ6p0byT5+cNRpGae/x9/JMUJ8sR/nxd7E1ubN6POXize8xOL9tGmLToElLAVYOmv9gqk7Ex/Ugub7RnQYc9OJjKjlMb/lu3m04xZJYIQVjexUyhTrmW99v3ELl2EXQ5jHdQk0BCzOunSg5TIq9jHVrXMKjOlB3bv1DiV+kjXVRv/Kzp6oWuKNygkE2L6TrXAD8/ZncAREbO
X-MS-Exchange-AntiSpam-MessageData: 
	u56a4W44FdEDtltZcJBv23+A61YsTCNyUjcTkWXOzmzf/L/D+0CVWE+ogMcZsBR3p43RG9ipsVRqDz4uDDuPJvOxDLFuKRZ7PlpQzLBaG6RX9P6SDy2RB1Fob12ihvUbKn4/JgoCu7YM493kY9JT6Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 009c7b0c-baf7-4bfb-18e5-08d8c4978288
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2021 20:50:28.4845
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	DB8EUR06FT033.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR06HT071
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

The issue here is that you are overwriting the DEPENDS after the inherit.
Two ways to solve this problem

Either use

DEPENDS =3D "python3-astropy-helpers"
PYPI_PACKAGE =3D "astropy"
inherit pypi


or

PYPI_PACKAGE =3D "astropy"
inherit pypi

DEPENDS +=3D "python3-astropy-helpers"

python3-setuptools doesn't need to be added at all manually as this is=20
done implicitly by setuptools3 class


On 29.01.21 21:41, ddbabich@bootseeds.com wrote:
> I'm attempting to make a simple bitbake recipe for python3-astropy that=
=20
> inherits from pypi and setuptools3.=C2=A0 The very simple recipe is atta=
ched.
> When I build I'm getting this error:
>=20
>     |=C2=A0 =C2=A0 =C2=A0import pkg_resources
>=20
>     | ModuleNotFoundError: No module named 'pkg_resources'
>=20
>     | WARNING: exit code 1 from a shell command.
>=20
> I don't understand this error because I'm using setuptools3 which I=20
> believe contains pkg_resources.=C2=A0 In desperation I added a "DEPENDS =
=
=3D=20
> "python3-setuptools" but that did not help either.=C2=A0 I'd appreciate =
any=20
> advice on this.
> Thanks
>=20
>=20
>=20
>=20
