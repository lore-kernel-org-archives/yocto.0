Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F6CE00804; Sun, 22 Nov 2015 05:25:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,TRACKER_ID
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.93 listed in list.dnswl.org]
Received: from nm17-vm2.bullet.mail.ne1.yahoo.com
	(nm17-vm2.bullet.mail.ne1.yahoo.com [98.138.91.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D82B2E00708
	for <yocto@yoctoproject.org>; Sun, 22 Nov 2015 05:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1448198741; bh=1KPUv0WnKtXzDXgoK503NsQW3KUItuzsdbqce8SyfdU=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=hRpHU3rRrq/J9v7NRWoFbd8onYsxhZ6tjtdDLGeSRP4/y3jd14GEEPD0SbGcQSKN5igRPfIsTaE+Yb9BS+fnxLxLpbhaQ83CIQelNBQJPRlshTQwnVhj/ZCP+4WsrDYaa9QPBqUzXGC9xTo4yIC5u3rgoHUBqCL2awFzYWfM4/fsld6ni01DZGizymjApLMveUPdpQlwb5yRxFY/9Dat1OYQFCjMh+V9AVKS5Rddh2I5rt5dZG3wVxLBrTVpgtEn+z2W1mgQsoKv18IcEpuvX01v1+WliN0GMsI40FgphsjWNot8rrUqvlGVjUE3hBEJ3AAj2+JLDTaIh+Ziy8A1Kw==
Received: from [98.138.226.179] by nm17.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Nov 2015 13:25:41 -0000
Received: from [98.138.89.240] by tm14.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Nov 2015 13:25:41 -0000
Received: from [127.0.0.1] by omp1013.mail.ne1.yahoo.com with NNFMP;
	22 Nov 2015 13:25:41 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 691027.98483.bm@omp1013.mail.ne1.yahoo.com
X-YMail-OSG: fTxNqRAVM1mud0HTMLu9KrTi4rYVTLFqosqTdZ6IvtG9BbVh0Nq9XeY0.DzcFiG
	Amvn9XhdE7xUs9w9TYaoJj5_4fs1A5APaMxh7H.K9ADW0DEnEBOeT4gh.EBPJfeVCew.awfEA37y
	7nuSvaWGzrXuHmD.HOushmnKlEwco5dj5kCcZP.Ut94l6LIYszj7IGjm8DZ3IHS94DsioXwudS.O
	Ejv5hed3teo5epk2YBqc2bMD5Q.lRr0a7VFpDRCVr6Dm05u6zW8EZFy7YeTwvrPY.UAuTTPLbNXu
	hVKYkpL.DhK_EegkCCzba_oNFOE81Bzls5RFmdeQ5f7RZxicpAkLtmHw25oQJcjEexXvR18iDJVO
	4Z0GHlCDR52WfL.FnqZLimJzRjApCOafhS7vDDUskTB1F5qmw7..BWxl.cBB5kDMvFa6T1KnOJ0c
	dFRkbmGNtnm2tXk5ZimzPhTKZ1l12t54MhtG_1ojsJsRONHOf7gfuvjKl.X.6AbbWnpkkDvmR5C6
	3XRYJjW2nug_JJXvLwg8QDD.QeY9ULz5LoKiXPEUjgcNZBQLLlC7lOzwme6T28IQ-
Received: by 98.138.105.240; Sun, 22 Nov 2015 13:25:41 +0000 
Date: Sun, 22 Nov 2015 13:25:21 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1946107905.7106433.1448198721454.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1946107905.7106433.1448198721454.JavaMail.yahoo.ref@mail.yahoo.com>
Subject: Problem using unix source in do_compile
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
X-List-Received-Date: Sun, 22 Nov 2015 13:25:46 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_7106432_2107819811.1448198721451"

------=_Part_7106432_2107819811.1448198721451
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,I am trying to use run the bitbake on=C2=A0 a recipe that in the do_=
compile uses the unix command source.This is the error that I am getting.=
=20
Log data follows:| DEBUG: Executing shell function do_compile
| /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea=
bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492: 112: /=
home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/=
fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492: source: n=
ot found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/vidal/PO=
KY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-ad=
i/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.25492)At github I have the or=
iginal inc file that is used by the recipe fpga-image-adi.bb=20
87a75850b6f36bf1f09ac0f071587629ba630c1ehttps://github.com/develone/zedboar=
d_yocto/commits/master/fpga-image.inc
I made some changes which allows me to=C2=A0 manually run the Xilinx comman=
ds and then re-run the bitbake fpga-image-adithe version=C2=A0 e199e9ce0806=
dc257fcafdda26de29f4cd443e24regards,
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_7106432_2107819811.1448198721451
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yiv2151318183"><div id=3D"yui_3_16_0_=
1_1448197577468_2612"><div id=3D"yui_3_16_0_1_1448197577468_2611" style=3D"=
color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue,=
 Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"><div id=3D"yi=
v2151318183yui_3_16_0_1_1448192853316_3007"><span id=3D"yui_3_16_0_1_144819=
7577468_2774">Hi all,</span></div><div id=3D"yiv2151318183yui_3_16_0_1_1448=
192853316_3014"><span id=3D"yiv2151318183yui_3_16_0_1_1448192853316_3015">I=
 am trying to use run the bitbake on&nbsp;</span> a recipe that in the do_c=
ompile uses the unix command source.</div><div id=3D"yui_3_16_0_1_144819757=
7468_2637"><div id=3D"yui_3_16_0_1_1448197577468_2766">This is the error th=
at I am getting. <br></div><div id=3D"yui_3_16_0_1_1448197577468_2773">Log =
data follows:</div>| DEBUG: Executing shell function do_compile<br class=3D=
"" id=3D"yui_3_16_0_1_1448197577468_2683">| /home/vidal/POKY/dora_build/pok=
y/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-adi/1.AUTOINC-3e6cf=
d4858-r0/temp/run.do_compile.25492: 112: /home/vidal/POKY/dora_build/poky/b=
uild/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-adi/1.AUTOINC-3e6cfd48=
58-r0/temp/run.do_compile.25492: source: not found<br class=3D"" id=3D"yui_=
3_16_0_1_1448197577468_2685">| WARNING: exit code 127 from a shell command.=
<br class=3D"" id=3D"yui_3_16_0_1_1448197577468_2687"><div id=3D"yui_3_16_0=
_1_1448197577468_2705" dir=3D"ltr">| ERROR: Function failed: do_compile (lo=
g file is located at /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboa=
rd-poky-linux-gnueabi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_co=
mpile.25492)</div></div><div dir=3D"ltr" id=3D"yiv2151318183yui_3_16_0_1_14=
48192853316_3016" class=3D"yiv2151318183signature"><div id=3D"yui_3_16_0_1_=
1448197577468_2905">At github I have the original inc file that is used by =
the recipe fpga-image-adi.bb <br></div><pre class=3D"" id=3D"yui_3_16_0_1_1=
448197577468_3152" style=3D"width: 1px; min-height: 1px; ; top: 5px;">87a75=
850b6f36bf1f09ac0f071587629ba630c1e</pre><div dir=3D"ltr" id=3D"yui_3_16_0_=
1_1448197577468_2909"><a id=3D"yui_3_16_0_1_1448197577468_2911" href=3D"htt=
ps://github.com/develone/zedboard_yocto/commits/master/fpga-image.inc">http=
s://github.com/develone/zedboard_yocto/commits/master/fpga-image.inc</a></d=
iv><div id=3D"yui_3_16_0_1_1448197577468_3040" dir=3D"ltr"><br></div><div i=
d=3D"yui_3_16_0_1_1448197577468_3039" dir=3D"ltr">I made some changes which=
 allows me to&nbsp; manually run the Xilinx commands and then re-run the bi=
tbake fpga-image-adi</div><div id=3D"yui_3_16_0_1_1448197577468_3255" dir=
=3D"ltr">the version&nbsp; e199e9ce0806dc257fcafdda26de29f4cd443e24</div><d=
iv id=3D"yui_3_16_0_1_1448197577468_3427" dir=3D"ltr">regards,</div><div id=
=3D"yui_3_16_0_1_1448197577468_3426" dir=3D"ltr"><br></div><div id=3D"yui_3=
_16_0_1_1448197577468_2769">Edward Vidal Jr. e-mail develone@sbcglobal.net =
915-595-1613</div></div></div></div></div></div></body></html>

------=_Part_7106432_2107819811.1448198721451--
