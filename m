Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93984E0093F; Tue, 21 Mar 2017 18:09:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1944 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Mar 2017 18:09:26 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0101.outbound.protection.outlook.com [104.47.32.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D79E00655
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 18:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=6q815yU9yEWuGt/WVkK/KBU8C66SSeq2hHAqC2wKoO0=;
	b=h6NyNmzvQ6BDfErm1AOEZBPi5Zcdp7edXmNBoM6jEzkR4H+UQuTbruyi0rQN2xWpY+52e3J1nYHrpd5xzvdB/3s0twjc9PIUuCDJjQ7GGInqm1jeU242itlHf58akQCdSr5iRlXnsvmsLiWlzJF0dmoXgxoQ+6KdL/5c8FJnYQ0=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1877.namprd12.prod.outlook.com (10.175.63.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.17; Wed, 22 Mar 2017 00:37:00 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0947.020; Wed, 22 Mar 2017 00:37:00 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [yocto] How to use *.bb file to select different kernel
	config/feature?
Thread-Index: AQHSohF8n9HjvPSKZEaoEOwM846FJqGfOnWAgADJ/qU=
Date: Wed, 22 Mar 2017 00:36:59 +0000
Message-ID: <CY4PR12MB1880466C283C441D5BCBE9A6A53C0@CY4PR12MB1880.namprd12.prod.outlook.com>
References: <CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0@CY4PR12MB1880.namprd12.prod.outlook.com>,
	<CADkTA4Pb_b9rXe9eD6kzsY+WCbh7MQNTkwjb5oLjEJnK+O8-Zw@mail.gmail.com>
In-Reply-To: <CADkTA4Pb_b9rXe9eD6kzsY+WCbh7MQNTkwjb5oLjEJnK+O8-Zw@mail.gmail.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=none action=none header.from=pica8.com; 
x-originating-ip: [116.216.128.235]
x-ms-office365-filtering-correlation-id: 86f7b23e-d9fb-48a9-b89c-08d470bb8d6f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(2017030254075);
	SRVR:CY4PR12MB1877; 
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1877;
	7:S7/Ltg/DVeJgHIDO7mrODECLF+My6QyLkTXv4znLYO1LNAr2LAbpGLUfcAV9Y1PJ5Cjdzf4A9CGN3U8yjIQuN0oMUuatTxhuVogadED9AyN3BPmTc84hKSqdsQchJktLQUdKCuCxuUOevCIEIMA6EryezPE/1lB5gA9mGHDaSxnxZl7dS9e4Q2S9oLz9WAa+lTSNgGB/0Q0cS6j0rB7N8HmP6SQLD/3n1/Kf23oqKjHtoFFRJN+Rf9YD/aEYUaOoywi1/LkmltrCJrWjHW6gGGmfPC9LoSbcSuSRPoII48XDdsy/KQuKFDA/zEw1z2aS5EFkZmL+BIPT0RRznd3R2Q==
x-microsoft-antispam-prvs: <CY4PR12MB1877E321082F15CD5A511E1EA53C0@CY4PR12MB1877.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123558025)(20161123562025)(20161123564025)(20161123560025)(20161123555025)(6072148);
	SRVR:CY4PR12MB1877; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1877; 
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39450400003)(377454003)(24454002)(53754006)(74316002)(606005)(81166006)(229853002)(7696004)(86362001)(2950100002)(3280700002)(7906003)(7736002)(19627405001)(6506006)(6116002)(53546009)(3660700001)(102836003)(54356999)(122556002)(4326008)(6246003)(6436002)(39060400002)(3846002)(38730400002)(53386004)(110136004)(55016002)(50986999)(77096006)(99286003)(2900100001)(6916009)(189998001)(33656002)(76176999)(236005)(5660300001)(6306002)(54896002)(2906002)(66066001)(8676002)(9686003)(25786009)(8936002)(53936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1877;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2017 00:36:59.7684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1877
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use *.bb file to select different kernel config/feature?
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
X-List-Received-Date: Wed, 22 Mar 2017 01:09:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB1880466C283C441D5BCBE9A6A53C0CY4PR12MB1880namp_"

--_000_CY4PR12MB1880466C283C441D5BCBE9A6A53C0CY4PR12MB1880namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So, maybe I should take a KERNEL_CONFIG into my own kernel recipe.


Thanks


Richard

________________________________
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Sent: Tuesday, March 21, 2017 8:33:09 PM
To: Richard Zhang
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to use *.bb file to select different kernel config=
/feature?



On Tue, Mar 21, 2017 at 3:15 AM, Richard Zhang <richard.zhang@pica8.com<mai=
lto:richard.zhang@pica8.com>> wrote:

Hi all


I want   to use one linux-kernel-myown.bb<http://linux-kernel-myown.bb> fil=
e to select different config for several boxes.

I think when I give MACHINE to box1\box2\box3, the kernel config and featur=
es select can be done.


Is it correct :


when use MACHINE=3Dbox1\box2\box3 and so on:


KERNEL_FEATURES_append_box1=3D" cfg/box1.scc"

These are variables like any other in bitbake. They can take a variety of o=
verrides, one of which is the machine
name. So yes, you could append a kernel feature only for your $MACHINE with=
 the line above.

But you must be using a kernel recipe that inherits kernel-yocto for the fe=
ature to be processed.

KERNEL_CONFIG_box1=3D" cfg/box1_defconfig.cfg"

Assuming KERNEL_CONFIG is a valid variable in your layers, this would also =
work. But if you are using
configuration fragments and kernel-yocto, that isn't a variable that is use=
d.

Bruce




this instruction could work?or any suggestion.



Regards

Richard

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"

--_000_CY4PR12MB1880466C283C441D5BCBE9A6A53C0CY4PR12MB1880namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>So, maybe I should take a KERNEL_CONFIG into my own kernel recipe.</p>
<p><br>
</p>
<p>Thanks</p>
<p><br>
</p>
<p>Richard<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Bruce Ashfield &lt;br=
uce.ashfield@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, March 21, 2017 8:33:09 PM<br>
<b>To:</b> Richard Zhang<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How to use *.bb file to select different kernel=
 config/feature?</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr"><br>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Tue, Mar 21, 2017 at 3:15 AM, Richard Zhang <=
span dir=3D"ltr">
&lt;<a href=3D"mailto:richard.zhang@pica8.com" target=3D"_blank">richard.zh=
ang@pica8.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_-7963218019750877656divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"lt=
r">
<p>Hi all</p>
<p><br>
</p>
<p>I want &nbsp; to use one <a href=3D"http://linux-kernel-myown.bb" target=
=3D"_blank">linux-kernel-myown.bb</a> file to select different config for s=
everal boxes.</p>
<p>I think when I give MACHINE to&nbsp;<span>box1\box2\box3</span>, the ker=
nel config and features select can be done.<br>
</p>
<p><br>
</p>
<p>Is it correct :</p>
<p><br>
</p>
<p>when use MACHINE=3Dbox1\box2\box3 and so on:</p>
<p><br>
</p>
<p><span>KERNEL_FEATURES_append_box1=3D&quot; cfg/box1.scc&quot;</span></p>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>These are variables like any other in bitbake. They can take a variety=
 of overrides, one of which is the machine<br>
</div>
<div>name. So yes, you could append a kernel feature only for your $MACHINE=
 with the line above.</div>
<div><br>
</div>
<div>But you must be using a kernel recipe that inherits kernel-yocto for t=
he feature to be processed.</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_-7963218019750877656divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"lt=
r">
<p><span><span>KERNEL_CONFIG_box1=3D&quot; cfg/box1_defconfig.cfg&quot;</sp=
an></span></p>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Assuming KERNEL_CONFIG is a valid variable in your layers, this would =
also work. But if you are using</div>
<div>configuration fragments and kernel-yocto, that isn't a variable that i=
s used.</div>
<div><br>
</div>
<div>Bruce</div>
<div>&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_-7963218019750877656divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"lt=
r">
<p><br>
</p>
<p><br>
</p>
<p>this instruction could work?or any suggestion.<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Regards</p>
<span class=3D"HOEnZb"><font color=3D"#888888">
<p>Richard<br>
</p>
</font></span></div>
</div>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
</blockquote>
</div>
<br>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Tho=
u shalt not follow the NULL pointer, for chaos and madness await thee at it=
s end&quot;</div>
</div>
</div>
</div>
</body>
</html>

--_000_CY4PR12MB1880466C283C441D5BCBE9A6A53C0CY4PR12MB1880namp_--
