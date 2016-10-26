Return-Path: <anumahes@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C01E00D5B; Wed, 26 Oct 2016 11:41:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.78 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Oct 2016 11:41:45 PDT
Received: from rcdn-iport-7.cisco.com (rcdn-iport-7.cisco.com [173.37.86.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5861E00D56
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 11:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3272; q=dns/txt; s=iport;
	t=1477507306; x=1478716906;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=YEyL2gjpXddK0mXx5f7PmYqsI2JZaLFViK5hq5tjVU8=;
	b=PdBd6yw6Gf7pFoeIDUTDB3gOJKT6wGSBG4OJzTA1Q0uRkZ/y8EOCa/Y+
	8f5vDWeXFvgzWwDHDxlWsXI+DVuga/wozezXo5opz6DuYTJsAT8NKkFTs
	jJ2JIO3e8MVg9TJn8UkfqSLkCZXB5llQT794fbtTpHUYoyhCn91b49mmt A=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0A1BwDw9xBY/5NdJa1dHAEBBAEBCgEBg?=
	=?us-ascii?q?nM3AQEBAQEdWH0HAbNVhRaCCSuFd4IMQBMBAgEBAQEBAQFiHQuEaS1MEgEMdCY?=
	=?us-ascii?q?BBA4NiEsBDsB9AQEBAQEBAQEBAQEBAQEBAQEBAQEBFwWGPYRVgTyIagWaFgGBO?=
	=?us-ascii?q?4RwiW2QC40KhAABHwE0XoNNgTpzBIdSAYEIAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,551,1473120000"; 
	d="scan'208,217";a="162286583"
Received: from rcdn-core-11.cisco.com ([173.37.93.147])
	by rcdn-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Oct 2016 18:40:41 +0000
Received: from XCH-ALN-005.cisco.com (xch-aln-005.cisco.com [173.36.7.15])
	by rcdn-core-11.cisco.com (8.14.5/8.14.5) with ESMTP id u9QIefqW028502
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 18:40:41 GMT
Received: from xch-rcd-014.cisco.com (173.37.102.24) by XCH-ALN-005.cisco.com
	(173.36.7.15) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 26 Oct 2016 13:40:40 -0500
Received: from xch-rcd-014.cisco.com ([173.37.102.24]) by
	XCH-RCD-014.cisco.com ([173.37.102.24]) with mapi id 15.00.1210.000;
	Wed, 26 Oct 2016 13:40:40 -0500
From: "Anup Maheshwari (anumahes)" <anumahes@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Reg porting of CVE-2016-5195 Linux Kernel Local Privilege
	Escalation (Dirty CoW) to 3.14 kernel
Thread-Index: AdIvuDxUSKmg18nPQuuzNXkqDRPCwQ==
Date: Wed, 26 Oct 2016 18:40:40 +0000
Message-ID: <dfde59a4f3f4400bafdcd08c33b0b84d@XCH-RCD-014.cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [171.71.131.2]
MIME-Version: 1.0
Cc: "Venkat Movva \(vemovva\)" <vemovva@cisco.com>,
	"Eshwar Yedavalli \(eshwar\)" <eshwar@cisco.com>,
	"Anirudh Murali \(anirumur\)" <anirumur@cisco.com>
Subject: Reg porting of CVE-2016-5195 Linux Kernel Local Privilege Escalation (Dirty CoW) to 3.14 kernel
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
X-List-Received-Date: Wed, 26 Oct 2016 18:41:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dfde59a4f3f4400bafdcd08c33b0b84dXCHRCD014ciscocom_"

--_000_dfde59a4f3f4400bafdcd08c33b0b84dXCHRCD014ciscocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Team,

Ref - mm: remove gup_flags FOLL_WRITE games from __get_user_pages()
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619

The above issue was recently patched in 4.8 kernel. When are we backporting=
 this to 3.14 ? Can you give us an ETA ?

Regards,
Anup


--_000_dfde59a4f3f4400bafdcd08c33b0b84dXCHRCD014ciscocom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ref - mm: remove gup_flags FOLL_WRITE games from __g=
et_user_pages()<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://git.kernel.org/cgit/linux/kernel/=
git/torvalds/linux.git/commit/?id=3D19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e61=
9">https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The above issue was recently patched in 4.8 kernel. =
When are we backporting this to 3.14 ? Can you give us an ETA ?<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Anup<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_dfde59a4f3f4400bafdcd08c33b0b84dXCHRCD014ciscocom_--
