Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C7E8E00C9B; Fri,  9 Dec 2016 05:28:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.139.213.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24-vm0.bullet.mail.bf1.yahoo.com
	(nm24-vm0.bullet.mail.bf1.yahoo.com [98.139.213.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 129CCE00C80
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 05:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1481290116; bh=eq72wE4WENpTE5kTFmxU5r5KYYtTd8khpn16vPTkkcw=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=eTggH60+jLdRfd4a2pSK14CVcHYsJeTBSlvJCFeg4uoDNbTyIPY+sZ1WVWUsTLnoI+p7MzdnehR+HBoalMihEjUUhnpMNIZ9JJgsPXsXbTqNkqduv4OApY4MqI2d2C/ajHgrvsVwFayWKya534A20F+1zrD6d3g+01//WfeCt5onJrWoJs9HU5TZYtOj3JZRSJwmHqL/loTNfPbVIeY9HA7y1OP0pamPYNNvX+hAXcKtIxLIcd1CVZwyTYzPV4NDPC0DVZB5WRv+1FOg1Zu7U6hnzE4JsUioU7MqhU4jEbwvoyxnYBTT49clLd0EmT3wgx2V0hXvgmHg7J+CdiySdA==
Received: from [98.139.215.143] by nm24.bullet.mail.bf1.yahoo.com with NNFMP;
	09 Dec 2016 13:28:36 -0000
Received: from [98.139.212.247] by tm14.bullet.mail.bf1.yahoo.com with NNFMP;
	09 Dec 2016 13:28:36 -0000
Received: from [127.0.0.1] by omp1056.mail.bf1.yahoo.com with NNFMP;
	09 Dec 2016 13:28:36 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 678803.97898.bm@omp1056.mail.bf1.yahoo.com
X-YMail-OSG: RTwO3IUVM1nnH9QR8Q1kPHgy4mWbpEPV4NTGsBnqg0edXNaIim5rai76KgOt_uE
	dEbUdjhwttuGI..6KkAqjh179jjIYZzpg9XqDWqJ.OdZOADKckG7i1oON4cVFThIFg80wy5Bn_XO
	cGfr06brqCYu5_7A2uGZAAt6muIwzw2VGSvZTkP8ay7C8oGP94BM2vFW.FJ22lV_NCXZilRz0ke2
	7Ig3LsHlnKZZopNd7KGpXj_IibP8ugHTYHjyB8y4UJgzDEPxN82Quq5XGjmfyVOGJ6yf6t7M8EEH
	avFfJ9exkmbT1hyLUBO.5swaaT9oJeJPPT0Y0UOEBSUIxmllrUkG63gQbxViLLUv0f6pxel7jKOi
	NsY.A.m8BtClwlmJGasKQScfEcfKE8qc8RLw.WZyKuStL53UJB4GkB.wOmTLdFYT5HzZlMViDbxu
	9ghku5cITDJdbbs80ml9kjlkGvPoxazIWpE2rgLNU8tczZydFju0gnFGu.xZCA8BZ9G1Jda4Zt0a
	bbGTet_cWFRvCo0sw4NEHO.xzsRDkMrSRuiXsp3kJZO9LUaSA1k237NLpCp3oxJNFwX4A0ai.zS28
Received: from jws400072.mail.bf2.yahoo.com by
	sendmailws104.mail.bf1.yahoo.com;
	Fri, 09 Dec 2016 13:28:36 +0000; 1481290116.320
Date: Fri, 9 Dec 2016 13:28:35 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <405620911.1114427.1481290115720@mail.yahoo.com>
MIME-Version: 1.0
References: <405620911.1114427.1481290115720.ref@mail.yahoo.com>
Subject: Adding Fortran to Raspberrypi2
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
X-List-Received-Date: Fri, 09 Dec 2016 13:28:39 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1114426_1078840835.1481290115719"

------=_Part_1114426_1078840835.1481290115719
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi

Trying to add fortran to 6.2.0 branch morty for a Raspberrypi2

Step 1 modified meta/recipes-devtools/gcc/gcc-6.2.inc
-FORTRAN =3D ""
+FORTRAN =3D ",fortran"
bitbake core-image-sato created the image=20

Testing on target. I see fortran in the command gcc -v.

gcc -v --enable-languages=3Dc,c++,fortran gcc version 6.2.0 (GCC)

With the command ./configure for octave.
checking whether a usable Fortran compiler was found... no
configure: error: A Fortran compiler is required


Step 2 Checking the mailing list.
=C2=A0=C2=A0=C2=A0 |Hi
=C2=A0=C2=A0=C2=A0 |
=C2=A0=C2=A0=C2=A0 |On Mon, 8 Feb 2016 08:19:53 +0000
=C2=A0=C2=A0=C2=A0 |"Liubchynskyi, Stanislav (Nokia - PL/Wroclaw)" <stanisl=
av.liubchynskyi at nokia.com> wrote:
=C2=A0=C2=A0=C2=A0 |
=C2=A0=C2=A0=C2=A0 |> Hi,
=C2=A0=C2=A0=C2=A0 |> I want to add fortran support to yocto build. I try d=
ifferent way whitch describe in the ethernet but enyone does't work. I use =
fido branch and gcc 4.9. Can you describe me step by step how to enable for=
tran in yocto or where I can find work instruction.
=C2=A0=C2=A0=C2=A0 |> Thanks for help.

=C2=A0=C2=A0=C2=A0 |Fortran support in gcc is disabled by default, to enabl=
e it add the following line to your config, then build the libgfortran pack=
age.

=C2=A0=C2=A0=C2=A0 |FORTRAN_forcevariable =3D ",fortran"

=C2=A0=C2=A0=C2=A0 |>=20
=C2=A0=C2=A0=C2=A0 |>=20
=C2=A0=C2=A0=C2=A0 |>=20
=C2=A0=C2=A0=C2=A0 |> Best regards,
=C2=A0=C2=A0=C2=A0 |>=20
=C2=A0=C2=A0=C2=A0 |> Stanislav Liubchynskyi
=C2=A0=C2=A0=C2=A0 |> Software Developer, LFS, OPSW Wroclaw
=C2=A0=C2=A0=C2=A0 |> Mobile Broadband, Nokia Networks>=C2=A0=20

I added FORTRAN_forcevariable =3D ",fortran" to my config.=C2=A0 Still no f=
ortran.

I added libgfortran to variable IMAGE_INSTALL_append and I get the followin=
g error
=C2=A0
ERROR: oe_runmake failed

../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/runt=
ime/backtrace.c:37:33: fatal error: backtrace-supported.h: No such file or =
directory
=C2=A0#include "backtrace-supported.h"
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
compilation terminated.

Thanks in advance,

=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1114426_1078840835.1481290115719
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_ym19_1_1481289452702_30176=
" dir=3D"ltr"><span id=3D"yui_3_16_0_ym19_1_1481289452702_30361">Hi<br id=
=3D"yui_3_16_0_ym19_1_1481289452702_30307"><br id=3D"yui_3_16_0_ym19_1_1481=
289452702_30308">Trying to add fortran to 6.2.0 branch morty for a Raspberr=
ypi2<br id=3D"yui_3_16_0_ym19_1_1481289452702_30309"><br id=3D"yui_3_16_0_y=
m19_1_1481289452702_30310">Step 1 modified meta/recipes-devtools/gcc/gcc-6.=
2.inc<br id=3D"yui_3_16_0_ym19_1_1481289452702_30311">-FORTRAN =3D ""<br id=
=3D"yui_3_16_0_ym19_1_1481289452702_30312">+FORTRAN =3D ",fortran"<br id=3D=
"yui_3_16_0_ym19_1_1481289452702_30313">bitbake core-image-sato created the=
 image <br id=3D"yui_3_16_0_ym19_1_1481289452702_30314"><br id=3D"yui_3_16_=
0_ym19_1_1481289452702_30315">Testing on target. I see fortran in the comma=
nd gcc -v.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30316"><br id=3D"yui_3_=
16_0_ym19_1_1481289452702_30317">gcc -v --enable-languages=3Dc,c++,fortran =
gcc version 6.2.0 (GCC)<br id=3D"yui_3_16_0_ym19_1_1481289452702_30318"><br=
 id=3D"yui_3_16_0_ym19_1_1481289452702_30319">With the command ./configure =
for octave.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30320">checking whethe=
r a usable Fortran compiler was found... no<br id=3D"yui_3_16_0_ym19_1_1481=
289452702_30321">configure: error: A Fortran compiler is required<br id=3D"=
yui_3_16_0_ym19_1_1481289452702_30322"><br id=3D"yui_3_16_0_ym19_1_14812894=
52702_30323"><br id=3D"yui_3_16_0_ym19_1_1481289452702_30324">Step 2 Checki=
ng the mailing list.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30325">&nbsp;=
&nbsp;&nbsp; |Hi<br id=3D"yui_3_16_0_ym19_1_1481289452702_30326">&nbsp;&nbs=
p;&nbsp; |<br id=3D"yui_3_16_0_ym19_1_1481289452702_30327">&nbsp;&nbsp;&nbs=
p; |On Mon, 8 Feb 2016 08:19:53 +0000<br id=3D"yui_3_16_0_ym19_1_1481289452=
702_30328">&nbsp;&nbsp;&nbsp; |"Liubchynskyi, Stanislav (Nokia - PL/Wroclaw=
)" &lt;stanislav.liubchynskyi at nokia.com&gt; wrote:<br id=3D"yui_3_16_0_y=
m19_1_1481289452702_30329">&nbsp;&nbsp;&nbsp; |<br id=3D"yui_3_16_0_ym19_1_=
1481289452702_30330">&nbsp;&nbsp;&nbsp; |&gt; Hi,<br id=3D"yui_3_16_0_ym19_=
1_1481289452702_30331">&nbsp;&nbsp;&nbsp; |&gt; I want to add fortran suppo=
rt to yocto build. I try different way whitch describe in the ethernet but =
enyone does't work. I use fido branch and gcc 4.9. Can you describe me step=
 by step how to enable fortran in yocto or where I can find work instructio=
n.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30332">&nbsp;&nbsp;&nbsp; |&gt;=
 Thanks for help.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30333"><br id=3D=
"yui_3_16_0_ym19_1_1481289452702_30334">&nbsp;&nbsp;&nbsp; |Fortran support=
 in gcc is disabled by default, to enable it add the following line to your=
 config, then build the libgfortran package.<br id=3D"yui_3_16_0_ym19_1_148=
1289452702_30335"><br id=3D"yui_3_16_0_ym19_1_1481289452702_30336">&nbsp;&n=
bsp;&nbsp; |FORTRAN_forcevariable =3D ",fortran"<br id=3D"yui_3_16_0_ym19_1=
_1481289452702_30337"><br id=3D"yui_3_16_0_ym19_1_1481289452702_30338">&nbs=
p;&nbsp;&nbsp; |&gt; <br id=3D"yui_3_16_0_ym19_1_1481289452702_30339">&nbsp=
;&nbsp;&nbsp; |&gt; <br id=3D"yui_3_16_0_ym19_1_1481289452702_30340">&nbsp;=
&nbsp;&nbsp; |&gt; <br id=3D"yui_3_16_0_ym19_1_1481289452702_30341">&nbsp;&=
nbsp;&nbsp; |&gt; Best regards,<br id=3D"yui_3_16_0_ym19_1_1481289452702_30=
342">&nbsp;&nbsp;&nbsp; |&gt; <br id=3D"yui_3_16_0_ym19_1_1481289452702_303=
43">&nbsp;&nbsp;&nbsp; |&gt; Stanislav Liubchynskyi<br id=3D"yui_3_16_0_ym1=
9_1_1481289452702_30344">&nbsp;&nbsp;&nbsp; |&gt; Software Developer, LFS, =
OPSW Wroclaw<br id=3D"yui_3_16_0_ym19_1_1481289452702_30345">&nbsp;&nbsp;&n=
bsp; |&gt; Mobile Broadband, Nokia Networks&gt;&nbsp; <br id=3D"yui_3_16_0_=
ym19_1_1481289452702_30346"><br id=3D"yui_3_16_0_ym19_1_1481289452702_30347=
">I added FORTRAN_forcevariable =3D ",fortran" to my config.&nbsp; Still no=
 fortran.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30348"><br id=3D"yui_3_1=
6_0_ym19_1_1481289452702_30349">I added libgfortran to variable IMAGE_INSTA=
LL_append and I get the following error<br id=3D"yui_3_16_0_ym19_1_14812894=
52702_30350">&nbsp;<br id=3D"yui_3_16_0_ym19_1_1481289452702_30351">ERROR: =
oe_runmake failed<br id=3D"yui_3_16_0_ym19_1_1481289452702_30352"><br id=3D=
"yui_3_16_0_ym19_1_1481289452702_30353">../../../../../../../../work-shared=
/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/runtime/backtrace.c:37:33: fatal error:=
 backtrace-supported.h: No such file or directory<br id=3D"yui_3_16_0_ym19_=
1_1481289452702_30354">&nbsp;#include "backtrace-supported.h"<br id=3D"yui_=
3_16_0_ym19_1_1481289452702_30355">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ^<br id=3D"yui_3_16_0_ym19_1_1481289452702_30356">compilation terminated=
.<br id=3D"yui_3_16_0_ym19_1_1481289452702_30357"><br id=3D"yui_3_16_0_ym19=
_1_1481289452702_30358">Thanks in advance,<br id=3D"yui_3_16_0_ym19_1_14812=
89452702_30359"><br id=3D"yui_3_16_0_ym19_1_1481289452702_30360"></span></d=
iv><div>&nbsp;</div><div class=3D"signature" id=3D"yui_3_16_0_ym19_1_148128=
9452702_30401">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613<=
/div></div></body></html>

------=_Part_1114426_1078840835.1481290115719--
