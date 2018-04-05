Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6C5AE00956; Thu,  5 Apr 2018 04:44:13 -0700 (PDT)
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
	no *      trust *      [40.92.7.14 listed in list.dnswl.org]
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
X-Greylist: delayed 28846 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Apr 2018 04:44:12 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007014.outbound.protection.outlook.com [40.92.7.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5129E00843
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 04:44:12 -0700 (PDT)
Received: from DM3NAM03HT160.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e49::413) by
	BY2NAM03HT157.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e4a::470) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Thu, 5 Apr 2018 02:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=8+Yuecj9uHCk5/EKUKchEL3ZIfZ+dTzGIFyhZBrhyig=;
	b=tgLWf+KurRzMTRYpoZzwoUG2FQWPLjg01vWmOtad9f1VtIofneSCxufAGFefbdgEPQLI1LhUODK5WAEAsnv/HdRujQb5dXz1i/dX6S3b8ONakVIkK+mDRCh7GYZDdhN4ps/tWm+rCWUZ0lilhqickdEArjPwhzvM8RGE9Rx8JoCndPAy6DbSmboFIk8FfC3vEQO2H49R8wIGjSSmrEgNZtQ651gzgj91bzKNTzeskfKZOe/kqzJib+JGDzmT00QIQOXjC7OlpcagxA7sAgRjqu6lRXD5vDUpidsU4T0tXgWFUx0QIux+F/lCdnxQPvTDKc+2OlDSYK2sqLmsEcnXBA==
Received: from DM3NAM03FT042.eop-NAM03.prod.protection.outlook.com
	(10.152.82.54) by DM3NAM03HT160.eop-NAM03.prod.protection.outlook.com
	(10.152.83.157) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.631.7;
	Thu, 5 Apr 2018 02:08:21 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.82.56) by
	DM3NAM03FT042.mail.protection.outlook.com (10.152.83.174) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.8 via Frontend Transport; Thu, 5 Apr 2018 02:08:21 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 02:08:21 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem with packages during "devtool build"
Thread-Index: AQHTzH12aB4neOupkEGhBC8TIHhB3aPxbNIP
Date: Thu, 5 Apr 2018 02:08:20 +0000
Message-ID: <MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2FDF5FABDBC9611B5A8B5FE6B7CE5346A238F17439009293B3A24465A48C54F7;
	UpperCasedChecksum:3DF5F52ACC18A470FDA23CFA7F40DB63C6C3B873F108C3319B1ABEBECBC1206B;
	SizeAsReceived:7089; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [/hg7EITKm7RRgAjPAz3Ehu5V94Dgi/dC]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3NAM03HT160;
	7:9WFgXXYN3Jj4NVIpB1XhQW9YbUyajwgNlkWLnD17eP7LJK849HzDS1ocT+bJell3SZa17evy72IfxX6gTZ4cGP6hAePyDtBtWLXTMnILEUNNTza0aTrtgPH16mKBGBkm/bicioqeaxZ3qayBH4TJbP6gIR9nSe9LKbUoMLhX/Nt2yvKVcfg18ZGRc64tGLVlQsTfyQW70c2EiPZHHUHN06QUwdOyOLj9ATUPxCqUb4WXWoiqRIi3UFazdkDiGhtL
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:DM3NAM03HT160; 
X-MS-TrafficTypeDiagnostic: DM3NAM03HT160:|DM3NAM03HT160:|BY2NAM03HT157:
x-ms-office365-filtering-correlation-id: 560731a1-f7e5-4785-d21f-08d59a9a1b01
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DM3NAM03HT160; BCL:0; PCL:0; RULEID:; SRVR:DM3NAM03HT160; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:DM3NAM03HT160;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: Y9QXFEg/fPeC5Ab5hWSmmm0R0G1LuuXjVYf4j0D66N+UZSgsYaowpv/ZlQKrPwqo7vNDxWDQlUoWwHH6C0Pq/cytu0yBugQiu8FlabQ4mu3/254UBaNJGxzEPY/K3nnRREFFL+4lzc//JEtMQvQIw3oxkDTh9rma10tJ0qNlB0hueeaBq+woXP7XfGHjnerv
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 560731a1-f7e5-4785-d21f-08d59a9a1b01
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 02:08:21.0132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT160
X-Microsoft-Exchange-Diagnostics: 1; BY2NAM03HT157;
	23:XkjZCjiCHhRyIoYL+3uZG2DMizybkYwcw299/tpZDn0mKfygvwih2ub9FS/BqPjXcWJIiUB27K01LhvV/Pi3jY+E+wit8WL2fsYNaW0112ALwS+PowYvS1nr1xck5meeuTE10zPxW/SeKUae+bSUVw==
X-OriginatorOrg: hotmail.com
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
X-List-Received-Date: Thu, 05 Apr 2018 11:44:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118384708AABF27804EBDD66C5BB0MWHPR19MB1183namp_"

--_000_MWHPR19MB118384708AABF27804EBDD66C5BB0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Resent, after subscribing to the list.


________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Wednesday, April 4, 2018 6:40 PM
To: yocto@yoctoproject.org
Subject: Problem with packages during "devtool build"


I've some 3rd party Makefile-based software I'd like to integrate to a work=
ing Poky snapshot.  The following are done:


  1.  devtool add cgosapi <source path>
  2.  Edit workspace/recipe/cgosapi/cgosapi.bb.
     *   Implement do_install to move files on build machine to directories=
 on target.
     *   Files include a .so, a .ko, along with 2 other binaries.
  3.  devtool build cgosapi


At step 3, I got following error:


ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories were=
 installed but not shipped in any package:

    /lib

    /lib/modules

    /lib/modules/4.4.26-yocto-standard

    /lib/modules/4.4.26-yocto-standard/extra

Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.

cgosapi: 4 installed and not shipped files. [installed-vs-shipped]


Where do I get the above 4 lines; they're BTW directories, not files?  I go=
ogled online and found use of FILES_${PN}, but didn't help.  And the "extra=
" directory seems generated; I don't have it.


Raymond

--_000_MWHPR19MB118384708AABF27804EBDD66C5BB0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Resent, after subscribing to the =
list.</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Raymond Yeung &lt;rks=
yeung@hotmail.com&gt;<br>
<b>Sent:</b> Wednesday, April 4, 2018 6:40 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Problem with packages during &quot;devtool build&quot;</fon=
t>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">I've some 3rd party Makefile-bas=
ed software I'd like to integrate to a working Poky snapshot. &nbsp;The fol=
lowing are done:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
<ol style=3D"margin-bottom:0px; margin-top:0px">
<li><span style=3D"font-size:12pt"></span><span style=3D"font-size:12pt"></=
span>devtool add cgosapi &lt;source path&gt;</li><li>Edit workspace/recipe/=
cgosapi/cgosapi.bb.
<ul style=3D"margin-bottom:0px; margin-top:0px">
<li>Implement do_install to move files on build machine to directories on t=
arget.</li><li>Files include a .so, a .ko, along with 2 other binaries.</li=
></ul>
</li><li>devtool build cgosapi</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">At step 3, I got following error=
:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p>ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories w=
ere installed but not shipped in any package:</p>
<p>&nbsp; &nbsp; /lib</p>
<p>&nbsp; &nbsp; /lib/modules</p>
<p>&nbsp; &nbsp; /lib/modules/4.4.26-yocto-standard</p>
<p>&nbsp; &nbsp; /lib/modules/4.4.26-yocto-standard/extra</p>
<p>Please set FILES such that these items are packaged. Alternatively if th=
ey are unneeded, avoid installing them or delete them within do_install.</p=
>
<p>cgosapi: 4 installed and not shipped files. [installed-vs-shipped]</p>
<p><br>
</p>
<p>Where do I get the above 4 lines; they're BTW directories, not files?&nb=
sp; I googled online and found use of FILES_${PN}, but didn't help. &nbsp;A=
nd the &quot;extra&quot; directory seems generated; I don't have it.</p>
<p><br>
</p>
<p>Raymond</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB118384708AABF27804EBDD66C5BB0MWHPR19MB1183namp_--
