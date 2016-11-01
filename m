Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DCDCE00546; Tue,  1 Nov 2016 11:51:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.90.111 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC2S36.hotmail.com (snt004-omc2s36.hotmail.com
	[65.55.90.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF968E0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 11:51:05 -0700 (PDT)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com ([65.55.90.73])
	by SNT004-OMC2S36.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 1 Nov 2016 11:51:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=bx32ioiM7TiMbZbPrC6BqMRsgHojSyzgyEUuwRIpLM4=;
	b=HxjRHamekz+wYP2qg/hQKlXpJewoc4xBSL3lgnPfj1tQu/ITZr/3PwyBKvOaqPTviXhZv9rBvc3KJNKPgNsQ1+5IH2l6sHWfgjk5ukG4Y2rooX9wCWMQjxyaeJGOau92WFHyiHQJzW1AciANKg+eCcr3+hs7GpZcDp7LWtX1dBr9Y7OV9Dkpe77G76EKJDS7iIB9pNlIM9JxkGoTGUTXS/0LI/7vD+U7C4P9EwjlfB/JlHGbhBaqFTmR1coAuIgS997EN8vwp6BZC7oCnbDnM7QX8KOBYg3D3Ra7/d7jAlkUS04oj+SrzjRg0aPfou2AshIBXOPL0H2G4fTwlHzUmA==
Received: from VE1EUR03FT045.eop-EUR03.prod.protection.outlook.com
	(10.152.18.51) by VE1EUR03HT209.eop-EUR03.prod.protection.outlook.com
	(10.152.18.230) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.693.6;
	Tue, 1 Nov 2016 18:51:03 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.18.53) by
	VE1EUR03FT045.mail.protection.outlook.com (10.152.19.51) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.693.6 via Frontend Transport; Tue, 1 Nov 2016 18:51:02 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0693.009; Tue, 1 Nov 2016 18:51:02 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Thread-Topic: [yocto] [meta-raspberrypi3] Failed to build
	gstreamer1.0-plugins-bad with minimal configuration
Thread-Index: AQHSMJBg9ydpOCl7TkG+Rozu7cOdiaC8zkCAgACPo/SAApN3AIAEijLI
Date: Tue, 1 Nov 2016 18:51:02 +0000
Message-ID: <HE1PR01MB18836A737A5FA50A13C1A9E192A10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161027212610.33d285b0@nuc.betafive.co.uk>
	<20161027221841.69b62716@nuc.betafive.co.uk>
	<DB5PR01MB188012CEF43ADE751770A39D92AD0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>,
	<20161029221306.73a1ab9d@nuc.betafive.co.uk>
In-Reply-To: <20161029221306.73a1ab9d@nuc.betafive.co.uk>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [tp/VNY9nlKEeDB2a5pie8d3H+jbyLBHi]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT209;
	7:XTCxlbEC/tHBASHdhStuEhjgF2eo112HeOsGXDsIZoM6qaNGEELHjndmpDeWPYyYXNtUWMQttRw9zJEZJ5pVHLiP0VLH+uvNtUqEwXN6TnSduWdFnZqHbX7QUU3vFBVVB2EVs1zdW+TummfH3OB/mKJiSAPOggCt8NYO1Gkp2sRbNZKvW/tjPSFNVS6cqmU0qoLd0XUGebot4OJuEauP+b3PKxAlhcZNRtJuurfVx3u0IwowyTOmeFXIGDXCtuCf45dDIEG3iSWlnopfulVKQ3BsPDAWO9z0Fw4nrFjr9lyqE/Sl3t+mYwla5hezDwERxRg1cubW0Mq2wkExgVypxDLAIP8OyEzaBEvuvIq+/rY=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR03HT209;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 9da4d771-4c3d-4856-23ee-08d402880768
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR03HT209;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR03HT209; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT209; 
x-forefront-prvs: 01136D2D90
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2016 18:51:02.6873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT209
X-OriginalArrivalTime: 01 Nov 2016 18:51:05.0082 (UTC)
	FILETIME=[E63BB5A0:01D23470]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Tue, 01 Nov 2016 18:51:10 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18836A737A5FA50A13C1A9E192A10HE1PR01MB1883eurp_"

--_000_HE1PR01MB18836A737A5FA50A13C1A9E192A10HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,


Thanks for your feedback.

Unfortunately I was suspecting such a problem.


Regarding the config below, is it possible to install the "dispmanx"compone=
nt to activate EGL ?


What recipe provides dispmanx ?


Karim




________________________________
De : Paul Barker <paul@paulbarker.me.uk>
Envoy=E9 : samedi 29 octobre 2016 23:13
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [meta-raspberrypi3] Failed to build gstreamer1.0-plugin=
s-bad with minimal configuration

On Fri, 28 Oct 2016 05:56:07 +0000
Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Hi Paul,
>
>
> Thanks a lot for your feedback and analysis.
>
> I think it sohuld compile without X11 and Wayland as it's a very
> common configuration
>
> for RaspberryPi being used with Qt5.x applications.
>
>
> Do you think it's bug related to Gstreamer1.0 configuration ?
>
>
>
> Karim
>

The do_configure log for gstreamer1.0-plugins-bad does contain:

        configure: WARNING: X or Wayland is required for OpenGL support

configure.ac in gst-plugins-bad-1.8.3 contains:

    dnl EGL
    if test "x$HAVE_EGL" =3D "xno"; then
      if test "x$HAVE_GL" =3D "xno"; then
        AC_MSG_WARN([Building requires either EGL or GLX for OpenGL support=
])
      fi
    else
      if test "x$NEED_EGL" !=3D "xno"; then
        if test "x$HAVE_WINDOW_WAYLAND" =3D "xyes" -o "x$HAVE_WINDOW_X11" =
=3D "xyes" -o "x$HAVE_WINDOW_DISPMANX" =3D "xyes"; then
          GL_LIBS=3D"$GL_LIBS -lEGL $EGL_LIBS"
          GL_CFLAGS=3D"$GL_CFLAGS $EGL_CFLAGS"
          USE_EGL=3Dyes
        fi
      fi
    fi
    ;;

In config.status EGL_LIBS contains "-lbcm_host -lvcos
-lvchiq_arm", however GL_LIBS only contains "-lGLESv2". So I'd say
EGL_LIBS is not being included in to GL_LIBS because
HAVE_WINDOW_WAYLAND, HAVE_WINDOW_X11 and HAVE_WINDOW_DISPMAX are all
false.

GL_LIBS is used in gst-libs/gst/gl/Makefile.am so that's the variable
the libraries should be listed in.

I'd say that's an upstream issue - it really looks like it's demanding
X or Wayland to be enabled for OpenGL to work. I'd suggest raising the
issue upsteream.

Thanks,
Paul Barker

--_000_HE1PR01MB18836A737A5FA50A13C1A9E192A10HE1PR01MB1883eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Hi Paul,</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Thanks for your feedback.&nbsp;</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Unfortunately I was suspecting such a problem.</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Regarding the config below, is it possible to install the&nbsp;&quot;dispma=
nx&quot;component to activate EGL ?</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
What recipe provides dispmanx ?</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Karim</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<br>
<p></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Paul Barker &lt;paul=
@paulbarker.me.uk&gt;<br>
<b>Envoy=E9 :</b> samedi 29 octobre 2016 23:13<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [meta-raspberrypi3] Failed to build gstreamer1.0=
-plugins-bad with minimal configuration</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText">On Fri, 28 Oct 2016 05:56:07 &#43;0000<br>
Karim ATIKI &lt;karim_atiki@hotmail.com&gt; wrote:<br>
<br>
&gt; Hi Paul,<br>
&gt; <br>
&gt; <br>
&gt; Thanks a lot for your feedback and analysis.<br>
&gt; <br>
&gt; I think it sohuld compile without X11 and Wayland as it's a very<br>
&gt; common configuration<br>
&gt; <br>
&gt; for RaspberryPi being used with Qt5.x applications.<br>
&gt; <br>
&gt; <br>
&gt; Do you think it's bug related to Gstreamer1.0 configuration ?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Karim<br>
&gt; <br>
<br>
The do_configure log for gstreamer1.0-plugins-bad does contain:<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; configure: WARNING: X or Wayland=
 is required for OpenGL support<br>
<br>
configure.ac in gst-plugins-bad-1.8.3 contains:<br>
<br>
&nbsp;&nbsp;&nbsp; dnl EGL<br>
&nbsp;&nbsp;&nbsp; if test &quot;x$HAVE_EGL&quot; =3D &quot;xno&quot;; then=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if test &quot;x$HAVE_GL&quot; =3D &quot;xno&=
quot;; then<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AC_MSG_WARN([Building requires e=
ither EGL or GLX for OpenGL support])<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<br>
&nbsp;&nbsp;&nbsp; else<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if test &quot;x$NEED_EGL&quot; !=3D &quot;xn=
o&quot;; then<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if test &quot;x$HAVE_WINDOW_WAYL=
AND&quot; =3D &quot;xyes&quot; -o &quot;x$HAVE_WINDOW_X11&quot; =3D &quot;x=
yes&quot; -o &quot;x$HAVE_WINDOW_DISPMANX&quot; =3D &quot;xyes&quot;; then<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GL_LIBS=3D&quot;$GL_=
LIBS -lEGL $EGL_LIBS&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GL_CFLAGS=3D&quot;$G=
L_CFLAGS $EGL_CFLAGS&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USE_EGL=3Dyes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<br>
&nbsp;&nbsp;&nbsp; fi<br>
&nbsp;&nbsp;&nbsp; ;;<br>
<br>
In config.status EGL_LIBS contains &quot;-lbcm_host -lvcos<br>
-lvchiq_arm&quot;, however GL_LIBS only contains &quot;-lGLESv2&quot;. So I=
'd say<br>
EGL_LIBS is not being included in to GL_LIBS because<br>
HAVE_WINDOW_WAYLAND, HAVE_WINDOW_X11 and HAVE_WINDOW_DISPMAX are all<br>
false.<br>
<br>
GL_LIBS is used in gst-libs/gst/gl/Makefile.am so that's the variable<br>
the libraries should be listed in.<br>
<br>
I'd say that's an upstream issue - it really looks like it's demanding<br>
X or Wayland to be enabled for OpenGL to work. I'd suggest raising the<br>
issue upsteream.<br>
<br>
Thanks,<br>
Paul Barker<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR01MB18836A737A5FA50A13C1A9E192A10HE1PR01MB1883eurp_--
