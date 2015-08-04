Return-Path: <jbauer@blockwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CE9BE00AB4; Tue,  4 Aug 2015 13:11:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.203.187.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 481 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Aug 2015 13:11:39 PDT
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
	[173.203.187.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29378E00AA2
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 13:11:39 -0700 (PDT)
Received: from smtp25.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp25.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	3AB3A1803AF
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 16:03:38 -0400 (EDT)
Received: by smtp25.relay.iad3a.emailsrvr.com (Authenticated sender:
	jbauer-AT-blockwise.com) with ESMTPSA id F272C180219
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 16:03:37 -0400 (EDT)
X-Sender-Id: jbauer@blockwise.com
Received: from [192.168.1.126] (wsip-68-14-222-86.ph.ph.cox.net [68.14.222.86])
	(using TLSv1 with cipher AES256-SHA) by 0.0.0.0:465 (trex/5.4.2);
	Tue, 04 Aug 2015 20:03:38 GMT
From: "Justin Bauer" <jbauer@blockwise.com>
To: yocto@yoctoproject.org
Date: Tue, 04 Aug 2015 20:03:41 +0000
Message-Id: <em56b72e44-f32f-451c-9677-11ded6e322e9@jbauer-pc>
User-Agent: eM_Client/6.0.22344.0
Mime-Version: 1.0
Subject: Qt SDK Static Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Justin Bauer <jbauer@blockwise.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Aug 2015 20:11:41 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB975910B9-67E2-45B0-9F61-E60233C9114B"

--------=_MB975910B9-67E2-45B0-9F61-E60233C9114B
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I'm using Yocto 1.8 Fido and trying to build Qt SDK statically so that=20
my Qt application can be deployed as a single file. I've added
SDKIMAGE_FEATURES_append =3D " staticdev-pkgs'
to my local.conf before bitbaking the qt5 toolchain with no luck in=20
finding the static libraries
$ bitbake meta-toolchain-qt5

I'm using an imx6 processor and bsp similar to the Wandboard. I've tried=
=20
configuring Qt manually by downloading the Qt source files and using the=
=20
Yocto generated SDK, but ./configure fails due to the missing patches=20
required to build it. Is there something I am missing?

Thanks

--------=_MB975910B9-67E2-45B0-9F61-E60233C9114B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<STYLE id=3DeMClientCss>BLOCKQUOTE.cite {
	PADDING-LEFT: 10px; MARGIN-LEFT: 5px; BORDER-LEFT: #cccccc 1px solid; PADD=
ING-RIGHT: 0px; MARGIN-RIGHT: 0px
}
BLOCKQUOTE.cite2 {
	PADDING-TOP: 0px; PADDING-LEFT: 10px; MARGIN-LEFT: 5px; BORDER-LEFT: #cccc=
cc 1px solid; MARGIN-TOP: 3px; PADDING-RIGHT: 0px; MARGIN-RIGHT: 0px
}
.plain PRE {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; WHITE-SPACE: pre-wrap; FONT-WEIGH=
T: normal; FONT-STYLE: normal
}
.plain TT {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; WHITE-SPACE: pre-wrap; FONT-WEIGH=
T: normal; FONT-STYLE: normal
}
A IMG {
	BORDER-TOP: 0px; BORDER-RIGHT: 0px; BORDER-BOTTOM: 0px; BORDER-LEFT: 0px
}
#xb2eb7dea90964d61adc40136033ed562 {
	FONT-SIZE: 12pt; FONT-FAMILY: Tahoma
}
.plain PRE {
	FONT-SIZE: 12pt; FONT-FAMILY: Tahoma
}
.plain TT {
	FONT-SIZE: 12pt; FONT-FAMILY: Tahoma
}
BODY {
	FONT-SIZE: 12pt; FONT-FAMILY: Tahoma
}
</STYLE>
</HEAD>
<BODY>
<DIV>Hello,</DIV>
<DIV>&nbsp;</DIV>
<DIV>I'm using Yocto 1.8 Fido and trying to&nbsp;build Qt SDK statically=
 so that my Qt application can be deployed as a single file. I've added =
</DIV>
<DIV><PRE style=3D"BORDER-TOP: rgb(221,221,221) 1px solid; BORDER-RIGHT:=
 rgb(221,221,221) 1px solid; WORD-SPACING: 0px; BORDER-BOTTOM: rgb(221,221,=
221) 1px solid; TEXT-TRANSFORM: none; COLOR: black; PADDING-BOTTOM: 1em;=
 PADDING-TOP: 1em; FONT: 14px/1.3em monospace, Courier; PADDING-LEFT: 1em;=
 BORDER-LEFT: rgb(221,221,221) 1px solid; WIDOWS: 1; LETTER-SPACING: normal=
; PADDING-RIGHT: 1em; BACKGROUND-COLOR: rgb(249,249,249); TEXT-INDENT: 0px;=
 -webkit-text-stroke-width: 0px"><SPAN id=3Dxb2eb7dea90964d61adc40136033ed5=
62>SDKIMAGE_FEATURES_append =3D " staticdev-pkgs' </SPAN></PRE></DIV>
<DIV>to my local.conf before bitbaking the qt5 toolchain with no luck in=
 finding the static libraries&nbsp;<PRE style=3D"BORDER-TOP: rgb(221,221,22=
1) 1px solid; BORDER-RIGHT: rgb(221,221,221) 1px solid; WORD-SPACING: 0px;=
 BORDER-BOTTOM: rgb(221,221,221) 1px solid; TEXT-TRANSFORM: none; COLOR:=
 black; PADDING-BOTTOM: 1em; PADDING-TOP: 1em; FONT: 14px/1.3em monospace,=
 Courier; PADDING-LEFT: 1em; BORDER-LEFT: rgb(221,221,221) 1px solid; WIDOW=
S: 1; LETTER-SPACING: normal; PADDING-RIGHT: 1em; BACKGROUND-COLOR: rgb(249=
,249,249); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px">$ bitbake meta=
-toolchain-qt5</PRE></DIV>
<DIV>&nbsp;</DIV>
<DIV>I'm using an imx6 processor and bsp similar to the Wandboard. I've =
tried configuring Qt manually by downloading the Qt source files and using=
 the Yocto generated SDK, but&nbsp;./configure fails due to the missing =
patches required to build it. Is there something I am missing?</DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks</DIV></BODY></HTML>

--------=_MB975910B9-67E2-45B0-9F61-E60233C9114B--
