Return-Path: <MICHAEL.L.MORGAN@ucdenver.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB596E008EA; Wed,  1 Apr 2015 16:57:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Apr 2015 16:57:45 PDT
Received: from v-fe26-out.ucdenver.edu (v-fe26-out.ucdenver.edu
	[140.226.190.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7206DE0056E
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 16:57:45 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.11,507,1422946800"; d="scan'208,217";a="14343324"
Received: from unknown (HELO ex2010hyb2.ucdenver.pvt) ([140.226.231.45])
	by v-fe26-out.ucdenver.edu with ESMTP/TLS/AES128-SHA;
	01 Apr 2015 17:56:42 -0600
Received: from EX2010HYB1.ucdenver.pvt (2002:8ce2:e72c::8ce2:e72c) by
	ex2010hyb2.ucdenver.pvt (2002:8ce2:e72d::8ce2:e72d) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Wed, 1 Apr 2015 17:56:42 -0600
Received: from na01-bl2-obe.outbound.protection.outlook.com (207.46.163.205)
	by webmail.ucdenver.edu (140.226.231.44) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Wed, 1 Apr 2015 17:56:41 -0600
Received: from BLUPR0501MB868.namprd05.prod.outlook.com (10.141.254.151) by
	BLUPR0501MB868.namprd05.prod.outlook.com (10.141.254.151) with
	Microsoft SMTP
	Server (TLS) id 15.1.118.21; Wed, 1 Apr 2015 23:56:40 +0000
Received: from BLUPR0501MB868.namprd05.prod.outlook.com ([10.141.254.151]) by
	BLUPR0501MB868.namprd05.prod.outlook.com ([10.141.254.151]) with
	mapi id 15.01.0118.022; Wed, 1 Apr 2015 23:56:40 +0000
From: "Morgan, Michael L" <MICHAEL.L.MORGAN@UCDENVER.EDU>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Package Question
Thread-Index: AQHQbNaYg5YnYq1eYEyOSlHO//7aBQ==
Date: Wed, 1 Apr 2015 23:56:40 +0000
Message-ID: <1427932646175.17870@UCDENVER.EDU>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [71.237.118.8]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0501MB868;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(52314003)(2900100001)(107886001)(102836002)(62966003)(16236675004)(77156002)(19580395003)(77096005)(46102003)(2656002)(86362001)(88552001)(122556002)(2351001)(221733001)(90282001)(87936001)(229853001)(66066001)(117636001)(75432002)(2501003)(40100003)(92566002)(110136001)(19625215002)(50986999)(54356999)(36756003)(89122001)(99286002)(19627405001)(106116001)(450100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR0501MB868;
	H:BLUPR0501MB868.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <BLUPR0501MB868A4DF3128AF05B11D12E4ABF30@BLUPR0501MB868.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BLUPR0501MB868; BCL:0;
	PCL:0; RULEID:; SRVR:BLUPR0501MB868; 
x-forefront-prvs: 053315510E
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2015 23:56:40.3060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 563337ca-a517-421a-aae0-1aa5b414fd7f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0501MB868
X-OriginatorOrg: ucdenver.edu
Subject: Package Question
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
X-List-Received-Date: Wed, 01 Apr 2015 23:57:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_142793264617517870UCDENVEREDU_"

--_000_142793264617517870UCDENVEREDU_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

All:

As I'm sure almost all of these missives start out, I'm very new to this. H=
owever, I have scoured the documentation and either what I'm explicitly loo=
king for isn't there or I'm missing it. But anyway, here goes:

I have been able to create images using poky/HOB  and run said images  (on =
both qemu and Virtual Box) with no problem. However, when using HOB to incl=
ude a package (gcc, for example) it does not show up in the image. That is =
to say, when I run the image on qemu or virtual box, and invoke 'gcc' at th=
e command prompt, the shell returns "command not found". I have no doubt th=
at I'm missing something here, but as I said, I cannot figure out what it i=
s.


my qemu invocation, on Debian, is "runqemu image_name.bin rootfs.rootfs.ext=
3".


Thanks for any assistance.


Mike


--_000_142793264617517870UCDENVEREDU_
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
<p>All:<br>
</p>
<p>As I'm sure almost all of these missives start out, I'm very new to this=
. However, I have scoured the documentation and either what I'm explicitly =
looking for isn't there or I'm missing it. But anyway, here goes:<br>
</p>
<p>I have been able to create images using poky/HOB&nbsp;&nbsp;and run said=
 images &nbsp;(on both qemu and Virtual Box) with no problem. However, when=
 using HOB to include a package (gcc, for example) it does not show up in t=
he image. That is to say, when I run the image
 on qemu or virtual box, and invoke 'gcc' at the command prompt, the shell =
returns &quot;command not found&quot;. I have no doubt that I'm missing som=
ething here, but as I said, I cannot figure out what it is.&nbsp;<br>
</p>
<p><br>
</p>
<p>my qemu invocation, on Debian, is &quot;runqemu image_name.bin rootfs.ro=
otfs.ext3&quot;.&nbsp;<br>
</p>
<p><br>
</p>
<p>Thanks for any assistance.&nbsp;<br>
</p>
<p><br>
</p>
<p>Mike&nbsp;<br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_142793264617517870UCDENVEREDU_--
