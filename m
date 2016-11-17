Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5DDDE00874; Thu, 17 Nov 2016 13:05:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.136.216.207 listed in list.dnswl.org]
Received: from nm36-vm4.bullet.mail.gq1.yahoo.com
	(nm36-vm4.bullet.mail.gq1.yahoo.com [98.136.216.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A90A3E0080D
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 13:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1479416706; bh=zAsy2HVW5ZgT1PTIRyGd/j6MwecyKizGtXgrrKr/C7s=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=gA4cCEHH4eD1aVpzQxoZBKRT9ieMsNrSQuZyQmueHfzOH43HYtci7gUUF/fKTMETcEzXSb4tZML1gmdEGWYINdBSiabbOKorq4nG0I1GtE/GBJ6VzUf+AmqZKn7ykfMgbRgU8LwtlO8PkUvqWtFaAsQkVuWTc4tciiLCbL1se2yuBPEgn9bNEn81kQBRVjOExo1q45WB5CVyPj4/oHc68SluOoDN0xvNXfNE2gU1qZIZx1AX4yG+8copYEkc2w7DnT+6Od86ZfJfSkm2lFg/nE8JgmkJ134VFNWYx5T619jgnpuVAr3sz/EWkfBMwtCTmIxcfegKRikfFjUNxVKbiQ==
Received: from [127.0.0.1] by nm36.bullet.mail.gq1.yahoo.com with NNFMP;
	17 Nov 2016 21:05:06 -0000
Received: from [216.39.60.180] by nm36.bullet.mail.gq1.yahoo.com with NNFMP;
	17 Nov 2016 21:02:13 -0000
Received: from [98.139.214.32] by tm16.bullet.mail.gq1.yahoo.com with NNFMP;
	17 Nov 2016 21:02:12 -0000
Received: from [98.139.215.229] by tm15.bullet.mail.bf1.yahoo.com with NNFMP;
	17 Nov 2016 21:02:12 -0000
Received: from [127.0.0.1] by omp1069.mail.bf1.yahoo.com with NNFMP;
	17 Nov 2016 21:02:12 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 815519.73455.bm@omp1069.mail.bf1.yahoo.com
X-YMail-OSG: l_rj5vUVM1lhnLQNm1oN4Iz84EKuNhKm_NHqffqnai2oGIF2LFIrxJgn6BgSHKi
	D7aYhuwE0.CM_33nGCJxLs8oCmCVPT.PkJsJiShaaiQzWim9WXnzUgU4GArICqtTUrjneRTyEC_t
	U.HAxJGnkW67Kbg_4YDnvgC2T5b6cfAkGlIdCrF6.Dr0wwBZfcyuAGHw61ppt8mYJCAhSXIyVutd
	hZtNUm6CPJHvjq2vutCinPIIAunXR0h6pcprxNXn_KnXvruu8jxsV25jywxD0xHCNszBrHDIK8Gb
	O9.hbWO00uPdndYSRXQtaSMPJ9RSFC2gEmhK4y_C0YALMcTNjalI1_FH3ofqHlwbFASwKMZOLiZj
	wKjEe5K7.6OHNsarDNFnz6lTmj178ECjmVBROzx7N6u0HpbLTLPyFUyQwj.xhAJuvMYwPz_.0ssj
	sIX8wl0k7f70YoxiH7tOxIwd3k5bUof5z0UUku0D9bHfb1.GpIO0hrcFKH6KA_xmi6RQaHFKXzum
	5kS0Dlgoch9k408Q47LrSy.AqqBLW4vTr1nhf0buGZpDR56fUCeTNpylwKcsU74HAtHVzv8lBGOT
	P81jTEQqMkw--
Received: from jws400160.mail.bf2.yahoo.com by
	sendmailws146.mail.bf1.yahoo.com;
	Thu, 17 Nov 2016 21:02:12 +0000; 1479416532.404
Date: Thu, 17 Nov 2016 21:01:33 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1211982120.2332029.1479416493434@mail.yahoo.com>
MIME-Version: 1.0
References: <1211982120.2332029.1479416493434.ref@mail.yahoo.com>
Subject: raspberry pi gtkmm_3.0.bb
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
X-List-Received-Date: Thu, 17 Nov 2016 21:05:11 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2332028_1079405294.1479416493434"

------=_Part_2332028_1079405294.1479416493434
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
I working with software that needs gtkmm_3.0.
Poky 2.2 provides gtkmm_2.24.3 in=20
meta-oe/reipes-gnome/gtk+
I used recipetool and created gtkmm_3.0.bb
I modified some lines and was able to get the
recipe to fetch, unpack, and configure.
when it tries to compile I am getting errors.

Makefile:748: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/t=
mp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0/build'
Makefile:534: recipe for target 'all' failed
make: *** [all] Error 2
ERROR: Function failed: do_compile (log file is located at /home/vidal/wkg/=
yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnu=
eabi/gtkmm/3.0-r0/temp/log.do_compile.17760)

The recipe that I am trying to create is=20
https://gist.github.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad7d

Any an all help is appreciated.

Thanks in advance =C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-=
595-1613

------=_Part_2332028_1079405294.1479416493434
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_ym19_1_1479405533865_24530=
" dir=3D"ltr"><span id=3D"yui_3_16_0_ym19_1_1479405533865_26126">Hello All,=
<br id=3D"yui_3_16_0_ym19_1_1479405533865_26169">I working with software th=
at needs gtkmm_3.0.<br id=3D"yui_3_16_0_ym19_1_1479405533865_26170">Poky 2.=
2 provides gtkmm_2.24.3 in <br id=3D"yui_3_16_0_ym19_1_1479405533865_26171"=
>meta-oe/reipes-gnome/gtk+<br id=3D"yui_3_16_0_ym19_1_1479405533865_26172">=
I used recipetool and created gtkmm_3.0.bb<br id=3D"yui_3_16_0_ym19_1_14794=
05533865_26173">I modified some lines and was able to get the<br id=3D"yui_=
3_16_0_ym19_1_1479405533865_26174">recipe to fetch, unpack, and configure.<=
br id=3D"yui_3_16_0_ym19_1_1479405533865_26175">when it tries to compile I =
am getting errors.<br id=3D"yui_3_16_0_ym19_1_1479405533865_26176"><br id=
=3D"yui_3_16_0_ym19_1_1479405533865_26177">Makefile:748: recipe for target =
'all-recursive' failed<br id=3D"yui_3_16_0_ym19_1_1479405533865_26178">make=
[1]: *** [all-recursive] Error 1<br id=3D"yui_3_16_0_ym19_1_1479405533865_2=
6179">make[1]: Leaving directory '/home/vidal/wkg/yocto/RaspberryPi2/poky/b=
uild/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0/build'<=
br id=3D"yui_3_16_0_ym19_1_1479405533865_26180">Makefile:534: recipe for ta=
rget 'all' failed<br id=3D"yui_3_16_0_ym19_1_1479405533865_26181">make: ***=
 [all] Error 2<br id=3D"yui_3_16_0_ym19_1_1479405533865_26182">ERROR: Funct=
ion failed: do_compile (log file is located at /home/vidal/wkg/yocto/Raspbe=
rryPi2/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3=
.0-r0/temp/log.do_compile.17760)<br id=3D"yui_3_16_0_ym19_1_1479405533865_2=
6183"><br id=3D"yui_3_16_0_ym19_1_1479405533865_26184">The recipe that I am=
 trying to create is <br id=3D"yui_3_16_0_ym19_1_1479405533865_26185">https=
://gist.github.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad7d<br id=3D"yui_3=
_16_0_ym19_1_1479405533865_26186"><br id=3D"yui_3_16_0_ym19_1_1479405533865=
_26187">Any an all help is appreciated.<br id=3D"yui_3_16_0_ym19_1_14794055=
33865_26188"><br id=3D"yui_3_16_0_ym19_1_1479405533865_26189">Thanks in adv=
ance </span></div><div id=3D"yui_3_16_0_ym19_1_1479405533865_26074">&nbsp;<=
/div><div class=3D"signature" id=3D"yui_3_16_0_ym19_1_1479405533865_26114">=
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div></bo=
dy></html>

------=_Part_2332028_1079405294.1479416493434--
