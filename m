Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B07EE006C7; Fri, 16 Dec 2016 14:13:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 869 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Dec 2016 14:13:08 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0058.outbound.protection.outlook.com [104.47.34.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42731E0049D
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 14:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1Wyy0QPltzK4dmK1iUSRWNFFY8w12MCdN1IP55g2z+U=;
	b=iHAqCKwxWQp3Z8J4XQ8/JQ7SPbNwoo+4bhF1TJHOiGUWaIfG4/qmrEwyA01unPWAGUuD1NFknT4Gmb/zTV8TqHFV4SRcDTBUvswXbHt92nikepqBXOTSk2Yk5Okm+ukyg0T+w7Y2e9rQqgDoRuaEpT01YP60cb+BLpYGc8xGKVs=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.789.14; Fri, 16 Dec 2016 21:58:36 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0789.014; Fri, 16 Dec 2016 21:58:36 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Thread-Topic: [yocto] live" image: iso and ext4 artifacts
Thread-Index: AQHSVqUSkkMn1Fqn0E+/ccxtXNbIR6EKTm0AgADS8Ic=
Date: Fri, 16 Dec 2016 21:58:35 +0000
Message-ID: <CY1PR0101MB15947E67210BC509C66A5C87B69C0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15941E53F918A2D5BD56915BD79D0@CY1PR0101MB1594.prod.exchangelabs.com>,
	<CAHiDW_GF8a=QLb0N4QhFWsWtP3YmoeYF-3+=1LzGELcA5tsoag@mail.gmail.com>
In-Reply-To: <CAHiDW_GF8a=QLb0N4QhFWsWtP3YmoeYF-3+=1LzGELcA5tsoag@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 1ce99dd3-d9d4-4c0c-6fe8-08d425feaf6a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1593; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	7:F32FjkumcU4wgbEQPLeyVJD2qKTktcPF2r9sPQ1sA2Jt+2NYbiotXFnfEIohgH89SBT87L6icp+s2qkbciYpjLDximQlTUGr6eLhf1wHuNduDqJMEpvw+7M8Est5qnADVYSni7bpWnVYh3A4uhb5oRW/lTVmd0mt4qoTlZxo2DIRBPqlYiof06ky+9DBsyTIezpwRlJfGwMF6JaHq4ik7Q2mH3zeXqsgUb3dgaJauJ0qubWrjY8F3cyXi4fnmhTDpsKpTrinrZZjnVCXqWdYnav6YDyKh5l1HHrxwTvP28TziiW4UYaDqxfkKw2U6owI4r+OkdpdpuOR+bPdgPc2AtYKR6khNzL1QhrrndAim91Zx5c0w3EuGdIA0kLllqSI+b/yrxNuXuAZTe4bRk2uPMKeQjNEzhT3YGUuKPi3dI5qRZ5L7WxnxjccUiwCJbdDpsimh345z4OvfyCHMZ4Chw==
x-microsoft-antispam-prvs: <CY1PR0101MB159350AE4C7A6919AD7DEFC4B69C0@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123564025)(20161123555025)(20161123562025)(20161123560025)(6072148);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(199003)(377454003)(24454002)(189002)(2950100002)(86362001)(54356999)(4326007)(50986999)(66066001)(76176999)(33656002)(2906002)(8676002)(3846002)(101416001)(97736004)(8936002)(6506006)(3280700002)(229853002)(77096006)(6116002)(3660700001)(102836003)(38730400001)(25786008)(6436002)(110136003)(7696004)(5660300001)(9686002)(122556002)(68736007)(6606003)(81166006)(106116001)(19627405001)(3900700001)(92566002)(81156014)(189998001)(106356001)(6916009)(2900100001)(105586002)(7736002)(74316002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2016 21:58:35.4285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
X-Mailman-Approved-At: Mon, 19 Dec 2016 10:18:03 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: live" image: iso and ext4 artifacts
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
X-List-Received-Date: Fri, 16 Dec 2016 22:13:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15947E67210BC509C66A5C87B69C0CY1PR0101MB1594_"

--_000_CY1PR0101MB15947E67210BC509C66A5C87B69C0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.


Thanks it worked for .iso files.


I have found that this really is a save for build time also.

________________________________
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Sent: Friday, December 16, 2016 6:22 PM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] live" image: iso and ext4 artifacts

On 15 December 2016 at 09:30, Takashi Matsuzawa <tmatsuzawa@uievolution.com=
<mailto:tmatsuzawa@uievolution.com>> wrote:
>
> Hello Yocto.
>
> I am trying x86-64 BSP image (based on jethro version).
> It has following root filesystem type, and it generats xxxx.hddimg file t=
hat I am using.
>
> > IMAGE_FSTYPES =3D "live"
>
> The issue is that in addition to xxxx.hddimg, it produces following image=
 files and it sometimes cause lack of disk space error on my build PC.
>
> > 2422489088 xxxx-intel-corei7-64-20161215004421.hddimg
> > 2402287616 xxxx-intel-corei7-64-20161215004421.iso
> > 2368578560 xxxx-intel-corei7-64-20161215004421.rootfs.ext4
>
> I do not need xxx.iso and xxxx.ext4 files as final output, though I under=
stand that xxxx.ext4 file may have been used to produce xxx.hddimg file.

I think you should be able to define NOISO=3D1.

The rootfs is indeed used to produce the actual images, you could delete it=
 afterwards... but before you spend valuable time writing shell scripts, co=
nsider a new SSD: 500GB is probably less than 150EUR by now.

Jussi

--_000_CY1PR0101MB15947E67210BC509C66A5C87B69C0CY1PR0101MB1594_
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
<p>Hello.</p>
<p><br>
</p>
<p>Thanks it worked for .iso files.</p>
<p><br>
</p>
<p>I have found that this really is a save for build time also.</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jussi Kukkonen &lt;ju=
ssi.kukkonen@intel.com&gt;<br>
<b>Sent:</b> Friday, December 16, 2016 6:22 PM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] live&quot; image: iso and ext4 artifacts</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">On 15 December 2016 at 09:30, Takashi Matsuzawa &lt;<a hre=
f=3D"mailto:tmatsuzawa@uievolution.com">tmatsuzawa@uievolution.com</a>&gt; =
wrote:<br>
&gt;<br>
&gt; Hello Yocto.<br>
&gt;<br>
&gt; I am trying x86-64 BSP image (based on jethro version).<br>
&gt; It has following root filesystem type, and it generats xxxx.hddimg fil=
e that I am using.<br>
&gt;<br>
&gt; &gt; IMAGE_FSTYPES =3D &quot;live&quot;<br>
&gt;<br>
&gt; The issue is that in addition to xxxx.hddimg, it produces following im=
age files and it sometimes cause lack of disk space error on my build PC.<b=
r>
&gt;<br>
&gt; &gt; 2422489088 xxxx-intel-corei7-64-20161215004421.hddimg<br>
&gt; &gt; 2402287616 xxxx-intel-corei7-64-20161215004421.iso<br>
&gt; &gt; 2368578560 xxxx-intel-corei7-64-20161215004421.rootfs.ext4<br>
&gt;<br>
&gt; I do not need xxx.iso and xxxx.ext4 files as final output, though I un=
derstand that xxxx.ext4 file may have been used to produce xxx.hddimg file.=
<br>
<br>
I think you should be able to define NOISO=3D1.
<div><br>
</div>
<div>The rootfs is indeed used to produce the actual images, you could dele=
te it afterwards... but before you spend valuable time writing shell script=
s, consider a new SSD: 500GB is probably less than 150&#8364; by now.</div>
<div>
<div><br>
</div>
</div>
<div>Jussi</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0101MB15947E67210BC509C66A5C87B69C0CY1PR0101MB1594_--
