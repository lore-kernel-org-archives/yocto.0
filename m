Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FC2C77B7C
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 11:30:06 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.81])
 by mx.groups.io with SMTP id smtpd.web11.46995.1683199803408247197
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 04:30:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=rF56drEq;
 spf=pass (domain: arm.com, ip: 40.107.8.81, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QGbwQLAsO6o6NQJXKLSfAmOJ3JfcO6w+bzZS0gl9X3U=;
 b=rF56drEqJFHA/MaSpgwUdGIQnzBsbackmlLt9HcOXBG7meUXDYqwVI7j5m8DWyEgjxywnoXvOJF6wzyxqfIOmvCkQce80Ec/9vBf5UF9TdvqZGGOCPOamEO+VMkTF6vwr95+MoJEX1Dox+TcB0ZtYhRL3xoUD8Tc1mpcWp3JLCs=
Received: from DUZPR01CA0161.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::18) by AS1PR08MB7561.eurprd08.prod.outlook.com
 (2603:10a6:20b:470::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.22; Thu, 4 May
 2023 11:29:58 +0000
Received: from DBAEUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:4bd:cafe::3a) by DUZPR01CA0161.outlook.office365.com
 (2603:10a6:10:4bd::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.26 via Frontend
 Transport; Thu, 4 May 2023 11:29:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT045.mail.protection.outlook.com (100.127.142.142) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.26 via Frontend Transport; Thu, 4 May 2023 11:29:58 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Thu, 04 May 2023 11:29:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 39be79441ebfaefd
X-CR-MTA-TID: 64aa7808
Received: from 5b2209bbbaf3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 597DD68C-046B-4D59-BC21-8844061DD17E.1;
	Thu, 04 May 2023 11:29:50 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5b2209bbbaf3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 04 May 2023 11:29:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dxs3j/tmyq+73AM7RM7ZCvDynfA2GiKrnE+6+g0Nm7Y8fOWOA9UlFpFMx9gYHMka0LstiuM2jiz3y2BleOC+1IBgW/eu4Mkm5tN5rN7IHIQu7h7VF+nBIOu3bz6YqpT0zcTsj+i1L0fuhgb/pkEo0hPMBOSoTM2HBEmNz7GxTJ44dIzJ1Not9Vm/rGk01E/J0UUO80QE9S5zsnvJd7n009m6ICtRHJbCeiOCgbo2/j3elqwImaPskX2aXZ0f71J6DtfOVwcWgN2gDQrutG2Y5z7o9wkn6JC2I0tcMgSklvMHmSK0N01G4HxU+Krl/On4g4mMj1llbRU470yVkvaEyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGbwQLAsO6o6NQJXKLSfAmOJ3JfcO6w+bzZS0gl9X3U=;
 b=DkhbplEfomTsJ46Cs8cfIfH5Ju14m622WoOX7hVP6dCdMdfKZxvAwh7Z/2nEIPwv2qN7ku6oSSSbtgSds8VU2S13D4KVs4f4z1561QqXwQ9bNTgvBLP2omOIWbXJcEPNWimLN835FOQAP+KR2w1j1qBjKC5YAAQYNheof69YxhLlDd1hJus1ua1s9lqrydTMXuzxhA0G5yU2gBGCCTV4H0jTn2/PmiwAdeLucjmjcXrMyCeEZNpy3V27mdqEFL8B5X2c24EK53DcLrdbh0TDJFLkBOvd+1QMZP91oGy1IF+gh6iS2JhX0k+E6i0JNJk2T6joXXZvEbd2INPIPcPm6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QGbwQLAsO6o6NQJXKLSfAmOJ3JfcO6w+bzZS0gl9X3U=;
 b=rF56drEqJFHA/MaSpgwUdGIQnzBsbackmlLt9HcOXBG7meUXDYqwVI7j5m8DWyEgjxywnoXvOJF6wzyxqfIOmvCkQce80Ec/9vBf5UF9TdvqZGGOCPOamEO+VMkTF6vwr95+MoJEX1Dox+TcB0ZtYhRL3xoUD8Tc1mpcWp3JLCs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9051.eurprd08.prod.outlook.com (2603:10a6:10:470::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.21; Thu, 4 May
 2023 11:29:48 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6363.022; Thu, 4 May 2023
 11:29:48 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "edmundwatson@gmail.com" <edmundwatson@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #raspberrypi #ffmpeg
Thread-Topic: [yocto] #raspberrypi #ffmpeg
Thread-Index: AQHZfnTheT14uEEdK0eNRXiLGoKM669J+oCA
Date: Thu, 4 May 2023 11:29:48 +0000
Message-ID: <6085A804-B48E-4130-9C20-DB94217586BF@arm.com>
References: <OsUz.1683196830565737529.0oYZ@lists.yoctoproject.org>
In-Reply-To: <OsUz.1683196830565737529.0oYZ@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9051:EE_|DBAEUR03FT045:EE_|AS1PR08MB7561:EE_
X-MS-Office365-Filtering-Correlation-Id: f86cd3f2-08cd-4dad-eda7-08db4c92e470
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 UENxAvUe3HjXPnaXXEE/dfW0n+g5HKzjlf1HLgTiml5h/swQsgXMA9m7cQE5uSUZIKGgm3K+uIbVrAhSl1Zjru2yEoKT03Ot/ODnhNJY9q5xk7KPyd93T1vjEuL+y7hdMIpNuLxMZPasnhj3/MW83z/WEEzLlOpfILZ/KdUxM3YS7dr/2Fed9ahLYkk+3i1N/MZ4NsW2Gmw/1vkZwJdfOfsigVwYSpVoR4TXNCtq1JM3cJVW492dMCYxdbXyc5fnKDKEUdskKZcff00oLSC1vo46SDlKeLj1/2qPDEif5dSyDqoAG0Wl7NB5H8vdjp0mwqbps3EN/cZknFk/dO65TM29D6HJUsFO5s5RR5qbFTfssatdlQqiY2/x+vl/2nXOFGpHHFOOOIVFC3TnOyQd5Qq78XUOurZ//urhnxUhUpO5jTnGOTzXlAWP/Tv741pqLuQo0Ld02CFxUr6lOnn0ionqgOiCmnGl9Jy6IZj4tpy0xvYoBjkC8+rYAXrYIejIb9irGQLKobKOSbV3d0Cj0E5sx6K/ZjcYy35BE/dkjXBRoz6ClTe2b0yvFRwCAnHxSD2IbxNo1d5r6fyPhLgyFC5VsHqvLAzJxWOox3kHb2yiPJkV7p4lqKZT4/uX+ICzAYhw9lMN4Nlt/GnBx5ytDw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(451199021)(122000001)(38100700002)(2906002)(8936002)(5660300002)(8676002)(36756003)(86362001)(33656002)(38070700005)(71200400001)(66574015)(6486002)(26005)(478600001)(186003)(6512007)(6506007)(53546011)(2616005)(66556008)(41300700001)(66446008)(64756008)(76116006)(91956017)(66946007)(66476007)(6916009)(4326008)(316002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CC624ABBC1D124428CB20A64104BFEEE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9051
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT045.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	eaee65a0-e211-44c0-a2d2-08db4c92de6e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hUJ6FF1K/PD69/HFqGrPXQRdagVXhNuyy8V7hyDLTQnBVbJ611pEQL9RDjP1FIlRtALTQV6jORVvMrkDTuolweHrbGGeIqlh29wU/GmB6UN6nx89dDxdOmOHBLkm7F/mISEW6pw3Symmb4D4jrkuM1t6RRf2Q33VDdGsRHregRAPMe5lTBKXwREO/jHmtU1qdYVkyzftlAzVR7bAI5HydC6o8uLq50u2VzLcAJDBExDKc6+UOvq9WhoVlfunNGO4ESJHRfMFLYQbBujGy6mesaFgIw4qlH2PM+ZfnLhxy3hqwI4G7cgYByyHRaYNk3M9Vb53xVCbSl14dH+HeHhLHPuPkR4FWgXJ2EpwbyZGf5p0bVTzvG1yVIKxIDOfyMmFRB4t5Jzi3VcTUsUpQ+z/msL/Roy5yUyB1Dg55RBfCROI55bcI9MbAapgyGZBPRQNMNsDIn4YvNPQOOhWNevJB6obcxN50bAE/0GcPFwWItEzzB1nEod/3EvuLHqYSrteLh19QyrMqs0ZnC932emPKL1Sa7d6cR5TGb6WjXMl+UAO1e8vvUp7adVgWnOxIKHYT7Nh7kct0Azk1s9TF65LoIXM3RikcDJFq6IqwUkMmurzrGjKmiz7QWvRjBBFF7RP2LmxOX11+6NQtwuDlNy+OQsrktsj1kPwPnu0BUcp7nVllm/aheu/U6jLidou/wE3T427T4521zj0gKWxU8HcOwCLn0mdLq4VC7Ww1fv8CEw=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(39860400002)(346002)(376002)(136003)(451199021)(46966006)(36840700001)(40470700004)(33656002)(86362001)(36756003)(316002)(6486002)(70206006)(70586007)(478600001)(4326008)(5660300002)(82310400005)(40480700001)(6862004)(8936002)(8676002)(2906002)(82740400003)(2616005)(34020700004)(81166007)(356005)(186003)(53546011)(36860700001)(6506007)(6512007)(26005)(336012)(66574015)(47076005)(41300700001)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2023 11:29:58.4443
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f86cd3f2-08cd-4dad-eda7-08db4c92e470
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT045.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR08MB7561
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 11:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59867

On 4 May 2023, at 11:40, Ed Watson via lists.yoctoproject.org <edmundwatson=
=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Hello,=20
>=20
> I am trying to get v4l_mem2mem in to ffmpeg. It does hardware h264 encodi=
ng on a RPI4
> ffmpeg  -encoders | grep h264
> =20
> for example
>  ffmpeg -f v4l2  -i /dev/video0 -v:c v4l_mem2mem out.mp4
>=20
> would take the a webcam output and encode it in h264 using the hardware e=
ncoder.=20
>  On raspberry pi os:
>  V..... libx264              libx264 H.264 / AVC / MPEG-4 AVC / MPEG-4 pa=
rt 10 (codec h264)
>  V..... libx264rgb           libx264 H.264 / AVC / MPEG-4 AVC / MPEG-4 pa=
rt 10 RGB (codec h264)
>  V..... h264_omx             OpenMAX IL H.264 video encoder (codec h264)
>  V..... h264_v4l2m2m         V4L2 mem2mem H.264 encoder wrapper (codec h2=
64)
>  V..... h264_vaapi           H.264/AVC (VAAPI) (codec h264)
> On yocto so far this is what I have managed so far ....
>  V....D libx264              libx264 H.264 / AVC / MPEG-4 AVC / MPEG-4 pa=
rt 10 (codec h264)
>  V....D libx264rgb           libx264 H.264 / AVC / MPEG-4 AVC / MPEG-4 pa=
rt 10 RGB (codec h264)

Sounds like you need to enable v4l support, which looks like being --enable=
-libv4l2.

A patch to add a PACKAGECONFIG for that would be great.

Ross=

