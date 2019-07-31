Return-Path: <ed@disignconsultants.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA331E00D89; Wed, 31 Jul 2019 02:56:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.11.126 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from GBR01-CWL-obe.outbound.protection.outlook.com
	(mail-eopbgr110126.outbound.protection.outlook.com [40.107.11.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD97EE00D33
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 02:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=BrLsFPBV1IIvwCQhpL04qvkuao4YVWI3KtT+zs14whog+FsidPdVA4xK2rPAWPdUFA0URhX4TNpSbVbo6seyTe1wyVSMJOnyKpHXJfcuPBp+1nrsZjKabtz5U8MQvLAm6tCyEgoKRfULNKzyYg2/2YqmLj2Jv6ZnkAbpTOPS5C2eyENIN97ORYtPbXXwuNkkr9AYxNk4ydDSrK2g5jHEYOAC2v+/Xw0e1/rW7TsJBsTeBfv5Sov4f689rxkvuAbjyGjyy0bmdsym5tB//MAz1ghd/solMyd9OnCgQ91ZEVyqbUyPzrYlXrVXE161/W95f49WcUmIG44lO1dTSPCz8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Qk2KwbQZqi10WWmP884WBuVcz0Le8NhixhDqcYEfy88=;
	b=ckvu0+kYKS00mezkrxHK29DiF4LjY6Qrk4UoP02UWt9dQ2WqIUwOqagTS/U2iqUh9D2BsPI8wXVq1m66HvoeE/WFHSF7xG0i1Q3bCPRjyug8zKnDcsOXPQXnqRggQqZdYfah0bFib41SwFQd7jCOqhRGwE8iNr/Iwm3IBWw8yaDl16uKBp+hLjikeBx3IXO/Un0XJGixsFaqc/h4sFMcm32JpQcSlksHyhsqTBTGilEovWatZTyr2SE8PoUMqKrP7fSeZwmdFS1xgn9lkRR3fY9EnF+QCRx/5EhiZUiio7swI7CQr/jhXJPqufM7sgiG9SI5fQYtjiF3m5Jv6eAVBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=disignconsultants.com;dmarc=pass action=none
	header.from=disignconsultants.com;dkim=pass
	header.d=disignconsultants.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=disignconsultants.onmicrosoft.com;
	s=selector1-disignconsultants-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Qk2KwbQZqi10WWmP884WBuVcz0Le8NhixhDqcYEfy88=;
	b=xcIh/X9ulOmfEx+Z2aT61NrDf13OkqSUjjiqqiQNEbtFmGf3q+UxquUSIY1rWYC2fo0ywuc6XXUBp76TdHwDnJhhr22YYSeBxrfO/d+q3FNXXYB/GVWBja4jOH5HGq8MGyIai5EVQT7naNOaFy7oPanXdpjKpOTmrOM/d4WDlz4=
Received: from LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM (20.176.142.12) by
	LO2P265MB0909.GBRP265.PROD.OUTLOOK.COM (20.176.143.22) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2136.12; Wed, 31 Jul 2019 09:56:09 +0000
Received: from LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM
	([fe80::e4be:ce68:f894:74c5]) by LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM
	([fe80::e4be:ce68:f894:74c5%6]) with mapi id 15.20.2115.005;
	Wed, 31 Jul 2019 09:56:08 +0000
From: Edward Tyrrell <ed@disignconsultants.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Patching /lib/systemd/system/systemd-networkd-wait-online.service
Thread-Index: AQHVR4S+odUrtS2WnEiyGh4HDCAk7A==
Date: Wed, 31 Jul 2019 09:56:08 +0000
Message-ID: <LO2P265MB116541EFF189E7FE94EA99BFDEDF0@LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ed@disignconsultants.com; 
x-originating-ip: [2a00:23c4:bac7:300:161:6f06:1ae6:16f5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fbd720b-8c11-4406-b87c-08d7159d4f99
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:LO2P265MB0909; 
x-ms-traffictypediagnostic: LO2P265MB0909:
x-microsoft-antispam-prvs: <LO2P265MB090977CCA273028B86717EC1DEDF0@LO2P265MB0909.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(136003)(366004)(39830400003)(376002)(346002)(189003)(199004)(86362001)(5640700003)(316002)(8676002)(81166006)(81156014)(8936002)(1730700003)(5660300002)(486006)(46003)(52536014)(2501003)(508600001)(2351001)(25786009)(53936002)(19627405001)(9686003)(54896002)(6436002)(55016002)(68736007)(7736002)(6506007)(102836004)(256004)(14444005)(5024004)(74316002)(7696005)(14454004)(186003)(99286004)(6116002)(66476007)(66556008)(476003)(76116006)(6606003)(66946007)(66446008)(64756008)(71190400001)(71200400001)(6916009)(2906002)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:LO2P265MB0909;
	H:LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: disignconsultants.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aySd/bVxDzF068koFzpu8nnevpTKtvZbu1t4HsiuqPeXsMOEqOPcGXd3PASU+viXmah5d8zosJANfpGQyJRLzG2shXq7zB+HXwOzdOtG2qmwUoup1/5PKvAH073ZZPqgZj2HUpjqpqm1p7dGqBToop1K6keI4W3W5atNiwk81IRT+RuzrDIWf2si9C9Jb5aq9125yVzP+GJFnUI67pPySKiK8LOqaTLTp6rQdXgDVcpUXFf6GFJiqOZxXz9UfMFd+Hi+/emp60CHj93W8PW1W45wtY9sEMQ9sIDmyPmMFdBPoU7FXDiTXMi96N4R91MdwDLVS7SdSDEOOfvyyvclCX4ecT905Agmouv3IygHOfieUj8x3jqf1YfjpyXLfJQDJ6UhN4sjOO0rWI1vd/TkQcOpplp0IGkVZai/ws9a2ac=
MIME-Version: 1.0
X-OriginatorOrg: disignconsultants.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fbd720b-8c11-4406-b87c-08d7159d4f99
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:56:08.4938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23f56990-b154-4177-a4f8-46b0cf2121e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ed@disignconsultants.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P265MB0909
X-Mailman-Approved-At: Thu, 01 Aug 2019 08:12:34 -0700
Subject: Patching /lib/systemd/system/systemd-networkd-wait-online.service
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
X-List-Received-Date: Wed, 31 Jul 2019 09:56:12 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LO2P265MB116541EFF189E7FE94EA99BFDEDF0LO2P265MB1165GBRP_"

--_000_LO2P265MB116541EFF189E7FE94EA99BFDEDF0LO2P265MB1165GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm trying to add a patch to the systemd layer to amend systemd-networkd-wa=
it-online.service. Within the service I simply want to add --any as a param=
eter.


The problem is my is bitbake fails with:

Applying patch 0020-systemd-networkd-wait-online-service.patch
can't find file to patch at input line 3
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|--- a/units/systemd-networkd-wait-online.service 2019-05-23 13:38:23.00000=
0000 +0100
|+++ b/units/systemd-networkd-wait-online.service 2019-07-31 08:30:40.82396=
8051 +0100
--------------------------
No file to patch.  Skipping patch.
1 out of 1 hunk ignored
Patch 0020-systemd-networkd-wait-online-service.patch does not apply (enfor=
ce with -f)




My ...../sources/poky/meta/recipes-core/systemd/systemd_234.bbappend consis=
ts of:


FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
SRC_URI +=3D "file://0020-systemd-networkd-wait-online-service.patch"


My patch file:

--- a/units/systemd-networkd-wait-online.service 2019-05-23 13:38:23.000000=
000 +0100
+++ b/units/systemd-networkd-wait-online.service 2019-07-31 08:30:40.823968=
051 +0100
@@ -16,7 +16,7 @@

 [Service]
 Type=3Doneshot
-ExecStart=3D/lib/systemd/systemd-networkd-wait-online
+ExecStart=3D/lib/systemd/systemd-networkd-wait-online --any
 RemainAfterExit=3Dyes

 [Install]


---------------------------------------------------------------------------=
----


So it finds the patch but struggles locating the service file to patch with=
in the build. Any ideas where I'm going wrong?

Is ...../sources/poky/meta/recipes-core/systemd/systemd_234.bb the proper p=
lace to patch this service file?



Regards,


Edward



This message and any attachment are confidential and may be privileged or o=
therwise protected from disclosure. If you are not the intended recipient, =
please telephone or email the sender and delete this message and any attach=
ment from your system. If you are not the intended recipient you must not c=
opy this message or attachment or disclose the contents to any other person=
.

--_000_LO2P265MB116541EFF189E7FE94EA99BFDEDF0LO2P265MB1165GBRP_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'm trying to add a patch to the =
systemd layer to amend&nbsp;<span>systemd-networkd-wait-online.service. Wit=
hin the service I simply want to add --any as a parameter.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><b>The problem is my is bitbake f=
ails with:</b></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>Applying patch 0020-systemd-networkd-wait-online-service.patch</div>
<div>can't find file to patch at input line 3</div>
<div>Perhaps you used the wrong -p or --strip option?</div>
<div>The text leading up to this was:</div>
<div>--------------------------</div>
<div>|--- a/units/systemd-networkd-wait-online.service<span style=3D"white-=
space:pre">
</span>2019-05-23 13:38:23.000000000 &#43;0100</div>
<div>|&#43;&#43;&#43; b/units/systemd-networkd-wait-online.service<span sty=
le=3D"white-space:pre">
</span>2019-07-31 08:30:40.823968051 &#43;0100</div>
<div>--------------------------</div>
<div>No file to patch.&nbsp; Skipping patch.</div>
<div>1 out of 1 hunk ignored</div>
<div>Patch 0020-systemd-networkd-wait-online-service.patch does not apply (=
enforce with -f)</div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><b>My .....</b><span><b>/sources/=
poky/meta/recipes-core/systemd/systemd_234.bbappend consists of:</b></span>=
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span></p>
<div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;</div>
<div>SRC_URI &#43;=3D &quot;file://0020-systemd-networkd-wait-online-servic=
e.patch&quot;</div>
<b><br>
</b></span>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><b>My patch file:</b></span=
></p>
<p style=3D"margin-top:0;margin-bottom:0"><span></p>
<div>--- a/units/systemd-networkd-wait-online.service<span style=3D"white-s=
pace:pre">
</span>2019-05-23 13:38:23.000000000 &#43;0100</div>
<div>&#43;&#43;&#43; b/units/systemd-networkd-wait-online.service<span styl=
e=3D"white-space:pre">
</span>2019-07-31 08:30:40.823968051 &#43;0100</div>
<div>@@ -16,7 &#43;16,7 @@</div>
<div>&nbsp;</div>
<div>&nbsp;[Service]</div>
<div>&nbsp;Type=3Doneshot</div>
<div>-ExecStart=3D/lib/systemd/systemd-networkd-wait-online</div>
<div>&#43;ExecStart=3D/lib/systemd/systemd-networkd-wait-online --any</div>
<div>&nbsp;RemainAfterExit=3Dyes</div>
<div>&nbsp;</div>
<div>&nbsp;[Install]</div>
<br>
</span>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">---------------------------------=
----------------------------------------------</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">So it finds the patch but struggl=
es locating the service file to patch within the build. Any ideas where I'm=
 going wrong?&nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0">Is&nbsp;<span style=3D"font-famil=
y: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;=
, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, =
&quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">.....</span><spa=
n style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16=
px;">/sources/poky/meta/recipes-core/systemd/systemd_234.bb
 the proper place to patch this service file?</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"color:rgb(33,33,3=
3); font-family:Calibri,sans-serif; font-size:14.6667px">Regards,&nbsp;</sp=
an></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"color:rgb(33,33,3=
3); font-family:Calibri,sans-serif; font-size:14.6667px"><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"color:rgb(33,33,3=
3); font-family:Calibri,sans-serif; font-size:14.6667px">Edward</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,sans-serif=
" size=3D"2" color=3D"red"><span lang=3D"en-US" style=3D"font-size:11pt"><b=
><br class=3D"Apple-interchange-newline">
</b></span></font><font face=3D"Calibri,sans-serif" size=3D"2" style=3D"col=
or:rgb(33,33,33)"><span lang=3D"en-US" style=3D"font-size:11pt"><br>
</span></font><font face=3D"Calibri,sans-serif" size=3D"2" style=3D"color:r=
gb(33,33,33)"><span lang=3D"en-US" style=3D"font-size:11pt"><br>
This message and any attachment are confidential and may be privileged or o=
therwise protected from disclosure. If you are not the intended recipient, =
please telephone or email the sender and delete this message and any attach=
ment from your system. If you are
 not the intended recipient you must not copy this message or attachment or=
 disclose the contents to any other person.</span></font><br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_LO2P265MB116541EFF189E7FE94EA99BFDEDF0LO2P265MB1165GBRP_--
