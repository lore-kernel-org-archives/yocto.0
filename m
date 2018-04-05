Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7D9AE00B66; Fri,  6 Apr 2018 04:40:48 -0700 (PDT)
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
	no *      trust *      [40.92.7.66 listed in list.dnswl.org]
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
X-Greylist: delayed 32393 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Apr 2018 04:40:46 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007066.outbound.protection.outlook.com [40.92.7.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3275BE005A9
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 04:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=etELw+HlpcAPGVXJKmejWeAsIepzIB4NeItfPrqBarg=;
	b=YpGs1WpfQpbZuv8xJJL8bZF/uBkKWMfNNn6ZoiWpz86PezmNlu3WSxt7GOydA16AGfwxdfNyDAKfj8DjvZH1fHD89rSkTBlWfSBUwBYi3DmqRMV0Nw4BUIx4q2EUXUWE7Fi7Aog2HqkXM7n95IW6mSUGaH6n+9ponrNAHiK1hqlFQ76ODyQSdzawtWVdpXf6defQOfH/N7N1u6I6SvxK7ypFprxDnwiw/moKeFjw78v7Uufea5WbiO1rGt1oGOTvamC3SFDQWZml5Xwn0cqtEHsA/EAUcNOVzCzvOo7ppLXkS6rLolRp6oL/TPOmdZ0RpqzoTSUdG/n0T30c4OIFZg==
Received: from BY2NAM03FT029.eop-NAM03.prod.protection.outlook.com
	(10.152.84.56) by BY2NAM03HT242.eop-NAM03.prod.protection.outlook.com
	(10.152.85.16) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Thu, 5 Apr 2018 22:07:58 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.84.56) by
	BY2NAM03FT029.mail.protection.outlook.com (10.152.84.213) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.8 via Frontend Transport; Thu, 5 Apr 2018 22:07:58 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 22:07:57 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Thread-Topic: [yocto] Problem with packages during "devtool build"
Thread-Index: AQHTzH12aB4neOupkEGhBC8TIHhB3aPxbNIPgAD4OACAABFJooAADgwAgAA2Byk=
Date: Thu, 5 Apr 2018 22:07:57 +0000
Message-ID: <MWHPR19MB1183493B585CA11B864C269BC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAMKF1sqodNOr9oxCTgqapjaZAxYjqLj3s86_MNj74i5D-1orQw@mail.gmail.com>
	<MWHPR19MB11833298715A5E9438C791C8C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<b5b5d8b1-efde-7e10-5ff1-404b2b407d89@gmail.com>
In-Reply-To: <b5b5d8b1-efde-7e10-5ff1-404b2b407d89@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:7BEAE0E33F8151CF30399665A3E32B7CCD49677468B38DD956DF254B9305E678;
	UpperCasedChecksum:2E07B77251F348D4A4CF6C441CD956DAAE70F6D644CBE83A3A7A3815CACF1F37;
	SizeAsReceived:7441; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [twTTzMPxFwHfqRmzG+2fl9K7fxHF9yjw]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2NAM03HT242;
	7:/HqxwjkuzU1kjv3uhiJCwkmrssDA4yiKWNe32Zza28byQv/twyjXOq+ZPBSAbBNXE1uhb4QWfOhv+vRBN2RI1VjVx1EOIARWRCJdZHTginK3Wle27b6D242GK9buPFz2Empy61G+n7CMkaOsg3YjHeIksdD6q4cxHf9JqI9O+dR0KljtrocRTIVwT72wANUPsyFvjLtUFwu9nt0vOPPYsUMSn8rETohjx2/pgYPRF5vJx+TL9t442ustwtbqRApJ
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BY2NAM03HT242; 
x-ms-traffictypediagnostic: BY2NAM03HT242:
x-ms-office365-filtering-correlation-id: 224a2bf9-5a84-4e82-63a1-08d59b41b085
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BY2NAM03HT242; BCL:0; PCL:0; RULEID:; SRVR:BY2NAM03HT242; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BY2NAM03HT242;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: Wv79LMcAxsKJVHfVas6/FaYvd5M33yGYBQifIcWNxToQT5sX803MAcfQkb7w8XjqFlr5KJuN0mT9fQtb0GVy9bVnkb8oS9TNyG+cbtjWYPjP4DR+HOIvFYTy3JlC4LhGN0Vu/mgj2pMfNErXM50CQh6+sxXJ490M0Jp8stI8tkABxRkepQpKBT/Bh39ShPzd
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 224a2bf9-5a84-4e82-63a1-08d59b41b085
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 22:07:57.8879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT242
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
X-List-Received-Date: Fri, 06 Apr 2018 11:40:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183493B585CA11B864C269BC5BB0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183493B585CA11B864C269BC5BB0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Robert,


I'd already read the out-of-tree example; it's the first thing I checked.


After some changes in 3rd party Makefile, I'm running into errors in do_com=
pile step.  My new question now is, how the Makefile picks up cross-compile=
 INC path, as well as the LINKER path.


The variable KERNEL_SRC isn't enough to provide the needed clues for the ab=
ove.  And it'd be a bad idea to hardcode paths in 3rd party code.


Is there an easy way to have devtool pass in more variables?  And what vari=
ables should we use?


Raymond


________________________________
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Sent: Thursday, April 5, 2018 11:48 AM
To: Raymond Yeung
Cc: Khem Raj; yocto@yoctoproject.org
Subject: Re: [yocto] Problem with packages during "devtool build"

Hi,

On 2018-04-05 21:02, Raymond Yeung wrote:
> "inherit module" is already in recipes/cgosapi.bb file.  In fact, as I
> use devtool to "add" the recipe to workspace layer, this .bb file is
> autogenerated.  I only added the last line that sets KERNELDIR that 3rd
> Party software's Makefile uses.

Did you have a look at this out of tree kernel module example?

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-=
kernel/hello-mod

You might want to use this makefile and add your stuff there.

Regards,

Robert

--_000_MWHPR19MB1183493B585CA11B864C269BC5BB0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Robert,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'd already read the out-of-tree =
example; it's the first thing I checked.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">After some changes in 3rd party M=
akefile, I'm running into errors in do_compile step. &nbsp;My new question =
now is, how the Makefile picks up cross-compile INC path, as well as the LI=
NKER path. &nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">The variable KERNEL_SRC isn't eno=
ugh to provide the needed clues for the above. &nbsp;And it'd be a bad idea=
 to hardcode paths in 3rd party code.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Is there an easy way to have devt=
ool pass in more variables? &nbsp;And what variables should we use?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Robert Berger &lt;yoc=
to.user.mailinglist@gmail.com&gt;<br>
<b>Sent:</b> Thursday, April 5, 2018 11:48 AM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> Khem Raj; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Problem with packages during &quot;devtool buil=
d&quot;</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi,<br>
<br>
On 2018-04-05 21:02, Raymond Yeung wrote:<br>
&gt; &quot;inherit module&quot; is already in recipes/cgosapi.bb file. &nbs=
p;In fact, as I <br>
&gt; use devtool to &quot;add&quot; the recipe to workspace layer, this .bb=
 file is <br>
&gt; autogenerated. &nbsp;I only added the last line that sets KERNELDIR th=
at 3rd <br>
&gt; Party software's Makefile uses.<br>
<br>
Did you have a look at this out of tree kernel module example?<br>
<br>
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skelet=
on/recipes-kernel/hello-mod" id=3D"LPlnk696096" previewremoved=3D"true">htt=
ps://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-ker=
nel/hello-mod</a><br>
<br>
You might want to use this makefile and add your stuff there.<br>
<br>
Regards,<br>
<br>
Robert<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183493B585CA11B864C269BC5BB0MWHPR19MB1183namp_--
