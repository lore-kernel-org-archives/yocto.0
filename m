Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9E2CE00BCC; Wed, 25 Nov 2015 19:29:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.249 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm27-vm5.bullet.mail.ne1.yahoo.com
	(nm27-vm5.bullet.mail.ne1.yahoo.com [98.138.91.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D71D3E00BBC
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 19:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1448508569; bh=aPK8BJiwOBF486Ukez5+X38tnwTjBEMm2VK82HYCzE0=;
	h=Date:From:Reply-To:To:Cc:Subject:References:From:Subject;
	b=DM6MYiCnHIQoQrUgREU7sbRGPP8aDsHgj1hqG2+fmu5XI17LbL+RFZz3Ma9o2+kgSttikurDpMLmFJTcX5DGhVPJnAtBA8QreLRN2zAT7YawHbj6iJezukChbfSkkxQDhYYlrKVeyiYcKSEPA/hwHw4w60u1n7evNmOPHhvcmxH/dPj8rbbdWxTT9oRN2B5d4jeNs3TjaDXC8KazIduyEVWl5+lFpGsTxsNwFYPlFANpyBhOIYlUIT5D2Sku9yAx8vNUYUGXcpyeVo+9v2h+cGllnrt9XYn7jdf5bMHsUHR9RgAOFbLBVZrU4I4/KH743DD0oO+wibXu9kFLxu1wEQ==
Received: from [98.138.101.130] by nm27.bullet.mail.ne1.yahoo.com with NNFMP;
	26 Nov 2015 03:29:29 -0000
Received: from [98.138.226.163] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	26 Nov 2015 03:29:29 -0000
Received: from [127.0.0.1] by omp1064.mail.ne1.yahoo.com with NNFMP;
	26 Nov 2015 03:29:29 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 709326.42191.bm@omp1064.mail.ne1.yahoo.com
X-YMail-OSG: P28hRx4VM1ls9eB5DvNIovO16G8LJie3MG_yv3quUBD3rfTArD6iKa7QPC3iQKP
	fuWEC0uIMTQzU0t.ydT7O95Y8brlocp6v6T.J6hz40SWAwkwjOQFz4n_QtmJRfLqzubIl0Zznao8
	7UhfkMpyPbo87aElkz7UNs6P58npMLkbPvQw1biW46gqKnl0kVAkCM4lEdPHx2g0F3QFTbngtbEH
	0G_uBKTEQrY_2RVkb_JklOaQ6uwoGiZf4_bIH_f8m2TC7iE_R3ZAYTgTIbq.U3dr9J5DJTPTwrnF
	aIVQpC1.j7RFrYSG.o_9pUOJgCDPU3.mfR62lJfgwZvxDkIyjW1ysj3v001CzXFqG6P0Z0_P5i9X
	rBSm3olBLhAwJ.tn8Wsz_4wBII7Ydx7vxIrXrKRdBrFxwYmweY4o0Jw7Aqz5mMQimS.aG.M5Ycm7
	wUiivr4R5DpyX6gMDvnvbRyPHx0GB1Fo7FtVo9cAkDQcQYr8_OVooXYuwH7vaEiDuVfi4YpDjNcD
	yyD4I9WpodsMGrK8g7b0YPSeUsBcqGLA-
Received: by 98.138.105.212; Thu, 26 Nov 2015 03:29:29 +0000 
Date: Thu, 26 Nov 2015 03:29:28 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1721359978.8800564.1448508568109.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1721359978.8800564.1448508568109.JavaMail.yahoo.ref@mail.yahoo.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Problem using unix source in do_compile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Nov 2015 03:29:31 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_8800563_959630735.1448508568106"

------=_Part_8800563_959630735.1448508568106
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,After a long time of trying to get Michael Looijmans fpga-image-a=
di.bb from meta-topic to work.=C2=A0 I wanted to share the fix.=C2=A0 I was=
 running Ubuntu 12.04.
which sh
/bin/sh
cd /bin
ls -la sh
lrwxrwxrwx 1 root root 4 May 16=C2=A0 2015 sh -> dash
ln -sf bash shls -la /bin/sh
lrwxrwxrwx 1 root root 4 Nov 25 17:28 /bin/sh -> bash
which gmake
/usr/bin/gmake
cd /usr/bin
ln -sf make gmake
ls -la /usr/bin/gmakeThanks for all the help.
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_8800563_959630735.1448508568106
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_1_1448507415362_4300"><spa=
n id=3D"yui_3_16_0_1_1448507415362_4420">Hello all,</span></div><div id=3D"=
yui_3_16_0_1_1448507415362_4423"><span id=3D"yui_3_16_0_1_1448507415362_442=
0">After a long time of trying to get Michael Looijmans fpga-image-adi.bb f=
rom meta-topic to work.&nbsp; I wanted to share the fix.&nbsp; I was runnin=
g Ubuntu 12.04.<br></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1448507=
415362_4469">which sh<br class=3D"" id=3D"yui_3_16_0_1_1448507415362_4501">=
/bin/sh<br class=3D"" id=3D"yui_3_16_0_1_1448507415362_4503">cd /bin<br cla=
ss=3D"" id=3D"yui_3_16_0_1_1448507415362_4505">ls -la sh<br class=3D"" id=
=3D"yui_3_16_0_1_1448507415362_4509">lrwxrwxrwx 1 root root 4 May 16&nbsp; =
2015 sh -&gt; dash<br class=3D"" id=3D"yui_3_16_0_1_1448507415362_4511">ln =
-sf bash sh</div><div id=3D"yui_3_16_0_1_1448507415362_4624" dir=3D"ltr">ls=
 -la /bin/sh<br class=3D"" id=3D"yui_3_16_0_1_1448507415362_4515">lrwxrwxrw=
x 1 root root 4 Nov 25 17:28 /bin/sh -&gt; bash<br><span id=3D"yui_3_16_0_1=
_1448507415362_4420"></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_14485=
07415362_4468"><span id=3D"yui_3_16_0_1_1448507415362_4420">which gmake<br =
class=3D"" id=3D"yui_3_16_0_1_1448507415362_4576">/usr/bin/gmake<br class=
=3D"" id=3D"yui_3_16_0_1_1448507415362_4580">cd /usr/bin<br class=3D"" id=
=3D"yui_3_16_0_1_1448507415362_4584">ln -sf make gmake<br class=3D"" id=3D"=
yui_3_16_0_1_1448507415362_4588">ls -la /usr/bin/gmake</span></div><div id=
=3D"yui_3_16_0_1_1448507415362_4657" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1=
448507415362_4420"></span></div><div id=3D"yui_3_16_0_1_1448507415362_4298"=
><div id=3D"yui_3_16_0_1_1448507415362_4641">Thanks for all the help.</div>=
<div id=3D"yui_3_16_0_1_1448507415362_4656"><br></div></div><div id=3D"yui_=
3_16_0_1_1448507415362_4290" class=3D"signature">Edward Vidal Jr. e-mail de=
velone@sbcglobal.net 915-595-1613</div></div></body></html>

------=_Part_8800563_959630735.1448508568106--
