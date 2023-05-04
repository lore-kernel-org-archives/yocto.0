Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4384C77B7C
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 13:11:46 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.55])
 by mx.groups.io with SMTP id smtpd.web11.49060.1683205900345240909
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 06:11:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ABT0/jUB;
 spf=pass (domain: arm.com, ip: 40.107.104.55, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHvlY7xkIzlmptoKswve0MQC3MjzmK7dlDEwQoUcgCI=;
 b=ABT0/jUB60H0+l8F1+iKO+OTYjF7mQma6MjX/CCovysnVVbL8SD5R3hc6Py9F+YnseEgbkl6wJlLqASZseE4bJ2i6LapPufUjn+IGS9sJHweZUDYyTMLGKTjuKyv+pP/xU7Jr2Q//xsht5YJGeFEy23aid5WCd6/5YvjeriusMs=
Received: from AS9PR04CA0070.eurprd04.prod.outlook.com (2603:10a6:20b:48b::16)
 by AS8PR08MB8706.eurprd08.prod.outlook.com (2603:10a6:20b:564::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31; Thu, 4 May
 2023 13:11:37 +0000
Received: from AM7EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:48b:cafe::20) by AS9PR04CA0070.outlook.office365.com
 (2603:10a6:20b:48b::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.26 via Frontend
 Transport; Thu, 4 May 2023 13:11:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT030.mail.protection.outlook.com (100.127.140.180) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.26 via Frontend Transport; Thu, 4 May 2023 13:11:37 +0000
Received: ("Tessian outbound 3a01b65b5aad:v136"); Thu, 04 May 2023 13:11:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c40274686d62bad1
X-CR-MTA-TID: 64aa7808
Received: from 2d114818777e.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 08C74A1E-DC72-40DC-98DF-AA9958BBFBBE.1;
	Thu, 04 May 2023 13:11:30 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 2d114818777e.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 04 May 2023 13:11:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOIXOnrKe/GttcQdrLULF8X7ZlxyJvQ49KmM3scvq/pctQrOUJ+yIVgRuRF9DS+Y4rTOWH/7l/tuX2K1SeDs9iJVvoPSK0HOPqSsUYj04R8aXaV1DrEaxc0pk8f7l8xT+OuOE3knOxkwajGn7MKjThaHxyjCKERkwWWnd2loe5EyXZpzhnHQXToLs0z/G32tT73zrvR5nlbxFcKplK1PXYYRB/ipL4qxvmQQv8A5YNhoBlJ9bTiYkk6qFCsdnCnm4g+A3NsMz7BEABw+canfXi+fMG5ykdDC5fcyeCZoXjvldjvie6/JfvYldyTJfHzI1E6SJ65urJwvDxtHmvIfqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NHvlY7xkIzlmptoKswve0MQC3MjzmK7dlDEwQoUcgCI=;
 b=OD+kWonWeKynpDvPwyZbjt3cck2DNVExqIRWrYVlBhxw2fvJVokwgjsKlocQ2ga1G8KGCpQyN7tQIMJ0nxLpPH10WSTpEZTMAqK9CdKo46fDP+GRvdJtOPKclLhSLOyPq4IC8B957tN0GYev5niWROAVEFgK1+gzmy7HeEMA+CMey7hcApyqwJ1fYT4O7ADW2eOHoI3Nem6aB/eBcrrmuBcjMoRedNyzaBI7A6P8BchSCHcLWYI5YkasDCX/B1qJWX6/XeU7+XvtEU5d/bnI0lhZhTO9KMxr794l21mhLDVSKQZBbahdJH/ErWWKi4ptWTp9k4CvQY9T7shjen2Y3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHvlY7xkIzlmptoKswve0MQC3MjzmK7dlDEwQoUcgCI=;
 b=ABT0/jUB60H0+l8F1+iKO+OTYjF7mQma6MjX/CCovysnVVbL8SD5R3hc6Py9F+YnseEgbkl6wJlLqASZseE4bJ2i6LapPufUjn+IGS9sJHweZUDYyTMLGKTjuKyv+pP/xU7Jr2Q//xsht5YJGeFEy23aid5WCd6/5YvjeriusMs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB7335.eurprd08.prod.outlook.com (2603:10a6:102:220::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.22; Thu, 4 May
 2023 13:11:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6363.022; Thu, 4 May 2023
 13:11:27 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Ross Burton <Ross.Burton@arm.com>
CC: "edmundwatson@gmail.com" <edmundwatson@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #raspberrypi #ffmpeg
Thread-Topic: [yocto] #raspberrypi #ffmpeg
Thread-Index: AQHZfnTheT14uEEdK0eNRXiLGoKM669J+oCAgAAcaIA=
Date: Thu, 4 May 2023 13:11:27 +0000
Message-ID: <98A2F007-72EA-4D17-991C-A1EDA8618805@arm.com>
References: <OsUz.1683196830565737529.0oYZ@lists.yoctoproject.org>
 <175BED4DE45E8E90.14539@lists.yoctoproject.org>
In-Reply-To: <175BED4DE45E8E90.14539@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB7335:EE_|AM7EUR03FT030:EE_|AS8PR08MB8706:EE_
X-MS-Office365-Filtering-Correlation-Id: 46ae3f34-9c65-498c-b8ff-08db4ca11783
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /e6ncn5L+ZV0OG3lzFGYWpY4upd1JbRJRVumfiB07fGomiVZJoJ3rjlp+GOYH9rGWulwOlRJSeqbP3LfnihWzDVwyaejzUiKte/6tUYi59d6zF66a2DaiNuE5SZyJMSSMGRmbH6XnBKNMcxD8J3/EjL7vMkyQwoyzVzQ2dp7BH39nqZzOSGLDfeygKbedGxx6V/KZA37Dunc0wOqNo7e3I6XhyzcvGjARKzSVE7LSv6KwrlCNEH1nlKW9BePqGgWVyb1f3Jtm0Xu4PCZ7J2UHyGBPbhuz5lHLf2hn2XiNTfQ06M8toBYgyMbRbiH33Xs0AhEdUXQ3xiRmAnabDvSU5Gwg4dcvHfDQMsGsDf6tUl5pycSuxIPz0q1aU2r+u5CPh1UcMFGSbJ3ksEYZOqlRONNok8PJ0eLsQSUnTT3fL3TsiNIhT+HEuTJxMSlfL06KVvVHwI6Ehej6NNRl0RY68ieiVyTq8C7i7/87D6Bv1jvdgWeNtfnD7Xg1pS4eXMWkuQl0ckfw7TQEZSixNHzkv+BYAnHCvG/PI3KmZ3KocY8b5LYG2tJ0Er+Gy5otrXEx6oxLoabqZM31+4eQD3Qxo61qw9j6uSp4k8U+d8Rcwgz+8H6ey9ygu/BffqDGPautfP3+6aBQn4J/w8Fu1DJTg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(451199021)(71200400001)(478600001)(54906003)(37006003)(66476007)(66446008)(64756008)(66946007)(66556008)(66574015)(6486002)(316002)(76116006)(4326008)(91956017)(41300700001)(8676002)(6862004)(8936002)(5660300002)(186003)(26005)(6512007)(6506007)(53546011)(122000001)(36756003)(2616005)(2906002)(6200100001)(33656002)(38070700005)(86362001)(38100700002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E6FADBE30C4354B9185424DD1ACF7FC@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7335
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	97ecaddd-d1ef-4e33-ba33-08db4ca1120c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mTeU6/kiBzDQZhF2GXhDcqcQxFaeR4mbhJBTK6Gwy3Op+hEEy5HIyvNfmWqm4czDZV+WjURjbvlzHo/GsqjJKAUaOQioZbuvIuokoSzIMk/iG+4bTpN9SBQR50d8DAFX7DBIJ9jpDvgY3CWTD/MxCuI80BEQMRqmVQZydDohUThv1jZtFXwPXkkyZDvP8NryilJbb6UAoZDvHUnwuJteTmBs/f0atjT4MeDbWPur8VfZrn5I/hgNrFi+HYMqqwccRfqmt0MYGFnvD4o6BEOeOHA9IjGehFYwk+ob43aBpkOTzEpJrdqwr5om9grT44zWAf8u5ViwGcS67HUs0jWalm2IGALZZxn/kbXW3jw7FcfiPa99i1hK7Wp4bs6GeMSkQDwRR3NZcfoKGvwa26NeTqovBf8DfEuHrO7NJitkFkwp0QVMDpDQKPDF1faeHM86y774OARLtW+nFR2toMTDgNXkVnqGBth8y3vU2rJF54yQmHtFJRbuazbBljMiTKHnU/ZI/ZFi3OLZs4wKnBxzS97Nxim95XP2uxz6x4672bDZ1FjNZNFqyC+Hf9tn1GVWH8qEjrRN++RykgFBB/XfGqiUa+jQTHg101+cVbU/J/O4pSDeughCjFkOsTyoF1nz9tGVjlaLHaC6glPs6x7Ld75QHB8vk5cZWQ2aTCS8JDMuZVyF37RMI8AAMyNnQ9ZrQMCmuUVPpacFNqu7MqfMqmWxro1dY7PNjgs/TGJ3sBc=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(39860400002)(346002)(136003)(451199021)(40470700004)(46966006)(36840700001)(8936002)(2906002)(40460700003)(5660300002)(8676002)(41300700001)(81166007)(6862004)(6200100001)(36756003)(82310400005)(33656002)(86362001)(40480700001)(6506007)(6486002)(34020700004)(26005)(54906003)(2616005)(478600001)(66574015)(36860700001)(47076005)(6512007)(336012)(186003)(53546011)(37006003)(356005)(70586007)(82740400003)(316002)(70206006)(4326008);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2023 13:11:37.0542
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 46ae3f34-9c65-498c-b8ff-08db4ca11783
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8706
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 13:11:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59868

T24gNCBNYXkgMjAyMywgYXQgMTI6MjksIFJvc3MgQnVydG9uIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxyb3NzLmJ1cnRvbj1hcm0uY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiANCj4gT24gNCBNYXkgMjAyMywgYXQgMTE6NDAsIEVkIFdhdHNvbiB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8ZWRtdW5kd2F0c29uPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4+IA0KPj4gSGVsbG8sIA0KPj4gDQo+PiBJIGFtIHRyeWluZyB0byBnZXQg
djRsX21lbTJtZW0gaW4gdG8gZmZtcGVnLiBJdCBkb2VzIGhhcmR3YXJlIGgyNjQgZW5jb2Rpbmcg
b24gYSBSUEk0DQo+PiBmZm1wZWcgIC1lbmNvZGVycyB8IGdyZXAgaDI2NA0KPj4gDQo+PiBmb3Ig
ZXhhbXBsZQ0KPj4gZmZtcGVnIC1mIHY0bDIgIC1pIC9kZXYvdmlkZW8wIC12OmMgdjRsX21lbTJt
ZW0gb3V0Lm1wNA0KPj4gDQo+PiB3b3VsZCB0YWtlIHRoZSBhIHdlYmNhbSBvdXRwdXQgYW5kIGVu
Y29kZSBpdCBpbiBoMjY0IHVzaW5nIHRoZSBoYXJkd2FyZSBlbmNvZGVyLiANCj4+IE9uIHJhc3Bi
ZXJyeSBwaSBvczoNCj4+IFYuLi4uLiBsaWJ4MjY0ICAgICAgICAgICAgICBsaWJ4MjY0IEguMjY0
IC8gQVZDIC8gTVBFRy00IEFWQyAvIE1QRUctNCBwYXJ0IDEwIChjb2RlYyBoMjY0KQ0KPj4gVi4u
Li4uIGxpYngyNjRyZ2IgICAgICAgICAgIGxpYngyNjQgSC4yNjQgLyBBVkMgLyBNUEVHLTQgQVZD
IC8gTVBFRy00IHBhcnQgMTAgUkdCIChjb2RlYyBoMjY0KQ0KPj4gVi4uLi4uIGgyNjRfb214ICAg
ICAgICAgICAgIE9wZW5NQVggSUwgSC4yNjQgdmlkZW8gZW5jb2RlciAoY29kZWMgaDI2NCkNCj4+
IFYuLi4uLiBoMjY0X3Y0bDJtMm0gICAgICAgICBWNEwyIG1lbTJtZW0gSC4yNjQgZW5jb2RlciB3
cmFwcGVyIChjb2RlYyBoMjY0KQ0KPj4gVi4uLi4uIGgyNjRfdmFhcGkgICAgICAgICAgIEguMjY0
L0FWQyAoVkFBUEkpIChjb2RlYyBoMjY0KQ0KPj4gT24geW9jdG8gc28gZmFyIHRoaXMgaXMgd2hh
dCBJIGhhdmUgbWFuYWdlZCBzbyBmYXIgLi4uLg0KPj4gVi4uLi5EIGxpYngyNjQgICAgICAgICAg
ICAgIGxpYngyNjQgSC4yNjQgLyBBVkMgLyBNUEVHLTQgQVZDIC8gTVBFRy00IHBhcnQgMTAgKGNv
ZGVjIGgyNjQpDQo+PiBWLi4uLkQgbGlieDI2NHJnYiAgICAgICAgICAgbGlieDI2NCBILjI2NCAv
IEFWQyAvIE1QRUctNCBBVkMgLyBNUEVHLTQgcGFydCAxMCBSR0IgKGNvZGVjIGgyNjQpDQo+IA0K
PiBTb3VuZHMgbGlrZSB5b3UgbmVlZCB0byBlbmFibGUgdjRsIHN1cHBvcnQsIHdoaWNoIGxvb2tz
IGxpa2UgYmVpbmcgLS1lbmFibGUtbGlidjRsMi4NCj4gDQo+IEEgcGF0Y2ggdG8gYWRkIGEgUEFD
S0FHRUNPTkZJRyBmb3IgdGhhdCB3b3VsZCBiZSBncmVhdC4NCg0KRllJIEkganVzdCBzZW50IHRo
ZSBwYXRjaCB0byBvZS1jb3JlIGZvciBmZm1wZWcsIGFzIGl0IHdhcyBhIHRyaXZpYWwgY2hhbmdl
LiAgSeKAmXZlIG5vdCB0ZXN0ZWQgaXQgc29sdmVzIHlvdXIgcHJvYmxlbSwgYnV0IHlvdeKAmXJl
IHRyeWluZyB0byB1c2UgVjRMMiBzdXBwb3J0IHdpdGhvdXQgaXQgYmVpbmcgZW5hYmxlZCwgc28g
SSBzdXNwZWN0IGl0IHdpbGwgb25jZSB5b3UgZW5hYmxlIGl0Lg0KDQpSb3Nz

