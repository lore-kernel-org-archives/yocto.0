Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C890BE00954; Thu,  9 Apr 2015 20:50:35 -0700 (PDT)
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
	*      [98.137.177.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm17-vm3.bullet.mail.gq1.yahoo.com
	(nm17-vm3.bullet.mail.gq1.yahoo.com [98.137.177.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69BC3E008F6
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 20:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1428637828; bh=uzko/pUUqBBxU+aLLsUDfYpCi5xnxa2UHBHozQiQHbM=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=IVkJW+kL8U7L64ftjMphsW2aKnjSDHEVYzpid6WzWhdYbuPO5pT5gPvd1ShccxJpulIm7DaprHqzXCgWKAtuec+/Ak8oyfVIL07dfxqvX/Iv4VAyxqYDdE0Hs7MxXCh5YcJxbeqgCZQAuLcHxSLSCZmvp/6Pb+jOozkD+jPBodngPBarLEgsjy59V0sY+5Lsl6DCy/5yX/kqX8RLNl1PyLsV3uxYRkXBl87CzAvCLPIixOJln602iv1UBNBtisVRbxWslgiP2wJ+PZC3e8nqFRsdMnQivRcsQ6lCuspSpKN6bGWhWe5BVeXpHzVl+zqDo3hitkS7G6bZHVA7p5UqkA==
Received: from [98.137.12.190] by nm17.bullet.mail.gq1.yahoo.com with NNFMP;
	10 Apr 2015 03:50:28 -0000
Received: from [98.137.12.241] by tm11.bullet.mail.gq1.yahoo.com with NNFMP;
	10 Apr 2015 03:50:28 -0000
Received: from [127.0.0.1] by omp1049.mail.gq1.yahoo.com with NNFMP;
	10 Apr 2015 03:50:28 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 355595.38703.bm@omp1049.mail.gq1.yahoo.com
X-YMail-OSG: Uwdb_f4VM1kkHvor_IzlDGplAQ46qCOBuFXVNVGT5ndcAS8J4_M6F4MP.eoawTO
	gsZGHBqlqhcG.SZmxfAFhDIL1oO1QlLqy6Q1yqvOMmagRqVy7ZP1WCr7xEuWBlWhL2_f.jI7ctMX
	IHYDpW5MG8zeUJ7wn8p_7.OdAuNGG0xBC_pSlXWpRgBh0tWDqFVTVw_8FQ.6seu3ero9XH4K2FK8
	ta7xDHCoEpKDyYcY4IO67.4dBgXfNafNSF0THVf2Dqy_B6xNtlVALLKHB2.Yu2_y1uicrHlaU.Hf
	Y9vGGSPlMVOazYfvu5aIn9pHUXLGx0wgIEzxWj67QVwutR6lMSezhkBv_ApvnNALSabTrc67qkwd
	TqD5xvq3kgz_ApIS41brqo9fk7K3095IfPjOcgNPUgTxGJMUNe.B.om8lieVICbIkE6Lt91IADBF
	0hluVp4HNc1lJwKbyvGmZzekraRMKbc3wRYssgCB3FWwVK9JeR9VMtBJSPRH3857cE.tMg1lSo5a
	Kt8w-
Received: by 216.39.60.209; Fri, 10 Apr 2015 03:50:27 +0000 
Date: Fri, 10 Apr 2015 03:50:12 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <2086273110.22881.1428637812534.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <830F98AF-CD39-408A-918A-21EEFA353391@gmail.com>
References: <830F98AF-CD39-408A-918A-21EEFA353391@gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemd inherited package will not be enabled on boot
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
X-List-Received-Date: Fri, 10 Apr 2015 03:50:35 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_22880_1902815845.1428637812525"

------=_Part_22880_1902815845.1428637812525
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Khem,
Thank you for your feedback.
Here is the slightly modified service file :
#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[Unit]
Description=3Dservice file
After=3Dnetwork.target

[Service]
User=3Droot

ExecStart=3D/bin/sh -c 'exec /usr/bin/script.sh'
Restart=3Dalways
Type=3Dsimple

[Install]
WantedBy=3Dmulti-user.target

#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Regards
Kris=20


     On Thursday, April 9, 2015 8:24 PM, Khem Raj <raj.khem@gmail.com> wrot=
e:
  =20

=20

On Apr 9, 2015, at 5:37 AM, kris duff <t_dufff@yahoo.ca> wrote:
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

show you .service file too pleaseYou need to have [install] section inside =
your unit file. I think you are missing that


Thank you
Kris
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto




  

------=_Part_22880_1902815845.1428637812525
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:10px"><div id=3D"yui_3_16_0_1_1428510999177_594829" dir=3D"ltr">Khe=
m,</div><div id=3D"yui_3_16_0_1_1428510999177_594830" dir=3D"ltr"><br></div=
><div id=3D"yui_3_16_0_1_1428510999177_594849" dir=3D"ltr">Thank you for yo=
ur feedback.</div><div dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_142851=
0999177_595015" dir=3D"ltr">Here is the slightly modified service file :</d=
iv><div dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1428510999177_595016"=
 dir=3D"ltr">#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>=
<div dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1428510999177_595031" di=
r=3D"ltr">[Unit]<br style=3D"" class=3D"">Description=3Dservice file<br sty=
le=3D"" class=3D"">After=3Dnetwork.target<br style=3D"" class=3D""><br styl=
e=3D"" class=3D"">[Service]<br style=3D"" class=3D"">User=3Droot<br style=
=3D"" class=3D""><br style=3D"" class=3D"">ExecStart=3D/bin/sh -c 'exec /us=
r/bin/script.sh'<br style=3D"" class=3D"">Restart=3Dalways<br style=3D"" cl=
ass=3D"">Type=3Dsimple<br style=3D"" class=3D""><br style=3D"" class=3D"">[=
Install]<br style=3D"" class=3D"">WantedBy=3Dmulti-user.target<br></div><di=
v id=3D"yui_3_16_0_1_1428510999177_595285" dir=3D"ltr"><br></div><div id=3D=
"yui_3_16_0_1_1428510999177_594825"><span id=3D"yui_3_16_0_1_1428510999177_=
595286">#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></div><d=
iv id=3D"yui_3_16_0_1_1428510999177_595287"><br><span></span></div><div id=
=3D"yui_3_16_0_1_1428510999177_595288" dir=3D"ltr"><span>Regards</span></di=
v><div id=3D"yui_3_16_0_1_1428510999177_595289" dir=3D"ltr"><br><span></spa=
n></div><div id=3D"yui_3_16_0_1_1428510999177_595290" dir=3D"ltr"><span>Kri=
s</span></div>  <br><div class=3D"qtdSeparateBR"><br><br></div><div style=
=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: Hel=
veticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; fo=
nt-size: 10px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, =
Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D=
"ltr"> <font face=3D"Arial" size=3D"2"> On Thursday, April 9, 2015 8:24 PM,=
 Khem Raj &lt;raj.khem@gmail.com&gt; wrote:<br> </font> </div>  <br><br> <d=
iv class=3D"y_msg_container"><div id=3D"yiv0896633321"><div><br class=3D"yi=
v0896633321" clear=3D"none"><div><blockquote class=3D"yiv0896633321" type=
=3D"cite"><div class=3D"yiv0896633321">On Apr 9, 2015, at 5:37 AM, kris duf=
f &lt;<a rel=3D"nofollow" shape=3D"rect" class=3D"yiv0896633321" ymailto=3D=
"mailto:t_dufff@yahoo.ca" target=3D"_blank" href=3D"mailto:t_dufff@yahoo.ca=
">t_dufff@yahoo.ca</a>&gt; wrote:</div><br class=3D"yiv0896633321Apple-inte=
rchange-newline" clear=3D"none"><div class=3D"yiv0896633321"><div class=3D"=
yiv0896633321"><div class=3D"yiv0896633321" style=3D"background-color:rgb(2=
55, 255, 255);font-family:HelveticaNeue, 'Helvetica Neue', Helvetica, Arial=
, 'Lucida Grande', sans-serif;font-size:10px;"><div class=3D"yiv0896633321"=
 dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8790">Hello,</di=
v><div class=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_=
1428581642874_8572"><br class=3D"yiv0896633321" clear=3D"none"></div><div c=
lass=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_14285816=
42874_13951">using yocto dizzy ( but had the same problem with daisy )<br c=
lass=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896633321" di=
r=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13952"><br class=3D=
"yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896633321" dir=3D"lt=
r" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8573">I have a strange pro=
blem with few recipes that inherit from systemd.bbclass.</div><div class=3D=
"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8=
749"><br class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896=
633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8748">Whe=
n I add the package to an image recipe, the software will NOT be started on=
 boot. But, if I install the package from RPM, it will be started automatic=
ally on boot.<br class=3D"yiv0896633321" clear=3D"none"></div><div class=3D=
"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8=
574"><br class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896=
633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8580">I u=
se a .bbappend template to add systemd service file to the package.</div><d=
iv class=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428=
581642874_8747"><br class=3D"yiv0896633321" clear=3D"none"></div><div class=
=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_142858164287=
4_8746">The template looks like this :</div><div class=3D"yiv0896633321" di=
r=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8700"><br class=3D"=
yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896633321" dir=3D"ltr=
" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8644">#=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv089=
6633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8486">in=
herit systemd<br class=3D"yiv0896633321" style=3D"" clear=3D"none"><br clas=
s=3D"yiv0896633321" style=3D"" clear=3D"none">SRC_URI +=3D "<a href=3D"" re=
l=3D"nofollow" shape=3D"rect" class=3D"yiv0896633321">file://filiname.servi=
ce</a>"<br class=3D"yiv0896633321" style=3D"" clear=3D"none">&nbsp;&nbsp;&n=
bsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=
=3D"yiv0896633321" style=3D"" clear=3D"none">FILES_${PN} +=3D "/lib/"<br cl=
ass=3D"yiv0896633321" style=3D"" clear=3D"none"><br class=3D"yiv0896633321"=
 style=3D"" clear=3D"none">SYSTEMD_SERVICE_${PN} =3D "filename.service"<br =
class=3D"yiv0896633321" style=3D"" clear=3D"none"><br class=3D"yiv089663332=
1" style=3D"" clear=3D"none">do_install_append() {<br class=3D"yiv089663332=
1" style=3D"" clear=3D"none">&nbsp;&nbsp;&nbsp; install -d ${D}${systemd_un=
itdir}/system<br class=3D"yiv0896633321" style=3D"" clear=3D"none">&nbsp;&n=
bsp;&nbsp; install -m 0644 ${WORKDIR}/filename.service ${D}${systemd_unitdi=
r}/system<br class=3D"yiv0896633321" style=3D"" clear=3D"none">}<br class=
=3D"yiv0896633321" style=3D"" clear=3D"none">#=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
 class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896633321" =
dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8486" style=3D"">=
<br class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv089663332=
1" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_8743" style=3D=
"">I tried to add SYSTEMD_PACKAGE =3D ${PN}-systemd</div><div class=3D"yiv0=
896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13937"=
 style=3D""><br class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"=
yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13=
938" style=3D"">no luck</div><div class=3D"yiv0896633321" dir=3D"ltr" id=3D=
"yiv0896633321yui_3_16_0_1_1428581642874_13939" style=3D""><br class=3D"yiv=
0896633321" clear=3D"none"></div><div class=3D"yiv0896633321" dir=3D"ltr" i=
d=3D"yiv0896633321yui_3_16_0_1_1428581642874_13958" style=3D"">I tried to a=
dd SYSTEMD_AUTO_ENABLE =3D "enable"</div><div class=3D"yiv0896633321" dir=
=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13975" style=3D""><b=
r class=3D"yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896633321"=
 dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13986" style=3D"=
">will not help neither.</div><div class=3D"yiv0896633321" dir=3D"ltr" id=
=3D"yiv0896633321yui_3_16_0_1_1428581642874_13987" style=3D""><br class=3D"=
yiv0896633321" clear=3D"none"></div><div class=3D"yiv0896633321" dir=3D"ltr=
" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13988" style=3D"">Do somebo=
dy have an advice to help me debug this ?</div></div></div></div></blockquo=
te><div><br class=3D"yiv0896633321" clear=3D"none"></div><div>show you .ser=
vice file too please</div><div>You need to have [install] section inside yo=
ur unit file. I think you are missing that</div><div class=3D"yiv0896633321=
yqt2432290203" id=3D"yiv0896633321yqtfd85836"><br class=3D"yiv0896633321" c=
lear=3D"none"></div><blockquote class=3D"yiv0896633321" type=3D"cite"><div =
class=3D"yiv0896633321"><div class=3D"yiv0896633321"><div class=3D"yiv08966=
33321" style=3D"background-color:rgb(255, 255, 255);font-family:HelveticaNe=
ue, 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;font-si=
ze:10px;"><div class=3D"yiv0896633321yqt2432290203" id=3D"yiv0896633321yqtf=
d68749"><div class=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_1=
6_0_1_1428581642874_13989" style=3D""><br class=3D"yiv0896633321" clear=3D"=
none"></div><div class=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui=
_3_16_0_1_1428581642874_13990" style=3D"">Thank you</div><div class=3D"yiv0=
896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642874_13991"=
 style=3D""><br class=3D"yiv0896633321" clear=3D"none"></div></div><div cla=
ss=3D"yiv0896633321" dir=3D"ltr" id=3D"yiv0896633321yui_3_16_0_1_1428581642=
874_13992" style=3D""><div class=3D"yiv0896633321yqt2432290203" id=3D"yiv08=
96633321yqtfd03193">Kris</div><br class=3D"yiv0896633321" style=3D"" clear=
=3D"none"></div></div></div>-- <br class=3D"yiv0896633321" clear=3D"none">_=
______________________________________________<br class=3D"yiv0896633321" c=
lear=3D"none">yocto mailing list<br class=3D"yiv0896633321" clear=3D"none">=
<a rel=3D"nofollow" shape=3D"rect" class=3D"yiv0896633321" ymailto=3D"mailt=
o:yocto@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto@yoctoproje=
ct.org">yocto@yoctoproject.org</a><br class=3D"yiv0896633321" clear=3D"none=
">https://lists.yoctoproject.org/listinfo/yocto<div class=3D"yiv0896633321y=
qt2432290203" id=3D"yiv0896633321yqtfd61423"><br class=3D"yiv0896633321" cl=
ear=3D"none"></div></div></blockquote></div><div class=3D"yiv0896633321yqt2=
432290203" id=3D"yiv0896633321yqtfd93138"><br class=3D"yiv0896633321" clear=
=3D"none"></div></div></div><br><br></div>  </div> </div>  </div></div></bo=
dy></html>

------=_Part_22880_1902815845.1428637812525--
