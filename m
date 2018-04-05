Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42883E00A75; Thu,  5 Apr 2018 19:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.2.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 11809 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Apr 2018 19:53:15 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092002056.outbound.protection.outlook.com [40.92.2.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463B5E00708
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 19:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=rsBOe3zdVRBEiWP7/LL4QAOH9NxMNkTdUkDZHdM4G60=;
	b=ujhax0f0DeV3PpIxXhYYPQmj+5vSlkOBIwSC5g8odwOdl3rZiTVCDSqSRhFFMjF6bsWa45MDdJcW3PYISW+uiDdf2rZyxA+DJbjl6pFztkWkYlglhJa+jO7AMtXIW0AzHwkJjzgGX9nKvozN2FzQYAifnBl46B3tsz6SHDFJaVDFskPeHIEDItNUXHeS7X8m9pkxtZCkqMW04hDVEm8eC2EYy4oT3bWmclrpmH1/FzKmR13Q43Zn3tIUZIFtFcYu/hczA3aSIFhNKjfz2K/dwnJed85S567sYk6+CZTZwiKkWSdgcd/gUMj0Z8G5KBuRUCVEXhaSKseXqEjJIhTYZw==
Received: from SN1NAM01FT059.eop-nam01.prod.protection.outlook.com
	(10.152.64.57) by SN1NAM01HT017.eop-nam01.prod.protection.outlook.com
	(10.152.65.104) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Thu, 5 Apr 2018 23:22:19 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.64.55) by
	SN1NAM01FT059.mail.protection.outlook.com (10.152.65.115) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Thu, 5 Apr 2018 23:22:19 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 23:22:19 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Thread-Topic: [yocto] Problem with packages during "devtool build"
Thread-Index: AQHTzH12aB4neOupkEGhBC8TIHhB3aPxbNIPgAD4OACAABFJooAADgwAgAA2BymAABWzSg==
Date: Thu, 5 Apr 2018 23:22:19 +0000
Message-ID: <MWHPR19MB11832A4F3B3A7770DC5D5DFDC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAMKF1sqodNOr9oxCTgqapjaZAxYjqLj3s86_MNj74i5D-1orQw@mail.gmail.com>
	<MWHPR19MB11833298715A5E9438C791C8C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<b5b5d8b1-efde-7e10-5ff1-404b2b407d89@gmail.com>,
	<MWHPR19MB1183493B585CA11B864C269BC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183493B585CA11B864C269BC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:103776DC269A2D26219A50B6AA4B1984896B65289B375AF3D51496AC8546C322;
	UpperCasedChecksum:BE917EE34556D4F42E8D54C9091C7677C98FAD4537202BAA77004B04F1815F60;
	SizeAsReceived:7549; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [sX7o/iglG2ox0cSyKT2O4urhJ5XnTKLB]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM01HT017;
	7:PzEdnN3zsqg1yD1jvWubmptFriknGKREAsTZXnMZYNKx5JGH1Q9qfbxsfUjSjmDS4iSzyM4rtQ/AfZHZr+QyhPXtnCP7AycxInvrzo5qQ7wDEb6FA/33HPTabTB0EDVoWiyyTm0ZYnto0g8hsUaVoovUPiXdmiRhkoWClPcdz771z9uZRzMNDdrLmDaKt/B/E2uLvTJ2ru9tQOIIe6Oz1LroqTj6jTRndZ35J3U1aZxgDV7kaHIeUjP9ZxCS21Fr
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:SN1NAM01HT017; 
x-ms-traffictypediagnostic: SN1NAM01HT017:
x-ms-office365-filtering-correlation-id: 1e9de0d6-fbaa-4b4f-0198-08d59b4c13b1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM01HT017; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM01HT017; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SN1NAM01HT017;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: cdv1xUR9r11ih5FF09pD3VZtOuazJL7dS3IxMERcIO4OhURPUz238PoR+TnYMzwPyr5e24D3Hf2jbIdgciD6ouKQdD9xcuCJZc3jT9tqhvgLwkRSJN+WAEzqcV05S6aOz76OUvk330tbk0EfDJTj3ntS8sdLlQgm64hiMP7CVJf3Hnsv16UAg8vV0HS727eH
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e9de0d6-fbaa-4b4f-0198-08d59b4c13b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 23:22:19.2355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM01HT017
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with packages during "devtool build"
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
X-List-Received-Date: Fri, 06 Apr 2018 02:53:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11832A4F3B3A7770DC5D5DFDC5BB0MWHPR19MB1183namp_"

--_000_MWHPR19MB11832A4F3B3A7770DC5D5DFDC5BB0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I figured out a way out of my do_compile problem in my last post.


By accident, I stumbled on "bitbake -e virtual/kernel" command in one of th=
e many manuals.  Executing this in directory where belayer.conf is defined =
would give me all the expanded values of all variables.


Some of these variables are actually exported.  I tried referencing a few o=
f them, and they actually have values consistent with my build environment.=
 The trick now is to pick and choose those that make sense for compile and =
for link.  And unfortunately, I'd need to modify the 3rd party S/W for at l=
east this much to include them.


Does this make sense?


Raymond

--_000_MWHPR19MB11832A4F3B3A7770DC5D5DFDC5BB0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I figured out a way out of my do_=
compile problem in my last post.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">By accident, I stumbled on &quot;=
bitbake -e virtual/kernel&quot; command in one of the many manuals. &nbsp;E=
xecuting this in directory where belayer.conf is defined would give me all =
the expanded values of all variables.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Some of these variables are actua=
lly exported. &nbsp;I tried referencing a few of them, and they actually ha=
ve values consistent with my build environment. The trick now is to pick an=
d choose those that make sense for compile
 and for link. &nbsp;And unfortunately, I'd need to modify the 3rd party S/=
W for at least this much to include them.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Does this make sense?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB11832A4F3B3A7770DC5D5DFDC5BB0MWHPR19MB1183namp_--
