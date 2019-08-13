Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A93BE00D98; Tue, 13 Aug 2019 04:06:13 -0700 (PDT)
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
	*      [40.107.2.123 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20123.outbound.protection.outlook.com [40.107.2.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACB96E00D59
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 04:06:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=jzPgQr1+1a7orcNBeiWinpmKhDhM9KBED5uzQ5kSJ7iHQm6gX+I2db4FIWIVhy4imR3XGzxuFJUPdalutWGyCw/31GyWtKEQa7xIITCjhT9AehRtAu/gLNp1LEg92EChIb7JB/Cf/J6KB+AicAFcNGqb5c/fhk7PzmK/wlcQe0thsx0IHKsMqMdkNHfH03Q+6hLFswaWAEl1xaJMkEobRb10OY1p947mSl+xeLmqTo/WeAC/9GxDqcoXxcOrWkcJ4qgY2Be3x7uFEzzk/UhKLJkXGmrURXP9Glm9Cq82RdxTzn8Hio6ZlvxDpZv8IvSWAt/jMkkZPXZY5Wi+yfra+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=LWGS0WDpnuGC8fui34UbcUsjH1ZJqY4K/GkZqeno5jM=;
	b=ZJ8DSH4sIo7Gb02zfKQRghtO6AiHFfrv15lee5wiAKgoyk87WP6zi5MbgcfZzN3N6DjkMPpUCnWfh7to1wucy+XjT6KDB5oOszEsNTNY/Fg5JgMfuIORRyh/TNd6xv9/usSTuXMigFNmout/wpCxDbZMXRS0Rov+07kq4lSkkcxZ01fwhFrNKPx47N7rpWeKao0t0KDl5EintLyF6GwVtdXEI1y31TYMSwlMBD5lAh4JwEpn55RGkY5u7SzTBVfuC1qDHi8QbgO0g/3nS4m0mpIhNCJHSe49Bbb+Zzjp6zx4jYd+9BUpFquo95TbhryWwhP7q6CKR1Gfnw2k3NIqRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
	79.171.149.172) smtp.rcpttodomain=gmail.com smtp.mailfrom=gomspace.com; 
	dmarc=none action=none header.from=gomspace.com; dkim=none (message not
	signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=LWGS0WDpnuGC8fui34UbcUsjH1ZJqY4K/GkZqeno5jM=;
	b=VXnMrAlA6Xb+FoQ9ASJeeWq5d7R84UoPf3PgaANMYFEw7Ypcm8Sm9X8HUEHx9oUXUow9nIxP+heqQmbpduG8UFikurJoKvkEMyYPKe50lvPvOKL5e+UMiTCcQGZ84uAUK+x+cGzrommBjEpOek4EOX+dTL2VQGqCltACh6SliDE=
Received: from VI1PR08CA0091.eurprd08.prod.outlook.com (2603:10a6:800:d3::17)
	by VI1PR0801MB1885.eurprd08.prod.outlook.com (2603:10a6:800:84::10)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18;
	Tue, 13 Aug 2019 11:06:09 +0000
Received: from DB5EUR01FT042.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e02::209) by VI1PR08CA0091.outlook.office365.com
	(2603:10a6:800:d3::17) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via
	Frontend Transport; Tue, 13 Aug 2019 11:06:09 +0000
Authentication-Results: spf=fail (sender IP is 79.171.149.172)
	smtp.mailfrom=gomspace.com; gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=gomspace.com; 
Received-SPF: Fail (protection.outlook.com: domain of gomspace.com does not
	designate 79.171.149.172 as permitted sender)
	receiver=protection.outlook.com; client-ip=79.171.149.172;
	helo=gomspace.com; 
Received: from gomspace.com (79.171.149.172) by
	DB5EUR01FT042.mail.protection.outlook.com (10.152.5.100) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
	15.20.2157.15 via Frontend Transport; Tue, 13 Aug 2019 11:06:09 +0000
Received: from Ex01.gomspace.lan (10.0.1.60) by Ex01.gomspace.lan (10.0.1.60)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3;
	Tue, 13 Aug 2019 13:06:08 +0200
Received: from Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20]) by
	Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20%4]) with mapi id
	15.01.1466.003; Tue, 13 Aug 2019 13:06:08 +0200
From: Martin Siegumfeldt <mns@gomspace.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] State of Meson build system through eSDK
Thread-Index: AQHVUbKVX3AG9/HGoE+WMMFZCkLZOg==
Date: Tue, 13 Aug 2019 11:06:08 +0000
Message-ID: <0432f5d12b6647d79d616e2b10c53b2f@gomspace.com>
References: <6332957486174883a87679522aaf246f@gomspace.com>
	<CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUAPa1UycsL=FK7Rg@mail.gmail.com>
	<77bb3bb243484177967b2710ec9e172b@gomspace.com>
	<CANNYZj_VcV47ZqY3XHDdtqAcQEZu4LTbCnDhVy7vRUfFfLO5yw@mail.gmail.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.8.211]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:79.171.149.172; IPV:CAL; CTRY:DK; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39840400004)(136003)(396003)(346002)(376002)(2980300002)(1110001)(339900001)(199004)(189003)(24736004)(508600001)(6916009)(76130400001)(53546011)(8676002)(70586007)(81166006)(81156014)(4546004)(70206006)(71190400001)(186003)(4326008)(53416004)(336012)(486006)(606006)(966005)(126002)(102836004)(108616005)(356004)(76176011)(16586007)(6116002)(3846002)(14454004)(7736002)(5660300002)(2616005)(476003)(316002)(446003)(86362001)(105606002)(26826003)(8936002)(236005)(14444005)(229853002)(30436002)(2906002)(21086003)(40036005)(6246003)(33026002)(36756003)(53936002)(26005)(6306002)(54896002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0801MB1885; H:gomspace.com;
	FPR:; SPF:Fail; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae7bc996-827e-4a80-fcb0-08d71fde3eac
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:VI1PR0801MB1885; 
X-MS-TrafficTypeDiagnostic: VI1PR0801MB1885:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VI1PR0801MB188502D0A249B79C96BC53FFC4D20@VI1PR0801MB1885.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 01283822F8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: V3TVm4SB2AkjQ+A11ISWdUonp3NjUEIRRQwKOzAIKt0IfkgZOfX1HShgSwYlk5d0L8svtZrX553JQxQz9TXg5NrnWug/kk8mh0pysF9uo5eT138+mxLGMFC98tcXdwJgp87Z9HmNaeoVUs/joVy58naSgGBcuIeGZd8a89DvAvvStmy+4vuUFNh5qJ3WHHQ1p4LjC0poXLg9TvhoaQG+b/TFoJrUHMC5ARRNQqzmkQHpDXwCxUv3v/3sw+bj9Nmx5Tw9CiHN/fndaLj5u7obcWnnMibbXABzGUokYv/XtmCtu7003zbP/XCcPwI/CqesN94BfcJ0RbnqWr8EX09X1e44nancZbJYa/PwJZaMtvEXSBZPwEW7e3GEPSOLP9vpmguYqdiZCFsV1cuRWJXiOcUUpQjKOuf2bDUQA0Nf8f0=
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 11:06:09.0058 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7bc996-827e-4a80-fcb0-08d71fde3eac
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=91ed1e54-6d8b-4599-84d8-65fe75fda3d1;
	Ip=[79.171.149.172]; Helo=[gomspace.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1885
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
X-List-Received-Date: Tue, 13 Aug 2019 11:06:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0432f5d12b6647d79d616e2b10c53b2fgomspacecom_"

--_000_0432f5d12b6647d79d616e2b10c53b2fgomspacecom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 8/13/19 12:59 PM, Alexander Kanavin wrote:
On Tue, 13 Aug 2019 at 12:41, Martin Siegumfeldt <mns@gomspace.com<mailto:m=
ns@gomspace.com>> wrote:
The link above is not about eSDK, it's about devtool which works perfectly =
fine in a non-SDK environment (e.g. plain yocto).

Hmm, since it is a subsection beneath 'Using the Extensible SDK' I was expe=
cting the list to describe supported build systems related to devtool in co=
ntext of the eSDK?

This is maybe not communicated well, but devtool works the same in and out =
of SDK environment. You can check what build systems it supports here:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/recipetool/=
create_buildsys.py#n874

It probably wouldn't be too much effort to add a meson handler there. In an=
y case, 'devtool add' is just a starting point, and does not promise to pro=
duce a fully working recipe.

Alex

Ok, so it does appear to be "close" but yet unknown territory. If I manage =
to find time for experiments, I'll get back with the results.

Thanks again :)

--_000_0432f5d12b6647d79d616e2b10c53b2fgomspacecom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body text=3D"#000000" bgcolor=3D"#FFFFFF">
<div class=3D"moz-cite-prefix">On 8/13/19 12:59 PM, Alexander Kanavin wrote=
:<br>
</div>
<blockquote type=3D"cite" cite=3D"mid:CANNYZj_VcV47ZqY3XHDdtqAcQEZu4LTbCnDh=
Vy7vRUfFfLO5yw@mail.gmail.com">
<div dir=3D"ltr">
<div dir=3D"ltr">On Tue, 13 Aug 2019 at 12:41, Martin Siegumfeldt &lt;<a hr=
ef=3D"mailto:mns@gomspace.com" moz-do-not-send=3D"true">mns@gomspace.com</a=
>&gt; wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=0A=
            0.8ex;border-left:1px solid=0A=
            rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">The link above is not about eSDK, it's about devto=
ol which works perfectly fine in a non-SDK environment (e.g. plain yocto).<=
br>
<blockquote type=3D"cite">
<div dir=3D"ltr"></div>
</blockquote>
<p>Hmm, since it is a subsection beneath 'Using the Extensible SDK' I was e=
xpecting the list to describe supported build systems related to devtool in=
 context of the eSDK?<br>
</p>
</div>
</blockquote>
<div><br>
</div>
<div>This is maybe not communicated well, but devtool works the same in and=
 out of SDK environment. You can check what build systems it supports here:=
</div>
<div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts=
/lib/recipetool/create_buildsys.py#n874" moz-do-not-send=3D"true">http://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/recipetool/create_bu=
ildsys.py#n874</a></div>
<div><br>
</div>
<div>It probably wouldn't be too much effort to add a meson handler there. =
In any case, 'devtool add' is just a starting point, and does not promise t=
o produce a fully working recipe.<br>
</div>
</div>
<div class=3D"gmail_quote"><br>
</div>
<div class=3D"gmail_quote">Alex<br>
</div>
</div>
</blockquote>
<p>Ok, so it does appear to be &quot;close&quot; but yet unknown territory.=
 If I manage to find time for experiments, I'll get back with the results.<=
/p>
<p>Thanks again :)<br>
</p>
</body>
</html>

--_000_0432f5d12b6647d79d616e2b10c53b2fgomspacecom_--
