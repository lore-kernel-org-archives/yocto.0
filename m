Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B2A7E00D8F; Tue, 13 Aug 2019 03:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.8.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80105.outbound.protection.outlook.com [40.107.8.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76288E00BAA
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 03:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=OMngv5SstY+EH8I2fFeWhtC86/cZU6rCaEKqjycqG8mdJHY5v+eVeFtwVE9FeM0yUgrs4lv21eNeJqtE99A7OzcYqQBqsYowbLUpXH4YUxJsgcUkC7u4C46Y1u2UtlIFV9+WwsBsdmHqWGH7AcQiAHUlC261Rio/CjX43SvynHKdSad9HUCXs0mljqTrKfI9kjVthBRn6R2txaDpFmxE6wG1eyNfl95oAR8TCpFEc9TW3I5cP4sL4jFZ1egn633Wz6AJZwW8WLL7XSoe3ykyp9zTANy4R3DWHIA+HPF1UlN/feGSse7VcPHannE3i/+QCH/MmlHXBom7gEUZCDcJ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=4xa3RhtaArJ/NMkoOu1F6lUIhtF27C3tHSfWXsmVPJo=;
	b=Z+VTveybjj/GgU0bADPAdqghlVY6u3Y1V7r7OV031PW2+IV5V8WwjVypdokltMXBCyBoj9iyMJVWUnx0daF3BZPDg7S4S3mG62F8Y0mjv4FtWvuPlEd0rfprx8f/7l7H98FJd7ywAALCnzrcpaWr+T2ap6mJOk1knh4o797xSq8+rMH3g1xLQtH9nyA6iLPJIC0yuyAYzu754miitUQLxsXpCkACZKubWIYCkzEm+tyvJtWSVqZTT8vyYoQgWwNgj/OTrmxykyY5lq0Olt1SK1Vd3AuV+ez2bsuFeBtqvhMfJaejM9nPc5KDpHtCdyTgHOXHqKEIMe0vBIsRWr02pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
	79.171.149.172) smtp.rcpttodomain=gmail.com smtp.mailfrom=gomspace.com; 
	dmarc=none action=none header.from=gomspace.com; dkim=none (message not
	signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=4xa3RhtaArJ/NMkoOu1F6lUIhtF27C3tHSfWXsmVPJo=;
	b=eSQKG41NTD+ky8+o4l7jfhn2uiVuF37P9A5aSDl8MmdliA8KYe/M3vjlq1MCFyB4fcVVMq7DjyOqEjQCHimqlYkJtnOFLi3BJLYMCTyGesatFu0pK3s7eYvNJVq3wG/eeazDV51Z38gCnnBVuOBCbu0odH2bInF2T3nb0ys0srU=
Received: from VI1PR08CA0102.eurprd08.prod.outlook.com (2603:10a6:800:d3::28)
	by DB6PR0801MB1878.eurprd08.prod.outlook.com (2603:10a6:4:76::18)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.21;
	Tue, 13 Aug 2019 10:41:18 +0000
Received: from HE1EUR01FT055.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::205) by VI1PR08CA0102.outlook.office365.com
	(2603:10a6:800:d3::28) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via
	Frontend Transport; Tue, 13 Aug 2019 10:41:18 +0000
Authentication-Results: spf=fail (sender IP is 79.171.149.172)
	smtp.mailfrom=gomspace.com; gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=gomspace.com; 
Received-SPF: Fail (protection.outlook.com: domain of gomspace.com does not
	designate 79.171.149.172 as permitted sender)
	receiver=protection.outlook.com; client-ip=79.171.149.172;
	helo=gomspace.com; 
Received: from gomspace.com (79.171.149.172) by
	HE1EUR01FT055.mail.protection.outlook.com (10.152.1.28) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.20.2157.15 via Frontend Transport; Tue, 13 Aug 2019 10:41:17 +0000
Received: from Ex01.gomspace.lan (10.0.1.60) by Ex01.gomspace.lan (10.0.1.60)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3;
	Tue, 13 Aug 2019 12:41:17 +0200
Received: from Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20]) by
	Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20%4]) with mapi id
	15.01.1466.003; Tue, 13 Aug 2019 12:41:17 +0200
From: Martin Siegumfeldt <mns@gomspace.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] State of Meson build system through eSDK
Thread-Index: AQHVUbKVX3AG9/HGoE+WMMFZCkLZOg==
Date: Tue, 13 Aug 2019 10:41:17 +0000
Message-ID: <77bb3bb243484177967b2710ec9e172b@gomspace.com>
References: <6332957486174883a87679522aaf246f@gomspace.com>
	<CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUAPa1UycsL=FK7Rg@mail.gmail.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.8.211]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:79.171.149.172; IPV:CAL; CTRY:DK; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(346002)(39840400004)(376002)(136003)(396003)(2980300002)(1110001)(339900001)(199004)(189003)(229853002)(53416004)(36756003)(8676002)(336012)(6116002)(30436002)(53936002)(4326008)(2906002)(6246003)(5660300002)(71190400001)(105606002)(236005)(8936002)(40036005)(606006)(16586007)(81156014)(446003)(70586007)(81166006)(2616005)(70206006)(486006)(126002)(356004)(33026002)(316002)(54896002)(86362001)(53546011)(7736002)(26005)(14454004)(21086003)(3846002)(108616005)(24736004)(102836004)(4546004)(508600001)(26826003)(186003)(6306002)(76176011)(966005)(476003)(76130400001)(6916009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0801MB1878; H:gomspace.com;
	FPR:; SPF:Fail; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a77d250c-a6d7-4312-3cc4-08d71fdac5ef
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:DB6PR0801MB1878; 
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1878:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <DB6PR0801MB187855471810997A246F88F0C4D20@DB6PR0801MB1878.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 01283822F8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 8g3TL5xpXgCyVKfGs8H1QEGuxp8kOHwRqNd/goUPWQSAq9YxwF/D8QUL1QXQm02LOhA9qAMIhhDQivhbsj+2qFIS8bEo3X2WUUzprm6qQqdjASVEN8IaFLjBsDG9oxK7ZUpRsIZ647gS2FilmLSaE23iDy/AHUXq87JA2mQWOsQREhpLnAKr34u5iN4nmkk6NNuG8KFveHcrPChclklDqGA3y/JuaLkrbQDEBaSGzaR92t847sPOw0g2kTVKBz64Ml8FF+AECmoDjy2WHGpeANQJXf4D+/E7jrvL0YyKd7Pa2vlekgjm5xndcWXHtqZZs+M04aYF9X+pBu0/F7A3n3cqZGYhJUepWEs0RxhiBWjmf7Rit9bB85ODOIZldDca2GEM7bY+Ol3vbpes+ck6aXvHd4oevymJDafmpB50+2U=
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 10:41:17.8534 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a77d250c-a6d7-4312-3cc4-08d71fdac5ef
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=91ed1e54-6d8b-4599-84d8-65fe75fda3d1;
	Ip=[79.171.149.172]; Helo=[gomspace.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1878
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: State of Meson build system through eSDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Aug 2019 10:41:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_77bb3bb243484177967b2710ec9e172bgomspacecom_"

--_000_77bb3bb243484177967b2710ec9e172bgomspacecom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 8/13/19 11:57 AM, Alexander Kanavin wrote:
On Tue, 13 Aug 2019 at 10:40, Martin Siegumfeldt <mns@gomspace.com<mailto:m=
ns@gomspace.com>> wrote:
I am wondering if/when Meson is expected supported through the eSDK - I
don't see it from the list:
https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-a-=
closer-look-at-devtool-add
?

The link above is not about eSDK, it's about devtool which works perfectly =
fine in a non-SDK environment (e.g. plain yocto).

Hmm, since it is a subsection beneath 'Using the Extensible SDK' I was expe=
cting the list to describe supported build systems related to devtool in co=
ntext of the eSDK?

I think meson in SDKs actually is supported, as there is a nativesdk- versi=
on of the meson recipe. Do you want to try and report?

Sorry I don't have any particular SW at hand - I was more thinking long ter=
m build system strategy, and everyone seems to be chasing Meson these days.
Alex

Thanks,

Martin

--_000_77bb3bb243484177967b2710ec9e172bgomspacecom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body text=3D"#000000" bgcolor=3D"#FFFFFF">
<div class=3D"moz-cite-prefix">On 8/13/19 11:57 AM, Alexander Kanavin wrote=
:<br>
</div>
<blockquote type=3D"cite" cite=3D"mid:CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUA=
Pa1UycsL=3DFK7Rg@mail.gmail.com">
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, 13 Aug 2019 at 10:40, Martin =
Siegumfeldt &lt;<a href=3D"mailto:mns@gomspace.com" moz-do-not-send=3D"true=
">mns@gomspace.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=0A=
            0.8ex;border-left:1px solid=0A=
            rgb(204,204,204);padding-left:1ex">
I am wondering if/when Meson is expected supported through the eSDK - I<br>
don't see it from the list:<br>
<a href=3D"https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.=
html#sdk-a-closer-look-at-devtool-add" rel=3D"noreferrer" target=3D"_blank"=
 moz-do-not-send=3D"true">https://www.yoctoproject.org/docs/current/sdk-man=
ual/sdk-manual.html#sdk-a-closer-look-at-devtool-add</a><br>
?<br>
</blockquote>
<div><br>
</div>
<div>The link above is not about eSDK, it's about devtool which works perfe=
ctly fine in a non-SDK environment (e.g. plain yocto).<br>
</div>
</div>
</div>
</blockquote>
<p>Hmm, since it is a subsection beneath 'Using the Extensible SDK' I was e=
xpecting the list to describe supported build systems related to devtool in=
 context of the eSDK?<br>
</p>
<blockquote type=3D"cite" cite=3D"mid:CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUA=
Pa1UycsL=3DFK7Rg@mail.gmail.com">
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div></div>
<div><br>
</div>
<div>I think meson in SDKs actually is supported, as there is a nativesdk- =
version of the meson recipe. Do you want to try and report?</div>
<div><br>
</div>
</div>
</div>
</blockquote>
Sorry I don't have any particular SW at hand - I was more thinking long ter=
m build system strategy, and everyone seems to be chasing Meson these days.=
<br>
<blockquote type=3D"cite" cite=3D"mid:CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUA=
Pa1UycsL=3DFK7Rg@mail.gmail.com">
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div></div>
<div>Alex<br>
</div>
</div>
</div>
</blockquote>
<p>Thanks,</p>
<p>Martin<br>
</p>
</body>
</html>

--_000_77bb3bb243484177967b2710ec9e172bgomspacecom_--
