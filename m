Return-Path: <abhiarora4@live.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A67E4E00D82; Sat, 19 Oct 2019 05:45:47 -0700 (PDT)
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
	*      [40.92.254.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-oln040092254107.outbound.protection.outlook.com
	[40.92.254.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3934E0098A
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 05:45:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=DckWdxPJSDaTcslTS/aI3Iwq+tZY/YQSVW+BhVTnFFbe690dynAR/Xu/7mCpOpXnzSK8Ba/8hDjqz9TodhMTuZ3OnUfbWUawHX9llxS8/6bODxUleGB3RdAorsIggLt2jyUPuNUPyuw6eKbqplWyr6k5nPHsN/hXjyZWiDo+ScymwmPcxpUX0/Mnl2vtf91pvaXrKjEXyPobPpayHMp9Ub0mbN6071VqSVs2FZ/XyjfNLgFgUTTWxCq8FbtAkSNlAPQD7YlFSQQIHnNk/nzG0/bhzvoke2ETHBxKyNiHBo2cOz7PIT3yRVGZgHNB61JdJ78Y5SaXm9I9t9x6fi6zpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=lxVsAyhn8AF0lF50lVZYCoY9TZqCiT8LLmIFnKdOJwc=;
	b=e/bIuDcXBLYNKhX55WJOhzm/JxfmC9rKT2kl+hqiO1kMhJyFN3U1wu8Kq93YMPqEpD9yMOPrWA/R2NpiciszrnlJvbxmpUCg4DTK2S/tjnc4obrSQm01pH5SggEgaPKMjzyEkoLd5wP9vZLhaA+F8j9p79sfzC3ccjRnI8Htsa9veWU7fWE5oqO26AeQDM5AbktRxkNHdurlzc9+HK+RtXoWIxP3VfTquLFJA0Z6Obqwu2TfCBs2m639B3q5BAAsNBE6G4oxlmqUYG8BL17EipJDcqOULxpJF/B8ad5RoGuEcytJV4cidBO/Kpu8OJreG1IXS5xQN6qo0EFpQ64Giw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=lxVsAyhn8AF0lF50lVZYCoY9TZqCiT8LLmIFnKdOJwc=;
	b=SHvk5YOYyvyPB+xc7zBDmP6EulNrpgB2NCACJt0cIXc3aE3OwYXlC72P8XYpCAJgn9SiyBdGOySC/irCBeToUdve95dfi2g0gjO/TD168TUg6N7Juo6zouewzOjOAnVQ0jVp7CcHZuBHf4+LpWiZvnVQBo8NUkKQWuNA2dYmSX3e5PIcZPAosoWD9727uI0hlq3FVWgP460mzPv/Gy1wbEHKTyH++gcQ0nF6DPLolNPUtkXJJ5n+B6B2C1OOHIjxgvs5OU5VD7dKY3O2uM/iScmiQLMWzQZ+TUxSElRNUWGvY/4+U+zu19+8vtvNK5jVlAgyJrcUV9FipCiFWh+sJA==
Received: from HK2APC01FT024.eop-APC01.prod.protection.outlook.com
	(10.152.248.51) by HK2APC01HT083.eop-APC01.prod.protection.outlook.com
	(10.152.249.221) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.14;
	Sat, 19 Oct 2019 12:45:43 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM (10.152.248.53) by
	HK2APC01FT024.mail.protection.outlook.com (10.152.248.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.14 via Frontend Transport; Sat, 19 Oct 2019 12:45:43 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c]) by
	MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c%6]) with mapi id 15.20.2347.028;
	Sat, 19 Oct 2019 12:45:43 +0000
From: Abhi Arora <abhiarora4@live.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Reducing the size of the image by optimizing python
Thread-Index: AQHVhYg7Pl6lKyJQokajvwtgB9NFP6dgGVOAgAHQRXQ=
Date: Sat, 19 Oct 2019 12:45:42 +0000
Message-ID: <MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>,
	<CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
In-Reply-To: <CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F9EABF31C540946B9FC30C0F072C9996618D0FF3DBC15218A73D1180FF3A5496;
	UpperCasedChecksum:633FE32FBC1D1EBE418C2810EFDC5C97EFF23FE2BE29E7F9E7FA87DB77CA746C;
	SizeAsReceived:7012; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [xFDpnNvmTiletb5vneLnXi6jSadQ7xrH]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: HK2APC01HT083:
x-ms-exchange-purlcount: 2
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9sRRmV9EqVUoPH0L66mY6TeLTv/Qp1I3PCy0IfMkXhFW1tYhX+XZXcsemcThkFP7p757pMgbfy3vxqdXN5i/PTXXEWyPwQEXpOjriB5iBX/hZ8M5JNJK3lbdczfDbB2fytcD8iTcvSOSU5DlgrkPHxYAfCmo8Geui02tDpq/vqpjPDnwEDQkm2Mx0EsT+lMI4ikSvapqH5mntsEFHNWnliuI2stNh3Oe4g8yHObesHc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3846c87d-c960-4203-caeb-08d754924145
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2019 12:45:42.8138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT083
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
X-List-Received-Date: Sat, 19 Oct 2019 12:45:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB2206466821B5D2748ADF3F09FA6F0MAXPR01MB2206INDP_"

--_000_MAXPR01MB2206466821B5D2748ADF3F09FA6F0MAXPR01MB2206INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply. Can you help me which file to modify to prevent downl=
oading certain packages and modules using BAD_RECOMMENDATION?

And how to have only pyc files in the final image to improve speed and redu=
ce footprint?

Following are the lines in my yocto project which install python packages.

IMAGE_INSTALL_append =3D " \
    python3 \
    python3-core \
    python3-misc \
    python3-async \
    python3-six \
    python3-websockets \
    python3-requests \
    python3-urllib3 \
    python3-chardet \
    python3-websocket-client \
    python3-pyopenssl \
    python3-simplejson \
    python3-cython \

Pardon for some stupid questions as I am new to yocto.

Get Outlook for Android<https://aka.ms/ghei36>

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Friday, October 18, 2019 2:28:23 PM
To: Abhi Arora <abhiarora4@live.com>
Cc: yocto@yoctoproject.org <yocto@yoctoproject.org>
Subject: Re: [yocto] Reducing the size of the image by optimizing python



On Fri, Oct 18, 2019 at 1:21 PM Abhi Arora <abhiarora4@live.com<mailto:abhi=
arora4@live.com>> wrote:
Hello,
I am having an embedded system. We have bsp with python 3.5 but we want to =
reduce its size further. I am planning to have only oyc files but not sure =
how it can be achieved in recipes. Also, I want to know if there is a other=
 way to reduce the footprint.

Please start by eliminating modules first so find which modules are require=
d for your workloads and remove all other modules from image by adding them=
 to BAD_RECOMMENDATIONS from IMAGE_INSTALL


Please help.

Get Outlook for Android<https://aka.ms/ghei36>

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_MAXPR01MB2206466821B5D2748ADF3F09FA6F0MAXPR01MB2206INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Thanks for the reply. Can you help me which file to modify to prevent downl=
oading certain packages and modules using BAD_RECOMMENDATION?
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
And how to have only pyc files in the final image to improve speed and redu=
ce footprint?<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Following are the lines in my yocto project which install python packages.<=
br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
IMAGE_INSTALL_append =3D &quot; \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3 \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-core \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-misc \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-async \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-six \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-websockets \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-requests \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-urllib3 \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-chardet \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-websocket-client \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-pyopenssl \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-simplejson \<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp; python3-cython \<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Pardon for some stupid questions as I am new to yocto.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<span id=3D"OutlookSignature">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
</span><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Friday, October 18, 2019 2:28:23 PM<br>
<b>To:</b> Abhi Arora &lt;abhiarora4@live.com&gt;<br>
<b>Cc:</b> yocto@yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Reducing the size of the image by optimizing py=
thon</font>
<div>&nbsp;</div>
</div>
<div>
<div><br>
</div>
<div><br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 18, 2019 at 1:21 PM Abhi =
Arora &lt;<a href=3D"mailto:abhiarora4@live.com">abhiarora4@live.com</a>&gt=
; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Hello,<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
I am having an embedded system. We have bsp with python 3.5 but we want to =
reduce its size further. I am planning to have only oyc files but not sure =
how it can be achieved in recipes. Also, I want to know if there is a other=
 way to reduce the footprint.</div>
</div>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Please start by eliminating modules first so find which m=
odules are required for your workloads and remove all other modules from im=
age by adding them to BAD_RECOMMENDATIONS from IMAGE_INSTALL&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Please help.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
<span id=3D"m_2312087401660911697OutlookSignature">
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Get <a href=3D"https://aka.ms/ghei36" target=3D"_blank">Outlook for Android=
</a></div>
</span></div>
</div>
<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
<span id=3D"m_2312087401660911697OutlookSignature"></span><br>
</div>
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MAXPR01MB2206466821B5D2748ADF3F09FA6F0MAXPR01MB2206INDP_--
