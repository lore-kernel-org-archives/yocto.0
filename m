Return-Path: <enellessen@phoenixcontact.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B13ABE00848; Thu,  2 Aug 2018 10:00:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 30759 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Aug 2018 10:00:44 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0087.outbound.protection.outlook.com [104.47.2.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83F9E006B4
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2018 10:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=phoenixcontact.onmicrosoft.com; s=selector1-phoenixcontact-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=d1DlQB3Gs3UyDkC9EI7wJaguOFmCkcADp7OO/Rua+4k=;
	b=JO4YP/qs8cFh0dexPr2mS+jtPIeoaBmGYi0NAc8WUhYJy/LkpuizjrbMlclhOTX5+Wzpbuc4fd4UrX0nkEBVbKEje47Oot2jIU9WXaxqhDz7Dhc49vsvdZzNMNBTn/R/0Z506ElwuDGZD/GLlivHy18PxS4IyZjMbWPp/alxFuM=
Received: from VI1PR0501MB2320.eurprd05.prod.outlook.com (10.169.135.21) by
	VI1PR0501MB2719.eurprd05.prod.outlook.com (10.172.15.144) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.995.19; Thu, 2 Aug 2018 08:28:03 +0000
Received: from VI1PR0501MB2320.eurprd05.prod.outlook.com
	([fe80::c1c6:2e43:ef2f:621f]) by
	VI1PR0501MB2320.eurprd05.prod.outlook.com
	([fe80::c1c6:2e43:ef2f:621f%9]) with mapi id 15.20.1017.010;
	Thu, 2 Aug 2018 08:28:03 +0000
From: Erik Nellessen <enellessen@phoenixcontact.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Non-deterministic build error in package gcc-source
Thread-Index: AQHUJ9hk2niGgoB35k6JXQIK/AT+jqSpx5oAgAJa/Hk=
Date: Thu, 2 Aug 2018 08:28:03 +0000
Message-ID: <VI1PR0501MB23209F21F954AA6AA3A0D7F0B82C0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
References: <VI1PR0501MB2320523BE7412E38D0AB4525B82F0@VI1PR0501MB2320.eurprd05.prod.outlook.com>,
	<CAJTo0LawozrqGb4TsVFz+NzKyNGb-G96vYopsHNXvcJVj_DnDA@mail.gmail.com>
In-Reply-To: <CAJTo0LawozrqGb4TsVFz+NzKyNGb-G96vYopsHNXvcJVj_DnDA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=enellessen@phoenixcontact.com; 
x-originating-ip: [62.157.123.101]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR0501MB2719;
	6:MD92F/dZxfh8claqckfGPaX/XPJsq+T8nXwmtOl5hSRt+E8kGTpeTKrECcvqygC/9TOoM5FtCrvcyNQ9Kwj21AfPbxq55ngFCeToI60mICgCxORbwUkYFrss5lWpJw5G9uI7jQTLrVJvXPI/Q9z43SA3nuY+X5y7LcBE2QBUgduvtxfJeVrTLizfM2UovnH+c+qNi6i1sxExZKsluXN1n7LUcVkDUGBDf2iZqGVx6IBXeiIccbXta90cP0nwrVjlC5vxV6HURI/X8Yap45Syb5cD/wNCQ/THyE5aBcDt87Y8hJBLUE6lLpmJrT7vPHuOK2IOqt2rqc14yfWNfkmlxap/4s672ACf0WPcAD6WTkeHauvEWoy7+/t6yXygkUVgYfew7SZleUrrl+mnYET3I4JZAWxilUU+YeK7zal6+vA/DoGGrFykOvcm0/QPtfptdRJ+wXstAzKkfWwirD72MA==;
	5:8kbtn26DnRXimT/NkGmTyWScPTB2oK/pYbhzvoamYQIkiFvxhahr5tLYaU/svUFx58e6xt4x2qe3KLPLLoNJlTGtLKSl1tn/4kROCCextxZgUOxzgXMmIWS38UaAvEusVyZNZNqJqWyr1Ee9tbo8d/F5vMDqyjNvCqj6iZfPUS0=;
	7:LVAZUbMnO1wp/bIiTi5EjKmIxzBAU9Lxp9dxL8KFopy9AKAshq9YwE00qwEQKrWmAHCvi1r9nf7SK65L78MrKcwt5MI+vVBP83h1/ARZVI5NHLBFMoxPr7f+lXPsRtEUvfhcRREiWFe0CQm+aoaFqqIJewXafBYWth7TbHfhIXAmJU0FeNe/cvA2FP5aKPduVlxaUNzSfIl4JfEIwfMCMmNPzdPEiQ7UbkqpSG2K3j3mVEAbVQJALY+IXWiqXejJ
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: ab9ec0ba-d39c-410c-e1f4-08d5f851dd5f
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021125)(8989117)(5600074)(711020)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990107)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR0501MB2719; 
x-ms-traffictypediagnostic: VI1PR0501MB2719:|VI1PR0501MB2719:
x-microsoft-antispam-prvs: <VI1PR0501MB2719EC155D665AAD8870F82CB82C0@VI1PR0501MB2719.eurprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(223705240517415)(228905959029699);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(3231311)(944501410)(52105095)(10201501046)(93006095)(93001095)(149027)(150027)(6041310)(20161123558120)(20161123564045)(2016111802025)(20161123562045)(20161123560045)(6043046)(6072148)(201708071742011)(7699016);
	SRVR:VI1PR0501MB2719; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0501MB2719; 
x-forefront-prvs: 07521929C1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(136003)(376002)(366004)(396003)(39850400004)(189003)(199004)(2906002)(575784001)(6916009)(86362001)(606006)(9686003)(7736002)(236005)(6306002)(55016002)(966005)(3846002)(4326008)(316002)(74316002)(478600001)(5660300001)(5250100002)(6606003)(54896002)(446003)(6436002)(97736004)(476003)(486006)(68736007)(14454004)(6116002)(81156014)(81166006)(7696005)(8936002)(19627405001)(186003)(105586002)(99286004)(5024004)(102836004)(11346002)(256004)(76176011)(2900100001)(106356001)(6506007)(26005)(33656002)(66066001)(8676002)(14444005)(53546011)(25786009)(53936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0501MB2719;
	H:VI1PR0501MB2320.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: phoenixcontact.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: cesN1tBW9eYo2gBp6F9wWcpvA2NR30nZmRI1qt6j178jSOOYgmi6pV7GnQctinKGk7TC2JuYEs+uhTgCgQDv7J9v0+VymWwvsyXZnyYlwlt5MsRXJi6mcwo+TEvMGM7y7nDv7M6N7mk+Gywikfloa/RSoQ69NJ//WLfGMLwSdRCsAmbtpFYunLSmWbQth8wDshrNYZcWjEjbzp6M0ceLqas0rXNyk3ZCkYxA6U502cr1LonQSpBy2e8hv7F6Ua/JptloUHn1Um0BTf7/piNxew/jAP6WIAwz8uxm0co8emT8a4x9yaY6H8JO12Tia0f8UNi04oFu64v9uonENSuJeJaYge/rBPIrVnFvBILSMxk=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: phoenixcontact.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab9ec0ba-d39c-410c-e1f4-08d5f851dd5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2018 08:28:03.1631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6868843b-f012-4c95-a18e-bab826cca9ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2719
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Non-deterministic build error in package gcc-source
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
X-List-Received-Date: Thu, 02 Aug 2018 17:00:47 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0501MB23209F21F954AA6AA3A0D7F0B82C0VI1PR0501MB2320_"

--_000_VI1PR0501MB23209F21F954AA6AA3A0D7F0B82C0VI1PR0501MB2320_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

thanks for your response!

I deactivated the archiver and started about 40 builds. The problem did not=
 occur.


We discussed the different archiver modes. For us, it is probably the best =
solution to run the archiver with the following configuration:

ARCHIVER_MODE[src] ?=3D "original"

ARCHIVER_MODE[diff] ?=3D "1"

To get the original source files and the patches.


I am running some builds right now to evaluate if this configuration runs w=
ithout problems.


In any case I would like to report a bug concerning the problems when runni=
ng the archiver in patched mode. I tried to create a Bugzilla account, but =
it was not possible, because all of my tries were automatically cancelled. =
I wrote an email to michael@yoctoproject.org and hope to get an account soo=
n.


Kind regards,

Erik

________________________________
Von: Burton, Ross <ross.burton@intel.com>
Gesendet: Dienstag, 31. Juli 2018 22:18
An: Erik Nellessen
Cc: yocto@yoctoproject.org
Betreff: Re: [yocto] Non-deterministic build error in package gcc-source

Obvious short answer is do you actually need to use the archiver in
patched mode?  Changing to a different mode, or disabling the archiver
entirely, may solve this.

Long answer is this is most likely a race in the archiver, so filing a
bug with as many details as you can would be good.

Ross

On 30 July 2018 at 08:48, Erik Nellessen <enellessen@phoenixcontact.com> wr=
ote:
> We are building an operating system based on poky
> (f0ec7c8b2dc1797ba22c45653a5f182b63354092, bitbake: toaster: add 'Sumo' t=
o
> release selection).
>
>
> Sometimes (about 1 in 10 times) our build fails, because the task
> do_ar_patched fails for package gcc-source-7.3.0-7.3.0-r0.
>
>
> The short error message:
>
> 14:44:09 Exception: FileNotFoundError: [Errno 2] No such file or director=
y:
> '/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU=
5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-7.3=
.0-r0/gcc-7.3.0/gcc/gengtype-lex.c'
> 14:44:09
> 14:44:09 ERROR: gcc-source-7.3.0-7.3.0-r0 do_ar_patched: Function failed:
> do_ar_patched
> 14:44:09 ERROR: Logfile of failure stored in:
> /home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU5=
BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-7.3.=
0-r0/temp/log.do_ar_patched.43242
> 14:44:09 NOTE: recipe gcc-source-7.3.0-7.3.0-r0: task do_ar_patched: Fail=
ed
> 14:44:09 ERROR: Task
> (/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU=
5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2//mguard/poky/meta/recipes-devtools/gcc/g=
cc-source_7.3.bb:do_ar_patched)
> failed with exit code '1'
>
> I attached the full error message as a text file.
>
>
> Does anybody know this error message? Does anybody experience similar
> problems with non-deterministic build failure?
>
>
> Kind regards,
>
> Erik
>
> ..................................................................
> Phoenix Contact GmbH & Co. KG
>
> Sitz der Gesellschaft / registered office of the company: 32825 Blomberg
> USt-Id-Nr.: DE124613250
> Pers. haftende Gesellschafterin / personally liable partner: Phoenix Cont=
act
> Verwaltungs GmbH
> Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273
> Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership
> district court Lemgo HRA 3746
> Gesch=E4ftsf=FChrer / Executive Board: Frank St=FChrenberg (Vorsitzender =
/ Chief
> Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachholz
> ___________________________________________________________________
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mai=
l
> irrt=FCmlich erhalten haben, informieren Sie bitte sofort den Absender un=
d
> vernichten Sie diese Mail. Das unerlaubte Kopieren, jegliche anderweitige
> Verwendung sowie die unbefugte Weitergabe dieser Mail ist nicht gestattet=
.
> -------------------------------------------------------------------------=
---------------------------
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are not the intended recipient (or have received this e-mail in error)
> please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure, distribution or other use of the materi=
al
> or parts thereof is strictly forbidden.
> ___________________________________________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.



>
..................................................................
Phoenix Contact GmbH & Co. KG

Sitz der Gesellschaft / registered office of the company: 32825 Blomberg
USt-Id-Nr.: DE124613250
Pers. haftende Gesellschafterin / personally liable partner: Phoenix Contac=
t Verwaltungs GmbH
Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273
Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership distr=
ict court Lemgo HRA 3746
Gesch=E4ftsf=FChrer / Executive Board: Frank St=FChrenberg (Vorsitzender / =
Chief Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachh=
olz
___________________________________________________________________
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren, jegliche anderweitige Verwendu=
ng sowie die unbefugte Weitergabe dieser Mail ist nicht gestattet.
---------------------------------------------------------------------------=
-------------------------
This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure, distribution or other use of the material or parts the=
reof is strictly forbidden.
___________________________________________________________________

--_000_VI1PR0501MB23209F21F954AA6AA3A0D7F0B82C0VI1PR0501MB2320_
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
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
<div style=3D"margin: 0px;"><font face=3D"Times New Roman,serif" size=3D"3"=
><span style=3D"font-size: 12pt;"><font color=3D"#1f497d" face=3D"Calibri,s=
ans-serif" size=3D"2"><span style=3D"font-size: 11pt;">Hi Ross,</span></fon=
t></span></font></div>
<div style=3D"margin: 0px;"><font face=3D"Times New Roman,serif" size=3D"3"=
><span style=3D"font-size: 12pt;"><font color=3D"#1f497d" face=3D"Calibri,s=
ans-serif" size=3D"2"><span style=3D"font-size: 11pt;"><br>
</span></font></span></font></div>
<div style=3D"margin: 0px;"><font face=3D"Times New Roman,serif" size=3D"3"=
><span style=3D"font-size: 12pt;"><font color=3D"#1f497d" face=3D"Calibri,s=
ans-serif" size=3D"2"><span style=3D"font-size: 11pt;">thanks for your resp=
onse!</span></font></span></font></div>
<div style=3D"margin: 0px;"><font face=3D"Times New Roman,serif" size=3D"3"=
><span style=3D"font-size: 12pt;"><font color=3D"#1f497d" face=3D"Calibri,s=
ans-serif" size=3D"2"><span style=3D"font-size: 11pt;"><br>
</span></font></span></font></div>
<div style=3D"margin: 0px;"><font face=3D"Times New Roman,serif" size=3D"3"=
><span style=3D"font-size: 12pt;"><font color=3D"#1f497d" face=3D"Calibri,s=
ans-serif" size=3D"2"><span style=3D"font-size: 11pt;">I deactivated the ar=
chiver and started about 40 builds. The problem
 did not occur.</span></font></span></font></div>
<p></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">W=
e discussed the different archiver modes. For us, it is probably the best s=
olution to run the archiver with the following configuration:</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">A=
RCHIVER_MODE[src] ?=3D &quot;original&quot;</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">A=
RCHIVER_MODE[diff] ?=3D &quot;1&quot;</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">T=
o get the original source files and the patches.</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d"><=
br>
</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">I=
 am running some builds right now to evaluate if this configuration runs wi=
thout problems.</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d"><=
br>
</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">I=
n any&nbsp;case I would like to report a bug concerning the problems when r=
unning the archiver in patched mode. I tried to create a Bugzilla account, =
but it was not possible, because all of my
 tries were automatically cancelled. I wrote an email to <span>michael@yoct=
oproject.org</span> and hope to get an account soon.</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d"><=
br>
</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">K=
ind regards,</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><font color=3D"#1f497d">E=
rik<br>
</font></p>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"width: 98%; display: inline-block;">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif" style=3D"font-size: 11pt;"><b>Von:</b> Burton, Ross &lt;ros=
s.burton@intel.com&gt;<br>
<b>Gesendet:</b> Dienstag, 31. Juli 2018 22:18<br>
<b>An:</b> Erik Nellessen<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Betreff:</b> Re: [yocto] Non-deterministic build error in package gcc-so=
urce</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size: 11pt=
;">
<div class=3D"PlainText">Obvious short answer is do you actually need to us=
e the archiver in<br>
patched mode?&nbsp; Changing to a different mode, or disabling the archiver=
<br>
entirely, may solve this.<br>
<br>
Long answer is this is most likely a race in the archiver, so filing a<br>
bug with as many details as you can would be good.<br>
<br>
Ross<br>
<br>
On 30 July 2018 at 08:48, Erik Nellessen &lt;enellessen@phoenixcontact.com&=
gt; wrote:<br>
&gt; We are building an operating system based on poky<br>
&gt; (f0ec7c8b2dc1797ba22c45653a5f182b63354092, bitbake: toaster: add 'Sumo=
' to<br>
&gt; release selection).<br>
&gt;<br>
&gt;<br>
&gt; Sometimes (about 1 in 10 times) our build fails, because the task<br>
&gt; do_ar_patched fails for package gcc-source-7.3.0-7.3.0-r0.<br>
&gt;<br>
&gt;<br>
&gt; The short error message:<br>
&gt;<br>
&gt; 14:44:09 Exception: FileNotFoundError: [Errno 2] No such file or direc=
tory:<br>
&gt; '/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76A=
VHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-=
7.3.0-r0/gcc-7.3.0/gcc/gengtype-lex.c'<br>
&gt; 14:44:09<br>
&gt; 14:44:09 ERROR: gcc-source-7.3.0-7.3.0-r0 do_ar_patched: Function fail=
ed:<br>
&gt; do_ar_patched<br>
&gt; 14:44:09 ERROR: Logfile of failure stored in:<br>
&gt; /home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AV=
HU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-7=
.3.0-r0/temp/log.do_ar_patched.43242<br>
&gt; 14:44:09 NOTE: recipe gcc-source-7.3.0-7.3.0-r0: task do_ar_patched: F=
ailed<br>
&gt; 14:44:09 ERROR: Task<br>
&gt; (/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76A=
VHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2//mguard/poky/meta/recipes-devtools/gc=
c/gcc-source_7.3.bb:do_ar_patched)<br>
&gt; failed with exit code '1'<br>
&gt;<br>
&gt; I attached the full error message as a text file.<br>
&gt;<br>
&gt;<br>
&gt; Does anybody know this error message? Does anybody experience similar<=
br>
&gt; problems with non-deterministic build failure?<br>
&gt;<br>
&gt;<br>
&gt; Kind regards,<br>
&gt;<br>
&gt; Erik<br>
&gt;<br>
&gt; ..................................................................<br>
&gt; Phoenix Contact GmbH &amp; Co. KG<br>
&gt;<br>
&gt; Sitz der Gesellschaft / registered office of the company: 32825 Blombe=
rg<br>
&gt; USt-Id-Nr.: DE124613250<br>
&gt; Pers. haftende Gesellschafterin / personally liable partner: Phoenix C=
ontact<br>
&gt; Verwaltungs GmbH<br>
&gt; Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273<br>
&gt; Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership<=
br>
&gt; district court Lemgo HRA 3746<br>
&gt; Gesch=E4ftsf=FChrer / Executive Board: Frank St=FChrenberg (Vorsitzend=
er / Chief<br>
&gt; Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachho=
lz<br>
&gt; ___________________________________________________________________<br=
>
&gt; Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte<br=
>
&gt; Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-=
Mail<br>
&gt; irrt=FCmlich erhalten haben, informieren Sie bitte sofort den Absender=
 und<br>
&gt; vernichten Sie diese Mail. Das unerlaubte Kopieren, jegliche anderweit=
ige<br>
&gt; Verwendung sowie die unbefugte Weitergabe dieser Mail ist nicht gestat=
tet.<br>
&gt; ----------------------------------------------------------------------=
------------------------------<br>
&gt; This e-mail may contain confidential and/or privileged information. If=
 you<br>
&gt; are not the intended recipient (or have received this e-mail in error)=
<br>
&gt; please notify the sender immediately and destroy this e-mail. Any<br>
&gt; unauthorized copying, disclosure, distribution or other use of the mat=
erial<br>
&gt; or parts thereof is strictly forbidden.<br>
&gt; ___________________________________________________________________<br=
>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a class=3D"OWAAutoLink" id=3D"LPlnk196730" href=3D"https://lists.yoct=
oproject.org/listinfo/yocto" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<p></p>
<div id=3D"LPBorder_GT_15331978022770.006716919898764995" style=3D"width: 1=
00%; text-indent: 0px; overflow: auto; margin-bottom: 20px; display: inline=
-block;">
<table id=3D"LPContainer_15331978022660.9904877561600103" role=3D"presentat=
ion" style=3D"width: 90%; overflow: auto; padding-top: 20px; padding-bottom=
: 20px; margin-top: 20px; border-top-color: rgb(200, 200, 200); border-bott=
om-color: rgb(200, 200, 200); border-top-width: 1px; border-bottom-width: 1=
px; border-top-style: dotted; border-bottom-style: dotted; position: relati=
ve; background-color: rgb(255, 255, 255);" cellspacing=3D"0">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15331978022680.980075615281842" style=3D"padding: 0px; v=
ertical-align: top; display: table-cell; position: relative;" colspan=3D"2"=
>
<div id=3D"LPRemovePreviewContainer_15331978022710.6454120379773951" style=
=3D"float: right;">
</div>
<div id=3D"LPTitle_15331978022710.15218477040766964" style=3D"top: 0px; col=
or: rgb(0, 120, 215); line-height: 21px; font-family: &quot;wf_segoe-ui_lig=
ht&quot;, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quot;Seg=
oe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; font-size: 21=
px; font-weight: 400;">
<a id=3D"LPUrlAnchor_15331978022730.4624970670698704" style=3D"text-decorat=
ion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_15331978022730.8471266370154946" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); line-height: 14px; font-family: &quo=
t;wf_segoe-ui_normal&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tah=
oma, Arial, sans-serif; font-size: 14px; font-weight: 400;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_15331978022750.8574429002030057" style=3D"color: r=
gb(102, 102, 102); line-height: 20px; overflow: hidden; font-family: &quot;=
wf_segoe-ui_normal&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahom=
a, Arial, sans-serif; font-size: 14px; font-weight: 400; display: block; ma=
x-height: 100px;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<p></p>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
..................................................................<br>
Phoenix Contact GmbH &amp; Co. KG<br>
<br>
Sitz der Gesellschaft / registered office of the company: 32825 Blomberg<br=
>
USt-Id-Nr.: DE124613250<br>
Pers. haftende Gesellschafterin / personally liable partner: Phoenix Contac=
t Verwaltungs GmbH<br>
Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273<br>
Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership distr=
ict court Lemgo HRA 3746<br>
Gesch=E4ftsf=FChrer / Executive Board: Frank St=FChrenberg (Vorsitzender / =
Chief Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachh=
olz<br>
___________________________________________________________________<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren,
 jegliche anderweitige Verwendung sowie die unbefugte Weitergabe dieser Mai=
l ist nicht gestattet.<br>
---------------------------------------------------------------------------=
-------------------------<br>
This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure, distribution
 or other use of the material or parts thereof is strictly forbidden.<br>
___________________________________________________________________
</body>
</html>

--_000_VI1PR0501MB23209F21F954AA6AA3A0D7F0B82C0VI1PR0501MB2320_--
