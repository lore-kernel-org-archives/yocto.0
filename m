Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37AF9E0095F; Thu,  9 Apr 2015 05:37:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (t_dufff[at]yahoo.ca)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.136.217.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm21-vm4.bullet.mail.gq1.yahoo.com
	(nm21-vm4.bullet.mail.gq1.yahoo.com [98.136.217.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE7E6E008EC
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 05:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1428583043; bh=MA0aN+PdU1sb93qKVir+iXrcyh16JU3AEaaLgPGbN7s=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=ShiDmAKEp2E5JPsqCwz35vkaWMQi1dxAmCCL0IVcflRpbCtGAtR4Hm/+ojEQMSU09r3aXclHq1SB46/o/BOoczNMKkBO0/L/O0h22oct3rf10nrTNldXe6XYhqUUHnG1s1P+iy0rGb7HTaWTUCbCb5C5rRi751c6WeeaSonp6fedKSTrUunsbuO2KvEovkXJLehdVfwM0hS1ijO6YgyIMCZESNlP2iYcNgh+kOoR4D5z9FhdIe28asBKbfsbYntx99OWKtO9PHkyoxnKJFOHjYFlVQMFV51jn/wfUFhl9kxIRGral20A7JiE4vpLyJUrY4bUkFElGdC6IBS+6GtUOg==
Received: from [216.39.60.183] by nm21.bullet.mail.gq1.yahoo.com with NNFMP;
	09 Apr 2015 12:37:23 -0000
Received: from [98.137.12.225] by tm19.bullet.mail.gq1.yahoo.com with NNFMP;
	09 Apr 2015 12:37:23 -0000
Received: from [127.0.0.1] by omp1033.mail.gq1.yahoo.com with NNFMP;
	09 Apr 2015 12:37:23 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 327551.63182.bm@omp1033.mail.gq1.yahoo.com
X-YMail-OSG: i3frs64VM1moLMSW4G7xsFBsKiq6ItyWorq8CI6CfTmiIsCFcxjAlUsYhGBIDr.
	N3yQEtwQBU_s.NBoJwQV3m1hKrM8yvPUm.ZHUWjWWi.IWpnfBunwmmDR2AmCyNtpQz__W.u3mhsT
	SsVVltia4w_FpjeXIbJoEljU0SeUZeFvVlDsjP7b5PfjO1q0kd8Fxc_aE9qi7XvHdYDyHc9jMqoT
	or4aDxshnhhNg7apWltwL6E7RSNbMDHKUWjG7oddNAfmYFxHCvIWI_73zqFqK8fGhE9xbIT4c9_P
	Z1YLpzMgUYNv_G78AaNEl13SbBrIlB95HRhzj08fFiM6VnNHw9Ty9iNJWhIhNwDVEH2IsrPL5Iuf
	7utqEGsshjXQ9YiBKtlwCR4eQRPB63ZmVbdq5sOgIyhQ6SE_EzsT3wywcOq03.ei70sYZSnD.ghN
	cSzhajbWUg1iyUnwlCXm418G8GjPrtaEBd1_Q86Y4BF1rv_8iNlmvx2vssMMHjCR2OBx9XNEDWfb
	cfp0-
Received: by 216.39.60.213; Thu, 09 Apr 2015 12:37:22 +0000 
Date: Thu, 9 Apr 2015 12:37:22 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1261690743.1240210.1428583042565.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: systemd inherited package will not be enabled on boot
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kris duff <t_dufff@yahoo.ca>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Apr 2015 12:37:27 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1240209_1264982203.1428583042558"

------=_Part_1240209_1264982203.1428583042558
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
using yocto dizzy ( but had the same problem with daisy )

I have a strange problem with few recipes that inherit from systemd.bbclass=
.
When I add the package to an image recipe, the software will NOT be started=
 on boot. But, if I install the package from RPM, it will be started automa=
tically on boot.

I use a .bbappend template to add systemd service file to the package.
The template looks like this :
#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
inherit systemd

SRC_URI +=3D "file://filiname.service"
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=20
FILES_${PN} +=3D "/lib/"

SYSTEMD_SERVICE_${PN} =3D "filename.service"

do_install_append() {
=C2=A0=C2=A0=C2=A0 install -d ${D}${systemd_unitdir}/system
=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR}/filename.service ${D}${system=
d_unitdir}/system
}
#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

I tried to add SYSTEMD_PACKAGE =3D ${PN}-systemd
no luck
I tried to add SYSTEMD_AUTO_ENABLE =3D "enable"
will not help neither.
Do somebody have an advice to help me debug this ?
Thank you
Kris

------=_Part_1240209_1264982203.1428583042558
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:10px"><div id=3D"yui_3_16_0_1_1428581642874_8790" dir=3D"ltr">Hello=
,</div><div id=3D"yui_3_16_0_1_1428581642874_8572" dir=3D"ltr"><br></div><d=
iv id=3D"yui_3_16_0_1_1428581642874_13951" dir=3D"ltr">using yocto dizzy ( =
but had the same problem with daisy )<br></div><div id=3D"yui_3_16_0_1_1428=
581642874_13952" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_142858164287=
4_8573" dir=3D"ltr">I have a strange problem with few recipes that inherit =
from systemd.bbclass.</div><div id=3D"yui_3_16_0_1_1428581642874_8749" dir=
=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1428581642874_8748" dir=3D"ltr">=
When I add the package to an image recipe, the software will NOT be started=
 on boot. But, if I install the package from RPM, it will be started automa=
tically on boot.<br></div><div id=3D"yui_3_16_0_1_1428581642874_8574" dir=
=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1428581642874_8580" dir=3D"ltr">=
I use a .bbappend template to add systemd service file to the package.</div=
><div id=3D"yui_3_16_0_1_1428581642874_8747" dir=3D"ltr"><br></div><div id=
=3D"yui_3_16_0_1_1428581642874_8746" dir=3D"ltr">The template looks like th=
is :</div><div id=3D"yui_3_16_0_1_1428581642874_8700" dir=3D"ltr"><br></div=
><div id=3D"yui_3_16_0_1_1428581642874_8644" dir=3D"ltr">#=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1428581642874_8486">=
inherit systemd<br style=3D"" class=3D""><br style=3D"" class=3D"">SRC_URI =
+=3D "file://filiname.service"<br style=3D"" class=3D"">&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br style=3D""=
 class=3D"">FILES_${PN} +=3D "/lib/"<br style=3D"" class=3D""><br style=3D"=
" class=3D"">SYSTEMD_SERVICE_${PN} =3D "filename.service"<br style=3D"" cla=
ss=3D""><br style=3D"" class=3D"">do_install_append() {<br style=3D"" class=
=3D"">&nbsp;&nbsp;&nbsp; install -d ${D}${systemd_unitdir}/system<br style=
=3D"" class=3D"">&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/filename.ser=
vice ${D}${systemd_unitdir}/system<br style=3D"" class=3D"">}<br style=3D""=
 class=3D"">#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div style=3D"" class=3D""=
 dir=3D"ltr" id=3D"yui_3_16_0_1_1428581642874_8486"><br></div><div id=3D"yu=
i_3_16_0_1_1428581642874_8743" style=3D"" class=3D"" dir=3D"ltr">I tried to=
 add SYSTEMD_PACKAGE =3D ${PN}-systemd</div><div id=3D"yui_3_16_0_1_1428581=
642874_13937" style=3D"" class=3D"" dir=3D"ltr"><br></div><div id=3D"yui_3_=
16_0_1_1428581642874_13938" style=3D"" class=3D"" dir=3D"ltr">no luck</div>=
<div id=3D"yui_3_16_0_1_1428581642874_13939" style=3D"" class=3D"" dir=3D"l=
tr"><br></div><div id=3D"yui_3_16_0_1_1428581642874_13958" style=3D"" class=
=3D"" dir=3D"ltr">I tried to add SYSTEMD_AUTO_ENABLE =3D "enable"</div><div=
 id=3D"yui_3_16_0_1_1428581642874_13975" style=3D"" class=3D"" dir=3D"ltr">=
<br></div><div id=3D"yui_3_16_0_1_1428581642874_13986" style=3D"" class=3D"=
" dir=3D"ltr">will not help neither.</div><div id=3D"yui_3_16_0_1_142858164=
2874_13987" style=3D"" class=3D"" dir=3D"ltr"><br></div><div id=3D"yui_3_16=
_0_1_1428581642874_13988" style=3D"" class=3D"" dir=3D"ltr">Do somebody hav=
e an advice to help me debug this ?</div><div id=3D"yui_3_16_0_1_1428581642=
874_13989" style=3D"" class=3D"" dir=3D"ltr"><br></div><div id=3D"yui_3_16_=
0_1_1428581642874_13990" style=3D"" class=3D"" dir=3D"ltr">Thank you</div><=
div id=3D"yui_3_16_0_1_1428581642874_13991" style=3D"" class=3D"" dir=3D"lt=
r"><br></div><div id=3D"yui_3_16_0_1_1428581642874_13992" style=3D"" class=
=3D"" dir=3D"ltr">Kris<br style=3D"" class=3D""></div></div></body></html>

------=_Part_1240209_1264982203.1428583042558--
