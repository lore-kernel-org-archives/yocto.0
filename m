Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7753AE00837; Fri, 20 Feb 2015 09:01:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.138.91.19 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vaduvajanalexandru[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm3-vm2.bullet.mail.ne1.yahoo.com
	(nm3-vm2.bullet.mail.ne1.yahoo.com [98.138.91.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9737E00289
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 09:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1424451680; bh=E/rvDdTT4+RhLnkWUN/acB9DJ1LRgVvQwgZwE4qfSNc=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=TmbOfyG1bgxaDYpURFSyg8kUz/Zrx+tvBIHbk1+mzjI+/Spv49yI7aMwNxG9K83oVSdFS8uu9IGdCNLHL+qLcu+T58mToZJ3q1+WtsLuiIspvPS2N+AhgZGYM3kxwvt5Pmbuout3vouDGr2ATcq62N6F3W7TcEvf+8qiYfw96CSXEkxc9aaIKTRe777yfjRNWjzsINS3jAYti7KRpMDsrPfYhpdrmiiANaEQiH+5lfYHvLdeeCwGOQ/XHC1QzY/7Ni/XgPUnT1wxoP9e923Whk52GbDo6Qpa1+YuYPvLQGvyxGRS/AG99Dm1CZzhKsGRFKbBGoA784O2rr++wZ/B/w==
Received: from [98.138.100.118] by nm3.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Feb 2015 17:01:20 -0000
Received: from [98.138.89.249] by tm109.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Feb 2015 17:01:20 -0000
Received: from [127.0.0.1] by omp1041.mail.ne1.yahoo.com with NNFMP;
	20 Feb 2015 17:01:20 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 900141.34882.bm@omp1041.mail.ne1.yahoo.com
X-YMail-OSG: l7NcvkIVM1lmjM_KxxGPr9cvIV4xZrWVPETC8ykjWdT8hvVy61oR4kVSHgClEVX
	sB2H0C58MPAFKC08tvZYKVIgazl7kbyMZuqPWWf0cxUvcOJKAratTVXPORRDRctwfp7aIx_vt3_c
	B7cPQqyKcCrmkk9wx.hP2A4HqDBe_qSkPe1jBv.0Xw6LOL9W0ES8sEinsipR8us_TtaNIN0bbDWJ
	zvQkhP14dFnl8J7jzt8a6dM16s5Dm.iou2sgLcbSPcM5qDvv57BY8KOLjs_RXWgBhcZxFLXGuqP7
	oyqxvyKNthj3LTmaiVyRewXczmlvPWc2JTUdKAJKC_lBdhd_oDYF6JGP9NCgbqQjX_iHG_jDZsFX
	RuDfyL7vm1jifTrzbGFL5M3rS8uXOB3HQNUT0_EgbyVMh804dp2SYlPUFaOleOvqFZBdUva2P7Mk
	jj74ZU54Qby0kSDw44y_7AVipL4xLISVBahigIwBpX09pdQqTJl3RiY1Fnc80GApoRbcjd7yKyi0
	76ENyicnwJBpH4HpZLrV8In5aYvXFDYi6Z5EpE8OoD4xjvYURIdc8XXA0s7ylumaBipmWUDRPhwu
	N.rKJ91vDyNWWPXT0t7zXyacGKkrqxpTWrJcjsHWZQeNcgFhczzm9JXXwJe_L1Sok0BKXT2Br7wX
	CvwRjLN9d4NU7ehWKX5ROKBhDoB1bTr3ttb3Bc74i7YwRcHvnSy8mqlhgCQKEg9tI0FGJ41iqqGh
	0tfAqR.ekfoeuDG_bf8Rsy_OMZ2JdPLN31D24SqP9SkiNe5Y-
Received: by 98.138.105.226; Fri, 20 Feb 2015 17:01:20 +0000 
Date: Fri, 20 Feb 2015 17:01:19 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: "Rodriguez Bahena, Victor" <victor.rodriguez.bahena@intel.com>
Message-ID: <2021830550.2900621.1424451679741.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1424449171.16673.20.camel@vrodri3-mobl2.amr.corp.intel.com>
References: <1424449171.16673.20.camel@vrodri3-mobl2.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 20 Feb 2015 17:01:24 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2900620_1488734473.1424451679734"

------=_Part_2900620_1488734473.1424451679734
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, it is my opinion that adding to RDPENDS libxml2 and libpciaccess and c=
hanging the /bin/csh and /bin/bash to /bin/sh should solve those warnings.
The Warnings are related with the patch done by Richard Yang. Here`s a link=
:[OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages
| =C2=A0 |
| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 |
| [OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages=
[OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages R=
obert Yang liezhi.yang at windriver.com Mon Aug 18 06:06:31 UTC 2014  |
|  |
| View on lists.openembedded.org | Preview by Yahoo |
|  |
| =C2=A0 |

Hope I am not wrong=C2=A0 with my assumption, but I am pretty sure about th=
is one ;)

Alex Vaduva


     On Friday, February 20, 2015 6:19 PM, "Rodriguez Bahena, Victor" <vict=
or.rodriguez.bahena@intel.com> wrote:
  =20

 So let me see if I understand, the following error ( build log from this
patch):=20

NOTE: Executing RunQueue Tasks
ERROR: QA Issue: package mpich contains bad
RPATH /home/vrodri3/poky/build/tmp/sysroots/qemux86/usr/lib in
file /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/packa=
ges-split/mpich/usr/bin/i586-poky-linux-mpiexec.hydra [rpaths]
WARNING: QA Issue: mpich rdepends on libxml2, but it isn't a build
dependency? [build-deps]
WARNING: QA Issue: mpich rdepends on libpciaccess, but it isn't a build
dependency? [build-deps]
WARNING: QA Issue: mpich requires /usr/bin/bash, but no providers in its
RDEPENDS [file-rdeps]
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored
in: /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/temp/l=
og.do_package_qa.20022
ERROR: Task 9
(/home/vrodri3/meta-openembedded/meta-oe/recipes-devtools/mpich/mpich_3.1.1=
.bb, do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 667 tasks of which 646 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:


Is due to the fact that some of the QA scripts need sh instead of bash
( or something similar ) ?=20

I am a little bit lost here=20

Thanks for the help

Victor Rodriguez



On Thu, 2015-02-19 at 21:49 +0000, Alexandru Vaduva wrote:
> Forgot to mention that I identified the line:
> src/pm/hydra/tools/topo/hwloc/hwloc/contrib/hg/set-hg-share-perms.csh:1:#=
!/bin/csh -f
>=20
>=20
> It seems that one script uses /bin/ch, and also another one
> using /bin/bash.
> Adding RDEPENDS_${PN} +=3D "bash perl tcsh" did not solved the problem.
> but maybe changing them o /bin/sh will do.
> The idea is similar to the change from=20
>=20
> meta/recipes-extended/lsb/lsbtest/LSB_Test.s
> Link: [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh=C2=A0=20
>=20
>=C2=A0=20
>=C2=A0=20
>=C2=A0=20
>=C2=A0=20
>=C2=A0=20
>=C2=A0=20
> [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh
> [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh Robert Yang
> liezhi.yang at windriver.com Wed Aug 27 15:57:11 UTC 2014=20
>=20
> View on lists.openembedded.org
> Preview by Yahoo
>=20
>=C2=A0=20
> What do you say?
>=20
>=20
>=20
>=20
> Alex Vaduva
>=20
>=20
>=20
> On Thursday, February 19, 2015 11:44 PM, Alexandru. Vaduva
> <Alexandru.Vaduva@enea.com> wrote:
>=20
>=20
>=20
> From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
>=20
> This patch add mpich support to yocto in order to run MPI framework on
> embedded
> systems.
>=20
> Signed-off-by: Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com>
> Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
> Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
> ---
> meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29
> +++++++++++++++++++++++++++
> 1 file changed, 29 insertions(+)
> create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
>=20
> diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> new file mode 100644
> index 0000000..2f4226e
> --- /dev/null
> +++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> @@ -0,0 +1,29 @@
> +SUMMARY =3D "Message Passing Interface(MPI) implementation"
> +HOMEPAGE =3D "http://git.mpich.org/mpich.git/"
> +SECTION =3D "devel"
> +
> +LICENSE =3D "BSD-2-Clause"
> +LIC_FILES_CHKSUM =3D
> "file://COPYRIGHT;md5=3D2106f0435056f3dd9349747a766e5816"
> +
> +SRC_URI =3D
> "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
> +SRC_URI[md5sum] =3D "40dc408b1e03cc36d80209baaa2d32b7"
> +SRC_URI[sha256sum] =3D
> "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
> +
> +RDEPENDS_${PN} +=3D "bash perl tcsh"
> +S =3D "${WORKDIR}/${PN}-${PV}"
> +
> +EXTRA_OECONF =3D "--enable-debuginfo \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-fast \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-shared=
=C2=A0 \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-f77 \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fc \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fortra=
n \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-cxx"
> +
> +inherit autotools-brokensep gettext
> +
> +do_configure_prepend() {
> +=C2=A0 =C2=A0 autoreconf --verbose --install --force -I . -I confdb/ -I =
maint/
> +=C2=A0 =C2=A0 oe_runconf
> +=C2=A0 =C2=A0 exit
> +}
> --=20
> 1.9.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20


--=20
Victor Rodriguez

Open Source Technology Center



   

------=_Part_2900620_1488734473.1424451679734
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1424437063932_34464" dir=3D"ltr">Yes,=
 it is my opinion that adding to RDPENDS libxml2 and libpciaccess and chang=
ing the /bin/csh and /bin/bash to /bin/sh should solve those warnings.</div=
><div id=3D"yui_3_16_0_1_1424437063932_36951" dir=3D"ltr"><br></div><div id=
=3D"yui_3_16_0_1_1424437063932_38344" dir=3D"ltr">The Warnings are related =
with the patch done by Richard Yang. Here`s a link:</div><div id=3D"yui_3_1=
6_0_1_1424437063932_39709" dir=3D"ltr"><a id=3D"yui_3_16_0_1_1424437063932_=
39708" href=3D"http://lists.openembedded.org/pipermail/openembedded-core/20=
14-August/096010.html">[OE-core] [PATCH 0/6] meta: fix rdepends issues for =
test related packages</a></div><div style=3D"width:450px; font-family: 'Geo=
rgia', 'Times', 'Times New Roman', 'serif';margin-top:5px; margin-bottom: 5=
px; background-color: #ffffff;" id=3D"enhancrCard_0" class=3D"link-enhancr-=
attachment link-enhancr-element" contenteditable=3D"false"><table id=3D"yui=
_3_16_0_1_1424437063932_39732" class=3D"link-enhancr-element" style=3D"widt=
h:450px; height:auto; position: relative; display: block;" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0"><tbody id=3D"yui_3_16_0_1_1424437063932_39=
731"><tr class=3D"link-enhancr-element"><td class=3D"link-enhancr-element" =
colspan=3D"7" style=3D"height: 1px; background-color: #e5e5e5; font-size: 1=
px; border-collapse: collapse;"><div class=3D"link-enhancr-element" style=
=3D"height: 1px; background-color: #e5e5e5; font-size: 1px; line-height:0px=
;">&nbsp;</div></td></tr><tr id=3D"yui_3_16_0_1_1424437063932_39734" class=
=3D"link-enhancr-element"><td rowspan=3D"5" class=3D"link-enhancr-element" =
style=3D"width: 1px; background-color: #e5e5e5; font-size: 1pt; border-coll=
apse: collapse;"><div class=3D"link-enhancr-element" style=3D"width: 1px; b=
ackground-color: #e5e5e5; font-size: 1pt;">&nbsp;</div></td><td rowspan=3D"=
5" class=3D"link-enhancr-element" style=3D"width: 14px; background-color: #=
ffffff; font-size: 0pt; border-collapse: collapse;"><div class=3D"link-enha=
ncr-element" style=3D"width: 14px; background-color: #ffffff; font-size: 14=
pt;">&nbsp;</div></td><td colspan=3D"2" class=3D"link-enhancr-element" styl=
e=3D"height: 6px; background-color: #ffffff; font-size: 0pt; border-collaps=
e: collapse;"><div class=3D"link-enhancr-element" style=3D"height: 6px; bac=
kground-color: #ffffff; font-size: 6pt;">&nbsp;</div></td><td id=3D"yui_3_1=
6_0_1_1424437063932_39733" rowspan=3D"5" class=3D"link-enhancr-element" sty=
le=3D"width: 20px; background-color: #ffffff; font-size: 0pt; border-collap=
se: collapse;"><div class=3D"link-enhancr-element" style=3D"width: 20px; ba=
ckground-color: #ffffff; font-size: 20pt;">&nbsp;</div></td><td class=3D"li=
nk-enhancr-element" rowspan=3D"5" style=3D"width: 1px; background-color: #e=
5e5e5; font-size: 1pt; border-collapse: collapse;" width=3D"1"><div class=
=3D"link-enhancr-element" style=3D"width: 1px; background-color: #e5e5e5; f=
ont-size: 1pt;">&nbsp;</div></td></tr><tr id=3D"yui_3_16_0_1_1424437063932_=
39730"><td id=3D"yui_3_16_0_1_1424437063932_39729" class=3D"link-enhancr-el=
ement" colspan=3D"2" style=3D"width: 100%; vertical-align: middle; font-fam=
ily: 'Georgia', 'Times', 'Times New Roman', 'serif';"><div id=3D"yui_3_16_0=
_1_1424437063932_39728" class=3D"link-enhancr-text-part link-enhancr-elemen=
t" style=3D"line-height:16.5px; background-color: #ffffff;  width: 414px;">=
<div id=3D"yui_3_16_0_1_1424437063932_39727" class=3D"link-enhancr-element"=
 style=3D"word-wrap: break-word; word-break: break-all;"><span class=3D"lin=
k-enhancr-element icon  icon-shrink link-enhancr-toggle"></span><span class=
=3D"link-enhancr-element icon icon-close link-enhancr-delete"></span><a id=
=3D"yui_3_16_0_1_1424437063932_39761" href=3D"http://lists.openembedded.org=
/pipermail/openembedded-core/2014-August/096010.html" class=3D"link-enhancr=
-card-urlWrapper link-enhancr-element" style=3D"text-decoration: none !impo=
rtant; color: #000000 !important; line-height: 100%; font-size: 18px; displ=
ay: block;"><span id=3D"yui_3_16_0_1_1424437063932_39760" class=3D"link-enh=
ancr-element link-enhancr-card-title" style=3D"margin: 0; font-weight: norm=
al;margin-bottom: 3px; font-size: 18px; line-height: 21px; max-height: 43px=
; color: #000000; overflow: hidden !important; display: inline-block;">[OE-=
core] [PATCH 0/6] meta: fix rdepends issues for test related packages</span=
></a><div id=3D"yui_3_16_0_1_1424437063932_39726" style=3D"font-size: 13px;=
 line-height: 20px; color: #999999; max-height: 81px; font-family: 'Georgia=
', 'Times', 'Times New Roman', 'serif';overflow: hidden;" class=3D"link-enh=
ancr-card-description link-enhancr-element">[OE-core] [PATCH 0/6] meta: fix=
 rdepends issues for test related=09packages
    Robert Yang=20
    liezhi.yang at windriver.com Mon Aug 18 06:06:31 UTC 2014 </div></div><=
/div></td></tr><tr id=3D"yui_3_16_0_1_1424437063932_40024"><td id=3D"yui_3_=
16_0_1_1424437063932_40023" colspan=3D"2" class=3D"link-enhancr-element" st=
yle=3D"height: 6px; background-color: #ffffff; font-size: 0pt; border-colla=
pse: collapse;"><div id=3D"yui_3_16_0_1_1424437063932_40022" class=3D"link-=
enhancr-element" style=3D"height: 6px; background-color: #ffffff; font-size=
: 6pt;"></div></td></tr><tr id=3D"yui_3_16_0_1_1424437063932_40028"><td cla=
ss=3D"link-enhancr-element" style=3D"vertical-align: middle; font-family: '=
Arial', 'Helvetica Neue', 'Helvetica', 'sans-serif';"><div class=3D"link-en=
hancr-element" style=3D"font-size: 0pt;"><a href=3D"http://lists.openembedd=
ed.org/pipermail/openembedded-core/2014-August/096010.html" class=3D"link-e=
nhancr-card-url link-enhancr-element" style=3D"color: black; text-decoratio=
n: none !important;cursor:pointer !important;" target=3D"_blank"><span id=
=3D"yui_3_16_0_1_1424437063932_39723" class=3D"link-enhancr-element link-en=
hancr-view-on" style=3D"display: inline-block; line-height: 11px; max-width=
: 314px; min-width: 254px; overflow: hidden; max-height: 13px; word-break: =
break-all;"><span class=3D"link-enhancr-element link-enhancr-mobile-no-resi=
ze" style=3D"vertical-align:middle; font-size: 9px; line-height: 11px; colo=
r: #999999; -moz-text-size-adjust: none; -ms-text-size-adjust: none; -webki=
t-text-size-adjust:none; text-size-adjust:none;">View on <span style=3D"fon=
t-weight: bold" class=3D"link-enhancr-view-on-domain">lists.openembedded.or=
g</span></span></span></a></div></td><td id=3D"yui_3_16_0_1_1424437063932_4=
0027" class=3D"link-enhancr-element" style=3D"vertical-align: middle; width=
: 100px; font-family: 'Arial', 'Helvetica Neue', 'Helvetica', 'sans-serif';=
"><div id=3D"yui_3_16_0_1_1424437063932_40026" class=3D"link-enhancr-elemen=
t link-enhancr-preview-wrapper" style=3D"max-width: 100px; min-width: 80px;=
 overflow: hidden; text-align: right; line-height: 11px; max-height: 13px; =
font-size: 0pt;"><span id=3D"yui_3_16_0_1_1424437063932_40025" class=3D"lin=
k-enhancr-element link-enhancr-preview-by link-enhancr-mobile-no-resize" st=
yle=3D"vertical-align:middle; font-size: 9px; line-height: 11px; color: #99=
9999; -moz-text-size-adjust: none; -ms-text-size-adjust: none; -webkit-text=
-size-adjust:none; text-size-adjust:none;">Preview by Yahoo</span></div></t=
d></tr><tr id=3D"yui_3_16_0_1_1424437063932_40031"><td id=3D"yui_3_16_0_1_1=
424437063932_40030" colspan=3D"2" class=3D"link-enhancr-element" style=3D"h=
eight: 9px; background-color: #ffffff; font-size: 0pt; border-collapse: col=
lapse;"><div id=3D"yui_3_16_0_1_1424437063932_40029" class=3D"link-enhancr-=
element" style=3D"height: 9px; background-color: #ffffff; font-size: 9pt;">=
</div></td></tr><tr id=3D"yui_3_16_0_1_1424437063932_40034" class=3D"link-e=
nhancr-element"><td id=3D"yui_3_16_0_1_1424437063932_40033" class=3D"link-e=
nhancr-element" colspan=3D"7" style=3D"height: 1px; background-color: #e5e5=
e5; font-size: 1px; border-collapse: collapse;"><div id=3D"yui_3_16_0_1_142=
4437063932_40032" class=3D"link-enhancr-element" style=3D"height: 1px; back=
ground-color: #e5e5e5; font-size: 1px; line-height:0px">&nbsp;</div></td></=
tr></tbody></table></div><div id=3D"yui_3_16_0_1_1424437063932_36953" dir=
=3D"ltr">Hope I am not wrong&nbsp; with my assumption, but I am pretty sure=
 about this one ;)</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr">Alex Vaduva<br></div><div class=3D"qtdSeparateBR"><br><=
br></div><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=
=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Gr=
ande, sans-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNe=
ue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size:=
 16px;"> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Friday, Febr=
uary 20, 2015 6:19 PM, "Rodriguez Bahena, Victor" &lt;victor.rodriguez.bahe=
na@intel.com&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_co=
ntainer">So let me see if I understand, the following error ( build log fro=
m this<br clear=3D"none">patch): <br clear=3D"none"><br clear=3D"none">NOTE=
: Executing RunQueue Tasks<br clear=3D"none">ERROR: QA Issue: package mpich=
 contains bad<br clear=3D"none">RPATH /home/vrodri3/poky/build/tmp/sysroots=
/qemux86/usr/lib in<br clear=3D"none">file /home/vrodri3/poky/build/tmp/wor=
k/i586-poky-linux/mpich/3.1.1-r0/packages-split/mpich/usr/bin/i586-poky-lin=
ux-mpiexec.hydra [rpaths]<br clear=3D"none">WARNING: QA Issue: mpich rdepen=
ds on libxml2, but it isn't a build<br clear=3D"none">dependency? [build-de=
ps]<br clear=3D"none">WARNING: QA Issue: mpich rdepends on libpciaccess, bu=
t it isn't a build<br clear=3D"none">dependency? [build-deps]<br clear=3D"n=
one">WARNING: QA Issue: mpich requires /usr/bin/bash, but no providers in i=
ts<br clear=3D"none">RDEPENDS [file-rdeps]<br clear=3D"none">ERROR: QA run =
found fatal errors. Please consider fixing them.<br clear=3D"none">ERROR: F=
unction failed: do_package_qa<br clear=3D"none">ERROR: Logfile of failure s=
tored<br clear=3D"none">in: /home/vrodri3/poky/build/tmp/work/i586-poky-lin=
ux/mpich/3.1.1-r0/temp/log.do_package_qa.20022<br clear=3D"none">ERROR: Tas=
k 9<br clear=3D"none">(/home/vrodri3/meta-openembedded/meta-oe/recipes-devt=
ools/mpich/mpich_3.1.1.bb, do_package_qa) failed with exit code '1'<br clea=
r=3D"none">NOTE: Tasks Summary: Attempted 667 tasks of which 646 didn't nee=
d to be<br clear=3D"none">rerun and 1 failed.<br clear=3D"none">Waiting for=
 0 running tasks to finish:<br clear=3D"none"><br clear=3D"none"><br clear=
=3D"none">Is due to the fact that some of the QA scripts need sh instead of=
 bash<br clear=3D"none">( or something similar ) ? <br clear=3D"none"><br c=
lear=3D"none">I am a little bit lost here <br clear=3D"none"><br clear=3D"n=
one">Thanks for the help<br clear=3D"none"><br clear=3D"none">Victor Rodrig=
uez<br clear=3D"none"><br clear=3D"none"><br clear=3D"none"><br clear=3D"no=
ne">On Thu, 2015-02-19 at 21:49 +0000, Alexandru Vaduva wrote:<br clear=3D"=
none">&gt; Forgot to mention that I identified the line:<br clear=3D"none">=
&gt; src/pm/hydra/tools/topo/hwloc/hwloc/contrib/hg/set-hg-share-perms.csh:=
1:#!/bin/csh -f<br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D=
"none">&gt; It seems that one script uses /bin/ch, and also another one<br =
clear=3D"none">&gt; using /bin/bash.<br clear=3D"none">&gt; Adding RDEPENDS=
_${PN} +=3D "bash perl tcsh" did not solved the problem.<br clear=3D"none">=
&gt; but maybe changing them o /bin/sh will do.<br clear=3D"none">&gt; The =
idea is similar to the change from <br clear=3D"none">&gt; <br clear=3D"non=
e">&gt; meta/recipes-extended/lsb/lsbtest/LSB_Test.s<br clear=3D"none">&gt;=
 Link: [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh&nbsp; <br c=
lear=3D"none">&gt; <br clear=3D"none">&gt;&nbsp; <br clear=3D"none">&gt;&nb=
sp; <br clear=3D"none">&gt;&nbsp; <br clear=3D"none">&gt;&nbsp; <br clear=
=3D"none">&gt;&nbsp; <br clear=3D"none">&gt;&nbsp; <br clear=3D"none">&gt; =
[OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh<br clear=3D"none">=
&gt; [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh Robert Yang<b=
r clear=3D"none">&gt; liezhi.yang at windriver.com Wed Aug 27 15:57:11 UTC =
2014 <br clear=3D"none">&gt; <br clear=3D"none">&gt; View on lists.openembe=
dded.org<br clear=3D"none">&gt; Preview by Yahoo<br clear=3D"none">&gt; <br=
 clear=3D"none">&gt;&nbsp; <br clear=3D"none">&gt; What do you say?<br clea=
r=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=
=3D"none">&gt; <br clear=3D"none">&gt; Alex Vaduva<br clear=3D"none">&gt; <=
br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; On T=
hursday, February 19, 2015 11:44 PM, Alexandru. Vaduva<br clear=3D"none">&g=
t; &lt;<a shape=3D"rect" ymailto=3D"mailto:Alexandru.Vaduva@enea.com" href=
=3D"mailto:Alexandru.Vaduva@enea.com">Alexandru.Vaduva@enea.com</a>&gt; wro=
te:<br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; =
<br clear=3D"none">&gt; From: Victor Rodriguez &lt;<a shape=3D"rect" ymailt=
o=3D"mailto:victor.rodriguez.bahena@intel.com" href=3D"mailto:victor.rodrig=
uez.bahena@intel.com">victor.rodriguez.bahena@intel.com</a>&gt;<br clear=3D=
"none">&gt; <br clear=3D"none">&gt; This patch add mpich support to yocto i=
n order to run MPI framework on<br clear=3D"none">&gt; embedded<br clear=3D=
"none">&gt; systems.<br clear=3D"none">&gt; <br clear=3D"none">&gt; Signed-=
off-by: Alejandro Hernandez<br clear=3D"none">&gt; &lt;<a shape=3D"rect" ym=
ailto=3D"mailto:alejandro.hernandez@linux.intel.com" href=3D"mailto:alejand=
ro.hernandez@linux.intel.com">alejandro.hernandez@linux.intel.com</a>&gt;<b=
r clear=3D"none">&gt; Signed-off-by: Victor Rodriguez &lt;<a shape=3D"rect"=
 ymailto=3D"mailto:victor.rodriguez.bahena@intel.com" href=3D"mailto:victor=
.rodriguez.bahena@intel.com">victor.rodriguez.bahena@intel.com</a>&gt;<br c=
lear=3D"none">&gt; Signed-off-by: Alexandru.Vaduva &lt;<a shape=3D"rect" ym=
ailto=3D"mailto:Alexandru.Vaduva@enea.com" href=3D"mailto:Alexandru.Vaduva@=
enea.com">Alexandru.Vaduva@enea.com</a>&gt;<br clear=3D"none">&gt; ---<br c=
lear=3D"none">&gt; meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29<br cl=
ear=3D"none">&gt; +++++++++++++++++++++++++++<br clear=3D"none">&gt; 1 file=
 changed, 29 insertions(+)<br clear=3D"none">&gt; create mode 100644 meta-o=
e/recipes-devtools/mpich/mpich_3.1.1.bb<br clear=3D"none">&gt; <br clear=3D=
"none">&gt; diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb<br c=
lear=3D"none">&gt; b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb<br clear=
=3D"none">&gt; new file mode 100644<br clear=3D"none">&gt; index 0000000..2=
f4226e<br clear=3D"none">&gt; --- /dev/null<br clear=3D"none">&gt; +++ b/me=
ta-oe/recipes-devtools/mpich/mpich_3.1.1.bb<br clear=3D"none">&gt; @@ -0,0 =
+1,29 @@<br clear=3D"none">&gt; +SUMMARY =3D "Message Passing Interface(MPI=
) implementation"<br clear=3D"none">&gt; +HOMEPAGE =3D "<a shape=3D"rect" h=
ref=3D"http://git.mpich.org/mpich.git/" target=3D"_blank">http://git.mpich.=
org/mpich.git/</a>"<br clear=3D"none">&gt; +SECTION =3D "devel"<br clear=3D=
"none">&gt; +<br clear=3D"none">&gt; +LICENSE =3D "BSD-2-Clause"<br clear=
=3D"none">&gt; +LIC_FILES_CHKSUM =3D<br clear=3D"none">&gt; "file://COPYRIG=
HT;md5=3D2106f0435056f3dd9349747a766e5816"<br clear=3D"none">&gt; +<br clea=
r=3D"none">&gt; +SRC_URI =3D<br clear=3D"none">&gt; "<a shape=3D"rect" href=
=3D"http://www.mpich.org/static/downloads/$" target=3D"_blank">http://www.m=
pich.org/static/downloads/$</a>{PV}/mpich-${PV}.tar.gz"<br clear=3D"none">&=
gt; +SRC_URI[md5sum] =3D "40dc408b1e03cc36d80209baaa2d32b7"<br clear=3D"non=
e">&gt; +SRC_URI[sha256sum] =3D<br clear=3D"none">&gt; "455ccfaf4ec724d2cf5=
d8bff1f3d26a958ad196121e7ea26504fd3018757652d"<br clear=3D"none">&gt; +<br =
clear=3D"none">&gt; +RDEPENDS_${PN} +=3D "bash perl tcsh"<br clear=3D"none"=
>&gt; +S =3D "${WORKDIR}/${PN}-${PV}"<br clear=3D"none">&gt; +<br clear=3D"=
none">&gt; +EXTRA_OECONF =3D "--enable-debuginfo \<br clear=3D"none">&gt; +=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --enable-fast \<br =
clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; --enable-shared&nbsp; \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; --disable-f77 \<br clear=3D"none">&gt; +&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-fc \<br clear=
=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --d=
isable-fortran \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; --disable-cxx"<br clear=3D"none">&gt; +<br clear=3D"n=
one">&gt; +inherit autotools-brokensep gettext<br clear=3D"none">&gt; +<br =
clear=3D"none">&gt; +do_configure_prepend() {<br clear=3D"none">&gt; +&nbsp=
; &nbsp; autoreconf --verbose --install --force -I . -I confdb/ -I maint/<b=
r clear=3D"none">&gt; +&nbsp; &nbsp; oe_runconf<br clear=3D"none">&gt; +&nb=
sp; &nbsp; exit<br clear=3D"none">&gt; +}<br clear=3D"none">&gt; -- <br cle=
ar=3D"none">&gt; 1.9.1<br clear=3D"none">&gt; <br clear=3D"none">&gt; -- <b=
r clear=3D"none">&gt; _______________________________________________<br cl=
ear=3D"none">&gt; yocto mailing list<br clear=3D"none">&gt; <a shape=3D"rec=
t" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a><br clear=3D"none">&gt; <a shape=3D"rect=
" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/yocto</a><div class=3D"yqt178451322=
4" id=3D"yqtfd14314"><br clear=3D"none">&gt; <br clear=3D"none">&gt; <br cl=
ear=3D"none">&gt; <br clear=3D"none"><br clear=3D"none"><br clear=3D"none">=
-- <br clear=3D"none">Victor Rodriguez</div><br clear=3D"none"><br clear=3D=
"none">Open Source Technology Center<div class=3D"yqt1784513224" id=3D"yqtf=
d69721"><br clear=3D"none"><br clear=3D"none"></div><br><br></div>  </div> =
</div>  </div> </div></body></html>

------=_Part_2900620_1488734473.1424451679734--
