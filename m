Return-Path: <rsrinivasan@abiomed.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EEA9E008CA; Wed,  8 Aug 2018 11:52:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.188 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Aug 2018 11:52:10 PDT
Received: from us-smtp-delivery-188.mimecast.com
	(us-smtp-delivery-188.mimecast.com [63.128.21.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CDEE00804
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 11:52:10 -0700 (PDT)
Received: from mail.abiomed.com (autodiscover.abiomed.com [4.53.60.36])
	(Using TLS) by us-smtp-1.mimecast.com with ESMTP id
	us-mta-234-40LWci3GMCKoPHK_4tRVew-1; Wed, 08 Aug 2018 14:51:05 -0400
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX01.abiomed.com
	(172.16.1.91) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Wed, 8 Aug 2018 14:51:05 -0400
Received: from USDVREX02.abiomed.com ([fe80::ed18:25eb:f9e8:c0b7]) by
	USDVREX02.abiomed.com ([fe80::ed18:25eb:f9e8:c0b7%12]) with mapi id
	15.00.1395.000; Wed, 8 Aug 2018 14:51:05 -0400
From: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: uBoot, kernel and device tree files
Thread-Index: AdQvSH1kxyZSth4qQu+yA8y1Atl7eA==
Date: Wed, 8 Aug 2018 18:51:05 +0000
Message-ID: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.96.159]
MIME-Version: 1.0
X-MC-Unique: 40LWci3GMCKoPHK_4tRVew-1
Subject: uBoot, kernel and device tree files
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
X-List-Received-Date: Wed, 08 Aug 2018 18:52:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_eac20ac1c8474178a386d580c971227bUSDVREX02abiomedcom_"

--_000_eac20ac1c8474178a386d580c971227bUSDVREX02abiomedcom_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

All

We are using rocko.on variscite var-som-mx6.

In order to increase the security of our system (during a system upgrade), =
we are looking to merge uImage (kernel image) and the device tree file into=
 1 file. Currently these are 2 different files and are worried that a file =
copy operation might get aborted.

My research so far indicates mkuboot can be used to merge these. but having=
 trouble making this work.

Need some ideas.

Any pointers appreciated. srini



________________________________

CONFIDENTIALITY NOTICE: This email message and any attachments are confiden=
tial and may be privileged and are meant to be read by the intended recipie=
nt only. If you are not the intended recipient, please notify sender immedi=
ately and destroy all copies of this message and any attachments without re=
ading or disclosing their contents. Thank you

--_000_eac20ac1c8474178a386d580c971227bUSDVREX02abiomedcom_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
=09{font-family:Helvetica;
=09panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
=09{font-family:"MS Mincho";
=09panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
=09{font-family:"\@MS Mincho";
=09panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0in;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
=09{mso-style-priority:99;
=09color:#0563C1;
=09text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:#954F72;
=09text-decoration:underline;}
span.EmailStyle17
=09{mso-style-type:personal-compose;
=09font-family:"Calibri",sans-serif;
=09color:windowtext;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri",sans-serif;}
@page WordSection1
=09{size:8.5in 11.0in;
=09margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
<style type=3D"text/css">.style1 {font-family: "Times New Roman";}</style><=
/head><body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1C2933">All<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1C2933"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1C2933">We are using rocko.on variscite var-som=
-mx6.<br>
<br>
In order to increase the security of our system (during a system upgrade), =
we are looking to merge uImage (kernel image) and the device tree file into=
 1 file. Currently these are 2 different files and are worried that a file =
copy operation might get aborted.<br>
<br>
My research so far indicates mkuboot can be used to merge these. but having=
 trouble making this work.<br>
<br>
Need some ideas.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1C2933"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1C2933">Any pointers appreciated. srini<br>
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sa=
ns-serif;color:#D7E0E0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
CONFIDENTIALITY NOTICE: This email message and any attachments are confiden=
tial and may be privileged and are meant to be read by the intended recipie=
nt only. If you are not the intended recipient, please notify sender immedi=
ately and destroy all copies of
 this message and any attachments without reading or disclosing their conte=
nts. Thank you<br>
</font>


<br /><br /><p style=3D"font-family: Verdana; font-size:10pt; color:#666666=
;"></p><p style=3D"font-family: Verdana; font-size:8pt; color:#666666;"></p=
></body></html>

--_000_eac20ac1c8474178a386d580c971227bUSDVREX02abiomedcom_--
