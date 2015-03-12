Return-Path: <p_j_r_m@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A04E0085D; Thu, 12 Mar 2015 13:58:52 -0700 (PDT)
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
	*      [212.82.97.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm2.bullet.mail.ir2.yahoo.com
	(nm28-vm2.bullet.mail.ir2.yahoo.com [212.82.97.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96714E00854
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 13:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1426193926; bh=7yn9l4N/WAC6l1lyZyx6jF27w98C40JFdbGv3ayCWtw=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=owUrCXGVbOR96i9MrKpDhq/s14hLLIFUs32tr40P5MwzHAO+qndcjJ8fwE0KsuyyzyAMqtx5U8KRzIn/AnEfPBkdOFlD2Jej61R8lC6MjwEYv04PfGe1aDfjGFPWl+yBb57z8RXr2K121rgwg9ZiG1bNcZAtVX+Y5d9kmWTB+R+nD4R5bFm2eJlhPkuWC4s6Yc2N39NEEXjUjAQ2Cw8kLcnUz5V+QDv3e2sNed4mCQHxJ1NkoKfN3dMaFHKOtTa3dFtVt/nE4BA7B6fgnmzXOQHEJUjE6W8eVo2v6ESTHDSZCoqHqU5sHAr+NY8tgChpdqKWkZ4eQckl7fga8bjjnw==
Received: from [212.82.98.125] by nm28.bullet.mail.ir2.yahoo.com with NNFMP;
	12 Mar 2015 20:58:46 -0000
Received: from [212.82.98.75] by tm18.bullet.mail.ir2.yahoo.com with NNFMP;
	12 Mar 2015 20:58:46 -0000
Received: from [127.0.0.1] by omp1012.mail.ir2.yahoo.com with NNFMP;
	12 Mar 2015 20:58:46 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 392471.26737.bm@omp1012.mail.ir2.yahoo.com
X-YMail-OSG: rOtuqokVM1kMSUYzx90snLnCIKlb480KNNU6gLIT5INwpZSet2.ithCCYvA6zQJ
	ODVpSiD9195qw1Q3SScuuNpuUBgL0NXB__P7HI4qV.FsvsY6OgWdO1iRW6rIOF.pcjGSkH2j5y2g
	dY.qdlH.GnW8kyUt_Q7_tlBsfXovNxLhmfbX5o5TgQ70oLs42tSRSOPQ0KOAhal0rWQT8OnrTUG5
	oP.E4pwDWjsw87ExLodEuUlAuKxsDLLwha9E9teUILAkrP64SPu8zVmDOF0wLIvtMPDV98wPG.id
	CMS3QRSn9f1aYPHkwgSasTHma3vJTtBcJ9isbaVOcJIhYTBFFWXiLMoEhgWTWv.oZ3dPewdn8RNV
	ZWyommP79L4CJg63SLJX.Css1BBLkHBNBgje8Jxe3fJmGzPuu_f_l8XeFO8Rk18QZipVsHEyjzJS
	2QGF5ub9tKh7SIxpY06tFoeYIdC201ZGSus0I9s0CuHFoZYGGchfdDGjcnWbh4xg.n4W64T_qZpQ
	gK1cM.uDWJERfQnSr2atKec8AWav3zNy0nDCgFRFiKuEdqEdGi63j5iGTN9hCjA--
Received: by 217.12.8.244; Thu, 12 Mar 2015 20:58:45 +0000 
Date: Thu, 12 Mar 2015 20:58:45 +0000 (UTC)
From: p_j_r_m <p_j_r_m@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1971127177.6184446.1426193925543.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: File in append recipe not installed
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
X-List-Received-Date: Thu, 12 Mar 2015 20:58:52 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_6184445_1291538183.1426193925540"

------=_Part_6184445_1291538183.1426193925540
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello

I'd like to add an append recipe for base-files in order to install a custo=
m fstab.

In my system I already have this base-files recipes:

=C2=A0=C2=A0=C2=A0 layers/openembedded-core-1.4/meta/recipes-core/base-file=
s/base-files_3.0.14.bb
=C2=A0=C2=A0=C2=A0 layers/meta-montavista-1.4/recipes-core/base-files/base-=
files_3.0.14.bbappend

So I in my layer I have:

layers/meta-mylayer/recipes/base-files
=E2=94=9C=E2=94=80=E2=94=80 base-files_3.0.14.bbappend
=E2=94=94=E2=94=80=E2=94=80 files
=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 fstab

and I add this base-files_3.0.14.bbappend content:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"

SRC_URI_append =3D "file://fstab"

do_install_append() {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo "=3D=3D=3D=3D=3D=3D=3D ${PN=
}-${PV} INSTALLING fstab =3D=3D=3D=3D=3D=3D=3D=3D"
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 644 ${WORKDIR}/fstab =
${D}${sysconfdir}
}

but no matter how I put FILESEXTRAPATHS_prepend or how I name my bbappend w=
hen I build the recipe with bitbake base-files it never gets called and my =
fstab file is not installed.
If the original recipe is base-files_3.0.14.bb, why append is base-files_3.=
0.14.bbappend instead of base-files_3.bbappend only? How should i name and =
put FILESEXTRAPATHS




------=_Part_6184445_1291538183.1426193925540
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1426057378008_112449">Hel=
lo<br style=3D"" class=3D""><br style=3D"" class=3D"">I'd like to add an ap=
pend recipe for base-files in order to install a custom fstab.<br style=3D"=
" class=3D""><br style=3D"" class=3D"">In my system I already have this bas=
e-files recipes:<br style=3D"" class=3D""><br style=3D"" class=3D"">&nbsp;&=
nbsp;&nbsp; layers/openembedded-core-1.4/meta/recipes-core/base-files/base-=
files_3.0.14.bb<br style=3D"" class=3D"">&nbsp;&nbsp;&nbsp; layers/meta-mon=
tavista-1.4/recipes-core/base-files/base-files_3.0.14.bbappend<br style=3D"=
" class=3D""><br style=3D"" class=3D"">So I in my layer I have:<br style=3D=
"" class=3D""><br style=3D"" class=3D"">layers/meta-mylayer/recipes/base-fi=
les<br style=3D"" class=3D"">=E2=94=9C=E2=94=80=E2=94=80 base-files_3.0.14.=
bbappend<br style=3D"" class=3D"">=E2=94=94=E2=94=80=E2=94=80 files<br styl=
e=3D"" class=3D"">&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 fstab<br s=
tyle=3D"" class=3D""><br style=3D"" class=3D"">and I add this base-files_3.=
0.14.bbappend content:<br style=3D"" class=3D""><br style=3D"" class=3D"">F=
ILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"<br style=3D"" class=
=3D""><br style=3D"" class=3D"">SRC_URI_append =3D "file://fstab"<br style=
=3D"" class=3D""><br style=3D"" class=3D"">do_install_append() {<br style=
=3D"" class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo "=3D=3D=3D=
=3D=3D=3D=3D ${PN}-${PV} INSTALLING fstab =3D=3D=3D=3D=3D=3D=3D=3D"<br styl=
e=3D"" class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 644=
 ${WORKDIR}/fstab ${D}${sysconfdir}<br style=3D"" class=3D"">}<br style=3D"=
" class=3D""><br style=3D"" class=3D"">but no matter how I put FILESEXTRAPA=
THS_prepend or how I name my bbappend when I build the recipe with bitbake =
base-files it never gets called and my fstab file is not installed.<br styl=
e=3D"" class=3D"">If the original recipe is base-files_3.0.14.bb, why appen=
d is base-files_3.0.14.bbappend instead of base-files_3.bbappend only? How =
should i name and put FILESEXTRAPATHS<br style=3D"" class=3D""><br style=3D=
"" class=3D""><br></div><div style=3D"" class=3D"" dir=3D"ltr" id=3D"yui_3_=
16_0_1_1426057378008_112449"><br style=3D"" class=3D""></div></div></body><=
/html>

------=_Part_6184445_1291538183.1426193925540--
