Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E6F3E00B66; Wed, 13 Jan 2016 12:17:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1110]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.0.227 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Jan 2016 12:17:44 PST
Received: from DUB004-OMC1S28.hotmail.com (dub004-omc1s28.hotmail.com
	[157.55.0.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2B37E00B46
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:17:44 -0800 (PST)
Received: from emea01-am1-obe.outbound.protection.outlook.com ([157.55.0.237])
	by DUB004-OMC1S28.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Wed, 13 Jan 2016 12:16:41 -0800
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com (10.255.255.158) by
	AMXPR01MB088.eurprd01.prod.exchangelabs.com (10.255.255.160) with
	Microsoft
	SMTP Server (TLS) id 15.1.361.13; Wed, 13 Jan 2016 20:16:41 +0000
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.63]) by
	AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.63]) with
	mapi id 15.01.0361.006; Wed, 13 Jan 2016 20:16:40 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Yocto][Generic] Add a local binary file into a target Distro
Thread-Index: AQHRTj8K7PBiAZw6B06+Xcn9MWA0Ug==
Date: Wed, 13 Jan 2016 20:16:40 +0000
Message-ID: <AMXPR01MB0866EFB3F8CA8249F251C8A92CB0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [rXkm0YuoxoWjkaeySDLQM67x7qHXgn6e]
x-microsoft-exchange-diagnostics: 1; AMXPR01MB088;
	23:Te+WWuREdyUS0s0uzUkfoU1tgT0o4Sm8HL8sKnoEOX8tPrj1iiS1jdjWYTUM7cb+LoEUkmCs72WBNYpq+Juag9o9WyGSTJoDRBQ8Nz3GfE/d51PFDdYEHB8Bpr3TAZYcgWWdcXv1Fr5eCZ70vLR1G0PhwznfbfeiRaonXedAAlsf/OzH+BBuN9niFWXX2jSBZJ+1kyR0jUv18djlGqBymw==;
	5:Q8a04qbZ9cqBhz1OLKRViAWzQBccA0QEj4o4bvs58+TeOHzKljABLFWuTLi7Zm4Tn7WXfA2OaWj983Be0y/F4jqfHIZehS9azZ8oC59jhVo7Dug3TLP+D588R84RWeLof14tCBEndLGtiOxPbjrhJQ==;
	24:+7pdu8OjxnBYAaxnBg31sqd/KRl6muFKBxRLYXt1VYpZ9dHIBWt0oavBim5NIzM1M1+lH5NlPROCISYOFovXEKbBYpVCA7AnHjlCUHOlfIo=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AMXPR01MB088;
x-ms-office365-filtering-correlation-id: 72c0e70b-a91e-4e13-e349-08d31c5672c1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AMXPR01MB088; BCL:0; PCL:0; RULEID:; SRVR:AMXPR01MB088; 
x-forefront-prvs: 08200063E9
x-forefront-antispam-report: SFV:NSPM; SFS:(7070004)(98900002); DIR:OUT;
	SFP:1901; SCL:1; SRVR:AMXPR01MB088;
	H:AMXPR01MB086.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sct-15-1-318-9-msonline-outlook-fa212.templateTenant
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2016 20:16:40.6510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMXPR01MB088
X-OriginalArrivalTime: 13 Jan 2016 20:16:41.0944 (UTC)
	FILETIME=[5101E580:01D14E3F]
Subject: [Generic] Add a local binary file into a target Distro
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
X-List-Received-Date: Wed, 13 Jan 2016 20:17:47 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMXPR01MB0866EFB3F8CA8249F251C8A92CB0AMXPR01MB086eurprd_"

--_000_AMXPR01MB0866EFB3F8CA8249F251C8A92CB0AMXPR01MB086eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


Please be indulgent with my noob question.

I spent a lot of time with setting up Yocto on different target boards.

It's just amazing.


But, although I've been able to add my own layer to include a project from =
github, I was just wondering how we could simply and easily add a local fil=
e / binary to a target distro ? (FYI: raspberrypi2) without creating tons o=
f layers , bb. etc.


Thanks for your feedback.


K.


--_000_AMXPR01MB0866EFB3F8CA8249F251C8A92CB0AMXPR01MB086eurprd_
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
<p>Hi all,</p>
<p><br>
</p>
<p>Please be indulgent with my noob question.</p>
<p>I spent a lot of time with setting up Yocto on different target boards.<=
/p>
<p>It's just amazing.</p>
<p><br>
</p>
<p>But, although I've been able to add my own layer to include a project fr=
om github, I was just wondering how we could simply and easily&nbsp;add a l=
ocal file / binary to a target distro ? (FYI: raspberrypi2) without creatin=
g tons of layers , bb. etc.</p>
<p><br>
</p>
<p>Thanks for your feedback.</p>
<p><br>
</p>
<p>K.</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_AMXPR01MB0866EFB3F8CA8249F251C8A92CB0AMXPR01MB086eurprd_--
