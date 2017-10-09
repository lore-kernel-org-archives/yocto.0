Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A4AEE00D2F; Mon,  9 Oct 2017 07:35:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.5.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr50098.outbound.protection.outlook.com [40.107.5.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45311E00CEF
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 07:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Enea.onmicrosoft.com; 
	s=selector1-enea-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=lJdQdpNBN3nxuofsyQC9fy+JyY/fpYca34d11z7mF+U=;
	b=efdhIp7QOldXzKs5PJQ30bdZzZURoTrBAOLrsfyDipdKo1OQIsmeNoUEKR0qnEjw3XNtHHoW4IpnD97vS/z52p1C8rENX/syiXzfeqMpid4aCg13BhzqkdMOmi+kk2G6cnU5YtUARUCW8rV9Vhc0GO9gkcUBWcDw1/31usRF7m4=
Received: from HE1PR0702MB3803.eurprd07.prod.outlook.com (52.133.7.21) by
	HE1PR0702MB3804.eurprd07.prod.outlook.com (52.133.7.22) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.5; Mon, 9 Oct 2017 14:01:04 +0000
Received: from HE1PR0702MB3803.eurprd07.prod.outlook.com
	([fe80::d875:25fb:3d1c:cdae]) by
	HE1PR0702MB3803.eurprd07.prod.outlook.com
	([fe80::d875:25fb:3d1c:cdae%13]) with mapi id 15.20.0077.020;
	Mon, 9 Oct 2017 14:01:04 +0000
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: He Zhe <zhe.he@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] kernel: Fix config warning for
	CONFIG_I2C_ALGOBIT
Thread-Index: AQHTQOHBAFUkTgmYUkqTE2+KYdKLtqLbjCNO
Date: Mon, 9 Oct 2017 14:01:04 +0000
Message-ID: <HE1PR0702MB3803697D2DE9C6E0801790BFE4740@HE1PR0702MB3803.eurprd07.prod.outlook.com>
References: <1506665400-20424-1-git-send-email-zhe.he@windriver.com>,
	<6597b930-6813-2d89-2723-a38047cc99f6@windriver.com>
In-Reply-To: <6597b930-6813-2d89-2723-a38047cc99f6@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Adrian.Dudau@enea.com; 
x-originating-ip: [192.36.1.252]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0702MB3804;
	20:LqLiyUn9E8qhDi4AZas0k5k2igkcC29XueUUM5WHMrktkx1YD8XrtJ2N9oKs5NXVqcsiab+FA7jVJPMEJ1+UBNqqDHmmRqabeMnnvLUH0UPZBpD8WyAGje8AONlaS016uZRv2C43+bxyUkzOU+GFCrEWYdDJGG05wfIyzQnC4hk=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: f32ffbf2-29bb-4a91-b4bd-08d50f1e2e3b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:HE1PR0702MB3804; 
x-ms-traffictypediagnostic: HE1PR0702MB3804:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <HE1PR0702MB3804751EAF5943FDC227C350E4740@HE1PR0702MB3804.eurprd07.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123560025)(20161123555025)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR0702MB3804; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR0702MB3804; 
x-forefront-prvs: 045584D28C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(39830400002)(377454003)(24454002)(199003)(189002)(2950100002)(25786009)(3846002)(6116002)(2501003)(102836003)(189998001)(53936002)(316002)(86362001)(72206003)(33656002)(105586002)(5250100002)(6506006)(305945005)(2906002)(7736002)(478600001)(6246003)(74316002)(966005)(106356001)(68736007)(3660700001)(5660300001)(66066001)(6436002)(7696004)(2900100001)(3280700002)(97736004)(6306002)(229853002)(8936002)(101416001)(14454004)(8676002)(110136005)(53546010)(81156014)(50986999)(55016002)(76176999)(54356999)(9686003)(99286003)(81166006)(70780200001)(15760500002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0702MB3804;
	H:HE1PR0702MB3803.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: enea.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: enea.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2017 14:01:04.0174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8cdaed89-c47e-40b8-90b5-f28ad2c3fdca
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0702MB3804
Subject: Re: [meta-cgl][PATCH] kernel: Fix config warning for CONFIG_I2C_ALGOBIT
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
X-List-Received-Date: Mon, 09 Oct 2017 14:35:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

merged now, sorry for the delay

--Adrian

________________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of He Zhe <zhe.he@windriver.com>
Sent: Monday, October 9, 2017 11:31 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-cgl][PATCH] kernel: Fix config warning for CONFI=
G_I2C_ALGOBIT

Ping.

Zhe

On 2017=1B$BG/=1B(B09=1B$B7n=1B(B29=1B$BF|=1B(B 14:10, zhe.he@windriver.com=
 wrote:
> From: He Zhe <zhe.he@windriver.com>
>
> CONFIG_DRM in yocto-kernel-cache selects CONFIG_I2C_ALGOBIT as "y".
> Change CONFIG_I2C_ALGOBIT 00026-lm-sensors.cfg from "m" to "y" to
> avoid following config conflict.
>
> ---------- CONFIG_I2C_ALGOBIT -----------------
> Config: CONFIG_I2C_ALGOBIT
> From: /PATH/TO/i915.cfg /PATH/TO/00026-lm-sensors.cfg
> Requested value:  CONFIG_I2C_ALGOBIT=3Dm
> Actual value:     CONFIG_I2C_ALGOBIT=3Dy
>
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg | 2 =
+-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sens=
ors.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.c=
fg
> index f28bdf6..71c4cad 100644
> --- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
> +++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
> @@ -1,5 +1,5 @@
>  CONFIG_I2C_SMBUS=3Dm
> -CONFIG_I2C_ALGOBIT=3Dm
> +CONFIG_I2C_ALGOBIT=3Dy
>  CONFIG_I2C_ALGOPCA=3Dm
>  CONFIG_I2C_ALI1535=3Dm
>  CONFIG_I2C_ALI1563=3Dm

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

