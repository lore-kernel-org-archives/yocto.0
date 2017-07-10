Return-Path: <gemad@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1397E00C35; Mon, 10 Jul 2017 12:46:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,SUBJ_ALL_CAPS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gemad[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.65.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.5 SUBJ_ALL_CAPS Subject is all capitals
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7228 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Jul 2017 12:46:04 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065023.outbound.protection.outlook.com [40.92.65.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77031E00B8B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 12:46:04 -0700 (PDT)
Received: from HE1EUR01HT125.eop-EUR01.prod.protection.outlook.com
	(10.152.0.117) by DB5EUR01HT126.eop-EUR01.prod.protection.outlook.com
	(10.152.5.91) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1220.9;
	Mon, 10 Jul 2017 16:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=A74fodn0kkn5QnUk5j9+zAnM3+aydws9XpjSEhE2vO4=;
	b=BI2yFBf/qaMdKdJ3VTBNmeQk3N1itDxOLQsrwWfceRHH1Q6iDM6TNs6XIvQxcXGbcjiG1k7966Iy9sUEgkVAF2X17PSIp3Pk2fn4+RH3MXj7nZ69ZXrZBLzL0wXrdbbPXvHguN88mLCHgWG5XUOUoeL1WiqOh2GcxW82eNSgCg84UwyS3K836k5ovawpOvvWs0ZOkrRTn/d1Tl1p8/+/lGP03t5ZVm4KYQumarPkA6OnPNk5Qr/uxK/JgicEZJG/ZK566hp+74XRGKOz5qU8cUJoZrN6q3s2Bh3zX4g5s6iilUbEL1yWO1j50sZnwwGKp2sdc2NOcJ+LPZRADCX3+A==
Received: from HE1EUR01FT015.eop-EUR01.prod.protection.outlook.com
	(10.152.0.57) by HE1EUR01HT125.eop-EUR01.prod.protection.outlook.com
	(10.152.0.117) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1220.9;
	Mon, 10 Jul 2017 09:38:40 +0000
Received: from AM4P191MB0163.EURP191.PROD.OUTLOOK.COM (10.152.0.53) by
	HE1EUR01FT015.mail.protection.outlook.com (10.152.0.154) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1220.9 via Frontend Transport; Mon, 10 Jul 2017 09:38:40 +0000
Received: from AM4P191MB0163.EURP191.PROD.OUTLOOK.COM
	([fe80::d162:3159:9b6e:c2da]) by AM4P191MB0163.EURP191.PROD.OUTLOOK.COM
	([fe80::d162:3159:9b6e:c2da%17]) with mapi id 15.01.1240.020;
	Mon, 10 Jul 2017 09:38:40 +0000
From: george emad <gemad@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PERF - LINUX - ARM 
Thread-Index: AQHS+TZvoVsjCKdHi06E751OXQ2mlqJMzej1
Date: Mon, 10 Jul 2017 09:38:40 +0000
Message-ID: <AM4P191MB0163D5EB06A2F026113B016DB6A90@AM4P191MB0163.EURP191.PROD.OUTLOOK.COM>
References: <AM4P191MB016318DAFDAC284591B35124B6A90@AM4P191MB0163.EURP191.PROD.OUTLOOK.COM>
In-Reply-To: <AM4P191MB016318DAFDAC284591B35124B6A90@AM4P191MB0163.EURP191.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=outlook.com;
x-incomingtopheadermarker: OriginalChecksum:DBE7D9310181E64AEB3D7E9E38B77FB8934C3B55637AE58B1BF5FDBC41513F8B;
	UpperCasedChecksum:177074F20FE8DC18B2EE04EDBB31D56EA4ED0B9B6D51CDAEC3F26799F37342AE;
	SizeAsReceived:7217; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TUfscZtCVnaymYjxyJCBGvR+ug7e37ux]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1EUR01HT125;
	7:fW6cx1s09uvnIxDdRLlcmm1U5u40MQQTPJ84yWgpp/4VwVh8rGLG/n1WG9p07YSvO9qipliRKBYZf7WgsfKwgzEFvznz7kg73R6jq42iH1VVRwX7M5wGydgLmccrRpYyJuE6rjTEARrfJW2hrluQV1mlJJHyYryFOl3BGhNe0XFJrJYto2flffkoiWf33KJwjv7K8d7tOdfh5lxWVyMXCYZA551bWjPjIccuomkRAiRFCNqkwrMsqM/MicuJ5DZW+VqzxphX5e0AQa/PjkeOqbA47Solyhr6CxWHD1LcHM7rTGTW4dowG5R06WqYQPPwZ3R8stKVBq8IEbrvq8h8com2fi3pLC5NpEW1sWllpK+dO2f+tJ+15aEYrk/aIBH6hFYS9qjKxvsXk3bESU4TzK6BBWg2mBhma5gILl0X+l1zXJFAKfXw62SlrHKSo+fsSWRYntXZhSNPVJ4TO47u7BSTbbm5m3/D3UiP9mBQMCTceWgpgqpD8smOO9B5wNH77G6kNkfnQ4Exih/EA29sU2OKDpMG0UsdpPWYryUe8cKRvwyCbRugVYwwvjPxVzFpvdaJMD55LO8mGh1u4IzB9oKQ087dRIXnvcd422YifGTcQAfcFpxLVopomgBXGgU4Q44GM27G1b7HyrptjE67p/+qL62qMe6spKqQmKOtDGTpKbq58HSsQY0qKOqETTsMNrtRZqoyezIV3528zgDO9AphSo7bH+N0hwIWMsP8FoMiWAgIidFKl99jb2kHln+45gfj5btPDnXddmLFbx5iag==
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR01HT125;
	H:AM4P191MB0163.EURP191.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: b4d024d9-7086-47a3-a23b-08d4c77772bd
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HE1EUR01HT125; 
X-MS-TrafficTypeDiagnostic: HE1EUR01HT125:|HE1EUR01HT125:|DB5EUR01HT126:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:HE1EUR01HT125; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1EUR01HT125; 
x-forefront-prvs: 03648EFF89
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2017 09:38:40.5007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT125
X-Microsoft-Exchange-Diagnostics: 1; DB5EUR01HT126;
	23:D/z/PFYzhOfkRuR0D8NDaekkEMsE0kWF9X79e9hJHFIEFQSuzQQWjv0S91s2+1/VXGTQm2/4n5Wz5+FWR0JnmoCkgpcl5yP5E1CZ56lNh87fx4o7O+StbaUgh4UbCMj7HeDuNORZ2Nr4/mh0011L3w==
X-OriginatorOrg: outlook.com
Subject: PERF - LINUX - ARM
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
X-List-Received-Date: Mon, 10 Jul 2017 19:46:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4P191MB0163D5EB06A2F026113B016DB6A90AM4P191MB0163EURP_"

--_000_AM4P191MB0163D5EB06A2F026113B016DB6A90AM4P191MB0163EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello ,

I was tying to use perf on Renesas target and i  configured the yocto "loca=
l.conf" as showed in this link

https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling#General_Setup
Tracing and Profiling - Yocto Project<https://wiki.yoctoproject.org/wiki/Tr=
acing_and_Profiling#General_Setup>
wiki.yoctoproject.org
Tracing and Profiling in Yocto . Yocto bundles a number of tracing and prof=
iling tools - this 'HOWTO' describes their basic usage and shows by example=
 how to make use ...




perf is working good but i need to monitor the context switches which requi=
re to use "$ perf timechart"

command , and the command can't find this path "/sys/kernel/debug/tracing/e=
vents"

so what should I do in order to get this folder and its files compiled with=
 my kernel?

Thanks in Advance.




--_000_AM4P191MB0163D5EB06A2F026113B016DB6A90AM4P191MB0163EURP_
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
<p><span style=3D"font-family: sans-serif; font-size: 11pt;">Hello , &nbsp;=
</span><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
I was tying to use perf on&nbsp;Renesas target and i&nbsp; <font color=3D"#=
6a6a6a">configured</font>&nbsp;the yocto &quot;local.conf&quot;&nbsp;as sho=
wed in this link&nbsp;
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
<a href=3D"https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling#General=
_Setup" id=3D"LPlnk727117" previewremoved=3D"true">https://wiki.yoctoprojec=
t.org/wiki/Tracing_and_Profiling#General_Setup</a>
<div id=3D"LPBorder_GT_14996794588920.688964085999221" style=3D"margin-bott=
om: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14996794588900.8242722248554095" role=3D"presentat=
ion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255,=
 255); position: relative; overflow: auto; padding-top: 20px; padding-botto=
m: 20px; margin-top: 20px; border-top: 1px dotted rgb(200, 200, 200); borde=
r-bottom: 1px dotted rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14996794588910.20850004224736707" colspan=3D"2" style=3D=
"vertical-align: top; position: relative; padding: 0px; display: table-cell=
;">
<div id=3D"LPRemovePreviewContainer_14996794588910.7756944345920584"></div>
<div id=3D"LPTitle_14996794588910.6528033145424632" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_=
segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-he=
ight: 21px;">
<a id=3D"LPUrlAnchor_14996794588910.4894592019915438" href=3D"https://wiki.=
yoctoproject.org/wiki/Tracing_and_Profiling#General_Setup" target=3D"_blank=
" style=3D"text-decoration: none;">Tracing and Profiling - Yocto Project</a=
></div>
<div id=3D"LPMetadata_14996794588910.9670675822001022" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
wiki.yoctoproject.org</div>
<div id=3D"LPDescription_14996794588910.9510008650763397" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Tracing and Profiling in Yocto . Yocto bundles a number of tracing and prof=
iling tools - this 'HOWTO' describes their basic usage and shows by example=
 how to make use ...</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
perf is working good but i need to monitor the context switches which requi=
re to use &quot;$ perf timechart&quot;
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
command , and the command can't find this path &quot;/sys/kernel/debug/trac=
ing/events&quot;&nbsp;
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
so what should I do in order to get this folder and its files compiled with=
 my kernel?
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Thanks in Advance.&nbsp; <br>
<br>
<br>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AM4P191MB0163D5EB06A2F026113B016DB6A90AM4P191MB0163EURP_--
