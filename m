Return-Path: <berlinvince@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DAA0E00929; Sat,  9 Apr 2016 09:41:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (berlinvince[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.136.217.44 listed in list.dnswl.org]
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4048]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from nm37-vm8.bullet.mail.gq1.yahoo.com
	(nm37-vm8.bullet.mail.gq1.yahoo.com [98.136.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4177BE0077E
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2016 09:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1460220065; bh=x9moAzP6ELeS9J5Z+zUVcyz7uUob4aabTvRsHBfeEc0=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=ufsS4CvOWIQ54lExUK82pmWQLcSY1n8oJTNdtFJoON0ZUvJKHTHjelYyZThVHpnHlzDQux+6oZOVbEPh5KP7li5c+Mhc8NOu9roUfdgsIOrTnAq7rn0h3KxCTgRM0aRmB5eYk8AP2rQO9zH4mrLRMPnA2qvo7JmR/R4keqWeChfMU3Ht2uJQHV6t9IDhg9SHp9ixI3iy5/HQm13v1Yo3j2VS/sj45rDKtesxSgo2NpFSRDYVf8NWbkVd6nmNCRKh9nc7EisbePr7I7T66wjRGUp8bmgMsXWpDYJnpGVQqr+wuldlcaszL4XcVAdd/lqG3HwOwJv8lkH37QSRkezcig==
Received: from [127.0.0.1] by nm37.bullet.mail.gq1.yahoo.com with NNFMP;
	09 Apr 2016 16:41:05 -0000
Received: from [216.39.60.183] by nm37.bullet.mail.gq1.yahoo.com with NNFMP;
	09 Apr 2016 16:38:04 -0000
Received: from [98.139.170.179] by tm19.bullet.mail.gq1.yahoo.com with NNFMP;
	09 Apr 2016 16:38:04 -0000
Received: from [98.139.212.217] by tm22.bullet.mail.bf1.yahoo.com with NNFMP;
	09 Apr 2016 16:38:04 -0000
Received: from [127.0.0.1] by omp1026.mail.bf1.yahoo.com with NNFMP;
	09 Apr 2016 16:38:04 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 378373.5442.bm@omp1026.mail.bf1.yahoo.com
X-YMail-OSG: hWTLBKoVM1kSY5UPjo5B6HcUwcJosvXbyXhm2dFF7yWbvXCvTvxsLStgwa5PUqL
	LsI7Y5r.qp7xj4UlVQsrBcg6d1PRI9acW.v5pEJvUEvwlpnIODsK9we82NFvS6LY32ZKKxuCtYPq
	uWjsyY.1FH0.mQjoTh.IFDL2ELJh8ch0JFp5VzufUZSVWj6MeR4AvniG8XCqhNRuvao92OgSJLp0
	dFmItE6at85VPA2NvOCg67o.6oiDyDOih5NQcgXeeKCs7DDLR.Fbij88qGbpvnpNKJhXq8AWp3P3
	QrdlDarnD3fUOyU2gdZC4bLoqaGQkBXkhvxZ0Rah63Zq9QDbLAp_zmAnJaSVSLPdpBVmr8tN5Pmh
	QLAmZ5uEr6EKzCQ9EbxwQ0CQsO_qoJMvaturNJE5VNq8BBrxxH5BRIy4ghPFpPstNW1bLKlB7FTh
	U6r_RAT0cNj7oKJdw9ll6EGL7KupWiCOWH0eaQ72besnz4IpxW68bkyk4OGeyEDQ6yahioUQ9Qtb
	fXg--
Received: by 76.13.27.70; Sat, 09 Apr 2016 16:38:03 +0000 
Date: Sat, 9 Apr 2016 16:38:03 +0000 (UTC)
From: Berlin Vince Joe V S <berlinvince@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1213150485.2252203.1460219883667.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1213150485.2252203.1460219883667.JavaMail.yahoo.ref@mail.yahoo.com>
X-Mailman-Approved-At: Sun, 10 Apr 2016 08:30:13 -0700
Subject: Yocto touch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Berlin Vince Joe V S <berlinvince@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Apr 2016 16:41:09 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2252202_585456337.1460219883665"

------=_Part_2252202_585456337.1460219883665
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

hi ,,I already posted my query on yocto mail but it won't get moderator approval I don't know why ? 
I am working on KONTRON SMARC(IMX6"Freescale"). I need to build the yocoto that can control all the devices that are connected to KONTRON but it won't. Now the problem is i am trying to interface with a capacitive touch screen (FT5x06 family) the Driver is already available but it is not working.
Any way I am really need help could you please tell me if i need to add a hardware driver individually what are the files I need to take care of .... but OS Run Good but touch is not responding!!!


Please help me guys 




------=_Part_2252202_585456337.1460219883665
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue-Light, Helvetica Neue Light, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, sans-serif;font-size:16px"><div id=3D"yui_3_16_=
0_ym19_1_1460219217569_2897">hi ,,</div><div id=3D"yui_3_16_0_ym19_1_146021=
9217569_2896" dir=3D"ltr">I already posted my query on yocto mail but it wo=
n't get moderator approval I don't know why ? <img data-id=3D"07657113-2643=
-2175-55a0-f9ceeb5ec832" src=3D"https://s.yimg.com/ok/u/assets/img/emoticon=
s/emo37.gif" alt=3D"*:-S worried" title=3D"*:-S worried" class=3D"yahoo-ign=
ore-inline-image"></div><div id=3D"yui_3_16_0_ym19_1_1460219217569_2908" di=
r=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1460219217569_2814" dir=3D=
"ltr">I am working on KONTRON SMARC(IMX6"Freescale"). I need to build the y=
ocoto that can control all the devices that are connected to KONTRON but it=
 won't. Now the problem is i am trying to interface with a capacitive touch=
 screen (FT5x06 family) the Driver is already available but it is not worki=
ng.</div><div id=3D"yui_3_16_0_ym19_1_1460219217569_2860" dir=3D"ltr"><br><=
/div><div id=3D"yui_3_16_0_ym19_1_1460219217569_2732" dir=3D"ltr">Any way I=
 am really need help could you please tell me if i need to add a hardware d=
river individually what are the files I need to take care of .... but OS Ru=
n Good but touch is not responding!!!</div><div id=3D"yui_3_16_0_ym19_1_146=
0219217569_2940" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1460219=
217569_2886" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_14602192175=
69_2889" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1460219217569_2=
888" dir=3D"ltr">Please help me guys <br></div><div id=3D"yui_3_16_0_ym19_1=
_1460219217569_2887" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_146=
0219217569_2537"><br></div><div id=3D"yui_3_16_0_ym19_1_1460219217569_2976"=
><br></div></div></body></html>

------=_Part_2252202_585456337.1460219883665--
