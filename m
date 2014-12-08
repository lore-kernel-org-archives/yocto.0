Return-Path: <lh_post@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 992E3E00945; Mon,  8 Dec 2014 02:18:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lh_post[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm12-vm6.bullet.mail.ne1.yahoo.com
	(nm12-vm6.bullet.mail.ne1.yahoo.com [98.138.91.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA7FE0091D
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 02:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1418033920; bh=tCTrZLSK/rDFpee0tqfq2dDAZH8eqRYADZOzaaPGDc8=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=qttHcwAusU/VBMg33Lj1xxSTC51IeiApqXh6NCiCcu84uqAGEsOTkUCCDFW4Jvcfyb/B6Xc8y/CHKCj9QRa+YOMew8ZsWYtSr/qguqYJcY0E9kzWtHRUsDtVw2dmdghiqCQrvgukCDtPdEHWeKk+nOu+YQiFmrI9vlqY+iQx4KQ3ZsQVSz0WtOo91/gvZFklQPPc4Q/hCdsBRnDmLk/idylnoYBFBhE3tAXcwJIlrGfN/uxZi0372slt7YkGdGF5SpuKnoT5unpD+Ordruefpm6DR07m6w3oGY2RWWa9wAzlX0Ez6xeQWQplR2EA+YyDKbnWD/HBFbtoFRG1hoB7Rg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=r0wTmGPlyhIbW7pVZzzEksQNbi9LK8uNgZQNQPdR/RMKdRmSAL0c4YP8eB6kqQPXQcbjhrGOLzu+lowyD5SnhPpXpC89MdrrSD4d4eviE8Zvip5l4+l5AVE3obE8Xgfsb5LK39huWNpi5nJWz4hXe5iHqbntNhcq6rd9bIokz6JPmxKOmNqp29zx0qoElbafte6PXzunUzJyuuM5KPaT8rMm9QopK1jX6G1el0Kd6qc2K4LsZKr8SUpSdknvpzuXklVHrkgnaJnat1M4TNrHXliRDThWpLwjIsG+BeO3HrpdazB9scvQ0KfeQH/63YYHxzBYXlkbJUyqdaY31xNI0Q==;
Received: from [98.138.100.111] by nm12.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Dec 2014 10:18:40 -0000
Received: from [98.138.226.163] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Dec 2014 10:18:40 -0000
Received: from [127.0.0.1] by omp1064.mail.ne1.yahoo.com with NNFMP;
	08 Dec 2014 10:18:40 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 825092.62359.bm@omp1064.mail.ne1.yahoo.com
X-YMail-OSG: u6QqY4AVM1nyAVQ.yMk8eBKDNfRYZoAObfIwBMEufGVL_r9G5SNk71.09ZrIPCX
	ncDei49hsYFErPgP4Pc9BYNR4vfcnBRZpI0EAjv16wAGVB4Hc7bRJjwg8E6PtJbCJlmnCi.dXBsM
	5vYEke8.k0fD84CovzSSHI_FMNiGMuVU1zFb3YLBL_z.QGM9KlMfVy.2.j2cS.pDr9mdmG_Y.2RH
	RgZgkY.8WHK_ccuHFowHLmpjRw1D02YaFfr5opm.sfQGrM6lvDwHcniJII23H.utqvnD4uJh6CKk
	yjOlZBE6p_DWFlU3taf2Pk7LA4gsWovjGX43hMAnOH1RRNkzjkmQ8.190cDintopNQUAsdrNUXVf
	LGuGfOxvvaHcSV6Q4r7mJo6oBn.Mwd9.nMmUo6XRKd3Sprf7llRRejSoPegqa7.w1ij7LBTXdsxT
	yyFbeRdcfx7VyPtahbW73F7krADvFKiztw0DMC6_4wrA1Aklyn1yA6597z1cfNotD5DxgnZoT1OJ
	yjjBcY5CqxGi6b3zlp_YVwAG1XcpiJLfsfELa
Received: by 98.138.101.160; Mon, 08 Dec 2014 10:18:40 +0000 
Date: Mon, 8 Dec 2014 10:18:40 +0000 (UTC)
From: Lars Michael <lh_post@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1107924621.4010656.1418033920064.JavaMail.yahoo@jws10085.mail.ne1.yahoo.com>
MIME-Version: 1.0
Subject: Problem building image with opkg and gpg support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Lars Michael <lh_post@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Dec 2014 10:18:43 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4010655_1178375423.1418033920059"

------=_Part_4010655_1178375423.1418033920059
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,
On daisy I have switched to opkg, this works fine (target wandboard).
To support signed packages I have added gpg to the PACKAGECONFIG for opkg. =
I have done this by creating a opkg_0.2.1.bbappend file with the line:=C2=
=A0PACKAGECONFIG +=3D "gpg"
In my image recipe I added:IMAGE_INSTALL_append =3D " opkg"IMAGE_INSTALL_ap=
pend =3D " gpgme"
'bitbake opkg' seems to run ok and builds libgpgme and opkg ipk's. But when=
 I run 'bitbake myimage' I get:
ERROR: Nothing PROVIDES 'gpgme-native' (but virtual:native:/media/datadisk/=
arm/fsl-community-bsp-daisy/sources/poky/meta/recipes-devtools/opkg/opkg_0.=
2.1.bb DEPENDS on or otherwise requires it). Close matches:=C2=A0 gperf-nat=
ive=C2=A0 rpm-native=C2=A0 gmp-nativeERROR: Required build target 'myimage'=
 has no buildable providers.Missing or unbuildable dependency chain was: ['=
myimage', 'opkg-native', 'gpgme-native']
Any ideas on what the problem might be?
ThanksLars

------=_Part_4010655_1178375423.1418033920059
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yiv9319973378"><div style=3D"color:#000;background=
-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lu=
cida Grande, sans-serif;font-size:16px;" id=3D"yui_3_16_0_1_1418032794617_2=
539"><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr"=
>Hi all,</div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" di=
r=3D"ltr"><br></div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_5138=
61" dir=3D"ltr">On daisy I have switched to opkg, this works fine (target w=
andboard).</div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" =
dir=3D"ltr"><br></div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_51=
3861" dir=3D"ltr">To support signed packages I have added gpg to the PACKAG=
ECONFIG for opkg. I have done this by creating a opkg_0.2.1.bbappend file w=
ith the line:&nbsp;</div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302=
_513861" dir=3D"ltr">PACKAGECONFIG +=3D "gpg"</div><div id=3D"yiv9319973378=
yui_3_16_0_1_1417703927302_513861" dir=3D"ltr"><br></div><div id=3D"yiv9319=
973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr">In my image recipe I a=
dded:</div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=
=3D"ltr"><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"=
ltr" class=3D"" style=3D"">IMAGE_INSTALL_append =3D " opkg"</div><div id=3D=
"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr" class=3D"" sty=
le=3D"">IMAGE_INSTALL_append =3D " gpgme"</div></div><div id=3D"yiv93199733=
78yui_3_16_0_1_1417703927302_513861" dir=3D"ltr"><br></div><div id=3D"yiv93=
19973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr">'bitbake opkg' seems=
 to run ok and builds libgpgme and opkg ipk's. But when I run 'bitbake myim=
age' I get:</div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861"=
 dir=3D"ltr"><br></div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_5=
13861" dir=3D"ltr"><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_51386=
1" dir=3D"ltr" class=3D"" style=3D"">ERROR: Nothing PROVIDES 'gpgme-native'=
 (but virtual:native:/media/datadisk/arm/fsl-community-bsp-daisy/sources/po=
ky/meta/recipes-devtools/opkg/opkg_0.2.1.bb DEPENDS on or otherwise require=
s it). Close matches:</div><div id=3D"yiv9319973378yui_3_16_0_1_14177039273=
02_513861" dir=3D"ltr" class=3D"" style=3D"">&nbsp; gperf-native</div><div =
id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr" class=3D"=
" style=3D"">&nbsp; rpm-native</div><div id=3D"yiv9319973378yui_3_16_0_1_14=
17703927302_513861" dir=3D"ltr" class=3D"" style=3D"">&nbsp; gmp-native</di=
v><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr" cl=
ass=3D"" style=3D"">ERROR: Required build target 'myimage' has no buildable=
 providers.</div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861"=
 dir=3D"ltr" class=3D"" style=3D"">Missing or unbuildable dependency chain =
was: ['myimage', 'opkg-native', 'gpgme-native']</div><div class=3D"" style=
=3D"" id=3D"yui_3_16_0_1_1418032794617_2978"><br class=3D"" style=3D""></di=
v></div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"l=
tr" class=3D"" style=3D"">Any ideas on what the problem might be?</div><div=
 id=3D"yiv9319973378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr" class=3D=
"" style=3D""><br></div><div id=3D"yiv9319973378yui_3_16_0_1_1417703927302_=
513861" dir=3D"ltr" class=3D"" style=3D"">Thanks</div><div id=3D"yiv9319973=
378yui_3_16_0_1_1417703927302_513861" dir=3D"ltr" class=3D"" style=3D"">Lar=
s</div></div></div></div></body></html>

------=_Part_4010655_1178375423.1418033920059--
