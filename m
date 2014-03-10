Return-Path: <Kevin.Evans@rigaku.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF378E00AEC
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 09:19:26 -0700 (PDT)
Received: from [216.82.250.83:33206] by server-14.bemta-12.messagelabs.com id
	A4/43-27892-E06ED135; Mon, 10 Mar 2014 16:19:26 +0000
X-Env-Sender: Kevin.Evans@rigaku.com
X-Msg-Ref: server-12.tower-120.messagelabs.com!1394468363!8191535!4
X-Originating-IP: [74.51.198.13]
X-StarScan-Received: 
X-StarScan-Version: 6.9.16; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 5253 invoked from network); 10 Mar 2014 16:19:25 -0000
Received: from unknown (HELO mail.rigaku.com) (74.51.198.13)
	by server-12.tower-120.messagelabs.com with AES128-SHA encrypted SMTP;
	10 Mar 2014 16:19:25 -0000
Received: from RAC-BCS-EXCHG1.rac.local ([169.254.2.14]) by
	RAC-BCS-EXCHG2.rac.local ([169.254.1.176]) with mapi id 14.03.0123.003;
	Mon, 10 Mar 2014 11:19:08 -0500
From: Kevin Evans <Kevin.Evans@rigaku.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SysVinit and psplash
Thread-Index: Ac88fCa/B+HQ9fpmRNOjeINccM9WnA==
Date: Mon, 10 Mar 2014 16:19:07 +0000
Message-ID: <498C38F5E894A4499E84980494E5D95C1AA628E3@RAC-BCS-EXCHG1.rac.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.200.0.49]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 11 Mar 2014 08:08:14 -0700
Subject: SysVinit and psplash
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
X-List-Received-Date: Mon, 10 Mar 2014 16:19:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_498C38F5E894A4499E84980494E5D95C1AA628E3RACBCSEXCHG1rac_"

--_000_498C38F5E894A4499E84980494E5D95C1AA628E3RACBCSEXCHG1rac_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all:

I am using yocto denzil release with an IGEPv2 (beagle board clone). It app=
ears the init is ignoring my log level being set to quite and prints the ru=
n level 5 messages and they appear between the splash screen and xorg start=
ing.  I am not sure of the best way to suppress the text being displayed he=
re. So far I have used:

1. Set loglevel=3Dquiet in kernel commnand line (this silences the logging =
before pslash but not after.
2. Set the USE_VT build variable to "0". this only disabled logins through =
the VT.

Not sure what to try now. Any help would be appreciated.

--_000_498C38F5E894A4499E84980494E5D95C1AA628E3RACBCSEXCHG1rac_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello all:<br>
<br>
I am using yocto denzil release with an IGEPv2 (beagle board clone). It app=
ears the init is ignoring my log level being set to quite and prints the ru=
n level 5 messages and they appear between the splash screen and xorg start=
ing.&nbsp; I am not sure of the best
 way to suppress the text being displayed here. So far I have used:<br>
<br>
1. Set loglevel=3Dquiet in kernel commnand line (this silences the logging =
before pslash but not after.<br>
2. Set the USE_VT build variable to &quot;0&quot;. this only disabled login=
s through the VT.<br>
<br>
Not sure what to try now. Any help would be appreciated.<br>
</div>
</body>
</html>

--_000_498C38F5E894A4499E84980494E5D95C1AA628E3RACBCSEXCHG1rac_--
