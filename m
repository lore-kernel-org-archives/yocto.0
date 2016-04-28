Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F97AE00DC4; Thu, 28 Apr 2016 05:58:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 557D7E00DDA
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:58:17 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 05:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="693715769"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Apr 2016 05:58:05 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 15:58:02 +0300
Message-Id: <30805e6a3eff1a9bd18abd4da7e121ec472d6ca0.1461828099.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f4bbfdc24a820d1607650e6880ce885f3be0507c.1461828099.git.jussi.kukkonen@intel.com>
References: <f4bbfdc24a820d1607650e6880ce885f3be0507c.1461828099.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461828099.git.jussi.kukkonen@intel.com>
References: <cover.1461828099.git.jussi.kukkonen@intel.com>
Subject: [matchbox-sato][PATCH 2/2] Remove the qvga theme
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Apr 2016 12:58:37 -0000

Not maintaining a 320px theme in 2016...

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 Sato/matchbox/Makefile.am                  |  17 -----
 Sato/matchbox/arrow-down-active-qvga.png   | Bin 333 -> 0 bytes
 Sato/matchbox/arrow-down-qvga.png          | Bin 332 -> 0 bytes
 Sato/matchbox/close-button-active-qvga.png | Bin 400 -> 0 bytes
 Sato/matchbox/close-button-qvga.png        | Bin 362 -> 0 bytes
 Sato/matchbox/dia-left-edge-qvga.png       | Bin 218 -> 0 bytes
 Sato/matchbox/dia-right-edge-qvga.png      | Bin 225 -> 0 bytes
 Sato/matchbox/dia-tile-qvga.png            | Bin 188 -> 0 bytes
 Sato/matchbox/theme-qvga.xml               | 109 -----------------------------
 Sato/matchbox/{theme-vga.xml => theme.xml} |   0
 Sato/matchbox/titlebar-left-edge-qvga.png  | Bin 383 -> 0 bytes
 Sato/matchbox/titlebar-right-edge-qvga.png | Bin 385 -> 0 bytes
 Sato/matchbox/titlebar-tile-qvga.png       | Bin 267 -> 0 bytes
 configure.ac                               |  16 +----
 14 files changed, 1 insertion(+), 141 deletions(-)
 delete mode 100644 Sato/matchbox/arrow-down-active-qvga.png
 delete mode 100644 Sato/matchbox/arrow-down-qvga.png
 delete mode 100644 Sato/matchbox/close-button-active-qvga.png
 delete mode 100644 Sato/matchbox/close-button-qvga.png
 delete mode 100644 Sato/matchbox/dia-left-edge-qvga.png
 delete mode 100644 Sato/matchbox/dia-right-edge-qvga.png
 delete mode 100644 Sato/matchbox/dia-tile-qvga.png
 delete mode 100644 Sato/matchbox/theme-qvga.xml
 rename Sato/matchbox/{theme-vga.xml => theme.xml} (100%)
 delete mode 100644 Sato/matchbox/titlebar-left-edge-qvga.png
 delete mode 100644 Sato/matchbox/titlebar-right-edge-qvga.png
 delete mode 100644 Sato/matchbox/titlebar-tile-qvga.png

diff --git a/Sato/matchbox/Makefile.am b/Sato/matchbox/Makefile.am
index 1bbc49e..177ba77 100644
--- a/Sato/matchbox/Makefile.am
+++ b/Sato/matchbox/Makefile.am
@@ -10,27 +10,10 @@ pngs = \
   dia-right-edge.png       \
   dia-tile.png
   
-qvgapngs = \
-  close-button-qvga.png         \
-  close-button-active-qvga.png  \
-  arrow-down-qvga.png           \
-  arrow-down-active-qvga.png    \
-  titlebar-left-edge-qvga.png   \
-  titlebar-right-edge-qvga.png  \
-  titlebar-tile-qvga.png        \
-  dia-left-edge-qvga.png        \
-  dia-right-edge-qvga.png       \
-  dia-tile-qvga.png
-
 themesdir = $(datadir)/themes/Sato/matchbox
 
-if WITH_QVGA
-themes_DATA = theme.xml $(qvgapngs)
-EXTRA_DIST = theme.xml $(qvgapngs) 
-else
 themes_DATA = theme.xml $(pngs)
 EXTRA_DIST = theme.xml $(pngs) 
-endif
 
 clean:
 	rm -f theme.desktop
diff --git a/Sato/matchbox/arrow-down-active-qvga.png b/Sato/matchbox/arrow-down-active-qvga.png
deleted file mode 100644
index 165a89021ae7b71e8b29c1a87c3ce632bb695210..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 333
zcmV-T0kZyyP)<h;3K|Lk000e1NJLTq000mG000OG1^@s6@OFQf00009a7bBm000ie
z000ie0hKEb8vp<R|4BqaR49>!kugd`Q4mE>qC}HQG*~4lh>|7D11ndMq!@yQdzkFX
zK_s||KMPQ>P>7F!rC?!UG}!zfJ`!=tGv{(2^AM3v&Uun^o|svef5y!Aa?Yci^GHN?
zw^K?3;H+F8r<7)@`nW0V?k6HL2HF5ArFj#020lxtB_itX7b3C_iU{t0E+Usz82AES
z8fA0W%qGBot?)@zZ-JG&4}n2#_Z|_~s`}cfwd}b27&xtoZ@>yTsIj@K-bBO)z*a>U
zi^X?Q6!-mpzuD{cj!N7HI+YU<#dJEIMZ~gV>lgew)<8stK&wQ{h`3YLhfV&*F|%&@
fy;o*-_?PzsxYuF(z{6P@00000NkvXXu0mjf<^qhS

diff --git a/Sato/matchbox/arrow-down-qvga.png b/Sato/matchbox/arrow-down-qvga.png
deleted file mode 100644
index ed60885f1ffce5768f8a3dc84e52712c486a0154..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 332
zcmV-S0ki&zP)<h;3K|Lk000e1NJLTq000mG000OG1^@s6@OFQf00009a7bBm000ie
z000ie0hKEb8vp<R{z*hZR49>skfBNhVHAbGS%kl=zaZQPFo@t=SPWutv53iF-s~Ee
z1(T0p*q|VSHqoSZqu5Nw+pfrXz#T0!GRokM=brN&I7L~O=I$rJSI&8qbAINZi-@I&
z7z3Eua8A+y*sPyxlJ?B(vMcQF>yplZMF2_nJ>V92t37>57w$fh)N6v0aQBg<>n03*
z01rh~RYb&UL|g&Ot->2K+XZIsJ_WW~zt@z~wwXN^RaG@D3+{djY_yCoz$dWM((cS`
zC#B>7KY$uiM8sIqAy9P8aBOA=DWzE>`~tMb8c3P~{aSiYDeart`Co4*0BCkO0_Jnh
e!<_R|m+u=jB!VK99(=C=0000<MNUMnLSTZ;-;8<y

diff --git a/Sato/matchbox/close-button-active-qvga.png b/Sato/matchbox/close-button-active-qvga.png
deleted file mode 100644
index bdb081602b5b72ffee1df7a652a4409e232f7fb2..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 400
zcmV;B0dM|^P)<h;3K|Lk000e1NJLTq000mG000mO1^@s6AM^iV00009a7bBm000ie
z000ie0hKEb8vp<SLP<nHR5*>TQ$bEbF%W&fF(JSLS?UGQ8=x_nbY%idSi69OOnN9y
zTs4yr^#;lT(5)<huz9%fmoya@L|@WmI(e_1*O>wZRJBX8PjW=^u3jUOeO2w2{3-<^
z;$n<_02g__zz)Eh_x{DqxIds4-vT)QMOfn9d;e%=tN?)IHGoS1A0dQi01Z{W0nn)h
z%Mij0z*beS0Gt7Mb<RB{&l8f<+@pvzNsdX5MWk80(UjywRl6su+RHpQ64A^y-us6X
zXXPhOrK-J(<OslND%E>`UkLUPk!Fl>m|6RD0NNR+6Js2TNb7*ORfqwg?GD{^3><(}
zwoew;CDF{*-urt1%PhTe02XN%LYU?LMWmJ6F|$qG&V+>vA<XeTVF0kr#LXDvAjUYz
u+n8~7A%yv#2kC!CIXmR&&-4Swe&;Wdf7z-DS00Z50000<MNUMnLSTZu#Hc_3

diff --git a/Sato/matchbox/close-button-qvga.png b/Sato/matchbox/close-button-qvga.png
deleted file mode 100644
index 8d10c21cd1ce2b4eac0bd1f49eecfdb3a45d1bf8..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 362
zcmV-w0hRuVP)<h;3K|Lk000e1NJLTq000mG000mO1^@s6AM^iV00009a7bBm000ie
z000ie0hKEb8vp<S97#k$R5*>T(=kc|Q4j{;&qr#T4cMhfP9O;0B4F<cw24+8!A={!
zgH<4R5D~;9Sl9)U###o8orlk;py&?+yEFgH+x_Q%TM=OcV@$D+oy;w9j|HAu@>Vlo
zfEf-@Hm4>6b6n!J9WcNJ_P%M{!~;(7T2Go~^CJ#%gy*K=Idg}}*~=axVjK~-5pfq0
zlZcSfMZ`@;*W@S3y^V<RAO)*mvfZ4z#&Pp(gHtdqdbKOg&^7O?jEXKf75l~es$hg`
z41LBhYojK&^WD0BjG{M5MOAzC1$X81c9uo&u!?gZ1snSKJL}|B+!wt)s~umOVu!1Y
zR@ll3EQ;RS^Gu#%f?e-|Rbh9tcADHdp8jm*f4fXAes!JS09jLlh{Qd`rvLx|07*qo
IM6N<$f*-h=P5=M^

diff --git a/Sato/matchbox/dia-left-edge-qvga.png b/Sato/matchbox/dia-left-edge-qvga.png
deleted file mode 100644
index 1ab21a2b3f6df5506d2299a82191087ce4ac3bed..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 218
zcmeAS@N?(olHy`uVBq!ia0vp^Y(Ol*0U~b-^ehHaoCO|{#S9F5M?jcysy3fAP_W0-
z#W6%<;@Jsn1(_8^TBh@;USMI<>2sSPv1-Q_2iJ|}6)9c^lH}|IPu`K$d{CBl_IKIQ
z=m!e~4oxerTRw%2nIXBS^qlS1Yu}`k7zC1QG?%`a^ZEL-d%u0XGCMik4}7bYUn&xF
z)LT<wk?57E>B<Zr>R(DXUz1{(^DIJYx#0Vs?(b!jdsuB+1QZq>l|Q<wz`MHRfE>_W
N44$rjF6*2Ung9qKPX+)0

diff --git a/Sato/matchbox/dia-right-edge-qvga.png b/Sato/matchbox/dia-right-edge-qvga.png
deleted file mode 100644
index 21bc6b92bd7291fe46f370c5569065cbf67ce129..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 225
zcmeAS@N?(olHy`uVBq!ia0vp^Y(Ol*0U~b-^ehHaoCO|{#S9F5M?jcysy3fAP;j!R
zi(`n!#AJ)2CnxrEi|g(2^z>Yr?!eTuyZrq>_QxMSe6Trv`gFHl?XNG6$8v9P`|BKb
z^7QH7SFc^0Hr-N3XU)I+`|EiO{`~!2ZUzKw$4s-YEqIXt1Omds$q7II{x;ubarpK1
z^&7qa{QE1tn}wN~IaKxEpP$W2AO8QZzhm|9|9^k^a9%4;H8r(2iK^P#rx_Ted-9y;
ToO{;=bRL7JtDnm{r-UW|S(sf)

diff --git a/Sato/matchbox/dia-tile-qvga.png b/Sato/matchbox/dia-tile-qvga.png
deleted file mode 100644
index 9d442925637907ff07ef71705ca7dfcf0278c0a5..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 188
zcmeAS@N?(olHy`uVBq!ia0vp^8bB<;!2~4PpJ_}7Qk(@Ik;M!Qd`Cc-ajG_-G*B?l
z)5S5wqx0?+N4^FF4wpdR9sk!_T=fas-X>)lF=1Nl%SV4jcdyFRyc}h1-?}7H^&mr0
zf-%#9HAPl>59*YHvJMN%%2jl{ZP{P$!)F~dty$iB(t~?qlg#fI2LA|SFBNHP4qDdK
iUb3ci_5G4RZ1M*lOyr;AtvnxSGlQqApUXO@geCx05J4&c

diff --git a/Sato/matchbox/theme-qvga.xml b/Sato/matchbox/theme-qvga.xml
deleted file mode 100644
index 8e48957..0000000
--- a/Sato/matchbox/theme-qvga.xml
+++ /dev/null
@@ -1,109 +0,0 @@
-<?xml version="1.0"?>
-<theme name="Clearlooks" author="Matthew Allum - mallum@handhelds.org"
-       desc="A version of clearlooks for mb" version="1.0" engine_version="1" >
-
-<color id="white" def="#ffffff" />
-<color id="black" def="#000000" />
-
-<color id="text" def="#e3e3e3" />
-<color id="base" def="#66cc33" />
-<color id="dia-border" def="#383838" />
-
-<font id="titlefont" def="Sans bold 16px" />
-<font id="menufont" def="Sans bold 12px" />
-
-<pixmap id="titlebar-left-edge" filename="titlebar-left-edge-qvga.png" />
-<pixmap id="titlebar-right-edge" filename="titlebar-right-edge-qvga.png" />  
-<pixmap id="titlebar-tile" filename="titlebar-tile-qvga.png" />
-<pixmap id="close-button" filename="close-button-qvga.png" />
-<pixmap id="close-button-active" filename="close-button-active-qvga.png" />
-<pixmap id="dia-left-edge" filename="dia-left-edge-qvga.png" />
-<pixmap id="dia-right-edge" filename="dia-right-edge-qvga.png" />  
-<pixmap id="dia-tile" filename="dia-tile-qvga.png" />
-<pixmap id="arrow-down" filename="arrow-down-qvga.png" />
-<pixmap id="arrow-down-active" filename="arrow-down-active-qvga.png" />
-
-
-<frame id="main" height="24">
-
-  <layer x="0" y="0" w="100%"  h="100%" 
-   type="plain" color="base" />
-
-  <layer x="24" y="0" w="100%-48"  h="24" 
-   type="pixmap" pixmap="titlebar-tile" />
-
-  <layer x="0" y="0" w="24"  h="24" 
-   type="pixmap" pixmap="titlebar-right-edge" />
-
-  <layer x="100%-24" y="0" w="24"  h="24" 
-   type="pixmap" pixmap="titlebar-left-edge" />
-
-  <button x="4" y="8" w="16" h="8" action="custom">
-      <active pixmap="arrow-down-active"/>
-      <inactive pixmap="arrow-down"/>
-  </button>
-
-  <layer x="24" y="4" w="100%-164" h="16" 
-   type="label" color="text" justify="left" font="titlefont" />
-
-  <button x="20" y="0" w="100%-170" h="24" action="custom" options="inputonly"/>
-
-  <button x="100%-24" y="4" w="16" h="16" action="close" >
-   <active pixmap="close-button-active"/>
-   <inactive pixmap="close-button"  />
-  </button>
-
-   <panel x="100%-162" y="0" w="130" h="24" />
-
-</frame>
-
-<frame id="main-west"  width="0" >
-</frame>
-
-<frame id="main-east"  width="0" >
-</frame>
-
-<frame id="main-south" height="0" >
-</frame>
-
-<frame id="dialog" height="24" options="shaped">
-  <layer x="6" y="0" w="100%-12"  h="24" 
-   type="pixmap" pixmap="dia-tile" />
-
-  <layer x="0" y="0" w="6"  h="24" 
-   type="pixmap" pixmap="dia-left-edge" />
-
-  <layer x="100%-6" y="0" w="6"  h="24" 
-   type="pixmap" pixmap="dia-right-edge" />
-
-  <layer x="6" y="4" w="100%-50" h="16" 
-   type="label" color="text" justify="left" font="titlefont" />
-
-  <button x="100%-24" y="4" w="16" h="16" action="close" >
-   <active pixmap="close-button-active" />
-   <inactive pixmap="close-button"  />
-  </button>
-</frame>
-
-<frame id="dialog-north" height="1" options="shaped">
-  <layer x="0" y="0" w="100%"  h="100%" 
-   type="plain" color="dia-border" />
-</frame>
-
-<frame id="dialog-east" width="1" >
-  <layer x="0" y="0" w="100%"  h="100%" 
-   type="plain" color="dia-border" />
-</frame>
-
-<frame id="dialog-west" width="1" >
-  <layer x="0" y="0" w="100%"  h="100%" 
-   type="plain" color="dia-border" />
-</frame>
-
-<frame id="dialog-south" height="1" >
-  <layer x="0" y="0" w="100%"  h="100%" 
-   type="plain" color="dia-border" />
-
-</frame>
-
-</theme>
diff --git a/Sato/matchbox/theme-vga.xml b/Sato/matchbox/theme.xml
similarity index 100%
rename from Sato/matchbox/theme-vga.xml
rename to Sato/matchbox/theme.xml
diff --git a/Sato/matchbox/titlebar-left-edge-qvga.png b/Sato/matchbox/titlebar-left-edge-qvga.png
deleted file mode 100644
index 75342e618cef1a71151920ed3c677c3f64e30324..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 383
zcmV-_0f7FAP)<h;3K|Lk000e1NJLTq000;O000;W1^@s6;CDUv00009a7bBm000ie
z000ie0hKEb8vp<SF-b&0R7i=%RxxgbFc2IANrBQ_5k;blL_?$qI)0ERq)8R!F)8m0
zc|@K<gG7<mG*n3LxaNFX?DhIiL3bk|R_xlI-5sw`0PZ0}9p4M*Y?|i981t#M{+gyK
z=N3Oi4v?@|0!2|g=6U`-48yy7z%IagVeBZ{w*Bb3Za>d+Y8OA9!%(oj_`0s&`o8}$
z#;Ej|LAvFmwf?KBDjUbKRREp?Y$Sv-us#4#Wm*1ah^y#ac)d!JWUm0c3d~}4x8H*6
zG5~j5vUWjBMA^^{0AI2a>(xH73@*9@9Bc-c)>?{RW&7VAM8WldLejhIr_4{jt7JeA
z2+kK`+qjV0R=zE7G7G9A7h-K0o5r5vuc{)-$j!*Rq2TN8`EQ~kZtei#K1riQ-CRYn
dK^OfwH~@KoX96}tBx3*o002ovPDHLkV1g}ZrIP>v

diff --git a/Sato/matchbox/titlebar-right-edge-qvga.png b/Sato/matchbox/titlebar-right-edge-qvga.png
deleted file mode 100644
index 6e79c7fabeee5a39ee7d00f07b8693d7a3a7adca..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 385
zcmV-{0e=38P)<h;3K|Lk000e1NJLTq000;O000;W1^@s6;CDUv00009a7bBm000ie
z000ie0hKEb8vp<SGf6~2R7i=vRXcLSAQW6Qa)udIs&oM~YLuJg5Wa%ToFYZ)Oe!}y
zLYma-MB_@en)K>yr7;?Kz|+SWZ6g5>c9-`60pJFLJkN)sC_bc=pKaS-==dGt{v9LZ
zQ;<WTl=>Qm;kEDkUuyy3&0L6yAj`6AUDv0kY0fL>kAZ)eKuS4QRdv)_e=~~h{@A~V
z6adPyeAin40645rzX(Dpb?Lh91+LW)w&Y?=lO%bAuROS)TOa^D8#cHKO*^EV%YoBQ
zF~9E*xv>dswR3K0zH9-`{1m{`R&`{-AdG{MDx-|<^{U+bhXWRdfHH$BVb)-sEUBW0
zKndvHhN=UYcQ?)3Ee8%O<}1mL=N=xhOAe@mSgps#ZFuKnHwWBh7P|^UC)|tQ{T$fp
f*vFiScl!STtj}fx*+{lM00000NkvXXu0mjf(wwKp

diff --git a/Sato/matchbox/titlebar-tile-qvga.png b/Sato/matchbox/titlebar-tile-qvga.png
deleted file mode 100644
index 26946a5712eeaa229d356796edb7ac92784a28ea..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 267
zcmeAS@N?(olHy`uVBq!ia0vp^5+KaM1|%Pp+x`GjoCO|{#S9F5M?jcysy3fAP;jrO
zi(`mK=ibnZLJbNWv&*mk|G#l>3Omc;HOcy^3v>9kFj{PAE3>uczNIEqvhhZC4#T&r
zC&M4T+q0U5-Q;vfp@_3+UFd`)l?_3*Ybq`(Prmy%rqL%svTx(@Ih6~J8OzlKDGPgS
zn<@2ry2^rQ=S`y6RvD~T%3mK}`MI5`YsKWmnG;M`Oxolpx1suVDEoxfyPr?3T(C)L
zy^7>{y?J4e8bbxHR(*+obWuK)>qerOENfi5{iD;r9X2hVZrK@r-=B5A;}gS*@C2Yo
O7(8A5T-G@yGywn;D`|uP

diff --git a/configure.ac b/configure.ac
index e88b4a7..fab8464 100644
--- a/configure.ac
+++ b/configure.ac
@@ -1,5 +1,5 @@
 # Process this file with autoconf to produce a configure script.
-AC_INIT(Sato/matchbox/theme-vga.xml)
+AC_INIT(Sato/matchbox/theme.xml)
 AM_INIT_AUTOMAKE(matchbox-theme-sato, 0.1)
 AM_CONFIG_HEADER(config.h)
 
@@ -17,19 +17,6 @@ AC_ARG_ENABLE(matchbox-2,
 AM_CONDITIONAL(MATCHBOX1, [test "x$matchbox1" = "xyes"])
 AM_CONDITIONAL(MATCHBOX2, [test "x$matchbox2" = "xyes"])
 
-flavour=vga
-AC_ARG_WITH([mode],
-            AC_HELP_STRING([--with-mode=@<:@vga/qvga@:>@], []),
-            flavour=$with_mode)
-
-AM_CONDITIONAL(WITH_QVGA, test "x$flavour" = "xqvga")
-
-if test "x$flavour" = "xqvga" ; then
-  cp Sato/matchbox/theme-qvga.xml Sato/matchbox/theme.xml
-else
-  cp Sato/matchbox/theme-vga.xml Sato/matchbox/theme.xml
-fi
-
 AC_OUTPUT([
 Makefile
 Sato/Makefile
@@ -43,5 +30,4 @@ echo "
 
         Matchbox WM 1 theme : ${matchbox1}
         Matchbox WM 2 theme : ${matchbox2}
-        Screen Mode         : ${flavour}
 "
-- 
2.8.1


