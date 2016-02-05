Return-Path: <stanislav.liubchynskyi@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D380E00CDE; Fri,  5 Feb 2016 01:23:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 283 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Feb 2016 01:23:34 PST
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A9BE00B5A
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 01:23:34 -0800 (PST)
Received: from muimrel002.emea.nsn-intra.net ([10.159.32.133])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u159Iml3015902
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 5 Feb 2016 09:18:48 GMT
Received: from DEMUHTC003.nsn-intra.net ([10.159.42.34])
	by muimrel002.emea.nsn-intra.net (8.14.3/8.14.3) with ESMTP id
	u159ImjM010006
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 5 Feb 2016 09:18:48 GMT
Received: from DEMUMBX010.nsn-intra.net ([169.254.10.147]) by
	DEMUHTC003.nsn-intra.net ([10.159.42.34]) with mapi id 14.03.0248.002;
	Fri, 5 Feb 2016 10:18:48 +0100
From: "Liubchynskyi, Stanislav (Nokia - PL/Wroclaw)"
	<stanislav.liubchynskyi@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: enable fortran in yocto
Thread-Index: AdFf9jfzDcLn05nSSu2GRpM0Dv3hIw==
Date: Fri, 5 Feb 2016 09:18:47 +0000
Message-ID: <27918A11C8439E4B9B5BCA1715BABB74016EE4CD@DEMUMBX010.nsn-intra.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.109]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 2783
X-purgate-ID: 151667::1454663929-0000462D-85CDF51A/0/0
X-Mailman-Approved-At: Wed, 10 Feb 2016 07:08:11 -0800
Subject: enable fortran in yocto
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
X-List-Received-Date: Fri, 05 Feb 2016 09:23:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_27918A11C8439E4B9B5BCA1715BABB74016EE4CDDEMUMBX010nsnin_"

--_000_27918A11C8439E4B9B5BCA1715BABB74016EE4CDDEMUMBX010nsnin_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,
I want to add fortran support to yocto build. I try different way whitch de=
scribe in the ethernet but enyone does't work. I use fido branch and gcc 4.=
9. Can you describe me step by step how to enable fortran in yocto or where=
 I can find work instruction.
Thanks for help.


Best regards,

Stanislav Liubchynskyi
Software Developer, LFS, OPSW Wroclaw
Mobile Broadband, Nokia Networks


--_000_27918A11C8439E4B9B5BCA1715BABB74016EE4CDDEMUMBX010nsnin_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;"><br>
<div>
<div>
<div>Hi, <br>
</div>
I want to add fortran support to yocto build. I try different way whitch de=
scribe in the ethernet but enyone does't work. I use fido branch and gcc 4.=
9. Can you describe me step by step how to enable fortran in yocto or where=
 I can find work instruction.
<br>
</div>
Thanks for help.
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px">
<div style=3D"font-family:Tahoma; font-size:13px"><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
<font face=3D"Calibri CE" size=3D"2"><span style=3D"font-size:11pt"><font f=
ace=3D"Nokia Pure Headline Light" color=3D"#2E74B5">Best regards,<br>
<br>
</font></span></font>
<div><font face=3D"Calibri CE" size=3D"2"><span style=3D"font-size:11pt"><f=
ont face=3D"Nokia Pure Headline Light CE" color=3D"#2E74B5"><b>Stanislav Li=
ubchynskyi<br>
</b></font></span></font></div>
<div><font face=3D"Calibri CE" size=3D"2"><span style=3D"font-size:11pt"><f=
ont face=3D"Nokia Pure Headline Light" color=3D"#2E74B5">Software Developer=
, LFS, OPSW Wroclaw</font></span></font></div>
<div><font face=3D"Calibri CE" size=3D"2"><span style=3D"font-size:11pt"><f=
ont face=3D"Nokia Pure Headline Light" color=3D"#2E74B5">Mobile Broadband, =
Nokia Networks</font></span></font></div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_27918A11C8439E4B9B5BCA1715BABB74016EE4CDDEMUMBX010nsnin_--
