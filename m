Return-Path: <nick.wareing@aranzmedical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26550E00B71; Sun, 27 Nov 2016 13:08:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1046 seconds by postgrey-1.32 at yocto-www;
	Sun, 27 Nov 2016 13:07:58 PST
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0085.outbound.protection.outlook.com [104.47.126.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E96E00546
	for <yocto@yoctoproject.org>; Sun, 27 Nov 2016 13:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ARANZMedical.onmicrosoft.com; s=selector1-aranzmedical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=fiZFLxWDweqn97/GmsU4nEnFL4TIxzv8QYIBCdncyuk=;
	b=nwrf2jKA++0VX66qUD82bzN1vHKqv8PnVF4FrxthYFyNRYmJW05abS3ERDP3e+ZpZqiSo8VeiwF2BfXSSnfEIXvfoNpw/aljYQDKHVg14Ml1+Jp97AB21tczENcQBBqMcv2tlim+OFC1LzPdzXc7K56G2cJcd6gXgH9Gca0Va6c=
Received: from KL1PR0601MB1317.apcprd06.prod.outlook.com (10.169.68.139) by
	KL1PR0601MB1317.apcprd06.prod.outlook.com (10.169.68.139) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.747.13; Sun, 27 Nov 2016 20:34:28 +0000
Received: from KL1PR0601MB1317.apcprd06.prod.outlook.com ([10.169.68.139]) by
	KL1PR0601MB1317.apcprd06.prod.outlook.com ([10.169.68.139]) with
	mapi id 15.01.0747.015; Sun, 27 Nov 2016 20:34:28 +0000
From: Nick Wareing <nick.wareing@aranzmedical.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Send build information to Toaster
Thread-Index: AQHSSO0+4P6j8k3bEEOtbF5WI2/CZg==
Date: Sun, 27 Nov 2016 20:34:27 +0000
Message-ID: <KL1PR0601MB1317A2F16B73FA12562D06F8F88B0@KL1PR0601MB1317.apcprd06.prod.outlook.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nick.wareing@aranzmedical.com; 
x-originating-ip: [25.165.63.4]
x-ms-office365-filtering-correlation-id: b5de6593-6f83-4d20-02d4-08d41704c8d8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:KL1PR0601MB1317; 
x-microsoft-exchange-diagnostics: 1; KL1PR0601MB1317;
	7:oUxDJoBSE6ggXRpU8Egjrh/0T91M2f66bZ28IOBDv0/EGqQYltXL3J5hkLThsApJPE63zaAjCdXQ/P5EpvQJVE7YqrdVUhV7VpwYSoqdQpBTAnpxLR7SquS/ece11mD5MTHxf/M6tQnp17B87brGbfJnpHVbhZLC/wkcyZPlgZnVtJEChlBWr+EEfuUy+lprAzGYA7rbsP1vNlag8l2iD2/A52d97g7SI5wrJX6/HTe6IqMjjdHYa7qU3X2dJdqNSmdv8oYfzf1wByGDXzdZ/f4iBWUIJU1zDMjhd8HvZSdvjsv/7p5lkGZJKFYuqGpsUW4x96mJgcALJOFJrEJqVcnZZJiY1CJAHG8Z/2NPFLYfMgGwZuaHrwBO94Iw7Vu1hfdgBWeEgsAg6ttau3ZxJMeUO6nRZXQ3klQ/BH9YKkG1txQiDK6bqdC+Rts++mZcaJVlAACCiIS9XK3mjx7rvA==
x-microsoft-antispam-prvs: <KL1PR0601MB1317C1E38A9057E01F05919EF88B0@KL1PR0601MB1317.apcprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6060326)(6040361)(6045199)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(6061324)(20161123560025)(20161123555025)(20161123564025)(20161123562025)(2016111802025)(6043046);
	SRVR:KL1PR0601MB1317; BCL:0; PCL:0; RULEID:;
	SRVR:KL1PR0601MB1317; 
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(199003)(53754006)(189002)(450100001)(122556002)(15974865002)(68736007)(6116002)(102836003)(3846002)(3280700002)(8676002)(3660700001)(81156014)(76576001)(2501003)(1730700003)(33656002)(5640700001)(81166006)(8936002)(50986999)(101416001)(54356999)(9686002)(2906002)(77096006)(39450400002)(105586002)(606004)(19627405001)(106116001)(106356001)(39410400001)(2900100001)(2351001)(39380400001)(39400400001)(6506003)(38730400001)(7846002)(7736002)(5660300001)(6606003)(74316002)(7696004)(110136003)(6916009)(97736004)(92566002)(189998001)(107886002)(86362001)(66066001)(7906003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:KL1PR0601MB1317;
	H:KL1PR0601MB1317.apcprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:3; LANG:en; 
received-spf: None (protection.outlook.com: aranzmedical.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: aranzmedical.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2016 20:34:27.9046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 94829a09-ec16-4fed-bd09-30dec66f48c2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB1317
Subject: Send build information to Toaster
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
X-List-Received-Date: Sun, 27 Nov 2016 21:08:03 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_KL1PR0601MB1317A2F16B73FA12562D06F8F88B0KL1PR0601MB1317_"

--_000_KL1PR0601MB1317A2F16B73FA12562D06F8F88B0KL1PR0601MB1317_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


A dumb question which I feel like I should be able to work out, but can't: =
how do I send build information to Toaster?


I have setup Toaster in Analysis mode on one machine (with MySQL and Apache=
). I'd now like to forward build information from another machine which I a=
m running bitbake builds on. How do I do that?


I've read the documentation: http://www.yoctoproject.org/docs/latest/toaste=
r-manual/toaster-manual.html, but can't seem to find the answer there.


Cheers,

Nick

Toaster User Manual - Yocto Project<http://www.yoctoproject.org/docs/latest=
/toaster-manual/toaster-manual.html>
www.yoctoproject.org
Note For the latest version of this manual associated with this Yocto Proje=
ct release, see the Toaster User Manual from the Yocto Project website.



--_000_KL1PR0601MB1317A2F16B73FA12562D06F8F88B0KL1PR0601MB1317_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi all,</p>
<p><br>
</p>
<p>A dumb question which I feel like I should be able to work out, but can'=
t: how do I send build information to Toaster?</p>
<p><br>
</p>
<p>I have setup Toaster in Analysis mode on one machine (with MySQL and Apa=
che). I'd now like to forward build information from another machine which =
I am running bitbake builds on. How do I do that?</p>
<p><br>
</p>
<p>I've read the documentation:&nbsp;<a href=3D"http://www.yoctoproject.org=
/docs/latest/toaster-manual/toaster-manual.html" class=3D"OWAAutoLink" id=
=3D"LPlnk408118" previewremoved=3D"true">http://www.yoctoproject.org/docs/l=
atest/toaster-manual/toaster-manual.html</a>, but
 can't seem to find the answer there.</p>
<p><br>
</p>
<p>Cheers,</p>
<p>Nick</p>
<div id=3D"LPBorder_GT_14802788031170.9909668390700497" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14802788031070.9658710338591985" cellspacing=3D"0"=
 style=3D"width: 90%; background-color: rgb(255, 255, 255); position: relat=
ive; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: 2=
0px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted r=
gb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14802788031110.10710435353222714" colspan=3D"2" style=3D=
"vertical-align: top; position: relative; padding: 0px; display: table-cell=
;">
<div id=3D"LPRemovePreviewContainer_14802788031110.34853861123306396"></div=
>
<div id=3D"LPTitle_14802788031110.02500769105417766" style=3D"top: 0px; col=
or: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf=
_segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &q=
uot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-h=
eight: 21px;">
<a id=3D"LPUrlAnchor_14802788031130.7810309958433876" href=3D"http://www.yo=
ctoproject.org/docs/latest/toaster-manual/toaster-manual.html" target=3D"_b=
lank" style=3D"text-decoration: none;">Toaster User Manual - Yocto Project<=
/a></div>
<div id=3D"LPMetadata_14802788031130.02885058736056112" style=3D"margin: 10=
px 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: w=
f_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Aria=
l, sans-serif; font-size: 14px; line-height: 14px;">
www.yoctoproject.org</div>
<div id=3D"LPDescription_14802788031150.6242601417104336" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Note For the latest version of this manual associated with this Yocto Proje=
ct release, see the Toaster User Manual from the Yocto Project website.</di=
v>
</td>
</tr>
</tbody>
</table>
</div>
<br>
</div>
</body>
</html>

--_000_KL1PR0601MB1317A2F16B73FA12562D06F8F88B0KL1PR0601MB1317_--
