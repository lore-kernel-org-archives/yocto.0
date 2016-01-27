Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A221EE00C13; Tue, 26 Jan 2016 22:09:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 942 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Jan 2016 22:08:55 PST
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0044.outbound.protection.outlook.com [104.47.100.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBD74E00C10
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 22:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=sXb79y46QJPOqUHWInHKJF8J4YYSC4xklzA/S4wLLaI=;
	b=cE1aWWVnvLd3mzEaX/JMrD6NMjhtkNKdRjnBZqPNo1UbLYF1QRsqf7AQNvjt59aGMSJ8eBvXAeNr0b+jn4lfD/r7CJUeJWap46qk6zFxKpUqV/+iroC/3WrK02KyuU8pJRYV1Szh9gGMB3JGjB5bhNfAR5tZ58ROEefk+cThPlU=
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) with Microsoft
	SMTP Server (TLS) id 15.1.390.13; Wed, 27 Jan 2016 05:53:10 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) with mapi id
	15.01.0390.013; Wed, 27 Jan 2016 05:53:10 +0000
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: Yuki Machida <machida.yuki@jp.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Syslog Related testcases are failed in yocto LTP
Thread-Index: AQHRVERz+LYGTV5uuE+leHAv1rjFFp8HPfQAgASARQ6AAdr+gIABS75H
Date: Wed, 27 Jan 2016 05:53:09 +0000
Message-ID: <MA1PR01MB0056B21EF1C3D003B713BA2482D90@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB0056C008588A2F442A072B6182C30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
	<56A1EF84.80101@jp.fujitsu.com>
	<MA1PR01MB0056D0CB0813ADC08D0D809A82C70@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>,
	<56A7448F.5030307@jp.fujitsu.com>
In-Reply-To: <56A7448F.5030307@jp.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Raghavendra.Kakarla@inedasystems.com; 
x-originating-ip: [175.101.7.226]
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0056;
	5:wcrpqmg1cB1UJyyzlQH01DiL2bV3DudGUqMaIlXRVWBTvkHs4WTvhPiqv6GgXrvLdYB1RaKOmXXBN3Q+nhxRD+Ew8W4KpBFYUku2KiAR3Qjhux6voZFbCJVrngc+q17APFfSUhQfUhnEym2h5iBtDQ==;
	24:18XeBcPfav8t6eZPOhAluAWas0lNmPj1KENDDaT3HQkQGiDr+w5IU0Wz0OlDQcU/eyv9MQa7Oy4BpjJaoNUb4uElW1lDpr2NncsEJ166Qg4=;
	20:0kWTBIf+AHK+yS5lde2KZL+n2ZcaO+ztT3cCDPd8Og1tyiudkEz2PExHgCgI2WPIzm5LxpfUT/QmO2jtTQiJ/CvI63nygb8omCiOY9v33wNHSWSqqabCFikqHnmcE20pmphqYgrdQUwqo2d1Kj6Ja6vlbGoJ7HyOieVxNvWu+aQ=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MA1PR01MB0056;
x-ms-office365-filtering-correlation-id: 34433128-5845-4fc7-64fd-08d326de2306
x-microsoft-antispam-prvs: <MA1PR01MB0056D556D2CA7D8261FA5FDB82D90@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:MA1PR01MB0056; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0056; 
x-forefront-prvs: 0834BAF534
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(51874003)(24454002)(377454003)(53754006)(189002)(199003)(5001960100002)(19625215002)(15975445007)(54356999)(3846002)(2950100001)(16601075003)(101416001)(1220700001)(107886002)(77096005)(1096002)(50986999)(11100500001)(105586002)(5003600100002)(586003)(102836003)(76176999)(2900100001)(106356001)(5002640100001)(5008740100001)(106116001)(189998001)(19580395003)(16236675004)(6116002)(33656002)(87936001)(122556002)(2906002)(19580405001)(10400500002)(66066001)(5004730100002)(19627405001)(3280700002)(97736004)(81156007)(5001770100001)(92566002)(5890100001)(86362001)(40100003)(93886004)(2501003)(3470700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0056;
	H:MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2016 05:53:09.9557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0056
Subject: Re: Syslog Related testcases are failed in yocto LTP
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
X-List-Received-Date: Wed, 27 Jan 2016 06:09:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB0056B21EF1C3D003B713BA2482D90MA1PR01MB0056INDP_"

--_000_MA1PR01MB0056B21EF1C3D003B713BA2482D90MA1PR01MB0056INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Yuki Machida,


I have the syslog-ng  flavour of syslogd.


Regards,

Raghavendra K.

________________________________________
From: Yuki Machida <machida.yuki@jp.fujitsu.com>
Sent: Tuesday, January 26, 2016 3:33 PM
To: Raghavendra Kakarla; yocto@yoctoproject.org
Subject: Re: [yocto] Syslog Related testcases are failed in yocto LTP

Hi Raghavendra Kakarla

> Thank you for your response.
>
> I am attaching the log file with this mail.
>
> Please find the attachment.
Thank you for your test log.

It need setting syslogd for testing syslog(2).
We know that it can test using syslog-ng.

Do you use any syslogd in your system?
What kind of syslogd do you have in your system?
(e.g. syslog-ng, sysklogd, rsyslogd,busybox-syslogd, ...)

Best Regards,
Yuki Machida

On 2016?01?25? 14:46, Raghavendra Kakarla wrote:
> Hi Yuki Machida,
>
> Thank you for your response.
>
> I am attaching the log file with this mail.
>
> Please find the attachment.
>
> Regards,
> Raghavendra K.
>
> ________________________________________
> From: Yuki Machida <machida.yuki@jp.fujitsu.com>
> Sent: Friday, January 22, 2016 2:29 PM
> To: Raghavendra Kakarla; yocto@yoctoproject.org
> Subject: Re: [yocto] Syslog Related testcases are failed in yocto LTP
>
> Hi
>
>   > I build the LTP-2015-01-19 with yocto and I ran the runltp script on =
my board I got error with the syslog related test cases.
> What it has happen error?
> If it is possible to send a test log,
> I may be able to give any advice for you.
>
> Best regard,
> Yuki Machida
> On 2016?01?21? 21:10, Raghavendra Kakarla wrote:
>> Hi All,
>>
>>
>> I build the LTP-2015-01-19 with yocto and I ran the runltp script on my =
board I got error with the syslog related test cases.
>>
>>
>> Could please give me the some info such that I will resolve the issue.
>>
>>
>> Thanks in advance.
>>
>>
>> Regards,
>>
>> Raghavendra K.
>>
>>
>>
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
>

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

--_000_MA1PR01MB0056B21EF1C3D003B713BA2482D90MA1PR01MB0056INDP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
Hi Yuki Machida,<br>
<br>
<p>I have the <font color=3D"#4ba524">syslog-ng&nbsp; <font color=3D"#00000=
0">flavour of syslogd.</font></font></p>
<p><font color=3D"#4ba524"><font color=3D"#000000"><br>
</font></font></p>
<p><font color=3D"#4ba524"><font color=3D"#000000">Regards,</font></font></=
p>
<p><font color=3D"#4ba524"><font color=3D"#000000">Raghavendra K.</font></f=
ont><br>
</p>
<br>
________________________________________<br>
From: Yuki Machida &lt;machida.yuki@jp.fujitsu.com&gt;<br>
Sent: Tuesday, January 26, 2016 3:33 PM<br>
To: Raghavendra Kakarla; yocto@yoctoproject.org<br>
Subject: Re: [yocto] Syslog Related testcases are failed in yocto LTP<br>
<br>
Hi Raghavendra Kakarla<br>
<br>
&gt; Thank you for your response.<br>
&gt;<br>
&gt; I am attaching the log file with this mail.<br>
&gt;<br>
&gt; Please find the attachment.<br>
Thank you for your test log.<br>
<br>
It need setting syslogd for testing syslog(2).<br>
We know that it can test using syslog-ng.<br>
<br>
Do you use any syslogd in your system?<br>
What kind of syslogd do you have in your system?<br>
(e.g. syslog-ng, sysklogd, rsyslogd,busybox-syslogd, ...)<br>
<br>
Best Regards,<br>
Yuki Machida<br>
<br>
On 2016&#24180;01&#26376;25&#26085; 14:46, Raghavendra Kakarla wrote:<br>
&gt; Hi Yuki Machida,<br>
&gt;<br>
&gt; Thank you for your response.<br>
&gt;<br>
&gt; I am attaching the log file with this mail.<br>
&gt;<br>
&gt; Please find the attachment.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Raghavendra K.<br>
&gt;<br>
&gt; ________________________________________<br>
&gt; From: Yuki Machida &lt;machida.yuki@jp.fujitsu.com&gt;<br>
&gt; Sent: Friday, January 22, 2016 2:29 PM<br>
&gt; To: Raghavendra Kakarla; yocto@yoctoproject.org<br>
&gt; Subject: Re: [yocto] Syslog Related testcases are failed in yocto LTP<=
br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt;&nbsp;&nbsp; &gt; I build the LTP-2015-01-19 with yocto and I ran the r=
unltp script on my board I got error with the syslog related test cases.<br=
>
&gt; What it has happen error?<br>
&gt; If it is possible to send a test log,<br>
&gt; I may be able to give any advice for you.<br>
&gt;<br>
&gt; Best regard,<br>
&gt; Yuki Machida<br>
&gt; On 2016&#24180;01&#26376;21&#26085; 21:10, Raghavendra Kakarla wrote:<=
br>
&gt;&gt; Hi All,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I build the LTP-2015-01-19 with yocto and I ran the runltp script =
on my board I got error with the syslog related test cases.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Could please give me the some info such that I will resolve the is=
sue.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thanks in advance.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; Raghavendra K.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; ______________________________________________________________________=
<br>
&gt; This email has been scanned by the Symantec Email Security.cloud servi=
ce.<br>
&gt; For more information please visit http://www.symanteccloud.com<br>
&gt; ______________________________________________________________________=
<br>
&gt;<br>
<br>
______________________________________________________________________<br>
This email has been scanned by the Symantec Email Security.cloud service.<b=
r>
For more information please visit http://www.symanteccloud.com<br>
______________________________________________________________________<br>
</div>
</body>
</html>

--_000_MA1PR01MB0056B21EF1C3D003B713BA2482D90MA1PR01MB0056INDP_--
