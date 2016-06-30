Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 635A2E00E6E; Thu, 30 Jun 2016 02:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0116.outbound.protection.outlook.com [157.56.112.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2500E00D53
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 02:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=n33GD/UNYkeyi6e91v/4AxXsBizpINk5L2/p2oCYqB4=;
	b=HFlX3urPM2WRVkvxUU7O6twE2fxaM5EW9hXnOz+Mzc3tqoAVvIrWwKNlo4qbhJi6MBTE7nJ2/rM3v2LehHw0Cpzojmx0OuZdFl+V8gE3qSKJMJqLEX4csVakK1lVqqGlx8MQTl+gO6zLjKx1TctMdZKJTQDglutJ1EuBLKOuluU=
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com (10.164.41.11) by
	DB5PR06MB1575.eurprd06.prod.outlook.com (10.164.41.13) with Microsoft
	SMTP Server (TLS) id 15.1.528.8; Thu, 30 Jun 2016 09:24:48 +0000
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) by
	DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) with mapi id
	15.01.0534.010; Thu, 30 Jun 2016 09:24:47 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: Chris Z. <winotu.email@gmail.com>
Thread-Topic: [yocto] Package build files not getting copied to sysroots
	directory
Thread-Index: AQHR0qPFx36SXbSwl0SHZWZBztB2eqABt2yAgAAFZQQ=
Date: Thu, 30 Jun 2016 09:24:47 +0000
Message-ID: <DB5PR06MB1573FF041E808C44AD4C8417CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
References: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>,
	<CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
In-Reply-To: <CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [25.164.34.4]
x-ms-office365-filtering-correlation-id: 08791ac0-ca95-4408-1230-08d3a0c8617f
x-microsoft-exchange-diagnostics: 1; DB5PR06MB1575;
	6:FTSdk2uZCW3zKLTmESp2xjiiBXKDjxDAeGE8EddjCWjf/Ta6XCUeoevdVA6ONMk4w7z/GYAxPYR+OxSxx/zgymBD79nvSPkLVmNKGaxv0KKLWimlw57QE9HCeUmLNOxD1LeA/urp9Wl9lqTt6k3zgJnAZQ1YdAeFTg6+OqH6csGFTsULWvER2BmSigfIW0Y2ZxQYffEBZ6hTmZTEz6dJH8GAqOBlSWhI2Vtwkea5C5Hx1wtGPxJfygiJZ2khcJsH8gURih1TzwjDl3ut+o7fyrdlJ3+Dat/+xfUB/PX5xZI9008r31Lj6o5ptC5kdaBOepEKSKUIrExftzL+sglC5w==;
	5:iz4Dy3f0PyIWPsx4f46ISVHo6z9sFWZRvtIijYR7NRPY2i3p2jE3zdOGMquWS1yHiRTa1viGY8VB+vF6Zv615fdVJWnGMQ1seS9zCKyRAEHUJ/EkRqerscUrjnmPXhmkvnfw6Vb0VSTLrORUswbEmA==;
	24:er5QUIXVrExz4/2Q7SnM7eot5oAwMCzQsQnSTQZ7yKAAWNzm6kV5S6tFxe/Jywiy4bP9Xa817CyL0SeY0Y1wz0PELQNjrBkLk4NeGEFXVDs=;
	7:uQQCL2+fUAscC+SB9xrvV5yzH8Vn+bzkf/SnMaPcMHTDWB2Q7KL9cn/5fWu6ok3Dw+ahlOGJOtTV1PCQtg9yDL6olKF83SyIa1tKAblIUePu59FgPbgAUGIwErtkWe1XR6XZaSkdz93XAF3X7MpUCKTWgDeVsHvOIZolIhPYcSyj0q8EFc79bA/ITe9PO0weUa7MSTcJwUbAHIKebQhwWzwg7cieHu5iq0+6AI8PNiA5V/Ktwk+DbWoaaGsGqNZ2
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR06MB1575;
x-microsoft-antispam-prvs: <DB5PR06MB1575E43F5DE873C161CB01D0CF240@DB5PR06MB1575.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(208512329853888);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB5PR06MB1575; BCL:0; PCL:0; RULEID:; SRVR:DB5PR06MB1575; 
x-forefront-prvs: 0989A7979C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(377454003)(189002)(199003)(24454002)(57704003)(8676002)(189998001)(2900100001)(2950100001)(10400500002)(81166006)(19580405001)(81156014)(4326007)(19580395003)(2906002)(97736004)(77096005)(54356999)(16236675004)(5002640100001)(110136002)(33656002)(76176999)(7906003)(50986999)(15975445007)(19627405001)(6116002)(8936002)(102836003)(3846002)(106116001)(76576001)(106356001)(9686002)(105586002)(122556002)(92566002)(19625215002)(101416001)(3280700002)(586003)(3660700001)(3900700001)(7696003)(87936001)(5003600100003)(74316001)(68736007)(7846002)(7736002)(66066001)(86362001)(19617315012)(554374003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR06MB1575;
	H:DB5PR06MB1573.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2016 09:24:47.8452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1575
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 09:24:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR06MB1573FF041E808C44AD4C8417CF240DB5PR06MB1573eurp_"

--_000_DB5PR06MB1573FF041E808C44AD4C8417CF240DB5PR06MB1573eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am looking into the files you have suggested. Meanwhile I forgot to menti=
on in my original post that when I build the dependent package(dlt-daemon),=
 I have been getting this QA warning. I have not done any changes in the or=
iginal .bb file that comes with the meta-ivi.


ERROR: QA Issue: dlt-daemon: Files/directories were installed but not shipp=
ed in any package:
  /usr/lib
  /usr/lib/libdlt.so
  /usr/lib/libdlt.so.2.11.1
  /usr/lib/libdlt.so.2
  /usr/lib/pkgconfig
  /usr/lib/.debug
  /usr/lib/pkgconfig/automotive-dlt.pc
  /usr/lib/.debug/libdlt.so.2.11.1
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
dlt-daemon: 8 installed and not shipped files. [installed-vs-shipped]
WARNING: QA Issue: /usr/bin/dlt-example-user-func_dlt-daemon contained in p=
ackage dlt-daemon requires libdlt.so.2()(64bit), but no providers found in =
its RDEPENDS [file-rdeps]



Thanks & Regards,

Hari Prasath


________________________________
From: Chris Z. <winotu.email@gmail.com>
Sent: Thursday, June 30, 2016 2:34 PM
To: Gujulan Elango, Hari Prasath (H.)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Package build files not getting copied to sysroots dir=
ectory

Hi,

Check what files are added to the package of your distribution (deb, ipk )
Variable FILES_ defines what files should be added to the packages ( -dev, =
-dbg, -doc ) which are installed in sysroot.

bitbake.conf specify default files which should be packed.

You can check bitbake -e <you_package> &> output.log , for FILES_  variable=
 and check what files are search and where.

Probably FILES_${PN} +=3D  would help. But that would be mi first try to fi=
nd root cause.

Also check temp/ log.do_   files


On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango, Hari Prasath (H.) <hgujula=
n@visteon.com<mailto:hgujulan@visteon.com>> wrote:

Hello


I am trying to integrate the meta-ivi layer into my distribution. When I am=
 trying to build the audiomanager, some dependent package do_configure() fa=
ils. It looks for some packageconfig files(.pc) file in the tmp/sysroots/<m=
achine_specifid_directory>, but this file is not there.


When I look into the dependent package build directory in tmp/work/<arch-sp=
ecific_dir>/<package_name>/, I am able to see the files in the build output=
(libraries and .pc files). Any reason why it is not getting copied into tmp=
/sysroots/ directory ? Do I need specify it somewhere explicitly do get thi=
s done ?


Thanks & Regards,

Hari Prasath

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_DB5PR06MB1573FF041E808C44AD4C8417CF240DB5PR06MB1573eurp_
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
<p>Hi,</p>
<p><br>
</p>
<p>I am looking into the files you have suggested. Meanwhile I forgot to me=
ntion in my original post that when I build the dependent package(dlt-daemo=
n), I have been getting this QA warning. I have not done any changes in the=
 original .bb file that comes with
 the meta-ivi.</p>
<p><br>
</p>
<p></p>
<div>ERROR: QA Issue: dlt-daemon: Files/directories were installed but not =
shipped in any package:<br>
&nbsp; /usr/lib<br>
&nbsp; /usr/lib/libdlt.so<br>
&nbsp; /usr/lib/libdlt.so.2.11.1<br>
&nbsp; /usr/lib/libdlt.so.2<br>
&nbsp; /usr/lib/pkgconfig<br>
&nbsp; /usr/lib/.debug<br>
&nbsp; /usr/lib/pkgconfig/automotive-dlt.pc<br>
&nbsp; /usr/lib/.debug/libdlt.so.2.11.1<br>
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.<br>
dlt-daemon: 8 installed and not shipped files. [installed-vs-shipped]<br>
WARNING: QA Issue: /usr/bin/dlt-example-user-func_dlt-daemon contained in p=
ackage dlt-daemon requires libdlt.so.2()(64bit), but no providers found in =
its RDEPENDS [file-rdeps]<br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Chris Z. &lt;winotu=
.email@gmail.com&gt;<br>
<b>Sent:</b> Thursday, June 30, 2016 2:34 PM<br>
<b>To:</b> Gujulan Elango, Hari Prasath (H.)<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Package build files not getting copied to sysro=
ots directory</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div>
<div>
<div>
<div>
<div>Hi,<br>
<br>
</div>
Check what files are added to the package of your distribution (deb, ipk ) =
<br>
</div>
Variable FILES_ defines what files should be added to the packages ( -dev, =
-dbg, -doc ) which are installed in sysroot.<br>
<br>
</div>
bitbake.conf specify default files which should be packed.<br>
<br>
</div>
You can check bitbake -e &lt;you_package&gt; &amp;&gt; output.log , for FIL=
ES_&nbsp; variable and check what files are search and where.<br>
<br>
</div>
Probably FILES_${PN} &#43;=3D&nbsp; would help. But that would be mi first =
try to find root cause.<br>
<br>
</div>
Also check temp/ log.do_&nbsp;&nbsp; files<br>
<div>
<div>
<div>
<div><br>
</div>
</div>
</div>
</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango,=
 Hari Prasath (H.)
<span dir=3D"ltr">&lt;<a href=3D"mailto:hgujulan@visteon.com" target=3D"_bl=
ank">hgujulan@visteon.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-size:12pt; color:#000000; background-color:#ffffff; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello</p>
<p><br>
</p>
<p>I am trying to integrate the meta-ivi layer into my distribution. When I=
 am trying to build the audiomanager, some dependent package do_configure()=
 fails. It looks for some packageconfig files(.pc) file in the tmp/sysroots=
/&lt;machine_specifid_directory&gt;, but
 this file is not there.</p>
<p><br>
</p>
<p>When I look into the dependent package build directory in tmp/work/&lt;a=
rch-specific_dir&gt;/&lt;package_name&gt;/, I am able to see the files in t=
he build output(libraries and .pc files). Any reason why it is not getting =
copied into tmp/sysroots/ directory ? Do I need
 specify it somewhere explicitly do get this done ?<br>
</p>
<p><br>
</p>
<div>Thanks &amp; Regards,
<div style=3D"font-size:12pt; color:#000000; background-color:#ffffff; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB5PR06MB1573FF041E808C44AD4C8417CF240DB5PR06MB1573eurp_--
