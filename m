Return-Path: <rsrinivasan@abiomed.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A799BE00C29; Wed, 23 Jan 2019 08:40:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [216.205.24.188 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Jan 2019 08:40:14 PST
Received: from us-smtp-delivery-188.mimecast.com
	(us-smtp-delivery-188.mimecast.com [216.205.24.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BC07E00B92
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 08:40:13 -0800 (PST)
Received: from mail.abiomed.com (legacy.abiomed.com [4.53.60.36]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-HQ0daJlQNuecD_dJSnIVEg-1; Wed, 23 Jan 2019 11:39:08 -0500
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX01.abiomed.com
	(172.16.1.91) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Wed, 23 Jan 2019 11:39:08 -0500
Received: from USDVREX02.abiomed.com ([fe80::ac78:3bbf:d1d5:252c]) by
	USDVREX02.abiomed.com ([fe80::ac78:3bbf:d1d5:252c%12]) with mapi id
	15.00.1395.000; Wed, 23 Jan 2019 11:39:07 -0500
From: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: wic utility
Thread-Index: AdSzOeZf75RQXwYoRbKNBWkqU3gNpA==
Date: Wed, 23 Jan 2019 16:39:07 +0000
Message-ID: <fc7d34e702ed47bfa017034365edbec7@USDVREX02.abiomed.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.96.27]
MIME-Version: 1.0
X-MC-Unique: HQ0daJlQNuecD_dJSnIVEg-1
X-Mimecast-Spam-Score: 0
Subject: wic utility
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
X-List-Received-Date: Wed, 23 Jan 2019 16:40:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fc7d34e702ed47bfa017034365edbec7USDVREX02abiomedcom_"

--_000_fc7d34e702ed47bfa017034365edbec7USDVREX02abiomedcom_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I am using wic 0.2.0 from the rocko build.

wic cp file wifile:part/path

appears to succeed (no errors reported).

But when I perform wic ls I don't find the file in the target.

Are there any switches the I should be using?

Thanks for any pointers, srini

________________________________

CONFIDENTIALITY NOTICE: This email message and any attachments are confiden=
tial and may be privileged and are meant to be read by the intended recipie=
nt only. If you are not the intended recipient, please notify sender immedi=
ately and destroy all copies of this message and any attachments without re=
ading or disclosing their contents. Thank you

--_000_fc7d34e702ed47bfa017034365edbec7USDVREX02abiomedcom_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
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
=09{font-family:"\@MS Mincho";}
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
<p class=3D"MsoNormal">I am using wic 0.2.0 from the rocko build.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">wic cp file wifile:part/path<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">appears to succeed (no errors reported).<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But when I perform wic ls I don&#8217;t find the fil=
e in the target.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Are there any switches the I should be using?<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for any pointers, srini<o:p></o:p></p>
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

--_000_fc7d34e702ed47bfa017034365edbec7USDVREX02abiomedcom_--
