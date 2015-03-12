Return-Path: <p_j_r_m@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60607E0086D; Thu, 12 Mar 2015 16:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (p_j_r_m[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm22-vm4.bullet.mail.ne1.yahoo.com
	(nm22-vm4.bullet.mail.ne1.yahoo.com [98.138.91.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69DD5E00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 16:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1426202519; bh=UUONb8MWTnfBkRA+OMNtCMdTXst6T63bq7Xot6HgMY8=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=ML7heAFOHmOnRaVd8lUADMEEfrZyFRcKTz+8u4hN8a+Kb7ABuaN3ZfhgeD3diYyhfl3fHsOoWaSJrtqdUKN8yZyEZEoDkemJFvCWRpy+C2fvHRGZW8vGKRXeBCWeBWlUb6ATrrJ/YS++f4TofsErVOrXhWvu8MV5dOF9NL07VXTENCI8ErgsIp+GRpdBX0p/bE1kYLPIfabWKC+9tF6oYq20XQnXFbMFY469NIUewOVqDSPzjOb+VWtXqzZcLiM/odCYXXjcKlyUDzZvg0R4woK3EUoWu24dylbxstqm5DS9+AbIbkGy5G4c9f0ZxFn+vKPYN5zLYB2fG+2y1h3fOw==
Received: from [98.138.101.129] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Mar 2015 23:21:59 -0000
Received: from [98.138.89.164] by tm17.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Mar 2015 23:21:59 -0000
Received: from [127.0.0.1] by omp1020.mail.ne1.yahoo.com with NNFMP;
	12 Mar 2015 23:21:59 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 80035.13708.bm@omp1020.mail.ne1.yahoo.com
X-YMail-OSG: I1gmOOoVM1lsVAnUc3Yq1hNTKcaXMcKE7d45WBHL4WXbZUlKxUy2z88xWnTWgRw
	X7x2eFkS9b2j_UlCpzDvKKA6rNH0q7y.o80VtGz26SzCiWJm_OWKKQnhhwVdf3Ad.U_gjNtM5tI_
	7VzDI_NHvOE8UV35crWMr6j1D8bTc4eTJoeqeIVy7nJwUDDfSjPe_emVtljMR_CeDhli5p41xdFi
	iJnMJv2tdzIHSUy1BeM6wIW4unajGFNmnZmv4Cf2BgUXaMUHIaG.0C_1NQ6W371ZWDasyCz1OVD8
	P0urX1TRlVJmqTbnO7p6MURP6AFB3PiNO3QF3yBZ3AfMebUjlUbUN0lNYPCc72yg9qrvuHaXRecQ
	8hPzh8F0vIt95KdLG4gt_jhzCaOhL1dcq7E3waFLsT_G5TU7Dfe8Obhh8DsugZxPBVTHDhM9qs6A
	xWPnC_0gZ4sCPwEkdKyyEIZamUztaS9Jye1UCmQd1AgAlXX0p1hduQj3Wxo1oGcjde3z78B0MNa0
	1Auu6is4yGTpbaVCMjkXoPK4yuTFJ6z6IRTpliPGqy2_lX3u91fB2T4p_ijxa6oCFoQ--
Received: by 212.82.98.118; Thu, 12 Mar 2015 23:21:57 +0000 
Date: Thu, 12 Mar 2015 23:21:56 +0000 (UTC)
From: p_j_r_m <p_j_r_m@yahoo.com>
To: Gary Thomas <gary@mlbassoc.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1012444838.6297307.1426202516188.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <5501FFB7.2010201@mlbassoc.com>
References: <5501FFB7.2010201@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: File in append recipe not installed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: p_j_r_m <p_j_r_m@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Mar 2015 23:22:11 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_6297306_2130729981.1426202516185"

------=_Part_6297306_2130729981.1426202516185
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I've tested it, but the problem is the same.My bbappend recipe is not even =
called ,so it does not matter what i put in it. Why is not called?
=20

     El Jueves 12 de marzo de 2015 22:06, Gary Thomas <gary@mlbassoc.com> e=
scribi=C3=B3:
  =20

 On 2015-03-12 14:58, p_j_r_m wrote:
> Hello
>
> I'd like to add an append recipe for base-files in order to install a cus=
tom fstab.
>
> In my system I already have this base-files recipes:
>
>=C2=A0 =C2=A0 =C2=A0 layers/openembedded-core-1.4/meta/recipes-core/base-f=
iles/base-files_3.0.14.bb
>=C2=A0 =C2=A0 =C2=A0 layers/meta-montavista-1.4/recipes-core/base-files/ba=
se-files_3.0.14.bbappend
>
> So I in my layer I have:
>
> layers/meta-mylayer/recipes/base-files
> =E2=94=9C=E2=94=80=E2=94=80 base-files_3.0.14.bbappend
> =E2=94=94=E2=94=80=E2=94=80 files
>=C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 fstab
>
> and I add this base-files_3.0.14.bbappend content:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>
> SRC_URI_append =3D "file://fstab"
>
> do_install_append() {
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo "=3D=3D=3D=3D=3D=3D=3D ${PN}-${PV}=
 INSTALLING fstab =3D=3D=3D=3D=3D=3D=3D=3D"
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 644 ${WORKDIR}/fstab ${D}${s=
ysconfdir}
> }
>
> but no matter how I put FILESEXTRAPATHS_prepend or how I name my bbappend=
 when I build the recipe with bitbake base-files it never gets called and m=
y fstab file is not installed.
> If the original recipe is base-files_3.0.14.bb, why append is base-files_=
3.0.14.bbappend instead of base-files_3.bbappend only? How should i name an=
d put FILESEXTRAPATHS

Instead of putting your fstab in 'files', put it in a directory
called 'base-files-3.0.14' which is where your FILESEXTRAPATHS
is looking.

--=20
------------------------------------------------------------
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
Consulting for the
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world
------------------------------------------------------------
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_6297306_2130729981.1426202516185
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"color:#000; background-color:#fff; font-family:HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12px=
"><div id=3D"yui_3_16_0_1_1425726600401_741497">I've tested it, but the pro=
blem is the same.</div><div id=3D"yui_3_16_0_1_1425726600401_741359" dir=3D=
"ltr">My bbappend recipe is not even called ,so it does not matter what i p=
ut in it. Why is not called?<br></div><div id=3D"yui_3_16_0_1_1425726600401=
_741216"><span></span></div> <div class=3D"qtdSeparateBR"><br><br></div><di=
v style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-fami=
ly: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-se=
rif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica=
 Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div=
 dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> El Jueves 12 de marzo de 201=
5 22:06, Gary Thomas &lt;gary@mlbassoc.com&gt; escribi=C3=B3:<br> </font> <=
/div>  <br><br> <div class=3D"y_msg_container">On 2015-03-12 14:58, p_j_r_m=
 wrote:<div class=3D"yqt2031549445" id=3D"yqtfd45110"><br clear=3D"none">&g=
t; Hello<br clear=3D"none">&gt;<br clear=3D"none">&gt; I'd like to add an a=
ppend recipe for base-files in order to install a custom fstab.<br clear=3D=
"none">&gt;<br clear=3D"none">&gt; In my system I already have this base-fi=
les recipes:<br clear=3D"none">&gt;<br clear=3D"none">&gt;&nbsp; &nbsp; &nb=
sp; layers/openembedded-core-1.4/meta/recipes-core/base-files/base-files_3.=
0.14.bb<br clear=3D"none">&gt;&nbsp; &nbsp; &nbsp; layers/meta-montavista-1=
.4/recipes-core/base-files/base-files_3.0.14.bbappend<br clear=3D"none">&gt=
;<br clear=3D"none">&gt; So I in my layer I have:<br clear=3D"none">&gt;<br=
 clear=3D"none">&gt; layers/meta-mylayer/recipes/base-files<br clear=3D"non=
e">&gt; =E2=94=9C=E2=94=80=E2=94=80 base-files_3.0.14.bbappend<br clear=3D"=
none">&gt; =E2=94=94=E2=94=80=E2=94=80 files<br clear=3D"none">&gt;&nbsp; &=
nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 fstab<br clear=3D"none">&gt;<br cl=
ear=3D"none">&gt; and I add this base-files_3.0.14.bbappend content:<br cle=
ar=3D"none">&gt;<br clear=3D"none">&gt; FILESEXTRAPATHS_prepend :=3D "${THI=
SDIR}/${PN}-${PV}:"<br clear=3D"none">&gt;<br clear=3D"none">&gt; SRC_URI_a=
ppend =3D "file://fstab"<br clear=3D"none">&gt;<br clear=3D"none">&gt; do_i=
nstall_append() {<br clear=3D"none">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
echo "=3D=3D=3D=3D=3D=3D=3D ${PN}-${PV} INSTALLING fstab =3D=3D=3D=3D=3D=3D=
=3D=3D"<br clear=3D"none">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -m=
 644 ${WORKDIR}/fstab ${D}${sysconfdir}<br clear=3D"none">&gt; }<br clear=
=3D"none">&gt;<br clear=3D"none">&gt; but no matter how I put FILESEXTRAPAT=
HS_prepend or how I name my bbappend when I build the recipe with bitbake b=
ase-files it never gets called and my fstab file is not installed.<br clear=
=3D"none">&gt; If the original recipe is base-files_3.0.14.bb, why append i=
s base-files_3.0.14.bbappend instead of base-files_3.bbappend only? How sho=
uld i name and put FILESEXTRAPATHS</div><br clear=3D"none"><br clear=3D"non=
e">Instead of putting your fstab in 'files', put it in a directory<br clear=
=3D"none">called 'base-files-3.0.14' which is where your FILESEXTRAPATHS<br=
 clear=3D"none">is looking.<br clear=3D"none"><br clear=3D"none">-- <br cle=
ar=3D"none">------------------------------------------------------------<br=
 clear=3D"none">Gary Thomas&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;  |&nbsp; Consulting for the<br clear=3D"none">MLB Associates&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; Embedded world<br =
clear=3D"none">------------------------------------------------------------=
<br clear=3D"none">-- <br clear=3D"none">__________________________________=
_____________<br clear=3D"none">yocto mailing list<br clear=3D"none"><a sha=
pe=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@=
yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D"=
rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bla=
nk">https://lists.yoctoproject.org/listinfo/yocto</a><div class=3D"yqt20315=
49445" id=3D"yqtfd95128"><br clear=3D"none"></div><br><br></div>  </div> </=
div>  </div> </div>

------=_Part_6297306_2130729981.1426202516185--
