Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 591DCE009A5; Thu,  2 Feb 2017 16:24:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0073]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.109.114.65 listed in list.dnswl.org]
Received: from nm49.bullet.mail.bf1.yahoo.com (nm49.bullet.mail.bf1.yahoo.com
	[216.109.114.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1219FE00998
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 16:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1486081490; bh=JG1scEtrzOS3x1Ib5OGxdb77qiF0vA2BG2k8eYLJPEM=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=GJrp/SoRy1Qh1vjwhEL/xZp1y9/cc4EhfkRZV1J/pacewgope9dKpSDzOVfQrR1adDevOCgWfIGAUwz8xqoRthAgwFt3qTroD62GCjMgPSIfIA4dOarEMR+Dzi7lAUET6hB7yFSxFuOK3Ia/CWx2CRYiPjAvw2Q0TC2NVoYLZ6R2TpLcPBo3E46hp3MIqhOgh7d6jtRkHi9wS5vF/40baG+x+NNic2XEfmfGX9KBErQ8zkETGKur5mly58icjk178Z9OyYWBQzP1wdy5sg869/3XJwUX2GLzPGWBPqQkCyZihwOVPrZu/GFO8dIreV7XddhHooYNGERxBeQ0Et0vLA==
Received: from [66.196.81.171] by nm49.bullet.mail.bf1.yahoo.com with NNFMP;
	03 Feb 2017 00:24:50 -0000
Received: from [98.139.212.237] by tm17.bullet.mail.bf1.yahoo.com with NNFMP;
	03 Feb 2017 00:24:50 -0000
Received: from [127.0.0.1] by omp1046.mail.bf1.yahoo.com with NNFMP;
	03 Feb 2017 00:24:50 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 568490.58109.bm@omp1046.mail.bf1.yahoo.com
X-YMail-OSG: EKnKfyoVM1mVdQ6tJj.y8TgYNSFlXKivEomd7fjYXdXLx9tcwBiBsX4Evvv7POY
	x36apBdIknJToSN0LMzFs3cBEP1Dqt3p4E1Gbp5TLdDb6mKlLUVJQtKHaz80zbJf7fvfb2QaKwNx
	Bfg2hM.j01vktr6KaMh5sCsGiXJAuMb5rH0GKjsYSCgK9.BciVAEnlX9dNEwiFdVYQcCiWWDks85
	aZ9EO7fRdizmeUyaKuVyV58lXg7mPHiEAttXyiGCofM0ljDwwNO8ixqmxyDqNpZql7.IPkVXSBRE
	_w9nILvN4vNChj1LPS4_G4lyocBn0D_KV2BmnV3FUAkwRNamS96_ZkUku02FMYS8wrW7C5rtQswJ
	4NUaT.skVoSdWrNpg2PvdMR6NODHVagmBfmh5XV8U6kXBXsXXvQDNVz4Io6dnK1NJHow6g_X.wDe
	5eeiwHDfCp.GFII22BPLKIUxnGcLxmXu3IhRpUIUmF.6krXgjYGE1gmgX4JePIR0ACbrSUf9bw1L
	Z0A145WqtcXGwNKQ51ZAUialqc3VhAfG89AE2v0ejtcDiY0hY6xwByK5qxMMc
Received: from jws400182.mail.bf2.yahoo.com by
	sendmailws114.mail.bf1.yahoo.com;
	Fri, 03 Feb 2017 00:24:50 +0000; 1486081490.109
Date: Fri, 3 Feb 2017 00:24:27 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1282640427.5827.1486081467007@mail.yahoo.com>
MIME-Version: 1.0
References: <1282640427.5827.1486081467007.ref@mail.yahoo.com>
Subject: bare-metal RPi2B & RPI3B
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
X-List-Received-Date: Fri, 03 Feb 2017 00:24:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5826_1714667353.1486081467005"

------=_Part_5826_1714667353.1486081467005
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
Today I was able to get the lifting step in bare-metal.
With just 5 files on a RPi2B the lifting step was done.
bootcode.bin =C2=A0fixup.dat =C2=A0kernel7.img =C2=A0MyBitmap.bmp =C2=A0sta=
rt.elf
=C2=A0These files are found at=C2=A0https://github.com/develone/jpeg-2000-t=
est/tree/master/bare-metal/LibC/sd-card/RPi2
see=C2=A0https://github.com/develone/jpeg-2000-test/blob/master/bare-metal/=
LibC/LibC.pdf
This is the documentation to date.
Let me know if you have any questions.=C2=A0=C2=A0Edward Vidal Jr. e-mail d=
evelone@sbcglobal.net 915-595-1613

------=_Part_5826_1714667353.1486081467005
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div tabindex=3D"0" style=3D"outline: none 0px; =
display: table; width: 1041px; box-sizing: border-box; padding-top: 12px; p=
adding-left: 0px; font-family: &quot;Helvetica Neue&quot;, &quot;Segoe UI&q=
uot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 1=
3px;" id=3D"yui_3_16_0_ym19_1_1486081178386_3326"><div style=3D"display: ta=
ble-cell; width: auto; word-wrap: break-word; word-break: break-word;" id=
=3D"yui_3_16_0_ym19_1_1486081178386_3327"><div id=3D"yui_3_16_0_ym19_1_1486=
081178386_3328"><div id=3D"yui_3_16_0_ym19_1_1486081178386_3329"><div style=
=3D"font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Aria=
l, &quot;Lucida Grande&quot;, sans-serif; font-size: 16px;" id=3D"yui_3_16_=
0_ym19_1_1486081178386_3330"><div id=3D"yui_3_16_0_ym19_1_1486081178386_333=
1"><div id=3D"yui_3_16_0_ym19_1_1486081178386_3332"><div id=3D"yui_3_16_0_y=
m19_1_1486081178386_3333"><div id=3D"yui_3_16_0_ym19_1_1486081178386_3334">=
<span id=3D"yui_3_16_0_ym19_1_1486081178386_3335">Hello All,</span></div><d=
iv id=3D"yui_3_16_0_ym19_1_1486081178386_3336"><br id=3D"yui_3_16_0_ym19_1_=
1486081178386_3337"></div><div id=3D"yui_3_16_0_ym19_1_1486081178386_3338">=
<span id=3D"yui_3_16_0_ym19_1_1486081178386_3339">Today I was able to get t=
he lifting step in bare-metal.</span></div><div id=3D"yui_3_16_0_ym19_1_148=
6081178386_3340"><br id=3D"yui_3_16_0_ym19_1_1486081178386_3341"></div><div=
 id=3D"yui_3_16_0_ym19_1_1486081178386_3342"><span id=3D"yui_3_16_0_ym19_1_=
1486081178386_3343">With just 5 files on a RPi2B the lifting step was done.=
</span></div><div id=3D"yui_3_16_0_ym19_1_1486081178386_3344"><br id=3D"yui=
_3_16_0_ym19_1_1486081178386_3345"></div><div dir=3D"ltr" id=3D"yui_3_16_0_=
ym19_1_1486081178386_3346"><span id=3D"yui_3_16_0_ym19_1_1486081178386_3347=
">bootcode.bin &nbsp;fixup.dat &nbsp;kernel7.img &nbsp;MyBitmap.bmp &nbsp;s=
tart.elf<br id=3D"yui_3_16_0_ym19_1_1486081178386_3348"></span></div><div i=
d=3D"yui_3_16_0_ym19_1_1486081178386_3349"></div><div id=3D"yui_3_16_0_ym19=
_1_1486081178386_3350">&nbsp;</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1=
_1486081178386_3351">These files are found at&nbsp;<a rel=3D"nofollow" targ=
et=3D"_blank" href=3D"https://github.com/develone/jpeg-2000-test/tree/maste=
r/bare-metal/LibC/sd-card/RPi2" style=3D"color: rgb(25, 106, 212);" id=3D"y=
ui_3_16_0_ym19_1_1486081178386_3352">https://github.com/develone/jpeg-2000-=
test/tree/master/bare-metal/LibC/sd-card/RPi2</a></div><div id=3D"yui_3_16_=
0_ym19_1_1486081178386_3353"><br id=3D"yui_3_16_0_ym19_1_1486081178386_3354=
"></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1486081178386_3355"><span =
id=3D"yui_3_16_0_ym19_1_1486081178386_3356">see&nbsp;<a rel=3D"nofollow" ta=
rget=3D"_blank" href=3D"https://github.com/develone/jpeg-2000-test/blob/mas=
ter/bare-metal/LibC/LibC.pdf" style=3D"color: rgb(25, 106, 212);" id=3D"yui=
_3_16_0_ym19_1_1486081178386_3357">https://github.com/develone/jpeg-2000-te=
st/blob/master/bare-metal/LibC/LibC.pdf</a></span></div><div id=3D"yui_3_16=
_0_ym19_1_1486081178386_3358"><br id=3D"yui_3_16_0_ym19_1_1486081178386_335=
9"></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1486081178386_3360">This =
is the documentation to date.</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1=
_1486081178386_3361"><br id=3D"yui_3_16_0_ym19_1_1486081178386_3362"></div>=
<div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1486081178386_3363">Let me know if=
 you have any questions.&nbsp;</div></div></div></div></div></div></div></d=
iv></div><div></div><div id=3D"yui_3_16_0_ym19_1_1486081178386_3278">&nbsp;=
</div><div class=3D"signature" id=3D"yui_3_16_0_ym19_1_1486081178386_3277">=
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div></bo=
dy></html>

------=_Part_5826_1714667353.1486081467005--
