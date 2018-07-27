Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53C43E00CEA; Fri, 27 Jul 2018 03:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 933 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Jul 2018 03:50:06 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0083.outbound.protection.outlook.com [104.47.100.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39B0DE00C8B
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 03:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=q8GDZrRLn6TOTq+vZt4w9hjxgRKTgv5TbVhXqkBNqQE=;
	b=Q3SBN0zMnBOthVCSKVKH887exW1/+l5XmzdPvXztEyQm1ErYemqlIYxogNbWxVKGMTr1qfzaaOrhRBjO+wDd9Xtk8sFlRpOqxzDPYXwYvjQ1dK9xQb+2F6pVHdbw7tv/EJLAloJa9IEE1K62MvDhZ0aXVIl1HIj9ZIvQiKHRskA=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0123.INDPRD01.PROD.OUTLOOK.COM (10.164.149.16) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.973.21; Fri, 27 Jul 2018 10:34:29 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::6dde:1fb8:4a3f:52a0]) by
	MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::6dde:1fb8:4a3f:52a0%2]) with mapi id 15.20.0973.022;
	Fri, 27 Jul 2018 10:34:29 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "openembedded-issues@lists.openembedded.org"
	<openembedded-issues@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Thread-Topic: [meta-openembedded] Original ltrace_git.bb SRCREV  commit used
	is now unavailable in git tarball from ltrace.org
Thread-Index: AQHUIzoV3BiBKx3WjkiwsHOhpDxktaSi40ep
Date: Fri, 27 Jul 2018 10:34:28 +0000
Message-ID: <MAXPR01MB034862B6CB3CFEF598A3BA47912A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB053655685322C5FE49975DADEE550@MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB053655685322C5FE49975DADEE550@MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0123;
	6:MEdCQ5KTlqd1Cn2xa/UWIf0gheaW7JM9NNPKawOzbaMDccH0kXLqu80kdwa9eDVuy819v3pJVb5pj0AxRg3SrLAgj/nsPxxd+cfswylW/e5aCp8Hy/boDL90LKc2wDUKmtxkqY6UD9Qs3hek1Fsmlh0SzIQvzn70c7PwCVSohUVslLej92bE6fAtob2CFx43Cv1nbxoUAKHWU9X7Dbn8RFlfwztTpjp20AE/1Erh0oIu7nYwTcTLuKliDjZgqCFUrV4Y+QLcvHKTvDLC102ZvorMm1089NGtyjfJvHNtE1a8F44ScC5YE2pHQHlTlfkn4fSMgEf+tOu33jfJNcHaL+elylYLchC+Gbvruy3y42MhhVLcti6mWjPYWZmj7hUhsz0NVTXgoSJGqmZfu22OxROHyH7AQdlLfDnhDksbu2r72QoDyiqzoCrDutVwF9tnNVa8u2MQ073r7EqABXbDYQ==;
	5:1vGPSH0EFndjN6/c0bniYzkHOCIr0ZN3HcmpKf146kzIpFWfKZCP4536D7zr6q1pD+gNmWa/MYfshFaowJTtR4ieD+eSzqoTX9Lg2m3rOg1nhjl/cPWPBAS+qClucWrxFNlpuWMRX36z5IXDIGOSxGFZ+9H53LVBt8vDcH694i0=;
	7:5dmteJ62jNijEFYSSAS3FuqKt5yNPBfMOb2yf8WlfWxltxnUL2JGLmyCP3rVDswatbcGK1sMFN18IfVpifm37UEfEdROqGyxILlNritR24DmiA/fgCC+b2whWe1jwXQxaOnmB75jJQsYEK4et8sFRyhg1Z+4OQGwcKt5s16bkNwljpfCTz8UgdDx80VyFzkAVCRrG8c/tdRw7M5aRm3jkU5291X6bvfReKYA3vEApiPNMyovDORLMnAIxJK0K04A
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e6172cc0-9ce7-4a72-2d7a-08d5f3ac8879
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600074)(711020)(4618075)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0123; 
x-ms-traffictypediagnostic: MAXPR01MB0123:
x-microsoft-antispam-prvs: <MAXPR01MB01236C8E77CB604D6E61ED46912A0@MAXPR01MB0123.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(223705240517415)(264703809997249);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231311)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);
	SRVR:MAXPR01MB0123; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0123; 
x-forefront-prvs: 07467C4D33
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(39860400002)(346002)(396003)(376002)(366004)(53754006)(199004)(189003)(106356001)(14454004)(9686003)(54896002)(478600001)(316002)(72206003)(54906003)(110136005)(55016002)(7696005)(76176011)(6436002)(107886003)(33656002)(99286004)(105586002)(6246003)(68736007)(26005)(53936002)(39060400002)(19627405001)(4326008)(2900100001)(5250100002)(53546011)(25786009)(2501003)(476003)(55236004)(97736004)(102836004)(7736002)(74316002)(446003)(11346002)(486006)(6506007)(6606003)(186003)(66066001)(229853002)(81156014)(86362001)(81166006)(5660300001)(3846002)(6116002)(8676002)(256004)(8936002)(14444005)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0123;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: QclHBT5SnmvFat5D81eWqy7AkQQO4Kpx/fIrT8SgMF1JCyBw/igaGPmcwESRviZvYfCF24eF6c/PvYC/DvqMDlvX/N+yc2E/U6wYApuZqgLTYbINhou5QR4OXt0C7ylUz7fD7R/cOQydCxxtsUCUnN8QJAOtEAjGW5aKU2IWyN5OiOjqjPBCTOOqO6L8prA00NTyb7WgIIcdhshXICtjLbvuQXGcbmtC+NsSc3506j8V8fvpJva+5M1KDlYQxc86XjcrUTEIGqrgAGXCe3EKhYCR1x8xWPTvR96wLJRWSZDyWq3yOYyziRU9WIEBknebTtAg9JaYBgYy47Rvhvd4dKlJulErBgmM05GaFMnpV6M=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6172cc0-9ce7-4a72-2d7a-08d5f3ac8879
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2018 10:34:28.7047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0123
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-openembedded] Original ltrace_git.bb SRCREV commit used is now unavailable in git tarball from ltrace.org
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
X-List-Received-Date: Fri, 27 Jul 2018 10:50:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB034862B6CB3CFEF598A3BA47912A0MAXPR01MB0348INDP_"

--_000_MAXPR01MB034862B6CB3CFEF598A3BA47912A0MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Me too facing same issue. Any advice on this.



Regards,

Aditya Tayade

________________________________
From: Nisha Parrakat
Sent: Tuesday, July 24, 2018 4:08:12 PM
To: openembedded-issues@lists.openembedded.org; openembedded-devel@lists.op=
enembedded.org
Cc: yocto@yoctoproject.org
Subject: [meta-openembedded] Original ltrace_git.bb SRCREV commit used is n=
ow unavailable in git tarball from ltrace.org


Hi all,


ltrace recipe is pointing to a fetch url (git://anonscm.debian.org/collab-m=
aint/ltrace.git;branch=3Dmaster) that is discontinued now.

No ltrace found in alternate salsa.debian.org.

Tarball for ltrace is present in ltrace.org but the SRCREV in the mentioned=
 in the original recipe is not found any more but we do see the same commit=
 with another sha but a different git history.


Please advice if we should modify the SRCREV to reflect the new git source =
from ltrace.org?


original SRCREV in recipe c22d3594...

corresponding SRCREV coming from the git tarball is ea8928da...


Please advice .




Regards,
Ms Nisha Parrakat
KPIT Technologies Ltd, Pune, INDIA


This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB034862B6CB3CFEF598A3BA47912A0MAXPR01MB0348INDP_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Me too facing same issue. Any adv=
ice on this.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0;margin-bottom:0">Aditya Tayade</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Nisha Parrakat<br>
<b>Sent:</b> Tuesday, July 24, 2018 4:08:12 PM<br>
<b>To:</b> openembedded-issues@lists.openembedded.org; openembedded-devel@l=
ists.openembedded.org<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [meta-openembedded] Original ltrace_git.bb SRCREV commit us=
ed is now unavailable in git tarball from ltrace.org</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Diso-8859-1">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif">Hi all,</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif; font-size:12pt">ltrace recipe is pointing to a fet=
ch url (</span><span style=3D"color:rgb(36,41,46); font-family:Calibri,Helv=
etica,sans-serif; font-size:12pt; white-space:pre">git://anonscm.debian.org=
/collab-maint/ltrace.git;branch=3Dmaster</span><span style=3D"font-family:C=
alibri,Helvetica,sans-serif; font-size:12pt">)
 that is discontinued now.&nbsp;</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif; font-size:12pt">No ltrace found in alternate salsa=
.debian.org.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif; font-size:12pt">Tarball for ltrace is present in l=
trace.org but the SRCREV in the mentioned in the original recipe is not fou=
nd any more but we do see the same commit
 with another sha but a different git history.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif; font-size:12pt">Please advice if we should modify =
the SRCREV to reflect the new git source from ltrace.org?</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif; font-size:12pt">original SRCREV in recipe&nbsp;</s=
pan><span style=3D"color:rgb(36,41,46); font-family:Calibri,Helvetica,sans-=
serif; font-size:12pt; white-space:pre">c22d3594...
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><font color=3D"#24292e" face=3D"=
SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><span=
 style=3D"font-size:12pt; white-space:pre; font-family:Calibri,Helvetica,sa=
ns-serif">corresponding SRCREV coming from
 the git tarball is ea8928da...</span></font></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><font color=3D"#24292e" face=3D"=
SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><span=
 style=3D"font-size:12pt; white-space:pre; font-family:Calibri,Helvetica,sa=
ns-serif">Please advice .</span></font></p>
<p style=3D"margin-top:0; margin-bottom:0"><font color=3D"#24292e" face=3D"=
SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><span=
 style=3D"font-size:12px; white-space:pre"><br>
</span></font></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<pre class=3D"x_code-none" style=3D"margin-top:0px; margin-bottom:0px; padd=
ing:0px; max-height:30em; overflow:auto; white-space:pre-wrap; word-wrap:no=
rmal; color:rgb(51,51,51); font-size:12px; background-color:rgb(245,245,245=
)"></pre>
<br>
<p></p>
<div id=3D"x_Signature">
<div name=3D"x_divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Hel=
vetica,sans-serif; font-size:; margin:0">
<font color=3D"#003366" face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D=
"2"><span style=3D"font-size:10pt"><font face=3D"Calibri,Arial,Helvetica,sa=
ns-serif"><font face=3D"Tahoma" size=3D"1"><span style=3D"font-size:13px">
<div style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,Arial,He=
lvetica,sans-serif" size=3D"2">Regards,</font></div>
<div style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,Arial,He=
lvetica,sans-serif" size=3D"2">Ms Nisha Parrakat<br>
</font></div>
<div style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,Arial,He=
lvetica,sans-serif" size=3D"2">KPIT Technologies Ltd, Pune, INDIA</font></d=
iv>
</span></font></font></span></font><br>
<br>
</div>
</div>
</div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB034862B6CB3CFEF598A3BA47912A0MAXPR01MB0348INDP_--
