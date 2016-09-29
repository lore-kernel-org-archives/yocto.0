Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CCD6E00C72; Thu, 29 Sep 2016 07:04:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.209 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC4S7.hotmail.com (bay004-omc4s7.hotmail.com
	[65.54.190.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9C72E00A30
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 07:04:55 -0700 (PDT)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.54.190.200])
	by BAY004-OMC4S7.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 29 Sep 2016 07:04:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=kvVDi77e71xRDX7d5ilu/Ntn9lx5un060+/Xf+TVGCo=;
	b=PB5JD0uNPVr515pc8TXr8VyE8auevzR+Q8eZTlUN2mFwmmVLozndI4z+orhRA46UnwNn2mq375R35EEUpsDuTvI8uEcX1wbdRNRGkkher7L60nrVG1W0Yxo8zIuF/qm3KNj24+kLllffUHPsgzIX9ruL8CbH8y7xNiCx0/1EfTLJ5LQzLf2pCtYG0OLJvR6D1lPKVUnD1gLxdNbqPqIeBNyrDxD41xhqg8WFJXlyOPCZG89sUnBylm/ePeoCFyTk3YbM+s8QblMqdQ1XJCF5meelCRdVEiIICQM5RtmX1Op0U9xD6wGUNYDudK/LM1gVsav0cnuVyFsVJx4KzXADBA==
Received: from HE1EUR01FT043.eop-EUR01.prod.protection.outlook.com
	(10.152.0.54) by HE1EUR01HT024.eop-EUR01.prod.protection.outlook.com
	(10.152.0.251) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Thu, 29 Sep 2016 14:04:51 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.0.58) by
	HE1EUR01FT043.mail.protection.outlook.com (10.152.0.207) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Thu, 29 Sep 2016 14:04:50 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.016; Thu, 29 Sep 2016 14:04:50 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] build a toolchain compiler with ARM hard-float support
Thread-Index: AQHSGlPimcMcwVYAF0q/JtA2bivRfqCQf/FZ
Date: Thu, 29 Sep 2016 14:04:50 +0000
Message-ID: <HE1PR01MB1883E8B6E1663439ECF844D892CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18837CF7986BCE6EEFE81B6492CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<1475145104.30475.109.camel@linuxfoundation.org>,
	<37548ba8-2126-9072-2580-23466670d74f@windriver.com>
In-Reply-To: <37548ba8-2126-9072-2580-23466670d74f@windriver.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.0.58)
	smtp.mailfrom=hotmail.com; windriver.com; dkim=none (message not signed)
	header.d=none; windriver.com;
	dmarc=fail action=none header.from=hotmail.com; 
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.0.58 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [vV37ZKkjU6B1vh+yvYmBIf56H4IyCF8I]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR01HT024;
	6:4DAeMnOs99VGOR+1cZNid+BaqyZ+r5JlROmgbwlwKSQ3MBbWx1FPcmBSHbT2YEk5TUindym0y46Zs9PATo073ynWI1cWp93oH4jLeEYZu0aAkcqOtOmNKVW6aag4ZyfSL9Bk+aI37oCKhiO1h3VxeF++qrpFgZoUIWnfP8owML1OzWbNK6mMhYl8nRywNi6ud1QRTAhQaOrELGWRim+wfej3r+hIpZvKpaIatOxrKcOqtGhZZLhmNkTVQdcPeFMdoOap8U1xr/DxLMkQIojGExYPjFKmpNpB9jkKSV1V8mk=;
	5:UFzheKmmCkFGpScXK2e6/s3HRI6XzSfj5sXT3GKOH+jh6BvjrboXIt5ycqf7XzVT7NIACsr0VFA8bsbPqO2rSLvVxEklekGhl9rotq4ztmdFRZczVAE1TtUDs4yBTEEimvn6/X1n4mEBIjX3NiUe0A==;
	24:gXz1so8BjeJ80SdkbBFPlX3p7CyhCv6Kodl2ZnO2ytx7KjsuAwMxHhJoP2ar26hd/zImmwYcUgc86zWt44KvbIh4cLCx2Mv7I5KIkMgPJF0=;
	7:b5QhYk8uOCQMFOvbpY89lfCZQezTXC/hcd/EUPzZ858dq75UOT9ND87xzgB8mKGIKleJ2PQZL6rdc2mPXH25tdgJLQgs/oiTdUKT6SC/suGicUmkFIXXoxGhcj2rozACOGJrZvVY3Shj2Kza9jgWf3qHiG/mIXlKKtC/BBuF+ioGFtzfhlSbcK01kIJwQtrh+p9yqPSOwvew9TLgVoTaHB6ZZhKg1u22DBvhehzYxzfDlrGhU56eeBmAC3trtwdgW5TQic7xpmuDiPxIQMn5YoM41g31D+duMcONjTiE97pY2V7okXCWJhqiM5ClKk7T
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR01HT024;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: b4878492-b581-45dc-0075-08d3e871943f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:HE1EUR01HT024;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:HE1EUR01HT024; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR01HT024; 
x-forefront-prvs: 00808B16F3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2016 14:04:50.3795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT024
X-OriginalArrivalTime: 29 Sep 2016 14:04:54.0933 (UTC)
	FILETIME=[74652450:01D21A5A]
Subject: Re: build a toolchain compiler with ARM hard-float support
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
X-List-Received-Date: Thu, 29 Sep 2016 14:04:59 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883E8B6E1663439ECF844D892CE0HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883E8B6E1663439ECF844D892CE0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for your feeback.

I've attempted to generate the sdk (populate_sdk) having only MACHINE=3Dcol=
ibri-t20 in the local.conf.


Fortunately, the generated installer has all the necessary features with ha=
rd-float support.


Karim


________________________________
De : Mark Hatle <mark.hatle@windriver.com>
Envoy=E9 : jeudi 29 septembre 2016 15:17
=C0 : Richard Purdie; Karim ATIKI; yocto
Objet : Re: [yocto] build a toolchain compiler with ARM hard-float support

On 9/29/16 5:31 AM, Richard Purdie wrote:
> On Thu, 2016-09-29 at 09:10 +0000, Karim ATIKI wrote:
>> Hi,
>>
>> I'm using Poky Jethro to build on Toradex Colibri-T20 (armv7).
>>
>> I want to build my own SDK Installer to have  a toolchain and a
>> sysroot.
>>
>> Currently, I realied that the toolchain installer files do not
>> provide an arm-poky-linux-gnuabi compiler with hard-float support.
>> For example, while compiling my project:
>>
>> /opt/poky/2.0.1/sysroots/armv7a-vfp-neon-poky-linux-
>> gnueabi/usr/include/gnu/stubs.h:10:29: fatal error: gnu/stubs-hard.h:
>> No such file or directory
>>
>> Therefore:
>>
>>  How to be sure that the compiler generated by "bitbake -c
>> populate_sdk" will support hard-float ? Is there a configuration file
>> ?
>
> You need to choose a MACHINE which uses hard-float.

The machine configuration file should be setting the 'DEFAULTTUNE' variable=
 to
an appropriate ISA and ABI (hard float) for your configuration.  If it is n=
ot,
you may have to create your own variant and change the DEFAULTTUNE setting =
--
assuming the board supports the necessary hard float components.  (And yes,
there are some armv7a variants that people removed the VFP instructions fro=
m --
even though it's theoretically against spec.)

--Mark

> Cheers,
>
> Richard
>


--_000_HE1PR01MB1883E8B6E1663439ECF844D892CE0HE1PR01MB1883eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Thanks for your feeback.</p>
<p>I've attempted to generate the sdk (populate_sdk) having only MACHINE=3D=
colibri-t20 in the local.conf.</p>
<p><br>
</p>
<p>Fortunately, the generated installer has all the necessary features with=
 hard-float support.</p>
<p><br>
</p>
<p>Karim</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Mark Hatle &lt;mark.=
hatle@windriver.com&gt;<br>
<b>Envoy=E9 :</b> jeudi 29 septembre 2016 15:17<br>
<b>=C0 :</b> Richard Purdie; Karim ATIKI; yocto<br>
<b>Objet :</b> Re: [yocto] build a toolchain compiler with ARM hard-float s=
upport</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 9/29/16 5:31 AM, Richard Purdie wrote:<br>
&gt; On Thu, 2016-09-29 at 09:10 &#43;0000, Karim ATIKI wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I'm using Poky Jethro to build on Toradex Colibri-T20 (armv7).<br>
&gt;&gt;<br>
&gt;&gt; I want to build my own SDK Installer to have&nbsp; a toolchain and=
 a<br>
&gt;&gt; sysroot.<br>
&gt;&gt;<br>
&gt;&gt; Currently, I realied that the toolchain installer files do not<br>
&gt;&gt; provide an arm-poky-linux-gnuabi compiler with hard-float support.=
<br>
&gt;&gt; For example, while compiling my project:<br>
&gt;&gt;<br>
&gt;&gt; /opt/poky/2.0.1/sysroots/armv7a-vfp-neon-poky-linux-<br>
&gt;&gt; gnueabi/usr/include/gnu/stubs.h:10:29: fatal error: gnu/stubs-hard=
.h: <br>
&gt;&gt; No such file or directory<br>
&gt;&gt;<br>
&gt;&gt; Therefore:<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; How to be sure that the compiler generated by &quot;bitbake =
-c<br>
&gt;&gt; populate_sdk&quot; will support hard-float ? Is there a configurat=
ion file<br>
&gt;&gt; ?<br>
&gt; <br>
&gt; You need to choose a MACHINE which uses hard-float.<br>
<br>
The machine configuration file should be setting the 'DEFAULTTUNE' variable=
 to<br>
an appropriate ISA and ABI (hard float) for your configuration.&nbsp; If it=
 is not,<br>
you may have to create your own variant and change the DEFAULTTUNE setting =
--<br>
assuming the board supports the necessary hard float components.&nbsp; (And=
 yes,<br>
there are some armv7a variants that people removed the VFP instructions fro=
m --<br>
even though it's theoretically against spec.)<br>
<br>
--Mark<br>
<br>
&gt; Cheers,<br>
&gt; <br>
&gt; Richard<br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR01MB1883E8B6E1663439ECF844D892CE0HE1PR01MB1883eurp_--
