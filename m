Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A27AFE00C75; Fri, 16 Sep 2016 05:15:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0053.outbound.protection.outlook.com [104.47.32.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BA63E0077E
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 05:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2uSl4qCE6k2NAncwxve+soft6EYZv1KEOsD16UmO4oc=;
	b=cr3GKC7qoxuVA2npXUDFgPrcWPL+1EUg0YBUuI8WmZbbk2H4Ahx8C3OuMKIyZeARQPTl7b8QcRme+2JjoH/RLyPTqw6Gnl69n4ZoGXnGzdoSjcU7H3i7TY6CAfnHmYbaP+8nrD5S4yJk/oTx4FzJ0DGFC4LTvCWrIhQYPrRPNj0=
Received: from BLUPR0101MB1586.prod.exchangelabs.com (10.163.119.13) by
	BLUPR0101MB1586.prod.exchangelabs.com (10.163.119.13) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.619.10; Fri, 16 Sep 2016 12:15:05 +0000
Received: from BLUPR0101MB1586.prod.exchangelabs.com ([10.163.119.13]) by
	BLUPR0101MB1586.prod.exchangelabs.com ([10.163.119.13]) with mapi id
	15.01.0619.012; Fri, 16 Sep 2016 12:15:05 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: BBMASK does not work
Thread-Index: AQHSD8eFP1x6Px6sOkyNo58YrDHq/qB71ZnGgAAx38k=
Date: Fri, 16 Sep 2016 12:15:04 +0000
Message-ID: <BLUPR0101MB15861561A9169B0AD6725BB2D7F30@BLUPR0101MB1586.prod.exchangelabs.com>
References: <CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30@CY1PR0101MB1594.prod.exchangelabs.com>,
	<CY1PR0101MB159420CCFFA0785E3A9713FFD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
In-Reply-To: <CY1PR0101MB159420CCFFA0785E3A9713FFD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: ff0f7e3e-e568-4860-67fc-08d3de2b17fe
x-microsoft-exchange-diagnostics: 1; BLUPR0101MB1586;
	6:rEEGULW8y/TxncRcT3j6rNxODQiSyJ4PAqEjIJpwN72twzhKw87BnMQWjK5eM9h38Jay/aCHTW23kEobbh6Q/0Un7mHUgy6ebj23Vv8J1PUsDrCIUfQP50T+MIPF+HBTrvHUTQuInjzHeIKm7ZmKmUqGtHjeLV5qqgaRNNGXHBPoNmpJ09t4Q/RwL2Tva+ORkA7z6am4jZ7LzUUFcz/ijAY9bX/WisNA4TgzU4NC5LQcqmSQYPjNyxw8/tN5m8PDKdxotOwkJli2kulIPx0I8A/tzldRzwUYsd1PQHTgGc0=;
	5:IOKstrADVIFWyr6GvhRjzb9X2iq/t+4rgWaI56xQRWgcwbOYw6+N2WCR1vKJZflVPO81iT8BzeHnXu2EPtrXViEaM5cVKKZM1tcgyIlFe0IYirknnnO/1LNJeyFOSy+F0fruOu8BrEZfVp530QIjFA==;
	24:84AEq6WtmDWUMW1nqb3PaDfARycoDBdbly7BLkgnnF/f1rlgV+lWq6ijzMrMiFfJhK71AUl8MQBDUlMiWaKdOK3PJxDRaEeKtFjdF6/c1yA=;
	7:sSYkHP5sGKtVJ50R1toChGMEM7RpbEnuOktg204YY+M76KfUVrNDXDr+N/erzGVkKsaafWTki43ma1Q8BBgVnw3EvKwF427FT3FdoTelhaxZ0cwyRc8uqsvMVd0WV0C3KReP3twgs6P7u9E4WNwIiYD6xNtNQOcVY6BqOalfx9wrI12GKORcDC+v6UPoSS3I3LdylNcu5DcWT+rVJe/8myodb96RfLdwL/Jw9qQcAl/+sNOzWt+zcVb121JgmcKp
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0101MB1586;
x-microsoft-antispam-prvs: <BLUPR0101MB1586DF2588CDD27FF74E4A66D7F30@BLUPR0101MB1586.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BLUPR0101MB1586; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0101MB1586; 
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(377454003)(189002)(199003)(2906002)(106116001)(8676002)(81156014)(105586002)(81166006)(3660700001)(1730700003)(110136003)(19627405001)(10400500002)(106356001)(3480700004)(11100500001)(19580395003)(92566002)(8936002)(9686002)(3280700002)(7696004)(2950100001)(2900100001)(450100001)(87936001)(19580405001)(7846002)(19625215002)(97736004)(5640700001)(33656002)(50986999)(68736007)(5660300001)(5002640100001)(16236675004)(107886002)(122556002)(586003)(3846002)(102836003)(6116002)(2501003)(66066001)(76176999)(74316002)(86362001)(189998001)(101416001)(7736002)(77096005)(2351001)(54356999)(3900700001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0101MB1586;
	H:BLUPR0101MB1586.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2016 12:15:04.9824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0101MB1586
Subject: Re: BBMASK does not work
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
X-List-Received-Date: Fri, 16 Sep 2016 12:15:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0101MB15861561A9169B0AD6725BB2D7F30BLUPR0101MB1586_"

--_000_BLUPR0101MB15861561A9169B0AD6725BB2D7F30BLUPR0101MB1586_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, I figured this out that I can add my BBMASK lines to my conf/distro/xxx=
.conf fille.

So that I can append to what BSP defines and it seems to happen before coll=
ect_bbbfiles() function.

Sorry for my confusion.

________________________________
From: Takashi Matsuzawa
Sent: Friday, September 16, 2016 6:13 PM
To: yocto@yoctoproject.org
Subject: Re: BBMASK does not work


Well, I tried adding debug lines to poky/bitbake/lib/bb/cooker.py, and I th=
ink what is happening is:

i) BSP has BBMASK =3D xxxx line.
ii) I add BBMASK_forcevariable =3D yyyy line to my local.conf
iii) If I check with -e option, I can see BBMASK variable is finally set to=
 "yyyy"
iv) However, when cooker.py is run, matching bbmask file list with recipe p=
aths, the original "xxxx" line is used for matching.

I feel, the recipe files matching is being done before BBMASK is finally se=
t to "yyyy".  Instead, they are matches against "xxxx" it is the initial BB=
MASK value set by BSP.

This is fido, and jethro may be behave differently (since on jethro based b=
uild this seemed to work)?


--_000_BLUPR0101MB15861561A9169B0AD6725BB2D7F30BLUPR0101MB1586_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>OK, I figured this&nbsp;out that I can add my BBMASK lines to my conf/di=
stro/xxx.conf fille.</p>
<p>So that I can append to what BSP defines and it seems to happen before c=
ollect_bbbfiles() function.</p>
<div><br>
</div>
Sorry for my confusion.<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Friday, September 16, 2016 6:13 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: BBMASK does not work</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div>Well, I tried adding debug lines to poky/bitbake/lib/bb/cooker.py, and=
 I think what is happening is:</div>
<div><br>
</div>
<div>i) BSP has BBMASK =3D xxxx line.</div>
<div>ii) I add BBMASK_forcevariable =3D yyyy line to my local.conf</div>
<div>iii) If I check with -e option, I can see BBMASK variable is finally s=
et to &quot;yyyy&quot;</div>
<div>iv) However, when cooker.py is run, matching bbmask file list with rec=
ipe paths, the original &quot;xxxx&quot; line is used for matching.</div>
<div><br>
</div>
<div>I feel, the recipe files matching is being done before BBMASK is final=
ly set to &quot;yyyy&quot;. &nbsp;Instead, they are matches against &quot;x=
xxx&quot; it is the initial BBMASK value set by BSP.</div>
<div><br>
</div>
<div>This is fido, and jethro may be behave differently (since on jethro ba=
sed build this seemed to work)?</div>
<div><br>
</div>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BLUPR0101MB15861561A9169B0AD6725BB2D7F30BLUPR0101MB1586_--
