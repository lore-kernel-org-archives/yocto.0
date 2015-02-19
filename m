Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DFBDE00831; Thu, 19 Feb 2015 13:49:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.74 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm1-vm0.bullet.mail.ne1.yahoo.com
	(nm1-vm0.bullet.mail.ne1.yahoo.com [98.138.91.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B427E00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 13:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1424382582; bh=pgXVfo3sLv8xh4U1kX1fw7C01tkwOooomqHKLI0dyjo=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=EktNduD1lFqgP3lsQmX+EZ6KiBC19/s7wCAgfM7aESjD/mmZSE0FWRA5FLhtucCJbdiLE9ukugJhNlm23owOwYyo2T2oH6iPS/qtx+tpuWQiduwxQopGjYjVBzro7kLqcKV6lzWqjA5pWe5jg5WDDsSnizVHhQHTOv4ax3cxCM0iUi3rhJnQIX7CP5BwE9xvV1sduqFy9csiPLDKJUqBhm9deGY1gRVNLhmLgSRkM61GWXmCUuJ/KwXV8e6iBJLQy9SjbawhrpMW6Vg1XkSa0qphb8DqykhaIGIsvIyJYgDFhvXp7jdjqd8hGvICDcNEg+FpSDqXpAmRKwlnTzTD3w==
Received: from [98.138.100.111] by nm1.bullet.mail.ne1.yahoo.com with NNFMP;
	19 Feb 2015 21:49:42 -0000
Received: from [98.138.89.245] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	19 Feb 2015 21:49:42 -0000
Received: from [127.0.0.1] by omp1059.mail.ne1.yahoo.com with NNFMP;
	19 Feb 2015 21:49:42 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 469285.61481.bm@omp1059.mail.ne1.yahoo.com
X-YMail-OSG: xIEGNR8VM1nlbT_ef3Wo__Jy1tvw6pw9VcCcRfJMLxd.mFcugslGhpv6ht3nPRd
	Ty2xw15GbjzuqFup_mv5_frefPubrtZWA1J6A1iiRW3YDnehY_MYqHkK4s.8nPL8j7PD0zpjTbBW
	sVS82IDgtedOtXbh2rJ_wP4IFp3HcMbj9g0H.KHq4FeUC7HpMObUexA2wruPbnSkT3ftBoMdRRIg
	6QCGy1SP3F2XJREDE8S6QYcycYy51i2QTK3wbO_Gk2qXfKRv_HM1IF9lObIt.N8oykWjNy3gmRq1
	RpkFp79ZUp1VX0bM8.AWrFRWvtkPa4IxND6CimHXsQ7C7UN8cH_5u_pXKLfMcIoNvE95rx722iEV
	rqK0K_DWNGHqK53BN_ix4aDRg2.l_YCwq.qVQvofV0.vVp3iNdOwLTMw.qkxgpEaQL1QSRjm3J6R
	5Nyr.rJ5ZddUOYznoJYJSQvS5.q.M9fzgAyIVqJubcIZz1dRXoFOdIBQ2GdZ34nH0QCqYNJT.7bR
	C4bplOcG5WWW..QR28TKndqD2E0hBydJucp7fey_aaXqvlEVj6sJyA9ElsZM1q96GKlvVXb3f6UK
	HvNQlipWKyl9sZW2tZxlxXGrF7rpf92KLGnNnrnhXyomh9.jNoxh7mxYhPoLIJlKalqYDiFlw_lK
	pS.UmLsqRhXes11an9dZyyLpSJFdIt.ei5ks2W7fyCHaAsZ59s8b0HgfXMLv9CNCtFUfYH1_eyOe
	WZ2mvZwmUxCsmxFLm8f8nSEq6j_vMj4RdXxL4Tf3yOwKyGA--
Received: by 98.138.105.218; Thu, 19 Feb 2015 21:49:41 +0000 
Date: Thu, 19 Feb 2015 21:49:41 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: "Alexandru. Vaduva" <Alexandru.Vaduva@enea.com>, 
	"victor.rodriguez.bahena@intel.com" <victor.rodriguez.bahena@intel.com>
Message-ID: <1139246852.2134837.1424382581630.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1424382189-20469-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1424382189-20469-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Add mpich support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Feb 2015 21:49:46 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2134834_2078081138.1424382581622"

------=_Part_2134834_2078081138.1424382581622
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Forgot to mention that I identified the line:src/pm/hydra/tools/topo/hwloc/=
hwloc/contrib/hg/set-hg-share-perms.csh:1:#!/bin/csh -f
It seems that one script uses /bin/ch, and also another one using /bin/bash=
.Adding RDEPENDS_${PN} +=3D "bash perl tcsh" did not solved the problem. bu=
t maybe changing them o /bin/sh will do.The idea is similar to the change f=
rom=20
meta/recipes-extended/lsb/lsbtest/LSB_Test.sLink: [OE-core] [PATCH 6/9] lsb=
test: no bashism in LSB_Test.sh=C2=A0=20

| =C2=A0 |
| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 |
| [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh[OE-core] [PATCH =
6/9] lsbtest: no bashism in LSB_Test.sh Robert Yang liezhi.yang at windrive=
r.com Wed Aug 27 15:57:11 UTC 2014  |
|  |
| View on lists.openembedded.org | Preview by Yahoo |
|  |
| =C2=A0 |

What do you say?

Alex Vaduva=20

     On Thursday, February 19, 2015 11:44 PM, Alexandru. Vaduva <Alexandru.=
Vaduva@enea.com> wrote:
  =20

 From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>

This patch add mpich support to yocto in order to run MPI framework on embe=
dded
systems.

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29 +++++++++++++++++++++++=
++++
 1 file changed, 29 insertions(+)
 create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb b/meta-oe/recipe=
s-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..2f4226e
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,29 @@
+SUMMARY =3D "Message Passing Interface(MPI) implementation"
+HOMEPAGE =3D "http://git.mpich.org/mpich.git/"
+SECTION =3D "devel"
+
+LICENSE =3D "BSD-2-Clause"
+LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3D2106f0435056f3dd9349747a766e5=
816"
+
+SRC_URI =3D "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.g=
z"
+SRC_URI[md5sum] =3D "40dc408b1e03cc36d80209baaa2d32b7"
+SRC_URI[sha256sum] =3D "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea2650=
4fd3018757652d"
+
+RDEPENDS_${PN} +=3D "bash perl tcsh"
+S =3D "${WORKDIR}/${PN}-${PV}"
+
+EXTRA_OECONF =3D "--enable-debuginfo \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-fast \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-shared=C2=
=A0 \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-f77 \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fc \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fortran =
\
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-cxx"
+
+inherit autotools-brokensep gettext
+
+do_configure_prepend() {
+=C2=A0 =C2=A0 autoreconf --verbose --install --force -I . -I confdb/ -I ma=
int/
+=C2=A0 =C2=A0 oe_runconf
+=C2=A0 =C2=A0 exit
+}
--=20
1.9.1

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_2134834_2078081138.1424382581622
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1424382251455_5514">Forgot to mention=
 that I identified the line:</div><div id=3D"yui_3_16_0_1_1424382251455_594=
6" dir=3D"ltr">src/pm/hydra/tools/topo/hwloc/hwloc/contrib/hg/set-hg-share-=
perms.csh:1:#!/bin/csh -f</div><div id=3D"yui_3_16_0_1_1424382251455_5947" =
dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1424382251455_5493" dir=3D"lt=
r">It seems that one script uses /bin/ch, and also another one using /bin/b=
ash.</div><div id=3D"yui_3_16_0_1_1424382251455_6154" dir=3D"ltr">Adding RD=
EPENDS_${PN} +=3D "bash perl tcsh" did not solved the problem. but maybe ch=
anging them o /bin/sh will do.</div><div id=3D"yui_3_16_0_1_1424382251455_7=
287" dir=3D"ltr">The idea is similar to the change from <br></div><pre id=
=3D"yui_3_16_0_1_1424382251455_7527" style=3D"" class=3D"">meta/recipes-ext=
ended/lsb/lsbtest/LSB_Test.s</pre><div id=3D"yui_3_16_0_1_1424382251455_727=
0" dir=3D"ltr">Link: <a id=3D"yui_3_16_0_1_1424382251455_7269" href=3D"http=
://lists.openembedded.org/pipermail/openembedded-core/2014-August/096388.ht=
ml">[OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh</a>&nbsp; <br>=
</div><div style=3D"width:450px; font-family: 'Georgia', 'Times', 'Times Ne=
w Roman', 'serif';margin-top:5px; margin-bottom: 5px; background-color: #ff=
ffff;" id=3D"enhancrCard_0" class=3D"link-enhancr-attachment link-enhancr-e=
lement" contenteditable=3D"false"><table id=3D"yui_3_16_0_1_1424382251455_7=
519" class=3D"link-enhancr-element" style=3D"width:450px; height:auto; posi=
tion: relative; display: block;" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0"><tbody id=3D"yui_3_16_0_1_1424382251455_7518"><tr id=3D"yui_3_16_0_1=
_1424382251455_7530" class=3D"link-enhancr-element"><td id=3D"yui_3_16_0_1_=
1424382251455_7529" class=3D"link-enhancr-element" colspan=3D"7" style=3D"h=
eight: 1px; background-color: #e5e5e5; font-size: 1px; border-collapse: col=
lapse;"><div id=3D"yui_3_16_0_1_1424382251455_7528" class=3D"link-enhancr-e=
lement" style=3D"height: 1px; background-color: #e5e5e5; font-size: 1px; li=
ne-height:0px;">&nbsp;</div></td></tr><tr id=3D"yui_3_16_0_1_1424382251455_=
7517" class=3D"link-enhancr-element"><td rowspan=3D"5" class=3D"link-enhanc=
r-element" style=3D"width: 1px; background-color: #e5e5e5; font-size: 1pt; =
border-collapse: collapse;"><div class=3D"link-enhancr-element" style=3D"wi=
dth: 1px; background-color: #e5e5e5; font-size: 1pt;">&nbsp;</div></td><td =
rowspan=3D"5" class=3D"link-enhancr-element" style=3D"width: 14px; backgrou=
nd-color: #ffffff; font-size: 0pt; border-collapse: collapse;"><div class=
=3D"link-enhancr-element" style=3D"width: 14px; background-color: #ffffff; =
font-size: 14pt;">&nbsp;</div></td><td id=3D"yui_3_16_0_1_1424382251455_751=
6" colspan=3D"2" class=3D"link-enhancr-element" style=3D"height: 6px; backg=
round-color: #ffffff; font-size: 0pt; border-collapse: collapse;"><div id=
=3D"yui_3_16_0_1_1424382251455_7515" class=3D"link-enhancr-element" style=
=3D"height: 6px; background-color: #ffffff; font-size: 6pt;">&nbsp;</div></=
td><td rowspan=3D"5" class=3D"link-enhancr-element" style=3D"width: 20px; b=
ackground-color: #ffffff; font-size: 0pt; border-collapse: collapse;"><div =
class=3D"link-enhancr-element" style=3D"width: 20px; background-color: #fff=
fff; font-size: 20pt;">&nbsp;</div></td><td class=3D"link-enhancr-element" =
rowspan=3D"5" style=3D"width: 1px; background-color: #e5e5e5; font-size: 1p=
t; border-collapse: collapse;" width=3D"1"><div class=3D"link-enhancr-eleme=
nt" style=3D"width: 1px; background-color: #e5e5e5; font-size: 1pt;">&nbsp;=
</div></td></tr><tr id=3D"yui_3_16_0_1_1424382251455_7525"><td id=3D"yui_3_=
16_0_1_1424382251455_7524" class=3D"link-enhancr-element" colspan=3D"2" sty=
le=3D"width: 100%; vertical-align: middle; font-family: 'Georgia', 'Times',=
 'Times New Roman', 'serif';"><div id=3D"yui_3_16_0_1_1424382251455_7523" c=
lass=3D"link-enhancr-text-part link-enhancr-element" style=3D"line-height:1=
6.5px; background-color: #ffffff;  width: 414px;"><div id=3D"yui_3_16_0_1_1=
424382251455_7522" class=3D"link-enhancr-element" style=3D"word-wrap: break=
-word; word-break: break-all;"><span class=3D"link-enhancr-element icon  ic=
on-shrink link-enhancr-toggle"></span><span class=3D"link-enhancr-element i=
con icon-close link-enhancr-delete"></span><a id=3D"yui_3_16_0_1_1424382251=
455_7521" href=3D"http://lists.openembedded.org/pipermail/openembedded-core=
/2014-August/096388.html" class=3D"link-enhancr-card-urlWrapper link-enhanc=
r-element" style=3D"text-decoration: none !important; color: #000000 !impor=
tant; line-height: 100%; font-size: 18px; display: block;"><span id=3D"yui_=
3_16_0_1_1424382251455_7520" class=3D"link-enhancr-element link-enhancr-car=
d-title" style=3D"margin: 0; font-weight: normal;margin-bottom: 3px; font-s=
ize: 18px; line-height: 21px; max-height: 43px; color: #000000; overflow: h=
idden !important; display: inline-block;">[OE-core] [PATCH 6/9] lsbtest: no=
 bashism in LSB_Test.sh</span></a><div id=3D"yui_3_16_0_1_1424382251455_753=
1" style=3D"font-size: 13px; line-height: 20px; color: #999999; max-height:=
 81px; font-family: 'Georgia', 'Times', 'Times New Roman', 'serif';overflow=
: hidden;" class=3D"link-enhancr-card-description link-enhancr-element">[OE=
-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh
    Robert Yang=20
    liezhi.yang at windriver.com Wed Aug 27 15:57:11 UTC 2014 </div></div><=
/div></td></tr><tr id=3D"yui_3_16_0_1_1424382251455_8009"><td id=3D"yui_3_1=
6_0_1_1424382251455_8008" colspan=3D"2" class=3D"link-enhancr-element" styl=
e=3D"height: 6px; background-color: #ffffff; font-size: 0pt; border-collaps=
e: collapse;"><div id=3D"yui_3_16_0_1_1424382251455_8007" class=3D"link-enh=
ancr-element" style=3D"height: 6px; background-color: #ffffff; font-size: 6=
pt;"></div></td></tr><tr id=3D"yui_3_16_0_1_1424382251455_7535"><td id=3D"y=
ui_3_16_0_1_1424382251455_7534" class=3D"link-enhancr-element" style=3D"ver=
tical-align: middle; font-family: 'Arial', 'Helvetica Neue', 'Helvetica', '=
sans-serif';"><div id=3D"yui_3_16_0_1_1424382251455_7533" class=3D"link-enh=
ancr-element" style=3D"font-size: 0pt;"><a id=3D"yui_3_16_0_1_1424382251455=
_7532" href=3D"http://lists.openembedded.org/pipermail/openembedded-core/20=
14-August/096388.html" class=3D"link-enhancr-card-url link-enhancr-element"=
 style=3D"color: black; text-decoration: none !important;cursor:pointer !im=
portant;" target=3D"_blank"><span id=3D"yui_3_16_0_1_1424382251455_7284" cl=
ass=3D"link-enhancr-element link-enhancr-view-on" style=3D"display: inline-=
block; line-height: 11px; max-width: 314px; min-width: 254px; overflow: hid=
den; max-height: 13px; word-break: break-all;"><span id=3D"yui_3_16_0_1_142=
4382251455_8011" class=3D"link-enhancr-element link-enhancr-mobile-no-resiz=
e" style=3D"vertical-align:middle; font-size: 9px; line-height: 11px; color=
: #999999; -moz-text-size-adjust: none; -ms-text-size-adjust: none; -webkit=
-text-size-adjust:none; text-size-adjust:none;">View on <span id=3D"yui_3_1=
6_0_1_1424382251455_8010" style=3D"font-weight: bold" class=3D"link-enhancr=
-view-on-domain">lists.openembedded.org</span></span></span></a></div></td>=
<td class=3D"link-enhancr-element" style=3D"vertical-align: middle; width: =
100px; font-family: 'Arial', 'Helvetica Neue', 'Helvetica', 'sans-serif';">=
<div class=3D"link-enhancr-element link-enhancr-preview-wrapper" style=3D"m=
ax-width: 100px; min-width: 80px; overflow: hidden; text-align: right; line=
-height: 11px; max-height: 13px; font-size: 0pt;"><span class=3D"link-enhan=
cr-element link-enhancr-preview-by link-enhancr-mobile-no-resize" style=3D"=
vertical-align:middle; font-size: 9px; line-height: 11px; color: #999999; -=
moz-text-size-adjust: none; -ms-text-size-adjust: none; -webkit-text-size-a=
djust:none; text-size-adjust:none;">Preview by Yahoo</span></div></td></tr>=
<tr id=3D"yui_3_16_0_1_1424382251455_8014"><td id=3D"yui_3_16_0_1_142438225=
1455_8013" colspan=3D"2" class=3D"link-enhancr-element" style=3D"height: 9p=
x; background-color: #ffffff; font-size: 0pt; border-collapse: collapse;"><=
div id=3D"yui_3_16_0_1_1424382251455_8012" class=3D"link-enhancr-element" s=
tyle=3D"height: 9px; background-color: #ffffff; font-size: 9pt;"></div></td=
></tr><tr class=3D"link-enhancr-element"><td class=3D"link-enhancr-element"=
 colspan=3D"7" style=3D"height: 1px; background-color: #e5e5e5; font-size: =
1px; border-collapse: collapse;"><div class=3D"link-enhancr-element" style=
=3D"height: 1px; background-color: #e5e5e5; font-size: 1px; line-height:0px=
">&nbsp;</div></td></tr></tbody></table></div><div id=3D"yui_3_16_0_1_14243=
82251455_8016" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1424382251455_8015">Wha=
t do you say?</span></div><div id=3D"yui_3_16_0_1_1424382251455_8017" dir=
=3D"ltr"><br><span></span></div><div id=3D"yui_3_16_0_1_1424382251455_8018"=
 dir=3D"ltr"><br><span></span></div><div id=3D"yui_3_16_0_1_1424382251455_8=
020" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1424382251455_8019">Alex Vaduva</=
span></div> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D"displa=
y: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue=
, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 1=
2px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica,=
 Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <fo=
nt size=3D"2" face=3D"Arial"> On Thursday, February 19, 2015 11:44 PM, Alex=
andru. Vaduva &lt;Alexandru.Vaduva@enea.com&gt; wrote:<br> </font> </div>  =
<br><br> <div class=3D"y_msg_container">From: Victor Rodriguez &lt;<a ymail=
to=3D"mailto:victor.rodriguez.bahena@intel.com" href=3D"mailto:victor.rodri=
guez.bahena@intel.com">victor.rodriguez.bahena@intel.com</a>&gt;<br><br>Thi=
s patch add mpich support to yocto in order to run MPI framework on embedde=
d<br>systems.<br><br>Signed-off-by: Alejandro Hernandez &lt;<a ymailto=3D"m=
ailto:alejandro.hernandez@linux.intel.com" href=3D"mailto:alejandro.hernand=
ez@linux.intel.com">alejandro.hernandez@linux.intel.com</a>&gt;<br>Signed-o=
ff-by: Victor Rodriguez &lt;<a ymailto=3D"mailto:victor.rodriguez.bahena@in=
tel.com" href=3D"mailto:victor.rodriguez.bahena@intel.com">victor.rodriguez=
.bahena@intel.com</a>&gt;<br>Signed-off-by: Alexandru.Vaduva &lt;<a ymailto=
=3D"mailto:Alexandru.Vaduva@enea.com" href=3D"mailto:Alexandru.Vaduva@enea.=
com">Alexandru.Vaduva@enea.com</a>&gt;<br>---<br> meta-oe/recipes-devtools/=
mpich/mpich_3.1.1.bb | 29 +++++++++++++++++++++++++++<br> 1 file changed, 2=
9 insertions(+)<br> create mode 100644 meta-oe/recipes-devtools/mpich/mpich=
_3.1.1.bb<br><br>diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb=
 b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb<br>new file mode 100644<br=
>index 0000000..2f4226e<br>--- /dev/null<br>+++ b/meta-oe/recipes-devtools/=
mpich/mpich_3.1.1.bb<br>@@ -0,0 +1,29 @@<br>+SUMMARY =3D "Message Passing I=
nterface(MPI) implementation"<br>+HOMEPAGE =3D "<a href=3D"http://git.mpich=
.org/mpich.git/" target=3D"_blank">http://git.mpich.org/mpich.git/</a>"<br>=
+SECTION =3D "devel"<br>+<br>+LICENSE =3D "BSD-2-Clause"<br>+LIC_FILES_CHKS=
UM =3D "file://COPYRIGHT;md5=3D2106f0435056f3dd9349747a766e5816"<br>+<br>+S=
RC_URI =3D "<a href=3D"http://www.mpich.org/static/downloads/$" target=3D"_=
blank">http://www.mpich.org/static/downloads/$</a>{PV}/mpich-${PV}.tar.gz"<=
br>+SRC_URI[md5sum] =3D "40dc408b1e03cc36d80209baaa2d32b7"<br>+SRC_URI[sha2=
56sum] =3D "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652=
d"<br>+<br>+RDEPENDS_${PN} +=3D "bash perl tcsh"<br>+S =3D "${WORKDIR}/${PN=
}-${PV}"<br>+<br>+EXTRA_OECONF =3D "--enable-debuginfo \<br>+&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --enable-fast \<br>+&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --enable-shared&nbsp; \<br>+&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-f77 \<br>+&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-fc \<br>+&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-fortran \<br=
>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-cxx"<br=
>+<br>+inherit autotools-brokensep gettext<br>+<br>+do_configure_prepend() =
{<br>+&nbsp; &nbsp; autoreconf --verbose --install --force -I . -I confdb/ =
-I maint/<br>+&nbsp; &nbsp; oe_runconf<br>+&nbsp; &nbsp; exit<br>+}<br>-- <=
br>1.9.1<br><br>-- <br>_______________________________________________<br>y=
octo mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"m=
ailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=3D"http=
s://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.=
yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  </div=
> </div></body></html>

------=_Part_2134834_2078081138.1424382581622--
