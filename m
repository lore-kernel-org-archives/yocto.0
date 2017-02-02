Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27E2FE0093F; Thu,  2 Feb 2017 05:31:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 24711 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Feb 2017 05:31:41 PST
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0052.outbound.protection.outlook.com [104.47.33.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FF1E0092C
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 05:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/CJQcWLgqXOyW5bgZGb05Rhjl0RQUJvzlMoqtq1JRFA=;
	b=mlj6bPSPFh1bRj8bpgsQpmRNCeynDjdfQIdgff0Q3rNLk6xS718L+5G7hR64WxhAmuOiP+T3Co6lHItkR2anjZ37i2kOQRuF6hsNrVR/9QkUzAj1B4nPgRKsqGkySRKkULPh63w+Y/9k/Beg0inRLikuThqW31SPKLmb7fZOLWo=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2954.prod.exchangelabs.com (10.174.181.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.12; Thu, 2 Feb 2017 13:31:39 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0845.028; Thu, 2 Feb 2017 13:31:39 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Ruby and OpenSSL version mismatch?
Thread-Index: AQHSfR0beKJLuAilikub2TK8QbfnmKFVtvH9
Date: Thu, 2 Feb 2017 13:31:39 +0000
Message-ID: <DM5PR0101MB295318DCFD9BA318D91CD38BB64C0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB29538BCBC9CDC57270E87C48B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
In-Reply-To: <DM5PR0101MB29538BCBC9CDC57270E87C48B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [218.225.179.82]
x-ms-office365-filtering-correlation-id: b682ebb8-9da9-46c0-43aa-08d44b6fd1aa
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2954; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2954;
	7:09GrFsEORvejDdo6qYkuEZ+6RjKv252FWRwcO8vlJW3M0vQPP1V2PczcbVOVh6gIdASHBjxQO91yFhDe8Ror9qMYldx2bywOTJ53l4I10d0Qa2LDPST+1yXm/9cN53TUFYJGJnGNB0ieFJ6vkcOhG8cSYMK52fh8kgvkoVpAX1T4qP0sBxlPG60O6oYtJjQOTQ/T8Supb6YmG+7UQLbhqH7b5qTkEh6/y98G0o894leOqQIqlyxSvTt59JVx2+onrzBFpF8DPudeO4i9Te0TCoDMBvwl4e/3pSN7CWbb+KvCWw/CpPkVoS5BEBAJKCGx9aSMacr1bCN1bFnISYE3ye0YEKGsNao8dqFJMhCNUQjZS3Z6VY70Se93xF7FSqTL7jOZPyKVXnpeVhdpJq4nVYnFyvbvnA/0WLyb4f/0dUWJAmxBDKtYcRuCLKUOBTtPqAGzLKif7yBE5xZr7fT6fI6wGNoNyQuH9D4zZk9qnR/S2SEhGGSnCSneELXXtqD+rbwljG5UK4KOY08rDRTcOhfATYinuZqw/68VjShwFn+XXbyHxhRJR13aG75ITs/4
x-microsoft-antispam-prvs: <DM5PR0101MB2954F79766AE810188A9205BB64C0@DM5PR0101MB2954.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(192374486261705);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123558025)(20161123564025)(20161123560025)(20161123562025)(20161123555025)(6072148);
	SRVR:DM5PR0101MB2954; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2954; 
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(189002)(377454003)(199003)(101416001)(189998001)(2900100001)(3900700001)(92566002)(97736004)(122556002)(110136003)(3280700002)(33656002)(105586002)(7736002)(107886002)(106116001)(7906003)(3846002)(6116002)(102836003)(66066001)(2906002)(3660700001)(8936002)(345774005)(1730700003)(54356999)(2501003)(5660300001)(55016002)(38730400001)(53936002)(74316002)(76176999)(25786008)(7696004)(5640700003)(6436002)(236005)(99286003)(2351001)(19627405001)(6606003)(229853002)(6306002)(6916009)(50986999)(77096006)(450100001)(606005)(81156014)(86362001)(81166006)(9686003)(8676002)(6506006)(68736007)(106356001)(2950100002)(54896002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2954;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2017 13:31:39.5101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2954
Subject: Re: Ruby and OpenSSL version mismatch?
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
X-List-Received-Date: Thu, 02 Feb 2017 13:31:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB295318DCFD9BA318D91CD38BB64C0DM5PR0101MB2953_"

--_000_DM5PR0101MB295318DCFD9BA318D91CD38BB64C0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, I just tried and the below seems to be the fix.


https://patchwork.openembedded.org/patch/119999/

________________________________
From: Takashi Matsuzawa
Sent: Thursday, February 2, 2017 3:25 PM
To: yocto@yoctoproject.org
Subject: Ruby and OpenSSL version mismatch?


Hello, Yocto.

I am trynig a build of fido based yocto image, with openssl 1.0.2j for secu=
rity reason.
The openssl recipe itself builds successfully, but later in the build I see=
 error in jscore.
In fact, ruby is complaining that 'OPENSSL_1.0.0' is not available.

| /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_re=
quire.rb:54:in `require': /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86=
_64-linux-gnu/digest/../../../../libcrypto.so.1.0.0: version `OPENSSL_1.0.0=
' not found (required by /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_=
64-linux-gnu/digest/sha1.so) - /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.=
0/x86_64-linux-gnu/digest/sha1.so (LoadError)
|     from /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/=
kernel_require.rb:54:in `require'
|     from /xxx/work/core2-32-poky-linux/qtwebkit/5.5.0+gitAUTOINC+0d592678=
ba-r0/git/Source/JavaScriptCore/offlineasm/generate_offset_extractor.rb:30:=
in `<main>'
| make[2]: *** [LLIntDesiredOffsets.h] Error 1

In fact, if I do objdump -p on sha1.so (in ruby tree):

>  required from libcrypto.so.1.0.0:
>    0x066a2b20 0x00 02 OPENSSL_1.0.0

Whereas, my libcrypt.so.1.0.0 says:

>Version definitions:
>1 0x01 0x0746be50 libcrypto.so.1.0.0
>2 0x00 0x06a2b2e4 OPENSSL_1.0.2d
>3 0x00 0x06a2b2e7 OPENSSL_1.0.2g
>    OPENSSL_1.0.2d

So, this might be the cause of the problem.
But I am not sure why sha1.so (which ruby build generats) define these vers=
ion numbers and not refer to the OpenSSL library in the build.

I googled, but there were some tips on updating ruby to solve OpenSSL versi=
on mismatch, but it is through grew or apt-get, etc.  Not a tip for yocto b=
uild.

I may be not familiar with ruby build yet, but any idea how I can fix this?
I could try updating ruby recipe as well to more recent version, but first =
I want to confirm how ruby is deciding the OpenSSL version for its plugin l=
ibrary and causing this mismatch.

Thank you for your knowledge..


--_000_DM5PR0101MB295318DCFD9BA318D91CD38BB64C0DM5PR0101MB2953_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello, I just tried and&nbsp;the below seems to be the&nbsp;fix.</p>
<p><br>
</p>
<p><a href=3D"https://patchwork.openembedded.org/patch/119999/" class=3D"OW=
AAutoLink" id=3D"LPlnk864878" previewremoved=3D"true">https://patchwork.ope=
nembedded.org/patch/119999/</a></p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Thursday, February 2, 2017 3:25 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Ruby and OpenSSL version mismatch?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div>Hello, Yocto.<br>
<br>
I am trynig a build of fido based yocto image, with openssl 1.0.2j for secu=
rity reason.<br>
The openssl recipe itself builds successfully, but later in the build I see=
 error in jscore.<br>
In fact, ruby is complaining that 'OPENSSL_1.0.0' is not available.<br>
<br>
| /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_re=
quire.rb:54:in `require': /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86=
_64-linux-gnu/digest/../../../../libcrypto.so.1.0.0: version `OPENSSL_1.0.0=
' not found (required by /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_=
64-linux-gnu/digest/sha1.so)
 - /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sh=
a1.so (LoadError)<br>
| &nbsp;&nbsp; &nbsp;from /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rub=
ygems/core_ext/kernel_require.rb:54:in `require'<br>
| &nbsp;&nbsp; &nbsp;from /xxx/work/core2-32-poky-linux/qtwebkit/5.5.0&#43;=
gitAUTOINC&#43;0d592678ba-r0/git/Source/JavaScriptCore/offlineasm/generate_=
offset_extractor.rb:30:in `&lt;main&gt;'<br>
| make[2]: *** [LLIntDesiredOffsets.h] Error 1<br>
<br>
In fact, if I do objdump -p on sha1.so (in ruby tree):<br>
<br>
&gt;&nbsp; required from libcrypto.so.1.0.0:<br>
&gt;&nbsp;&nbsp;&nbsp; 0x066a2b20 0x00 02 OPENSSL_1.0.0<br>
<br>
Whereas, my libcrypt.so.1.0.0 says:<br>
<br>
&gt;Version definitions:<br>
&gt;1 0x01 0x0746be50 libcrypto.so.1.0.0<br>
&gt;2 0x00 0x06a2b2e4 OPENSSL_1.0.2d<br>
&gt;3 0x00 0x06a2b2e7 OPENSSL_1.0.2g<br>
&gt;&nbsp;&nbsp; &nbsp;OPENSSL_1.0.2d <br>
<br>
So, this might be the cause of the problem.<br>
But I am not sure why sha1.so (which ruby build generats) define these vers=
ion numbers and not refer to the OpenSSL library in the build.<br>
<br>
I googled, but there were some tips on updating ruby to solve OpenSSL versi=
on mismatch, but it is through grew or apt-get, etc.&nbsp; Not a tip for yo=
cto build.<br>
<br>
I may be not familiar with ruby build yet, but any idea how I can fix this?=
<br>
I could try updating ruby recipe as well to more recent version, but first =
I want to confirm how ruby is deciding the OpenSSL version for its plugin l=
ibrary and causing this mismatch.<br>
<br>
Thank you for your knowledge..<br>
</div>
<br>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR0101MB295318DCFD9BA318D91CD38BB64C0DM5PR0101MB2953_--
