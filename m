Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B43E00B34; Thu, 30 Jul 2015 15:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm23-vm6.bullet.mail.ne1.yahoo.com
	(nm23-vm6.bullet.mail.ne1.yahoo.com [98.138.91.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10871E00B18
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 15:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438294785; bh=1qMpGAY107LxSgWg1rHXKE89v1N0hf0r1DApGr+Gp/E=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=W+4DUnuM5WsQpeAb8GR3+/OX8YphxEEDzZ3XpuOup0aEw7XNXHXRicjvzsrrH6kPIY6CZ+PvvGnI+LS6G/VzgDMpn1vybHpviLvx9V8TSQjyz4JWUztGzhhjCDy3jPV7W7yfclUfPVzhLBJ5noojXsOeRHncVC4EB0w24me+gKXG96nyOv/zHuloU0Sk5+GgPTeE9qPuccTBzC1PYmZm9KMgDscgyiXvOSiQRBF3RzOpNPyarOfPKLIRI9Qr7nxBNrT2a+CN+D+x4DegJmtl8jz+KOGK0wMH4hVX0I0qtLSzWiu5TfA3pb0Ul4LQirL/Y/Apv4zasAt3BYldFTfAXA==
Received: from [98.138.226.179] by nm23.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2015 22:19:45 -0000
Received: from [98.138.89.164] by tm14.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2015 22:19:45 -0000
Received: from [127.0.0.1] by omp1020.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2015 22:19:45 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 535339.28020.bm@omp1020.mail.ne1.yahoo.com
X-YMail-OSG: uA2BQmoVM1kBoho8MqUkmKeXtoaOLywhhQoiZ3mlkwi_r0AJeHpJ8PXh.90xNcs
	Hpg4yiEN48S4EZN07u_x13FQQsVo3U6K9enQ5IrtiCCOiY6co._Yc0_qqJyv3iaFZEAVVKt9qv0D
	hwHEJrznEsn0jCExqOcp4SV1Cqey59VgwVtUu0KCM00INlsINinmL3buWy1N5t.fcFECu0BtEw.6
	L1tsppB2W1sJUohWDT4fjMHGnGLWVj.30T4I4meKd0oOH2Vs0bkpVGos24y7zA9FcjCEQ75C0n5J
	fbMUIkxXLcVTzYCn3rqiGNGeiC1eCSi94aH_Evw2yIcaGoUPKLPC.vvVSLvZjph1D4GNdLUKGon6
	F8meQwBXm2asYO9G3etJ_C0eQM6hNT00AtgdvyiutwCmf7QH1LJjbXD8kCUqyfaxnUr3SbhWiGHZ
	NcLmwZjsGG068qNhshVMuHrJiAxmHP.YAkVFJv3v9T1QKa5RCZAtVmfv9UU8Q3wU1783ParFspHN
	no3tp.fMc5MoypRpTvht8zLHDwPiFpAMLqPuSHtIxqacqbYputzHw22JyFn2FlGc-
Received: by 98.138.105.199; Thu, 30 Jul 2015 22:19:45 +0000 
Date: Thu, 30 Jul 2015 22:16:05 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <467329904.5499903.1438294565023.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: (No subject)
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
X-List-Received-Date: Thu, 30 Jul 2015 22:19:51 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5499902_77238914.1438294565017"

------=_Part_5499902_77238914.1438294565017
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,Thanks to Ross Burton=20
see the files https://github.com/develone/raspberrypi2_yocto.git

in recipe_myhdl folder.

Now have an rpm to install myhdl on a yocto build.
let me know if you have any questions.
=C2=A0=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_5499902_77238914.1438294565017
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1438294122924_3423"></div><div class=
=3D"" id=3D"yui_3_16_0_1_1438294122924_2399"><span class=3D"" id=3D"yui_3_1=
6_0_1_1438294122924_2577">Hello All,</span></div><div class=3D"" dir=3D"ltr=
" id=3D"yui_3_16_0_1_1438294122924_2429"><span class=3D"" id=3D"yui_3_16_0_=
1_1438294122924_2432">Thanks to Ross Burton <br class=3D""></span></div><di=
v class=3D"" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_1438294122924_=
2432">see the files <a class=3D"" id=3D"yui_3_16_0_1_1438294122924_2430" hr=
ef=3D"https://github.com/develone/raspberrypi2_yocto.git">https://github.co=
m/develone/raspberrypi2_yocto.git</a><br class=3D""></span></div><div class=
=3D"" id=3D"yui_3_16_0_1_1438294122924_2429"><br class=3D""></div><div clas=
s=3D"" dir=3D"ltr">in recipe_myhdl folder.<br class=3D""></div><div class=
=3D"" dir=3D"ltr"><br class=3D""></div><div class=3D"">Now have an rpm to i=
nstall myhdl on a yocto build.</div><div class=3D""><br class=3D""></div><d=
iv class=3D"">let me know if you have any questions.<br class=3D""></div><d=
iv class=3D""><div dir=3D"ltr">&nbsp;</div></div><div>&nbsp;</div><div><div=
>Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</div></d=
iv></div></body></html>

------=_Part_5499902_77238914.1438294565017--
