Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA03E00894; Wed, 21 Jan 2015 00:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-ut.atk.com (mx-ut.atk.com [192.107.250.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6CC1E0086E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 00:07:17 -0800 (PST)
Received: from unknown (HELO UT40SVEH4.atk.com) ([146.168.70.141])
	by mx-ut.atk.com with ESMTP; 21 Jan 2015 02:01:41 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.34]) by UT40SVEH4.atk.com
	([146.168.70.141]) with mapi id 14.03.0174.001;
	Wed, 21 Jan 2015 01:07:17 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: Yong Li <sdliyong@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Cannot build the core-image-directfb for
Thread-Index: AQHQNU9dzZ9UQLEIAkuY22qIArPby5zKN+u2
Date: Wed, 21 Jan 2015 08:07:15 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808@UT40SVCWEM001.atk.com>
References: <CADO9-pdVciMmmOJda=YE75JLzBOSrJ8ZjmSggEZcAp7a5ye6AQ@mail.gmail.com>
In-Reply-To: <CADO9-pdVciMmmOJda=YE75JLzBOSrJ8ZjmSggEZcAp7a5ye6AQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: Cannot build the core-image-directfb for
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
X-List-Received-Date: Wed, 21 Jan 2015 08:07:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808UT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808UT40SVCWEM001at_
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Try adding a space between the quotation mark and directfb:

DISTRO_FEATURES_append =3D " directfb sysvinit"

Thomas
________________________________
From: Yong Li<mailto:sdliyong@gmail.com>
Sent: =FD1/=FD21/=FD2015 9:53 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Cc: Yong Li<mailto:sdliyong@gmail.com>
Subject: [yocto] Cannot build the core-image-directfb for

I can build the core-minimal or X11 image,  but I cannot build the directfb=
 image, below is the error message, any suggestions?

bitbake core-image-directfb -v
Loading cache: 100% |######################################################=
###########################################################################=
####| ETA:  00:00:00
Loaded 1313 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
####| Time: 00:00:00
Parsing of 915 .bb files complete (914 cached, 1 parsed). 1313 targets, 112=
 skipped, 0 masked, 0 errors.
ERROR: Nothing PROVIDES 'core-image-directfb'
ERROR: core-image-directfb was skipped: missing required distro feature 'di=
rectfb' (not in DISTRO_FEATURES)

I have modified the conf/local.conf file as below:
DISTRO_FEATURES_append =3D "directfb sysvinit"
DISTRO_FEATURES_remove =3D "x11 wayland"

MACHINE ??=3D "intel-corei7-64"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808UT40SVCWEM001at_
Content-Type: text/html; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
256">
</head>
<body>
<div>
<div style=3D"font-size:11pt; font-family:Calibri,sans-serif">Try adding a =
space between the quotation mark and directfb:<br>
<br>
DISTRO_FEATURES_append =3D &quot; directfb sysvinit&quot;<br>
<br>
Thomas</div>
</div>
<div dir=3D"ltr">
<hr>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">From:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif"><a hr=
ef=3D"mailto:sdliyong@gmail.com">Yong Li</a></span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">Sent:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif">=FD1/=
=FD21/=FD2015 9:53 AM</span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">To:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif"><a hr=
ef=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">Cc:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif"><a hr=
ef=3D"mailto:sdliyong@gmail.com">Yong Li</a></span><br>
<span style=3D"font-size:11pt; font-family:Calibri,sans-serif; font-weight:=
bold">Subject:
</span><span style=3D"font-size:11pt; font-family:Calibri,sans-serif">[yoct=
o] Cannot build the core-image-directfb for</span><br>
<br>
</div>
<div>
<div dir=3D"ltr">
<div>I can build the core-minimal or X11 image, &nbsp;but I cannot build th=
e directfb image, below is the error message, any suggestions?</div>
<div><br>
</div>
<div>bitbake core-image-directfb -v</div>
<div>Loading cache: 100% |#################################################=
###########################################################################=
#########| ETA: &nbsp;00:00:00</div>
<div>Loaded 1313 entries from dependency cache.</div>
<div>Parsing recipes: 100% |###############################################=
###########################################################################=
#########| Time: 00:00:00</div>
<div>Parsing of 915 .bb files complete (914 cached, 1 parsed). 1313 targets=
, 112 skipped, 0 masked, 0 errors.</div>
<div>ERROR: Nothing PROVIDES 'core-image-directfb'</div>
<div>ERROR: core-image-directfb was skipped: missing required distro featur=
e 'directfb' (not in DISTRO_FEATURES)</div>
<div><br>
</div>
<div>I have modified the conf/local.conf file as below:</div>
<div>
<div>DISTRO_FEATURES_append =3D &quot;directfb sysvinit&quot;</div>
<div>DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;</div>
</div>
<div><br>
</div>
<div>MACHINE ??=3D &quot;intel-corei7-64&quot;<br>
</div>
</div>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808UT40SVCWEM001at_--
