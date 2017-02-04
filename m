Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7053DE007C2; Fri,  3 Feb 2017 19:59:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0072.outbound.protection.outlook.com [104.47.41.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74A8E00546
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 19:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ltf6Vwr0AtLhlNpZJ48lJtLoVCk+PQ5qgp9GTmvIqlQ=;
	b=WVpapi+t1bM20K2gfBiIa8hUIXw0Yog1QV3nsLR85PTcNTm+V7Ax77aCZAS64mJw2A/XO/H5rW1WjkI9WykZlO0aeXtPLQ5VlT60Ivqs20J/UMJY0ZkK3V57bm4pao+AHh+FkszRGOCtVc1pYKfap9xXmbCven9sCa1WK2tnSGc=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2955.prod.exchangelabs.com (10.174.181.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.12; Sat, 4 Feb 2017 03:59:47 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0845.028; Sat, 4 Feb 2017 03:59:47 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] genericx86 vs qemux86
Thread-Index: AQHSfnOMPAcBXCcZX0KRUyMiVC1ul6FX602AgABMEyk=
Date: Sat, 4 Feb 2017 03:59:47 +0000
Message-ID: <DM5PR0101MB295352845062BDD3E939EA0EB64E0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB295332119B0A4D1653E73F98B64F0@DM5PR0101MB2953.prod.exchangelabs.com>,
	<CAJTo0LZyg6+pD7DKUb9c42=m_G5ngWyoqmxafLvSZP5Xn-JkJA@mail.gmail.com>
In-Reply-To: <CAJTo0LZyg6+pD7DKUb9c42=m_G5ngWyoqmxafLvSZP5Xn-JkJA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [218.225.179.82]
x-ms-office365-filtering-correlation-id: a18294bf-03d4-4a86-d5c7-08d44cb242e4
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2955; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2955;
	7:LBDdUew7A1uvZmcPOk3RvfsqzzKXgYmRQH/MVp1gVdIBp5yvGSKRQ5KZtxfTaje5JPC7Fnd0R+5wh1ZhhRFhTZEt1ihsz5GDoh+8h+TqKwCgjL+Zrmq9zBNolr8hgfXn8IKrnoMxbBH6wHOTxO+yYY3nI/QZuB9zqoHfSsgJIXqlwmRRysAA6TsBi2xKeKP4m/cJznJ36iHxivKDsmeiiClPwwOK23+53i4OEaV9fjSFd10yo1YUptTZOBXZFNZH5OSK5rtWBUy74YieJxYTHGfOR+piaDwymHM78RIbUB8uFrKPNYYtTY8qJtmzxiR8ZWOZQ8UPUbA+Jj3hwplak5danZrLWicwLpmIOv7FcAt4RqdtMDRX3MgXMiKyUwFbnf/FUGZDD+lxALAZOHYVB3ESPO0glUdlD4AEAqQRO+aeU4AxiFyv3hdFR6Q2+Jm7h1nury8pUTH5RHkUt4zbE6y1Nzhke26ohheJO/7nZCi7GBbFlEWJliq94ZaQciQfE/NQR4EqcAxnW8YmP39BtX38kU9Bxa6V2d4HfiPPviAvAKa143cb4XHHfanF0rip
x-microsoft-antispam-prvs: <DM5PR0101MB2955B6B7C1F088A0259519A4B64E0@DM5PR0101MB2955.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123558025)(20161123555025)(20161123562025)(20161123564025)(20161123560025)(6072148);
	SRVR:DM5PR0101MB2955; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2955; 
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(189002)(24454002)(377454003)(199003)(97736004)(81166006)(6916009)(229853002)(105586002)(6436002)(92566002)(6606003)(86362001)(2950100002)(101416001)(4326007)(25786008)(2906002)(33656002)(189998001)(106356001)(55016002)(6506006)(38730400001)(3660700001)(106116001)(3280700002)(68736007)(99286003)(54356999)(76176999)(9686003)(74316002)(2900100001)(8936002)(110136003)(102836003)(7736002)(50986999)(6116002)(54896002)(77096006)(19627405001)(3846002)(66066001)(53546003)(7696004)(345774005)(122556002)(8676002)(81156014)(236005)(53936002)(6246003)(5660300001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2955;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2017 03:59:47.4546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2955
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: genericx86 vs qemux86
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
X-List-Received-Date: Sat, 04 Feb 2017 03:59:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB295352845062BDD3E939EA0EB64E0DM5PR0101MB2953_"

--_000_DM5PR0101MB295352845062BDD3E939EA0EB64E0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, thank you for your reply.


I wondered vmware or virtuaobox, etc. are doing something already so that t=
he environment looks like a real PC.  You can run commercial OS like Window=
s on it and they are no particularly built for the emulation environment.


On the other hand, qemux86* builds are 'safe' version that means limitation=
 in its performance (hardware acceleration, etc.)?

So, if virtualization platform provides what intel-core* builds expects, th=
en I will see a better performance with them, rather thatn qemu* builds.
Or qemu* builds provide particular features that suites well with VM, other=
 thna its 'safe' behavior?

That is my concern.



________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Saturday, February 4, 2017 8:20 AM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] genericx86 vs qemux86


On 3 February 2017 at 23:16, Takashi Matsuzawa <tmatsuzawa@xevo.com<mailto:=
tmatsuzawa@xevo.com>> wrote:
Sorry, I am still a bit confused with genericx86 and qemux86 targets.  What=
 is their difference and which one to choose.
Both are x86 target and maybe genericx86 has more support for PC hardware? =
 qemux86 has v86d?
genericx86 is from poky and qemux86 is from openembeded?

qemux86 is specifically for use in qemu, so it targets a CPU that qemu is g=
ood at executing and has the virtualised hardware drivers in.  genericx86 i=
s an attempt at a "all purpose" x86 machine that runs most places acceptabl=
y.

My recommendation would be to use qemux86 (-64) for virtual environments an=
d a machine from meta-intel (intel-corei7-64 or intel-core2-32) for real ha=
rdware.  The genericx86 machine, being part of poky, is basically for QA pu=
rposes and if you are targetting Intel hardware then the Intel BSPs are bet=
ter.

Ross

--_000_DM5PR0101MB295352845062BDD3E939EA0EB64E0DM5PR0101MB2953_
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
<p>Hello, thank you for your reply.</p>
<p><br>
</p>
<p>I wondered vmware or virtuaobox, etc. are doing something already so tha=
t the environment looks like a real PC. &nbsp;You can run commercial OS lik=
e Windows on it and they are no particularly built for the emulation enviro=
nment.</p>
<p><br>
</p>
<p>On the other hand, qemux86* builds are 'safe' version that means limitat=
ion in its performance (hardware acceleration, etc.)?</p>
<div><br>
</div>
<div>So, if virtualization platform provides what intel-core* builds expect=
s, then I will see a better performance with them, rather thatn qemu* build=
s.</div>
<div>Or qemu* builds provide particular features that suites well with VM, =
other thna its 'safe' behavior?</div>
<div><br>
</div>
<div>That is my concern.</div>
<div><br>
</div>
<div><br>
</div>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Saturday, February 4, 2017 8:20 AM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] genericx86 vs qemux86</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 3 February 2017 at 23:16, Takashi Matsuzawa <=
span dir=3D"ltr">
&lt;<a href=3D"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xev=
o.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div>Sorry,&nbsp;I am still&nbsp;a bit confused with genericx86 and qemux86=
 targets.&nbsp; What is their difference and which one to choose.</div>
<div>Both are x86 target and maybe genericx86 has more support for PC hardw=
are? &nbsp;qemux86 has v86d?</div>
<div>genericx86 is from poky and qemux86 is from openembeded?</div>
<div></div>
</blockquote>
</div>
<br>
qemux86 is specifically for use in qemu, so it targets a CPU that qemu is g=
ood at executing and has the virtualised hardware drivers in. &nbsp;generic=
x86 is an attempt at a &quot;all purpose&quot; x86 machine that runs most p=
laces acceptably.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">My recommendation would be to use qemux86 (-64) =
for virtual environments and a machine from meta-intel (intel-corei7-64 or =
intel-core2-32) for real hardware.&nbsp; The genericx86 machine, being part=
 of poky, is basically for QA purposes
 and if you are targetting Intel hardware then the Intel BSPs are better.</=
div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR0101MB295352845062BDD3E939EA0EB64E0DM5PR0101MB2953_--
