Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BAFEE00DD2; Thu, 28 Apr 2016 05:58:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53592E00DC4
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:58:14 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 05:58:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="693715755"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Apr 2016 05:58:03 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 15:58:01 +0300
Message-Id: <f4bbfdc24a820d1607650e6880ce885f3be0507c.1461828099.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1461828099.git.jussi.kukkonen@intel.com>
References: <cover.1461828099.git.jussi.kukkonen@intel.com>
Subject: [matchbox-sato][PATCH 1/2] Make titlebar more like default GTK3
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
X-List-Received-Date: Thu, 28 Apr 2016 12:58:34 -0000

Includes titlebar layout, close and arrow buttons. Removes gradient,
rounded corners and the bold green: The theme is now plain boring gray.

Button active states are currently same as inactive.

The new icons are modified from adwaita-icon-theme which is
CC-BY-SA 3.0 (or LGPL 3+).
---
 Sato/matchbox/Makefile.am             |   4 +-
 Sato/matchbox/arrow-down-active.png   | Bin 511 -> 0 bytes
 Sato/matchbox/arrow-down.png          | Bin 556 -> 0 bytes
 Sato/matchbox/close-button-active.png | Bin 706 -> 251 bytes
 Sato/matchbox/close-button.png        | Bin 710 -> 251 bytes
 Sato/matchbox/open-menu-active.png    | Bin 0 -> 161 bytes
 Sato/matchbox/open-menu.png           | Bin 0 -> 161 bytes
 Sato/matchbox/theme-vga.xml           |  67 ++++++++++++++++++----------------
 8 files changed, 38 insertions(+), 33 deletions(-)
 delete mode 100644 Sato/matchbox/arrow-down-active.png
 delete mode 100644 Sato/matchbox/arrow-down.png
 create mode 100644 Sato/matchbox/open-menu-active.png
 create mode 100644 Sato/matchbox/open-menu.png

diff --git a/Sato/matchbox/Makefile.am b/Sato/matchbox/Makefile.am
index 3dc25a4..1bbc49e 100644
--- a/Sato/matchbox/Makefile.am
+++ b/Sato/matchbox/Makefile.am
@@ -1,8 +1,8 @@
 pngs = \
   close-button.png         \
   close-button-active.png  \
-  arrow-down.png           \
-  arrow-down-active.png    \
+  open-menu.png            \
+  open-menu-active.png     \
   titlebar-left-edge.png   \
   titlebar-right-edge.png  \
   titlebar-tile.png        \
diff --git a/Sato/matchbox/arrow-down-active.png b/Sato/matchbox/arrow-down-active.png
deleted file mode 100644
index 62de85da7bea2a7de9f20affdb532574d1ad7f97..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 511
zcmV<b0RaAqP)<h;3K|Lk000e1NJLTq001BW000mO1^@s6cL04^00006VoOIv0RI60
z0RN!9r;`8x010qNS#tmY1&IIv1&IM|Xr1~1000McNliru*9Q#?Hzic_8E60i0gOpR
zK~zY`t<=wpPGJ-W@Xzy_B0`fi8J)(0luXKo)ntQ|jfEd68*2VGBt@1KY07deD5l=h
zvk^6ojWMXPd0t(&x%a*IeSMerob&yj=bZ1kNkPu}FqZHQYZ39ue?-oC7ALVED-rP>
zQVE{MH4G{>Z}BW5eorZ!aG^YIge^Rbh~Y?Zu_g{@a5v|Ca0>A~xLp&6-8icvI^V!?
z1j{++V-twaVHw98QWmNWylLUui#s{z^F72DaSyXCX{#_(Y2Z}LBnG&gbDqc3CST;7
z2e^oF&2HfJUlW$%8C)&9Z^LIih=`4v_&!`8jkX0tJc@|Te;TL|ox`OaOj*TdAsLpM
zqqtd4tPLx85fR&?52<043%F7C--K;EFDG>cyIOL8;z>ljuLn|#kq+QixrAx3j{6bu
zb*Eq&<L0iuXu?N4j)<+Mgw*k@y7;1wml5%5TvF<B+g*GCKgz4uy6~o+f46bI_)<=E
zy(?$xyVMq6yem%s)rT)lYVER;6F7v`i1;uG&mURwfc}}GtQY_Q002ovPDHLkV1g&l
B-roQK

diff --git a/Sato/matchbox/arrow-down.png b/Sato/matchbox/arrow-down.png
deleted file mode 100644
index 847be6b30468e09a5b55119d19b1850008a86bf5..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 556
zcmV+{0@MA8P)<h;3K|Lk000e1NJLTq001BW000mO1^@s6cL04^00004b3#c}2nYxW
zd<bNS00009a7bBm000Gv000Gv0c~iV`Tzg`8FWQhbW?9;ba!ELWdL_~cP?peYja~^
zaAhuUa%Y?FJQ@H10jWtuK~zYIt<%AajbR+c@z0$mc1n@rkY-_FLD9rQWH}pA7L$>Z
zWG8mQg6vF6{sAEiAqgqQLc)ffY$(OElaf(bOxI%G$!+G|_r5dZEPv1Qp6}`RoVV3(
zw?QdoBhKP89w&M3KdO{6ggsb|@g!fN)o!<yQbutDgB{;o$FU^87YQD~d7MG38vnrl
zBu@vb!PqP~9Ky>|%DP3sm*b)7&9*v@mf;A@1lZccV+-DvQg$x@z6ozI(&Ngm&H$Hd
zyjI{zDdprm;0N#;Lp9f~@~;C+@dCqryl>)Yl3zW*gBZt&K0cqYImzSzB>97#ri)jn
zF}y0JtnUI}g=Y=m6Btf1NwtAlM#pi<+){Sx8%C2%RNrjFU99N?zlhUGre+3n0#t^(
za2qRY%%*S(lemH<HFtmFaFRQ-54r}ZLafC-z5kG=`hdMj-gi43=r)8TU$8^}UexJ<
z>G$pmr)C44YS@cTwQ&v?lGFkk1*k$a=>>ep!6c8G_%;quh3MCdci5NYV^hzb9q6V$
uy|{(#^MNzZ4Roq{k`ZjcwIuf!;`0}N3!;e%ocaL(0000<MNUMnLSTZK+x7YY

diff --git a/Sato/matchbox/close-button-active.png b/Sato/matchbox/close-button-active.png
index 88b0845de8e709d917e80436e2c262d365adc43f..803083ebeb4dc8e8e689ac3d416dfb5905e3a5ef 100644
GIT binary patch
delta 178
zcmV;j08RhG1^WSzQGeh91qlfPr<3!V0001pNkl<ZSi|kpJqiLb5QgCwuiy$PEM)J0
z2MhZRyC^9v#8W8S#Ab>iT>?(^JrKwbBwrW?L_|dTRp17k+};tm+S%XT?V-&=OhC51
z5)t4GJY9&@<}ct9RR$lT0&id*x#%z$U<W>K{k0Jy0S{O6;w$DUBEZr-m|Tb))rPtG
gZE~F;A|le|2iUPCTd^Z9A^-pY07*qoM6N<$f=*0G#sB~S

delta 636
zcmV-?0)zeg0m224QGeG53l9+z4f4oC0006{Nkl<ZSi{Yi&ubGw6vsbrOr=H-^<tox
zQWCI*KrDE&xe5g@;vXtrgn-usFG4H?tdLN9Db$NSv}y52o(JEAWt_=QlScD}g=Kg4
zeZM>N-ka|TnNU>+Yyw-r22iyNU~JbpZ~~l)$RsDOWDr+@J%6A9tYzx`0Stk@h>YhF
zpsII_xCvC44?lr{3Hg;RKvnMn&w)qW4!#2KMC7VefT}(O4uJdIE-rzNh<qzPbdf(_
z200e<z&QS%0bBDI!L)w|4uLaZ9jF7_B}B)-2)G7nKnu7VEXP})6GZ_}fhPg^YZ18!
zX6Z4|jx3)7U4Iez9E^Veyb45o6p;_pC9qO!1_2L4asVUf8sSWG8-HQ5SVYq}r#Y|}
zDYdg??fxO^8L<Mr82OA?72~909j+1iXnke_5jj#-@%JTp5sTGO)%O)^udxnS2fmbu
z_>@@z^~kd|VAEM|k73&qZXsBVROM_r+gMU)FCwB)F@Gs+xWbN>YSnF3-I;@YCsD3N
zRLcZ-5&NpTdjs-aU_WEGtvdcQoEeFkKV)^DoAJIndO@>_VO%D_cetaQ{+WH#EfFzx
zW}{N*mUOr>5x#AwaPG{*MR&DD$O93_iPt9%I5iI!Vw98Znbk2$_{P(Uh)h&<2!w&I
zGwS@A-F0h8p2T7eMP%a3ux|#kh+0X9^L6g~#H@~4i<s5^bUQZdJO~E0%uJABNF>#^
zEk-MNJn(jXbu3xIl)hY&DfQ0yP0^mapk%IqjtyJ}c_%y@tlq(7C5~n*aX9@~$MfHF
WOAI79b(@0#0000<MNUMnLSTY_2OR?d

diff --git a/Sato/matchbox/close-button.png b/Sato/matchbox/close-button.png
index 93786fb2a18003cbaf56e6f14f04f39ffaa4bc61..803083ebeb4dc8e8e689ac3d416dfb5905e3a5ef 100644
GIT binary patch
delta 223
zcmX@c`kQfrN<CYWx4R3&e-K=-cll%n1_sUokH}&M25w;xW@MN(M*=9wUgGKN%Km_f
zm6MZc`Q*>DfI=OfE{-7)hu>bd<zg}vXnQEW{sEV!PRjdwcJAN2yEQa*js$DmK9bg@
z7|Z1M)mGpHze>CWn~RIfuh0i<bMD*|+;QvX{ksuw7oK(UaoDz3NbmuVO>D>2XZjC>
zLfPaOG36)7?R;S%k-%=3_jjwH5+i^3=SR;pl@468nGw?=bG2>f&)lN93Q9_sp0eNA
Ws2aUdSx*V*C<aegKbLh*2~7Ze6jTua

delta 686
zcmV;f0#W_@0mcQ8B!2{RLP=Bz2nYy#2xN!=000?uMObuGZ)S9NVRB^vcXxL#X>MzC
zV_|S*E^l&Yo9;Xs00075Nkl<ZScT2kze^lJ90l-?hmjxw3y)waqzrb}78YWqVr3B|
zu}VsdB<3&Bq_IpY6C{OIP%E*JU~MN?3YI~%5Q0dAT#B93&3`zzyZ%BSEF3el@4Z{*
z`{p|x&1O?YJi;J`(2sg};4nP<*v1ads*rY6Fi^(~M$ui-><Koo6pUTVKvxi+!sCj<
zF;1}(jQqKZfnI#V^J@ynXy6@=su*~NMLfMF@fHp+i@hQPz4&?u;&~IV<i14SKo>sy
z|Fi$bGIr5}5q}Jqh-_gK#~8pgp5*2mcq8nIyn)wv8HvBZuSj4VbLfc1n^?eFG~S2r
zk%@2k0<|zum+kgEmJ{NFz<dzQi_a&-1&-xtY$|A;8<=sq)OHhOEv(~X5N?Lw>jmp$
zuE#-Br!3({6EF1?5W=d9Kd@S|HpMlH#ZFngrV?%hKYvSzf0WGUxngu<uqMm)6ozFR
z?xq;mzH)|YvV)}^<}h{x@v*?s4*fM3Ct3;}_<)IPh);xf<8sZTUS^<W;yos>AU+x1
zDH1<7aIdH-Ij>#RdDR^+tZn5)5e~}?v=XkY&Qn-*IWdz4_6rs)C{DOCtOt&E*ssZY
zxD>Xevw!`nSPNV!Y}aHB<Vj+3vjX{~YSoeAI>An-tb5%^5FMA0PT+0${a5imNpWr9
ztW}0fvIa7bfdaxY7j@psiK4`exlV)T`Du12>t6GimNgSG#$8UhR$`{kj=sQ^$4bzA
zSS=a%(3Hked?ag~5AH~OR&+N=odtU`myKH#ZzlxKy?ElmUd{5jx65gaJGq|!12w_A
UjAq3xg#Z8m07*qoM6N<$g1sI+!vFvP

diff --git a/Sato/matchbox/open-menu-active.png b/Sato/matchbox/open-menu-active.png
new file mode 100644
index 0000000000000000000000000000000000000000..eac74bb221c10c336a2f663344df45a0b2d94d05
GIT binary patch
literal 161
zcmeAS@N?(olHy`uVBq!ia0vp^3LwnE1|*BCs=fdzwj^(N7l!{JxM1({$v_d#0*}aI
z1_o|n5N2eUHAey{$X?><>&pIsnUR-Q+r(|hNuZFPr;B4q#NoG>HgYmJaIiRT{Xg%2
zwg3xrdXnMIZia+Nv-kJE+`n{y&13^3FT=Utbw<owd-BZA19dWZy85}Sb4q9e0Ai~y
ARR910

literal 0
HcmV?d00001

diff --git a/Sato/matchbox/open-menu.png b/Sato/matchbox/open-menu.png
new file mode 100644
index 0000000000000000000000000000000000000000..eac74bb221c10c336a2f663344df45a0b2d94d05
GIT binary patch
literal 161
zcmeAS@N?(olHy`uVBq!ia0vp^3LwnE1|*BCs=fdzwj^(N7l!{JxM1({$v_d#0*}aI
z1_o|n5N2eUHAey{$X?><>&pIsnUR-Q+r(|hNuZFPr;B4q#NoG>HgYmJaIiRT{Xg%2
zwg3xrdXnMIZia+Nv-kJE+`n{y&13^3FT=Utbw<owd-BZA19dWZy85}Sb4q9e0Ai~y
ARR910

literal 0
HcmV?d00001

diff --git a/Sato/matchbox/theme-vga.xml b/Sato/matchbox/theme-vga.xml
index 29b40e2..68c123f 100644
--- a/Sato/matchbox/theme-vga.xml
+++ b/Sato/matchbox/theme-vga.xml
@@ -5,55 +5,54 @@
 <color id="white" def="#ffffff" />
 <color id="black" def="#000000" />
 
-<color id="text" def="#e3e3e3" />
+<color id="text" def="#2e3436" />
 <color id="base" def="#66cc33" />
+<color id="divider" def="#a1a1a1" />
 <color id="dia-border" def="#383838" />
+<color id="titlebar" def="#f2f2f2" />
 
-<font id="titlefont" def="Sans bold 32px" />
+<font id="titlefont" def="Sans bold 18px" />
 <font id="menufont" def="Sans bold 24px" />
 
-<pixmap id="titlebar-left-edge" filename="titlebar-left-edge.png" />
-<pixmap id="titlebar-right-edge" filename="titlebar-right-edge.png" />  
-<pixmap id="titlebar-tile" filename="titlebar-tile.png" />
 <pixmap id="close-button" filename="close-button.png" />
 <pixmap id="close-button-active" filename="close-button-active.png" />
 <pixmap id="dia-left-edge" filename="dia-left-edge.png" />
 <pixmap id="dia-right-edge" filename="dia-right-edge.png" />  
 <pixmap id="dia-tile" filename="dia-tile.png" />
-<pixmap id="arrow-down" filename="arrow-down.png" />
-<pixmap id="arrow-down-active" filename="arrow-down-active.png" />
+<pixmap id="open-menu" filename="open-menu.png" />
+<pixmap id="open-menu-active" filename="open-menu-active.png" />
 
 
-<frame id="main" height="48">
+<frame id="main" height="32">
 
   <layer x="0" y="0" w="100%"  h="100%" 
    type="plain" color="base" />
 
-  <layer x="48" y="0" w="100%-96"  h="48" 
-   type="pixmap" pixmap="titlebar-tile" />
+  <layer x="0" y="0" w="100%"  h="1"
+   type="plain" color="divider" />
 
-  <layer x="0" y="0" w="48"  h="48" 
-   type="pixmap" pixmap="titlebar-right-edge" />
+  <layer x="0" y="1" w="100%"  h="30"
+   type="plain" color="titlebar" />
 
-  <layer x="100%-48" y="0" w="48"  h="48" 
-   type="pixmap" pixmap="titlebar-left-edge" />
+  <layer x="0" y="31" w="100%"  h="1"
+   type="plain" color="divider" />
 
-  <button x="8" y="16" w="32" h="16" action="custom">
-      <active pixmap="arrow-down-active"/>
-      <inactive pixmap="arrow-down"/>
+  <button x="0" y="0" w="32" h="32" action="custom">
+      <active pixmap="open-menu-active"/>
+      <inactive pixmap="open-menu"/>
   </button>
 
-  <layer x="48" y="8" w="100%-328" h="32" 
+  <layer x="40" y="8" w="100%-320" h="20" 
    type="label" color="text" justify="left" font="titlefont" />
 
-  <button x="40" y="0" w="100%-340" h="48" action="custom" options="inputonly"/>
+  <button x="40" y="0" w="100%-340" h="32" action="custom" options="inputonly"/>
 
-  <button x="100%-48" y="8" w="32" h="32" action="close" >
+  <button x="100%-32" y="0" w="32" h="32" action="close" >
    <active pixmap="close-button-active"/>
    <inactive pixmap="close-button"  />
   </button>
 
-   <panel x="100%-324" y="0" w="260" h="48" />
+  <panel x="100%-324" y="0" w="260" h="48" />
 
 </frame>
 
@@ -66,20 +65,26 @@
 <frame id="main-south" height="0" >
 </frame>
 
-<frame id="dialog" height="48" options="shaped">
-  <layer x="12" y="0" w="100%-24"  h="48" 
-   type="pixmap" pixmap="dia-tile" />
+<frame id="dialog" height="32" >
+  <layer x="0" y="0" w="100%"  h="32" 
+   type="plain" color="titlebar" />
 
-  <layer x="0" y="0" w="12"  h="48" 
-   type="pixmap" pixmap="dia-left-edge" />
+  <layer x="0" y="0" w="100%"  h="1"
+   type="plain" color="divider" />
 
-  <layer x="100%-12" y="0" w="12"  h="48" 
-   type="pixmap" pixmap="dia-right-edge" />
-
-  <layer x="12" y="8" w="100%-100" h="32" 
+  <layer x="12" y="8" w="100%-100" h="20" 
    type="label" color="text" justify="left" font="titlefont" />
 
-  <button x="100%-48" y="8" w="32" h="32" action="close" >
+  <layer x="0" y="31" w="100%"  h="1"
+   type="plain" color="divider" />
+
+  <layer x="0" y="0" w="1"  h="32"
+   type="plain" color="divider" />
+
+  <layer x="100%-1" y="0" w="1"  h="32"
+   type="plain" color="divider" />
+
+  <button x="100%-32" y="0" w="32" h="32" action="close" >
    <active pixmap="close-button-active" />
    <inactive pixmap="close-button"  />
   </button>
-- 
2.8.1


