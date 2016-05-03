Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51C0AE00D96; Tue,  3 May 2016 04:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70D16E00D77
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489692"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:02 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:29 +0300
Message-Id: <ab286456f8ca1b42c2ef2f2b9abe994a90588b0c.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 10/25] data: ship our own icons here instead of in sato-icon-theme
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
X-List-Received-Date: Tue, 03 May 2016 11:31:21 -0000

From: Ross Burton <ross.burton@intel.com>

---
 Makefile.am                        |   2 +-
 configure.ac                       |   1 +
 data/16x16/panel-task-switcher.png | Bin 0 -> 432 bytes
 data/16x16/panel-user-desktop.png  | Bin 0 -> 393 bytes
 data/22x22/panel-task-switcher.png | Bin 0 -> 636 bytes
 data/22x22/panel-user-desktop.png  | Bin 0 -> 517 bytes
 data/32x32/panel-task-switcher.png | Bin 0 -> 965 bytes
 data/32x32/panel-user-desktop.png  | Bin 0 -> 734 bytes
 data/48x48/panel-task-switcher.png | Bin 0 -> 1588 bytes
 data/48x48/panel-user-desktop.png  | Bin 0 -> 1115 bytes
 data/64x64/panel-task-switcher.png | Bin 0 -> 2328 bytes
 data/64x64/panel-user-desktop.png  | Bin 0 -> 1491 bytes
 data/Makefile.am                   |  18 ++++++++++++++++++
 13 files changed, 20 insertions(+), 1 deletion(-)
 create mode 100644 data/16x16/panel-task-switcher.png
 create mode 100644 data/16x16/panel-user-desktop.png
 create mode 100644 data/22x22/panel-task-switcher.png
 create mode 100644 data/22x22/panel-user-desktop.png
 create mode 100644 data/32x32/panel-task-switcher.png
 create mode 100644 data/32x32/panel-user-desktop.png
 create mode 100644 data/48x48/panel-task-switcher.png
 create mode 100644 data/48x48/panel-user-desktop.png
 create mode 100644 data/64x64/panel-task-switcher.png
 create mode 100644 data/64x64/panel-user-desktop.png
 create mode 100644 data/Makefile.am

diff --git a/Makefile.am b/Makefile.am
index 68f2e0a..87db93c 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,4 +1,4 @@
-SUBDIRS = matchbox-panel applets po
+SUBDIRS = matchbox-panel applets data po
 
 pcdatadir = $(libdir)/pkgconfig
 dist_pcdata_DATA= matchbox-panel.pc
diff --git a/configure.ac b/configure.ac
index 4f38032..101df2d 100644
--- a/configure.ac
+++ b/configure.ac
@@ -105,6 +105,7 @@ applets/startup/Makefile
 applets/startup/data/Makefile
 applets/systray/Makefile
 applets/windowselector/Makefile
+data/Makefile
 po/Makefile.in
 po/Makefile
 ])
diff --git a/data/16x16/panel-task-switcher.png b/data/16x16/panel-task-switcher.png
new file mode 100644
index 0000000000000000000000000000000000000000..1bc5a70aa1ad13423f552594f5aff1c6b0de924e
GIT binary patch
literal 432
zcmV;h0Z;ykP)<h;3K|Lk000e1NJLTq000mG000mO1^@s6AM^iV00004b3#c}2nYxW
zd<bNS0004JNkl<ZIE|H(Jt&1?6vuz}dL+uq!e%kaD5F8?c5{8)e18lUSu98vrAW%G
z6kRTouZ5H{F&Je~vM~ADBp-492JgLHuN$wkJkN8^|NNeFIw#cC+i?RF^V5!i4?w^J
zFaS&dd%$sGVfhXq)Y;R14xDEJ+-BTMfkhzU0bhYpV9uG@S~9UZo&}J$_O8}`ucBt)
z1n2{1fm<i(w_E^Hnw6!sUC%Yy*4a`9jD&*%{5nbdk}CdHfzS5}<T+UYKo*Tm&%k3S
z-qJJ;%=qH@KsQj}y(@tW;0bsELVyEuoyi`6IPjhUC;^5&VajT}GwFSh1LQkNV?g8P
z`u0Ie*%*&i0QbP*AKeW&nF>9kzvrv1jh(aKvKyM}@0_GJAnzL>z+_Uou%uH-wf;cR
z@j8=D0m*1AatX`>RVKR*Qh~_`%d{=ipiDzDUCFdAQ+3e&NRKHJtt$emfe2rFF#`Nm
aN%<$NIkriwwAldw0000<MNUMnLSTX=Bf2dB

literal 0
HcmV?d00001

diff --git a/data/16x16/panel-user-desktop.png b/data/16x16/panel-user-desktop.png
new file mode 100644
index 0000000000000000000000000000000000000000..69c09ddbd369815b569668214a53fd3bc793c771
GIT binary patch
literal 393
zcmV;40e1e0P)<h;3K|Lk000e1NJLTq000mG000mO1^@s6AM^iV00004b3#c}2nYxW
zd<bNS0003%Nkl<ZIE|H(KTASk6vlt|CP5Sx1a8&lsBJ|}Ev-RNYW~4KL37_lNGwT1
z4V&!)ghoR{?QJbB;&SPITJDv5^}du3Ja9Pgdw!gAI1Uz-FN(`R4Ojrm_3PVF+&?ES
zS*jG)fhKU|r=EZ;a0qZyYjmuDLOGuVy1;(uUBEN20ek~{jryGc65-<WQf^byBaoSb
zJHW0V55hHW5af&5l%&3-j3h@AQ+9lBOG-sX$Q90ZfF7_Fx04us0>{n9{i~DBpC0%#
zC;wR-=nFVWNU8#>a~1=v0ae$?q>ap_kzr0>8JV=(Zgo9LUd+<|ve#~Py##=a!mY`7
zAP39Afqw^51n>b=00S%nePGE3a05WdV@ZRDPH!mbMbeLLj7bMZCYEl?&yEn?!9=$F
nEI@h(M!-r0AS+-DyaD_IPy70bPU!X000000NkvXXu0mjf@z0=P

literal 0
HcmV?d00001

diff --git a/data/22x22/panel-task-switcher.png b/data/22x22/panel-task-switcher.png
new file mode 100644
index 0000000000000000000000000000000000000000..d19020e71ecbe2653219e8def1af8c7cb76574d4
GIT binary patch
literal 636
zcmV-?0)zdDP)<h;3K|Lk000e1NJLTq000&M000&U1^@s6#I$TX00004b3#c}2nYxW
zd<bNS0006rNkl<ZIE}59OGs5w6o$WhJcvb5Gt0~d;UF7C6a+yvhz6CK7a#b3KvB@B
zNwWq)gP>8+BpOKOD<52~6lxMQi9qN<6eL83gP@sILZ)AXbFSR<UN!B9%{hCowf_B|
zwf9;l(c01c4k!Z>WXBxv0@wxo0=@yCfp(w*C<X2UGhLnC3+bRhEmJW!X4P@^gZf5&
zsurt9)lT)gI;jq{v^O106Nl;qa04)h;xs;{#Q;ZuFTf`tKaQ;ePBgbQUhKZt`ykQO
z+K}q$>PxOdx`?LMh5+aT+JHi!1egGl!0mXG<Dsr5^lxPP_ulWH0;bZ_#+Ld5qI_Qt
zR!zV%=8Uo2HiS$gCxi7UPLC|MS#?@1+E6O8*aYT*ywHEl#Y+AeHrJ%MuAyeJc+?<%
z4Kmkb+XC<$m<iQ_+WP7evL8nta7o>lv6cY#11X}<2ABah5mjaam<-itz?B@t`9L$U
zIg4#a{QL=Y01d$FcwQf>hk^IQ1F5S^BdhC@+kiuHKrRRzBkCbL<F&#NNdm>ywaIJ4
zgQ?%kLf{o}et0mo=2Nb&O^$|YuCBJ?)mjNEp*m00Se9+DQR1(_cA`_A`(MO?`a~^K
zYqB}yD&MszzD3kaZ&p^7{{TjS1HiQUecg&5jy!%VUJwJZM|>&X5l6*ham6yuN{j>m
zk4DCZkW<JQvK!fplp=fL7Mb(rEJelHGYMRB6Ur-32f$X~9MNxQ9Ox(VTdV8@u;mYy
W)l~F47I2vW0000<MNUMnLSTX&+#Hqw

literal 0
HcmV?d00001

diff --git a/data/22x22/panel-user-desktop.png b/data/22x22/panel-user-desktop.png
new file mode 100644
index 0000000000000000000000000000000000000000..e2b03669785bdc34ab756f48babd902eb550cd0d
GIT binary patch
literal 517
zcmV+g0{Z=lP)<h;3K|Lk000e1NJLTq000&M000&U1^@s6#I$TX00004b3#c}2nYxW
zd<bNS0005JNkl<ZIE}rNze`(D7>1u4uS0AXK@f*l=unp$(!oJ-YQeEcpiR6<G(wAm
zlmCI6I4U>@Ld9rnVn}O);Nn!;p<8Q<q-(*!QK1nrc^z_<n;+hLHR20rIQM+-bMAM}
zdklPNd@|7qtN}s5T6@2K<mEBE3X-XKH?R)8v_E|VqUqI*!(=LM*bJptH{|rSxj_>X
z)??rkFl+-1;1Td56z<;xrho;Y>(|fyuTHOd9W*{Z_Eb_92-S6F0AZj2`~#i?KkEHW
z!B#RBmXrgY(EPXzpwAvn)d02<u_44qsx7<Sfpe{aQ**{+@#qMU1$sQ7_3G^pJv;cl
z|L1SRt}*LP1Xuw&Zvb@a7<dchHa}!#M6K5WAPFo14{iy))PG<GSTQ9{1M^hF->N!*
zMIdNOngY&%c3k4;Q)S>3cxOr)u%WxaV2j`))yH%i$Yt^+NhgxZl4x;MB%S0k`BJrY
zx&FniWCBP{$=7Y?E8lM5??BoyZwKaphpmE(pYvaqFDIjsS3zL*F2FVNQ*)1CAF=RL
z(*U+T6%Vo>T`>Xxh3y?l+LBaq2EK;t{W#7fZ5Fn7&H*j}T=(tR8psOW00000NkvXX
Hu0mjfG3nqU

literal 0
HcmV?d00001

diff --git a/data/32x32/panel-task-switcher.png b/data/32x32/panel-task-switcher.png
new file mode 100644
index 0000000000000000000000000000000000000000..c06fc3ffd6c61c5ffc2d539148993c266c823b89
GIT binary patch
literal 965
zcmV;$13LVPP)<h;3K|Lk000e1NJLTq001BW001Be1^@s6b9#F800004b3#c}2nYxW
zd<bNS000AgNkl<ZScSFMPl(iI7zgmr%#LLKOQqDU4q66whz{kcyhKpy?Bw9CnX79e
zRL~(xio$~tNDu|lt<2PQ*A*AjQY*@c@={<4b?8u8r%)>Y5*fQQPlxv>P227`!;IgT
zIXuJre&6r!c^|&d`{w#KtR2P*6f}mwSxmzSs+f!mIDzi|9Ruh4HmqHM&3G2)`gaV(
zcx1VCkM@o<u{oT>{dg+d@I1P(1;gmZMeM?z_yj-V7>@1UIe2lbfGR54mo<VB9Kd3n
z#wFZ_FR%>D@dVZ*pRI{(-U+;fqq}zwRv@=_{hB}VLZ-SEOvWbkU>>$(7XH9>n1Y;i
ze4Fw1z^*-`x!%4<&SL&x|IqnXcJJ+bWEwuj<M>v}#?x4b8>Nh_mulw%Hsam<xNI$A
zuz#qE5AYaH5B3io$1_=c4l}S7orQ=-kG?*}@?;`@s)<L|tXn;dg;K%Zik`gCc=^>;
zQ1hDrdv@=w2-}5ILWj_m4{5Z%|G(o3^Uj3$Iz%qS9R+PVf`)k_D)=pnW*6GDeZx77
zG_{(Ag{xMCjm|5yr2uIv1+`J39R-+p8_a;H;%CX4Pd1f-Rja#mlD$qFhj}WlLFcN~
z-Dm13fFt+|$8tRnulyZl$)T=<`FK_G`tdL|Bd*r`H;Pl3EA@eEr6zR&-xor>gO{a7
zaV6X!IaoalADf-y=*2e4e(%9_sdax;5C-raj%KRrp%-s7DE2ZI;6*Hwno}nxNiBRz
zA;jLANw4hRcVNP*Sh=cv313RBw$g+MI6Nkvh5HJ^BI%26ky1M`agz1}hV~C17;RF(
zf3UKrJO^6~5z%lu+htm{Tuu2vyF8<os~}X+p?+mwUe!KiT=|GN8xbPn`iSVLyC%(R
z%TZkB$xHXQz+IT#GINv2N5r9ss6<3(L~MMh+%;hqu1W?%42L)wq9eqn5Iv=GaT1iu
z#g0<BxUf_%=4kxZ(~y8{<b_{_&B8@trtqflT4_b`ZegCVLs(W?QOq@R?`uK<LH_-N
zha(~mM#S@3K~9f|CnMssi1;cZ7DvRkh<Gp}a#y1W9eVG`DBi*v$!h<WI@?WBi=8XI
z`6jiz^BDZk1&gI+GjK1KNO$-L@Qw7USt7l7o|E2)tzZs5pU{SvcP-6fCSJ#uBZofx
nWqH@q+p!Nfk0-uKRPpgY+n=R^VpR)L00000NkvXXu0mjfDxK4$

literal 0
HcmV?d00001

diff --git a/data/32x32/panel-user-desktop.png b/data/32x32/panel-user-desktop.png
new file mode 100644
index 0000000000000000000000000000000000000000..dfc3df3ea91782627e6eafac9d8af57ab1384913
GIT binary patch
literal 734
zcmV<40wMj0P)<h;3K|Lk000e1NJLTq001BW001Be1^@s6b9#F800004b3#c}2nYxW
zd<bNS0007&Nkl<ZScS#aPiS0K6bA6$Bx9NetXidof(5bQVkT)fb)j@oQ0%H`X#PxQ
z5+lW~y6MI)gmxw9LTSN8sTJF_6;UY?N>^^GP}Gg$B(b=0s|c=av`v%K#hb?G^o2>@
zOqvfaJl=WteBV3wobMLo#Kar5T{wqFaCqvIOE>f6>CUrhe6m``1-yW#@#5}11K<Dr
zQ~md~<|^bM-;0k?PVEoe#9@4Q@%-f&pRD$v*ofb~c>eO8wgl8(A1h#=r0lyg_6B~#
zo4Af+7;416zz3Hue7e+}x7hq53)P8AS46ymGm?^L2`}IoOyOwb`T0idhm~@-6i}V0
zbmKLAh;1v7r$y|*NBE;v?v?_^#z%`0QN#Oqq6K+c#FLGcU%*&xv`09Cckt*c$<rcM
zg-ijJ+DLDRV|W{VYb4LYcJyMtIq-lFRI0;$IDz9GB8O+u*FR9YF;kyiSW&=eb$AQj
zm2~l@4iMi*5qt4ed7$*|OnvtD0|G|IhPL7~CehPD@-){T>@4?}uFuxz{#h0<QW@GV
zneicsx33qvQNnZO{?a$IGjo3zhAW45;w)a0^KQt2MSP7TMPW)}v0V>|oa9Ge##AvP
z<|VGxg~xTa`LeKpzp#Y)Vu(RW)Aiyr>|bXAzu*9F;m-1m9~vI)#k8a}>xmz+@5|4x
z+#=<KA=a5U8~<7H#_*>q5F1>97DuquSj{L%rYHA(vDzcJA(@b75u0%mTiO=T;t1w&
z=Bq2yi|LoI4jz0AZ?z-fVY*)?+G@g1G;Uiy&<XEo&j&g%xf^~28_|USQ=P8BBK~ZA
zuqtE8QGt+L{mbLLT!E|8*A^n;R7BJxf##JZU=1rG;@60H@9OlmfA8nG2i-RIy0D@j
QEdT%j07*qoM6N<$f>G0J4gdfE

literal 0
HcmV?d00001

diff --git a/data/48x48/panel-task-switcher.png b/data/48x48/panel-task-switcher.png
new file mode 100644
index 0000000000000000000000000000000000000000..dfe84ae98a6191be722a1b605baa00a075866d04
GIT binary patch
literal 1588
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

literal 0
HcmV?d00001

diff --git a/data/48x48/panel-user-desktop.png b/data/48x48/panel-user-desktop.png
new file mode 100644
index 0000000000000000000000000000000000000000..12c4b5c94af993c5f27cfa0670749b686940bd89
GIT binary patch
literal 1115
zcmV-h1f=_kP)<h;3K|Lk000e1NJLTq001xm001xu1^@s6R|5Hm00004b3#c}2nYxW
zd<bNS000CMNkl<ZXo20?TZmOv7zgm*)|u42mSTocL<H5$oSCAch$w=nhpslx%$YM6
zC7~X|iijd2t?c5HP!ai5#vmjnB_X}^(tBjig)%9#gd))L5?VQ{hjm6r=bSU=%-J)Z
z=?@3?-fOMz`~Ua)zO}w}c489Hv%0Guci<Jw#Y_17!}t46rtNEH+6KE<<?3)3-o%Yq
zie~)Q+>+V1XLtXpH2tM2pnFxW9{1r@v|t7jEXm&=X>Q33r70pc0o|)|v+)RCMx#hP
z$u}psNEGpBb4%vCJ-hq=NyBe4ewXpl)!R7-IlPF=OV|zg6`QcRZ_CyrUA>(NmgDA8
z;{v|M{=O|+Ln+^NDUhFsNAdJH<mKCz;Tg>B>h0WwW4Hlti6KW6@Em@|zoq<FB_P+6
zT^K@m9BcE$%9+tbOzbD}*Y9CYe*8#C59gnaYj45=ay{9_BJs6YSdOz%NN}+@YfG?i
zqC6%fAlH*!hG(%_<>W_@U><sL(3$Y52o(wF?CwagJcRH(x-nmM3qgVlarHzER5}A!
z;RST!0_m(`RoN&@K(?zr!L=cTb+})8<g3QG0<vB0GthtyxX09ypRbI(D7h17bL|Ok
z#T&R+6g*XLei43b$~68k&_7tTQ&9mOxwe_O6R+X+eBY@epWsq)<_|Px8h#q+9~>^!
zv7msCT-!)Fyiu$utKP9EfEl<1860fPH0&Sf9~@HzjuFt&*;bDS#d0`PsLvE)M8r)v
z+}PAGbgqcA$hCK_oQ-y@$2BInxulFl%!ljoM`KgN-ogH%)0OOL0qxn9bI~f+@>i-2
z@*_yFKn&+2jZF=E2M2~uk{8gHZC!vhScl8h7Wok*;?jBxG&EiJ&EUY$$)qjYx)_g%
zMcGm{vO$$Vz#+Vick2XCilyx$wNIWimF!cPRTqRcB6*^^(H(0Ag-&G)vARz10Uj0)
z5HMR*SU)w~%EmAb<9Po51U{_`!s~d)nZ&(K+`z7wa*D-~h)2&2_&EP;7)R^2f3)LR
zz7e#xt@zzI=g{+jAQC>becO&-MmN;ra#<0^)HtDFzMOXyT~NjrX*J2eIIHP014S`i
zW}s*YRg=V_jO(;eK?sGi{EsYap_Fm)&CMKjojR&HY3;`MDD_wQEZi-Y!quSsRjAA)
z4(P*Xl=|wj7+<PhK=~n5K?Da3f3jm|!NWE@wBmtN6<M4Brpr!TK?s$X#AP8xTSW~`
zml-IEN!^K4v~`|pp)}t`5&REBs5X;$Qfi^8MC!Frd0tbrRSbn@;4l0=>7FY?B62!<
zZbKmfd+}9%KrNgOf><zqD}KE{3u6R)wsY5^5W>a~!nP2?@eqPizmlHE8C&M>L<r%F
h5W@Np!hv&r{0HkmWMP6-2w?yK002ovPDHLkV1i9@85#fp

literal 0
HcmV?d00001

diff --git a/data/64x64/panel-task-switcher.png b/data/64x64/panel-task-switcher.png
new file mode 100644
index 0000000000000000000000000000000000000000..a6b33959e80aca8a371b4deb7c001c11b322f2ff
GIT binary patch
literal 2328
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

literal 0
HcmV?d00001

diff --git a/data/64x64/panel-user-desktop.png b/data/64x64/panel-user-desktop.png
new file mode 100644
index 0000000000000000000000000000000000000000..7da52c69dcfdd433cdacfe9565a28e491d6587b6
GIT binary patch
literal 1491
zcmV;^1uXiBP)<h;3K|Lk000e1NJLTq002M$002M;1^@s6s%dfF00004b3#c}2nYxW
zd<bNS000GwNkl<Zc%1FqU5K1l83*v+yF1$^Y3!GcRzquPHO9=$ZmSldC`u8m)Ycl4
z-JO};O)H9GL9G_Q5EZ--Ma3&`ypWV7SZQNvEdd3E;+0o5`yn=I>j$AF=||iprD@WA
zy?ExWlVrx7+04#IcK<L8oO$2#p8x-Sp65KzIcE|b#?(C%39iH^@nsC*7x)d1J@BjP
zw3Fi*?Bv6$<gdb~@m0JFS719{#Xm-F8b0yYCl7XPOdS(o^6pB4x1x-%;0E#b2XQ&x
zgA~t<+&FyV;FB{Qv4oBYFnM=n0B^@V_#)m>eRfjwxl~xf5Dt&rIK0>i5msG*D*0>h
zd3+XIF(621NUCj{u??395f)Zkgk<?kR*s21<w0DBdoeCtU|^ZsmT(Ne#n18d^xl1^
zYx*1#)^c_~OIVoRyYEyhV_Y=>Ciawbc&G69Pl@2S9Qh1OcnQD5Px1HZz57m81>J_v
ziQrj_m+?zHHNAJ=>&=cc*X)I@p!$}!<9^&O2HPxo)oZh<awC2;v8OyIg5(z5fw!G?
z&vSSLhtWL&DpRG4(ljmN8~7+L(;E2<17dc#4IA)7%!@H^6mg;!8?7LwwN-%1RA~cl
z!ng2Yyvg~wSvEV|ii`0RAx7I=w`~Gcrb?S|Gro;m#2aeIKoc=Ld`JlTM_kl~e$gfY
zDwCznQnv{5Hw$xYXMjzx3GWx#<K^w@_`C%uPmW)jN<SjZengv1v<8WI^IO{4>52s?
zPmU)dz<mr~M_vqYHFJx$_q`$k$`j*>)Rp)IzJ_;;6n0e;tJOfu0+c4kl2p0{J4HEr
zL$#m2BTtJ0lqSX!TrJYtd!1R-bQ=RA__maDG@Uq<CdLLtA@dng(Os)|$P?-Fi}+h{
zxUe{TaIUE$swn|VmC*q~_zOaSt$K?*5rD53v(Ta9aDH)iW_b~o6=1wFI#})aOQ?t(
zyrU~gO(GG=SC%InDh%h3FDJtPB{E(a%~d<RAG`1tE6eLUg)CvZUgQf;6^8RK&(6#(
zHM*gp0ORG+A?(06aVOrax5;NnL@>NgtU?_s6!R}N5}~dDW98i!V_2lNw+WN#2l5#b
zQ9NB+{Twb7^DoZL%%4*xpCiCndG`jq58n}0SiRMken2L|HNqvHE)?^}=4R$k*Ismn
z0Ar=yoA3dA7atT=ST9BTR*}^YTSY8;wouF;otvG1W7+Ht0Y*!^HVe|<6C!NV-{dnS
zB2B+qr0oCB7k4~AH#`3tB%`HWiKw%06#;KVn9hYjz7{D?;-FYv`V$rg^MxH(;Nv3T
z6<wI*2~LAzdfb7dIFj?fqGr23E^3-Y7845Mg<q0OrT2;D>kFNHhD31PhWm0-DNZ}H
zGE8c|`(2c@=DRj6K8-YoAB*xf+p;2j<tmZ=^<v)N3Q{bHeS<6qSi%wfI+scx#vjB~
zk>N72mp3I6p?=0mJb~}yg_`zLSjau};Qm+eO6?uH#&#|W)jE1uVU>{L1dcrP;Qpg$
z|5$%T=t7{~B<c!~t|0~bvB+sF*1QX>TR^?WwG;!^U7*_o=r-0}pl<8R_-92`!zJiC
z$SSk06<zH-BJ-L!!}EgXMc9b<I`_O!$Iwm}_>VZ(_k<`wn!#2~iv`ObvVfJj!0X~{
z-*b=bf3zt9?%H|hkf_SKhBZG6ta$;tIt}*1blcrbu>1ViU0~e>>b9=Cz}msO3)F30
zcY(EoH7`K@7?7r%yP4Q_RG-rcG<;Aa3rNLwSr2&Wd1Faz^VMCWXe7W%%;9*W8~X$)
z7R9lcSL<ES$OTT~FF1g^#IcgLAD~!87f8kW#Bux?zjxLKaE7`T@c3f~QgMdnXLtbr
t(!zi7dH_p!9uMOO_~+w~9jI%`{{?2&SBZ2p5h(xw002ovPDHLkV1nr8$OZra

literal 0
HcmV?d00001

diff --git a/data/Makefile.am b/data/Makefile.am
new file mode 100644
index 0000000..ed7ebeb
--- /dev/null
+++ b/data/Makefile.am
@@ -0,0 +1,18 @@
+icondir = $(datadir)/icons/hicolor
+
+icon16dir = $(icondir)/16x16/apps
+dist_icon16_DATA = $(wildcard $(srcdir)/16x16/*.png)
+
+icon22dir = $(icondir)/22x22/apps
+dist_icon22_DATA = $(wildcard $(srcdir)/22x22/*.png)
+
+icon32dir = $(icondir)/32x32/apps
+dist_icon32_DATA = $(wildcard $(srcdir)/32x32/*.png)
+
+icon48dir = $(icondir)/48x48/apps
+dist_icon48_DATA = $(wildcard $(srcdir)/48x48/*.png)
+
+icon64dir = $(icondir)/64x64/apps
+dist_icon64_DATA = $(wildcard $(srcdir)/64x64/*.png)
+
+-include $(top_srcdir)/git.mk
-- 
2.8.1


