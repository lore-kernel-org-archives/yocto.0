Return-Path: <abhiarora4@live.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46953E00D8B; Sat, 19 Oct 2019 07:55:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (abhiarora4[at]live.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.253.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-oln040092253045.outbound.protection.outlook.com [40.92.253.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CB5E009C2
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 07:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=WLdq8aUhJPagfJqmEq/TN7BSXbBKuoyyvScM7TTGej0P5NmNhmJ+G3qv4phte94dtChsmmCeQmaINLrbmS9DvZk3SjNOBe0U+Z4rWzNdM/ceoxP3Wi9BVfmrxdwX3QWht/uE7SoTCUlfleIVp/sOCRsEJG/Ai8PULOXgNin+d4VYCmRL1R7a1xHFAphVGTk2Z86EDwZRKRstVeog7bbQr7L4VE+Xys8SJWL7GW/TP8bKC+uzygWvGW3DXds42tGGb1N05we2c087NSFzHFqRwKkSYzA7GSZTBdUOhFQO3yK3cr9BuVQzyi2u8CUndgM6mTXC4kIEh1j3Wua/ZFa9BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ANORMWFscGOhurAUG59S0JZg35S9MKemdtIcNbA8BsI=;
	b=kSHBbHKarXyG9zHcfWkkVEpy3xsDQmxfRzqLnYJ8dfP0n4AeULvk3LZBrIRUsRffMh0jhgIAb2DrVGWnuqB76lt0wbZDrMs/rBuvzmurhOF0mLmT1W1pQtyplbapiFi2SSK/l2mcF+avDphSsTfqF6IGBx2dCjC4r/B6J97+NXglOpw7IuubiJerQ1qvQTABidkqwI9EAI956BFPPV1zcyixkt2kG3tCY/IBmoV5iibZtvU2mY1+ig5S98uxP4iSlw/7g5IW1DptJUdGtiasyNZqKnxpK5kawmDFfmlBRDibIPTplFDQN1HqTQEYWeTgGFkBofRjBXy/iVTIiem8Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ANORMWFscGOhurAUG59S0JZg35S9MKemdtIcNbA8BsI=;
	b=uJKUsqM+7oHXPj6e7+sAlmplncGSAt8F0U5z8et59R5eqBFfQogWVSRQ0XSMAj65ZoLTBchoWSxtpKW95U+QlHhpp+6ZjDXQ2ATLBlYgqEfUy8FKg+rfM/LhADkcssWjQ0DW8DPBD8d0kVkGOFf77Yr6paRjISpHWBd/K9jHvihOwI+sHo4eRbUjVJCNBNQDFyWW8OPn97wYfPFaSj4p9x+zc0LZUGQ2Trss1+rtS4GokCFIGYXdTNvxMoxbWE2HfleWNV5o75BN9RLb3tPUAPs2EU+X/2R7K2xjRF4eN9J5Vl8aG9C0xhcgUs2fOxRkZ+UKwGCihiPTa+HNgS/yqg==
Received: from SG2APC01FT041.eop-APC01.prod.protection.outlook.com
	(10.152.250.51) by SG2APC01HT084.eop-APC01.prod.protection.outlook.com
	(10.152.251.225) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.14;
	Sat, 19 Oct 2019 14:55:04 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM (10.152.250.54) by
	SG2APC01FT041.mail.protection.outlook.com (10.152.251.61) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.14 via Frontend Transport; Sat, 19 Oct 2019 14:55:04 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c]) by
	MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c%6]) with mapi id 15.20.2347.028;
	Sat, 19 Oct 2019 14:55:04 +0000
From: Abhi Arora <abhiarora4@live.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] Reducing the size of the image by optimizing python
Thread-Index: AQHVhYg7Pl6lKyJQokajvwtgB9NFP6dgGVOAgAHQRXSAACAaAIAABSDm
Date: Sat, 19 Oct 2019 14:55:04 +0000
Message-ID: <MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	, <CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>,
	<0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
In-Reply-To: <0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F7BFE9C8225D1F5B0FD8BEBA3A526F41F029D72BA411B250ABB5F23C92E5C61F;
	UpperCasedChecksum:D56D6C5497C1A0F1FCE2DF06096963E502ECC5BEE703199C7EF60B7601DD851F;
	SizeAsReceived:7211; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bZD1uD+xRBs6cOqCDht2GFt1ORo8m50G]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: SG2APC01HT084:
x-ms-exchange-purlcount: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8/RY5vnzxqpEBvQnuFRXUGjw3ouA+adl0ymwgjXI3LJNVPwquwkcLbcBw6NMlVvEqQd9BGz8jE6K4xBEK8fQPfEmJj+ZGEkTdQCzlsdy2ZmVGBFzVGmGt2kTvpgpFZDjFd9qSjWomgE94syKxu4Xk7JoKTBDHNScMQk0wIDPv6CQ7pvn4qnJkz9OYIILWY0vdAyMpfwLNGtVzrrZWyq5cjrnyGklGp1zoVowlyJkmYY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ca594efb-8051-4d8c-f850-08d754a4535c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2019 14:55:04.5756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT084
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Sat, 19 Oct 2019 14:55:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB22065FC20AFCDA4F861D7845FA6F0MAXPR01MB2206INDP_"

--_000_MAXPR01MB22065FC20AFCDA4F861D7845FA6F0MAXPR01MB2206INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks your for the suggestion.

From where I can find out what modules and packages python3-misc downloads =
and installs? I am new to yocto and Don't know where to look for. I tried g=
rep but didn't help me.

And how about optimization using pyc file? Is it doable?

Get Outlook for Android<https://aka.ms/ghei36>

________________________________
From: Richard Purdie <richard.purdie@linuxfoundation.org>
Sent: Saturday, October 19, 2019 8:04:58 PM
To: Abhi Arora <abhiarora4@live.com>; Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org <yocto@yoctoproject.org>
Subject: Re: [yocto] Reducing the size of the image by optimizing python

On Sat, 2019-10-19 at 12:45 +0000, Abhi Arora wrote:
> Thanks for the reply. Can you help me which file to modify to prevent
> downloading certain packages and modules using BAD_RECOMMENDATION?
>
> And how to have only pyc files in the final image to improve speed
> and reduce footprint?
>
> Following are the lines in my yocto project which install python
> packages.
>
> IMAGE_INSTALL_append =3D " \
>     python3 \
>     python3-core \
>     python3-misc \
>     python3-async \
>     python3-six \
>     python3-websockets \
>     python3-requests \
>     python3-urllib3 \
>     python3-chardet \
>     python3-websocket-client \
>     python3-pyopenssl \
>     python3-simplejson \
>     python3-cython \
>
> Pardon for some stupid questions as I am new to yocto.

Take python3-misc out that list as its huge. See if anything breaks, if
so, try and install just what you need, not the large "catchall"
package.

Cheers,

Richard


--_000_MAXPR01MB22065FC20AFCDA4F861D7845FA6F0MAXPR01MB2206INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Thanks your for the suggestion. <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
From where I can find out what modules and packages python3-misc downloads =
and installs? I am new to yocto and Don't know where to look for. I tried g=
rep but didn't help me.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
And how about optimization using pyc file? Is it doable?<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<span id=3D"x_OutlookSignature">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
</span><br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Richard Purdie &lt;=
richard.purdie@linuxfoundation.org&gt;<br>
<b>Sent:</b> Saturday, October 19, 2019 8:04:58 PM<br>
<b>To:</b> Abhi Arora &lt;abhiarora4@live.com&gt;; Khem Raj &lt;raj.khem@gm=
ail.com&gt;<br>
<b>Cc:</b> yocto@yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Reducing the size of the image by optimizing py=
thon</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">On Sat, 2019-10-19 at 12:45 &#43;0000, Abhi Arora =
wrote:<br>
&gt; Thanks for the reply. Can you help me which file to modify to prevent<=
br>
&gt; downloading certain packages and modules using BAD_RECOMMENDATION? <br=
>
&gt; <br>
&gt; And how to have only pyc files in the final image to improve speed<br>
&gt; and reduce footprint?<br>
&gt; <br>
&gt; Following are the lines in my yocto project which install python<br>
&gt; packages.<br>
&gt; <br>
&gt; IMAGE_INSTALL_append =3D &quot; \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3 \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-core \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-misc \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-async \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-six \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-websockets \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-requests \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-urllib3 \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-chardet \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-websocket-client \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-pyopenssl \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-simplejson \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; python3-cython \<br>
&gt; <br>
&gt; Pardon for some stupid questions as I am new to yocto.<br>
<br>
Take python3-misc out that list as its huge. See if anything breaks, if<br>
so, try and install just what you need, not the large &quot;catchall&quot;<=
br>
package.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_MAXPR01MB22065FC20AFCDA4F861D7845FA6F0MAXPR01MB2206INDP_--
