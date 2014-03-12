Return-Path: <Kevin.Evans@rigaku.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80402E00A5C
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 08:51:30 -0700 (PDT)
Received: from [216.82.253.163:2469] by server-15.bemta-7.messagelabs.com id
	A6/18-26584-18280235; Wed, 12 Mar 2014 15:51:29 +0000
X-Env-Sender: Kevin.Evans@rigaku.com
X-Msg-Ref: server-16.tower-166.messagelabs.com!1394639488!17455628!1
X-Originating-IP: [74.51.198.13]
X-StarScan-Received: 
X-StarScan-Version: 6.9.16; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 9194 invoked from network); 12 Mar 2014 15:51:29 -0000
Received: from unknown (HELO mail.rigaku.com) (74.51.198.13)
	by server-16.tower-166.messagelabs.com with AES128-SHA encrypted SMTP;
	12 Mar 2014 15:51:29 -0000
Received: from RAC-BCS-EXCHG1.rac.local ([169.254.2.14]) by
	RAC-BCS-EXCHG2.rac.local ([169.254.1.176]) with mapi id 14.03.0123.003;
	Wed, 12 Mar 2014 10:51:28 -0500
From: Kevin Evans <Kevin.Evans@rigaku.com>
To: David Welch <djwelch666@gmail.com>
Thread-Topic: [yocto] SysVinit and psplash
Thread-Index: Ac88fCa/B+HQ9fpmRNOjeINccM9WnABhMosAAAJsRjE=
Date: Wed, 12 Mar 2014 15:51:27 +0000
Message-ID: <498C38F5E894A4499E84980494E5D95C1AA62D3C@RAC-BCS-EXCHG1.rac.local>
References: <498C38F5E894A4499E84980494E5D95C1AA628E3@RAC-BCS-EXCHG1.rac.local>,
	<CACP9YJeqSeDm0WPOo2_1eqL+OJ7rrkR3=5oRoxkYnSf_3+NsBQ@mail.gmail.com>
In-Reply-To: <CACP9YJeqSeDm0WPOo2_1eqL+OJ7rrkR3=5oRoxkYnSf_3+NsBQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.200.0.49]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 Mar 2014 12:03:59 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SysVinit and psplash
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
X-List-Received-Date: Wed, 12 Mar 2014 15:51:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_498C38F5E894A4499E84980494E5D95C1AA62D3CRACBCSEXCHG1rac_"

--_000_498C38F5E894A4499E84980494E5D95C1AA62D3CRACBCSEXCHG1rac_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

David,

Thanks for that pointer.  I updated my u-boot ini file to pass the console=
=3Dtty2 to the kernel command line and it took care of the problem.

-Kevin
________________________________
From: David Welch [djwelch666@gmail.com]
Sent: Wednesday, March 12, 2014 4:39 AM
To: Kevin Evans
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] SysVinit and psplash

I too found this to be a problem.  Setting console=3Dtty2 made the messages=
 come out on another console and not visible on the screen.


On Mon, Mar 10, 2014 at 4:19 PM, Kevin Evans <Kevin.Evans@rigaku.com<mailto=
:Kevin.Evans@rigaku.com>> wrote:
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

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_498C38F5E894A4499E84980494E5D95C1AA62D3CRACBCSEXCHG1rac_
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
10pt;">David,<br>
<br>
Thanks for that pointer.&nbsp; I updated my u-boot ini file to pass the con=
sole=3Dtty2 to the kernel command line and it took care of the problem.<br>
<br>
-Kevin<br>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF629509"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> David Welch [djwelch666@gmail.com]<=
br>
<b>Sent:</b> Wednesday, March 12, 2014 4:39 AM<br>
<b>To:</b> Kevin Evans<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] SysVinit and psplash<br>
</font><br>
</div>
<div></div>
<div>
<div dir=3D"ltr">I too found this to be a problem. &nbsp;Setting console=3D=
tty2 made the messages come out on another console and not visible on the s=
creen.</div>
<div class=3D"gmail_extra"><br>
<br>
<div class=3D"gmail_quote">On Mon, Mar 10, 2014 at 4:19 PM, Kevin Evans <sp=
an dir=3D"ltr">
&lt;<a href=3D"mailto:Kevin.Evans@rigaku.com" target=3D"_blank">Kevin.Evans=
@rigaku.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div>
<div style=3D"direction:ltr; font-size:10pt; font-family:Tahoma">Hello all:=
<br>
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
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
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

--_000_498C38F5E894A4499E84980494E5D95C1AA62D3CRACBCSEXCHG1rac_--
