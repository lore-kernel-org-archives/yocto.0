Return-Path: <pirmin.weisser@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7749BE00E7A; Fri,  2 Sep 2016 02:47:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.7 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	MISSING_MIMEOLE, RCVD_IN_DNSWL_NONE,
	TRACKER_ID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.81 listed in list.dnswl.org]
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0362]
	*  1.9 MISSING_MIMEOLE Message has X-MSMail-Priority, but no X-MimeOLE
X-Greylist: delayed 574 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Sep 2016 02:47:42 PDT
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E67BAE00E41
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 02:47:42 -0700 (PDT)
Received: from fwd37.aul.t-online.de (fwd37.aul.t-online.de [172.20.27.137])
	by mailout03.t-online.de (Postfix) with SMTP id DBFD4422C733
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 11:38:05 +0200 (CEST)
Received: from spica06.aul.t-online.de
	(GuUWvTZC8h7btKEtY4-+jgtsMe5QSzUEiPLIxzcfESZd3xGG714-BDYoRtQh85tZL9@[172.20.102.124])
	by fwd37.aul.t-online.de
	with esmtp id 1bfkv4-1OlCj20; Fri, 2 Sep 2016 11:37:54 +0200
Received: from 62.154.245.74:62921 by cmpweb01.aul.t-online.de with HTTP/1.1
	(Lisa V4-4-6-0.13572 on API V5-0-4-0)
Received: from 172.20.102.131:31528 by spica06.aul.t-online.de:8080;
	Fri, 2 Sep 2016 11:37:54 +0200 (MEST)
Date: Fri, 2 Sep 2016 11:37:54 +0200 (MEST)
From: "pirmin.weisser@t-online.de" <pirmin.weisser@t-online.de>
Sender: "pirmin.weisser@t-online.de" <pirmin.weisser@t-online.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1472809074511.4904346.d7b67376df474a2c9d5e3203df7516240d1e1763@spica.telekom.de>
MIME-Version: 1.0
Importance: normal
X-MSMail-Priority: normal
X-Priority: 3
X-UMS: email
X-ID: GuUWvTZC8h7btKEtY4-+jgtsMe5QSzUEiPLIxzcfESZd3xGG714-BDYoRtQh85tZL9@t-dialin.net
X-TOI-MSGID: e108ca23-4965-4204-96e6-c97f32c3581e
X-Mailman-Approved-At: Fri, 02 Sep 2016 09:13:56 -0700
Subject: yocto web-kiosk project matchbox-keyboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "pirmin.weisser@t-online.de" <pirmin.weisser@t-online.de>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Sep 2016 09:47:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5674100_1108947303.1472809074513"

------=_Part_5674100_1108947303.1472809074513
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello yocto people,
=20
I started with yocto/poky to build my own linux distro for an embedded=20
system. I started with poky alone, then added the web-kiosk metalayer but=
=20
haven't seen the automatic popup of the virtual keyboard working on my=20
target system.
I was hoping that you can give me some hint or direct me to someone who can=
=20
help.
=20
I have been able to successfully build and run that yocto project=20
(web-kiosk) for my embedded board (iMX6 based with Touch display).
=20
One function is not working on the target system: The automatic popup of=20
the virtual keyboard when I select a text entry field (e.g. by touching=20
it).
Display and Touch are working fine, internet connection via Ethernet is=20
there and the midori browser comes up automatically.
If I start the matchbox-keyboard manually with
>Display=3D:0.0 matchbox-keyboard
the keboard windows comes up and it works as expected: I can use the touch=
=20
screen to enter text.
=20
So it is just the automatic popup that does not work.
Can you give me a hint where to look at or how to fix this ?
Or a link to documentation or forum about how to link the virtual keyboard=
=20
to the text entry fields in the browser?
=20
Ps command indicates that
matchbox-windows-manager
and
matchbox-keyboard -d
are running
=20
Any hint would be appreciated.
Thank you very much for your help.
=20
Pirmin
=20
=EF=BB=BF

<div style=3D\"border:0;border-bottom:1px solid black;width:100%;\">=20
Gesendet mit Telekom Mail <https://t-online.de/email-kostenlos> - kostenlos=
=20
und sicher f=C3=BCr alle!

------=_Part_5674100_1108947303.1472809074513
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8"/><title></title></head><body><p style=3D"margin: 0px 5px 0px 0px;=
">Hello yocto people,</p>
<p style=3D"margin: 0px 5px 0px 0px;">&nbsp;</p>
<p style=3D"margin: 0px 5px 0px 0px;">I started with yocto/poky to build my=
 own linux distro for an embedded system. I started with poky alone, then a=
dded the web-kiosk metalayer but haven't seen the automatic popup of the vi=
rtual keyboard working on my target system.</p>
<p style=3D"margin: 0px 5px 0px 0px;">I was hoping that you can give me som=
e hint or direct me to someone who can help.</p>
<p style=3D"margin: 0px 5px 0px 0px;">&nbsp;</p>
<p style=3D"margin: 0px 5px 0px 0px;">I have been able to successfully buil=
d and run that yocto project (web-kiosk) for my embedded board (iMX6 based =
with Touch display).</p>
<p style=3D"margin: 0px 5px 0px 0px;">&nbsp;</p>
<p style=3D"margin: 0px 5px 0px 0px;">One function is not working on the ta=
rget system: The automatic popup of the virtual keyboard when I select a te=
xt entry field (e.g. by touching it).</p>
<p style=3D"margin: 0px 5px 0px 0px;">Display and Touch are working fine, i=
nternet connection via Ethernet is there and the midori browser comes up au=
tomatically.</p>
<p style=3D"margin: 0px 5px 0px 0px;">If I start the matchbox-keyboard manu=
ally with</p>
<p style=3D"margin: 0px 5px 0px 0px;">&gt;Display=3D:0.0 matchbox-keyboard<=
/p>
<p style=3D"margin: 0px 5px 0px 0px;">the keboard windows comes up and it w=
orks as expected: I can use the touch screen to enter text.</p>
<p style=3D"margin: 0px 5px 0px 0px;">&nbsp;</p>
<p style=3D"margin: 0px 5px 0px 0px;">So it is just the automatic popup tha=
t does not work.</p>
<p style=3D"margin: 0px 5px 0px 0px;">Can you give me a hint where to look =
at or how to fix this ?</p>
<p style=3D"margin: 0px 5px 0px 0px;">Or a link to documentation or forum a=
bout how to link the virtual keyboard to the text entry fields in the brows=
er?</p>
<p style=3D"margin: 0px 5px 0px 0px;">&nbsp;</p>
<p style=3D"margin: 0px;">Ps command indicates that</p>
<p style=3D"margin: 0px;">matchbox-windows-manager</p>
<p style=3D"margin: 0px;">and</p>
<p style=3D"margin: 0px;">matchbox-keyboard -d</p>
<p style=3D"margin: 0px;">are running</p>
<p style=3D"margin: 0px;">&nbsp;</p>
<p style=3D"margin: 0px;">Any hint would be appreciated.</p>
<p style=3D"margin: 0px;">Thank you very much for your help.</p>
<p style=3D"margin: 0px;">&nbsp;</p>
<p style=3D"margin: 0px;">Pirmin</p>
<p style=3D"margin: 0px;">&nbsp;</p>=EF=BB=BF<br/><br/><div style=3D\"borde=
r:0;border-bottom:1px solid black;width:100%;\">&nbsp;</div><font style=3D"=
font-family: Arial, Helvetica, sans-serif; font-size: 10pt">Gesendet mit <a=
 href=3D"https://t-online.de/email-kostenlos">Telekom Mail</a> - kostenlos =
und sicher f=C3=BCr alle!</font></body></html>

------=_Part_5674100_1108947303.1472809074513--
