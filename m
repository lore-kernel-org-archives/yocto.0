Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 633FDE00D08; Fri, 24 Jun 2016 01:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [82.130.75.186 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from edge10.ethz.ch (edge10.ethz.ch [82.130.75.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF6DEE0073D
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 01:48:11 -0700 (PDT)
Received: from CAS22.d.ethz.ch (172.31.51.112) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Fri, 24 Jun 2016 10:48:02 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS22.d.ethz.ch ([fe80::dd0e:466a:b055:c090%10]) with mapi id
	14.03.0266.001; Fri, 24 Jun 2016 10:48:09 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Powerpc64e6500 missing altivec option
Thread-Index: AdHN9NkD/u2crsRSQHKmRtWNRpKACg==
Date: Fri, 24 Jun 2016 08:48:08 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F4DBBB@MBX214.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Powerpc64e6500 missing altivec option
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
X-List-Received-Date: Fri, 24 Jun 2016 08:48:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F4DBBBMBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F4DBBBMBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi!

When I built only poky, I had
  TUNE_FEATURES     =3D "m64 fpu-hard e6500 altivec"
and everything was built with -maltivec
and environment-setup-ppc64e6500-poky-linux contained -m altivec:
  export CC=3D"powerpc64-poky-linux-gcc  -mhard-float -m64 -mcpu=3De6500 -m=
altivec --sysroot=3D$SDKTARGETSYSROOT"


It seems that since I added openembedded layers:
    /home/anicic/yocto-2.1-all/poky/meta-openembedded/meta-oe \
    /home/anicic/yocto-2.1-all/poky/meta-openembedded/meta-python \
    /home/anicic/yocto-2.1-all/poky/meta-openembedded/meta-networking \
build reports
  TUNE_FEATURES     =3D "m64 fpu-hard e6500 altivec"
but it builds without altivec,
and environment-setup-ppc64e6500-poky-linux does not have -maltivec any mor=
e:
  export CC=3D"powerpc64-poky-linux-gcc  -mhard-float -m64 -mcpu=3De6500 --=
sysroot=3D$SDKTARGETSYSROOT"


Where does it get disabled, and how to enable it again?

Damir


--_000_DB23C91B06C303459B24BC3208AF424A20F4DBBBMBX214dethzch_
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
10pt;">Hi!<br>
<br>
When I built only poky, I had<br>
&nbsp; TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 fpu-hard e6500 a=
ltivec&quot;<br>
and everything was built with -maltivec<br>
and environment-setup-ppc64e6500-poky-linux contained -m altivec:<br>
&nbsp; export CC=3D&quot;powerpc64-poky-linux-gcc&nbsp; -mhard-float -m64 -=
mcpu=3De6500 -maltivec --sysroot=3D$SDKTARGETSYSROOT&quot;<br>
<br>
<br>
It seems that since I added openembedded layers:<br>
&nbsp;&nbsp;&nbsp; /home/anicic/yocto-2.1-all/poky/meta-openembedded/meta-o=
e \<br>
&nbsp;&nbsp;&nbsp; /home/anicic/yocto-2.1-all/poky/meta-openembedded/meta-p=
ython \<br>
&nbsp;&nbsp;&nbsp; /home/anicic/yocto-2.1-all/poky/meta-openembedded/meta-n=
etworking \<br>
build reports<br>
&nbsp; TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 fpu-hard e6500 a=
ltivec&quot;<br>
but it builds without altivec,<br>
and environment-setup-ppc64e6500-poky-linux does not have -maltivec any mor=
e:<br>
&nbsp; export CC=3D&quot;powerpc64-poky-linux-gcc&nbsp; -mhard-float -m64 -=
mcpu=3De6500 --sysroot=3D$SDKTARGETSYSROOT&quot;<br>
<br>
<br>
Where does it get disabled, and how to enable it again?<br>
<br>
Damir<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F4DBBBMBX214dethzch_--
