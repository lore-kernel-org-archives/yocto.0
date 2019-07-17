Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F72EE00D6B; Tue, 16 Jul 2019 17:54:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhukanthk[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [98.137.68.32 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic308-8.consmr.mail.gq1.yahoo.com
	(sonic308-8.consmr.mail.gq1.yahoo.com [98.137.68.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D248E00D63
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 17:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1563324878; bh=9ku2hfgwUbxvCydrZnBYeYOhiQ7NAXQfd80fXfmAc/0=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=qzM2JgXDb/skUVW0leOVwmnEsR00P2BkxCvRVoLN8X5DUQAkftF1WEqBxXq+qM+3/kd0ACYsOcvWsJOtLHDSUMFnmm0v0TGEeYDmnufP3LSpiLhSYRSwGAlgI4wRe76pfm0GPViAFpjxYnbPJbjJYpgVA0s3NR8fDQkx0edLJnwnjU7qjVHlz4K6ERqKXdm8uuPXTwaYBCgrdjoI3hW1tuIR8M2bKDyE+ybZ1xAlbI4RyteYhJ+aPOn07VQHZQB0j/DjJ51YznzHAjTu9BHHD2s+1EjzB2LDo6RtUjNJKBpTUe1qVUdRak8l8wX/xpWbT6Gx808kruKoo9NgkwEANQ==
X-YMail-OSG: _.ari7oVM1nnj5sxtnU9wDOwtSME9Fr_gyR4jL7p_DCF0u5oBUXBd2jj_Y3abQU
	VkvFAb__5KgIi542_IuyNs_HgVl4lFpq0YwZLHKE4zBec0FoomNj6AnkzeZCAm9.UWLUmsGq0qXk
	rTfKZ62ZFpegsv0K3StWrP0xUi_CzDfFQcElzGG9HhR42or9yM4tILgTiR3mM.4pZRVn43nIi.hq
	HB9O1s5NvP0yhOerQFlC9zUZn56uoC.3uklNQLLr.KJKLNSCGL0d.2CPYsgVgr9qVo9az0z8d3Cu
	r4kn3aEqB6oj.0_nv7YZ6m_rpTcjp1ORA.0qN8G7cvEH4JD66JctBVI65ru5.wOwqOPtrxj11.pW
	87U7_SiuJPiY8SMFnwt0BK7OWhzxPJcPLBrkeGp2p8SSuk9PMkmNwfFgIBE9nNdsmjPcpTvLnUAH
	OdX_rdxxNg9.TiMod1a2mc9oVeAJehSB9TL3RF7B7qTyATtqr6hg_1pubmHpP2k6_QXtALl03mzM
	7IaC.HvJO7jpWm4bVadjjAA_quJ9CmoOvCADm3H9Z_AzgfBBB2c3cnfEiZyxuffKb7rJqT85_IRZ
	3ZpZojLATjbKmYTGoI0IxruaKkZZA4MPKSr_piUWX8h3AsUN8LYi.l76O1OkPMAGBd0KSGo9K2N9
	eUhcjnSKtMc9HReZxyauvZB.EYgyOHpT4ssbrekSsn0lnmp.gO.s5ewJGVy.5FOba6NMVeY.aslc
	rNALOwaTf3LNg5sSSpVLNQ5gbQRpY1LKL6utzLb4H8cwILMMEco164gc9R.iU7KY1oV29Hb3rEio
	DhqRiHWxOO4wTq0EWnTrmh8MdLAFW3I.Xwa0XUNPcQwM52a1aOEpH7z5OWhwV1e12WsOad8cJqae
	njVBMBF7yvWD.TJUZwqXi8fRaeBMnBggy4Jq8xATWdW.HPqBZ6rVhGEG2DA4ae9Tr7dCBUKSm2b2
	gvYy60m183MpSZu8FvdNi5j17AFFvE6fL3S7h6V2MsARctdxluq9vHvDDF0guk7bmU6.lFv48P3T
	QjzseVOysVxRt9_SZLCBcV5h2JbZ0zSzlWc8UMlYm.TNVFQ0wqjq01w9fuTAESkhnLiewzEwcA7g
	.tl7_GBNZxSwd8cTWTaIburFw27SA6egq2.m3FTHCXN05I3W2pX3j4d6bEQiMGWbvpKRZ.OXTw0G
	IxolXkXIyn8R5uQEetGRduYDOatV1ZVstOIjkQ1hfW2q7ao94LLzDWFb8uiasfhX8g1EW_900gw-
	-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.gq1.yahoo.com with HTTP;
	Wed, 17 Jul 2019 00:54:38 +0000
Date: Wed, 17 Jul 2019 00:54:34 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: yocto@yoctoproject.org
Message-ID: <391523598.2334858.1563324874872@mail.yahoo.com>
In-Reply-To: <mailman.13.1563303602.32459.yocto@yoctoproject.org>
References: <mailman.13.1563303602.32459.yocto@yoctoproject.org>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Windows NT 10.0;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100
	Safari/537.36
Subject: package iqvlinux-2.2.4-r2.acm_64_uefi requires kernel-module... but none of the providers can be installed
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
X-List-Received-Date: Wed, 17 Jul 2019 00:54:39 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2334857_1999441565.1563324874870"

------=_Part_2334857_1999441565.1563324874870
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I was able to fix this. The below line from my recipe was causing it.RCONF=
LICTS_${PN}It works after removing it.
thanksMadhu
Date: Tue, 16 Jul 2019 18:40:41 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Subject: [yocto] package iqvlinux-2.2.4-r2.acm_64_uefi requires
=C2=A0=C2=A0=C2=A0 kernel-module... but none of the providers can be instal=
led
Message-ID: <1651395282.2204134.1563302441374@mail.yahoo.com>
Content-Type: text/plain; charset=3D"utf-8"

HelloI am trying to package Intel's iqvlinux into yocto image. I am getting=
 this error.?Please let me know how I can get over this.
thanks for your help in advance,Best regardsMadhu

NOTE: yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/reci=
pe-sysroot-native/usr/bin/opkg--volatile-cache -f yocto/build/tmp/work/acm_=
64_uefi-poky-linux/had-image-dev/1.0-r0/opkg.conf-t yocto/build/tmp/work/ac=
m_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp/-o yocto/build/tmp/w=
ork/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/rootfs? --force_postinstall=
--prefer-arch-to-version? --add-excludeutil-linux-cfdisk --add-exclude util=
-linux-mkfs --add-excludeutil-linux-readprofile --add-exclude util-linux-sf=
disk install iproute2packagegroup-core-tools-profile sysvinit crashdump-ker=
nel gpiorw dmidecoderun-postinsts kexec-tools cpu smartmontools kernel-devs=
rc mem devel-utils-initstressapptest strace ethtool lmbench procps makedump=
file memtester rmc pciutilspackagegroup-core-boot perf util-linux-lscpu lin=
pack sshd packagegroup-core-deviqvlinux packagegroup-base-extended onegig f=
io python-pip m2perf opkgpackagegroup-core-minimal iperf3 python3-modules g=
cc pcipackagegr
 oup-core-tools-debug packagegroup-core-test util-linux-agetty

ERROR: Unable to install packages.Command 'yocto/build/tmp/work/acm_64_uefi=
-poky-linux/had-image-dev/1.0-r0/recipe-sysroot-native/usr/bin/opkg--volati=
le-cache -f yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r=
0/opkg.conf-t yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0=
-r0/temp/ipktemp/-o yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-d=
ev/1.0-r0/rootfs? --force_postinstall--prefer-arch-to-version? --add-exclud=
eutil-linux-cfdisk --add-exclude util-linux-mkfs --add-excludeutil-linux-re=
adprofile --add-exclude util-linux-sfdisk install iproute2packagegroup-core=
-tools-profile sysvinit crashdump-kernel gpiorw dmidecoderun-postinsts kexe=
c-tools cpu smartmontools kernel-devsrc mem devel-utils-initstressapptest s=
trace ethtool lmbench procps makedumpfile memtester rmc pciutilspackagegrou=
p-core-boot perf util-linux-lscpu linpack sshd packagegroup-core-deviqvlinu=
x packagegroup-base-extended onegig fio python-pip m2perf opkgpackagegroup-=
core-minimal ip
 erf3 python3-modules gcc pcipackagegroup-core-tools-debug packagegroup-cor=
e-test util-linux-agetty'returned 1:

Collected errors:

?* Solver encountered 1 problem(s):

?* Problem 1/1:

?*?? -package iqvlinux-2.2.4-r2.acm_64_uefi requireskernel-module-iqvlinux-=
4.9.56-rt37-intel-pk-preempt-rt, but none of theproviders can be installed

?*=20

?* Solution 1:

?*?? - donot ask to install a package providing iqvlinux

?

?*opkg_finalize_intercepts: Failed to open dir yocto/build/tmp/work/acm_64_=
uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH/opkg-interce=
pt-UpxBjM:No such file or directory.

?* rm_r: Failed toopen dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-=
image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH/opkg-intercept-UpxBjM:No such fi=
le or directory.

?* rm_r: Failed toopen dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-=
image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH:No such file or directory.

?

?

DEBUG: Python function do_rootfs finished

ERROR: Function failed: do_rootfs

-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20190716/e3=
0f7c25/attachment-0001.html>

------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 106, Issue 52
**************************************
 =20

------=_Part_2334857_1999441565.1563324874870
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpbc789906yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">I was able to fix this. The =
below line from my recipe was causing it.<div>

<div>RCONFLICTS_${PN}</div></div><div dir=3D"ltr" data-setdir=3D"false">It =
works after removing it.</div><div dir=3D"ltr" data-setdir=3D"false"><br></=
div><div dir=3D"ltr" data-setdir=3D"false">thanks</div><div dir=3D"ltr" dat=
a-setdir=3D"false">Madhu</div></div></div><div id=3D"ydp54335310yahoo_quote=
d_3700833056" class=3D"ydp54335310yahoo_quoted"><div style=3D"font-family:'=
Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;=
"><div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Date: Tue, 16 Jul 2019 1=
8:40:41 +0000 (UTC)<br></div><div dir=3D"ltr">From: Madhu Krishnamurthy &lt=
;<a href=3D"mailto:madhukanthk@yahoo.com" rel=3D"nofollow" target=3D"_blank=
">madhukanthk@yahoo.com</a>&gt;<br></div><div dir=3D"ltr">To: Yocto Discuss=
ion List &lt;<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"nofollow" tar=
get=3D"_blank">yocto@yoctoproject.org</a>&gt;<br></div><div dir=3D"ltr">Sub=
ject: [yocto] package iqvlinux-2.2.4-r2.acm_64_uefi requires<br></div><div =
dir=3D"ltr">&nbsp;&nbsp;&nbsp; kernel-module... but none of the providers c=
an be installed<br></div><div dir=3D"ltr">Message-ID: &lt;<a href=3D"mailto=
:1651395282.2204134.1563302441374@mail.yahoo.com" rel=3D"nofollow" target=
=3D"_blank">1651395282.2204134.1563302441374@mail.yahoo.com</a>&gt;<br></di=
v><div dir=3D"ltr">Content-Type: text/plain; charset=3D"utf-8"<br></div><di=
v dir=3D"ltr"><br></div><div dir=3D"ltr">HelloI am trying to package Intel'=
s iqvlinux into yocto image. I am getting this error.?Please let me know ho=
w I can get over this.<br></div><div dir=3D"ltr">thanks for your help in ad=
vance,Best regardsMadhu<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">NOTE: yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/re=
cipe-sysroot-native/usr/bin/opkg--volatile-cache -f yocto/build/tmp/work/ac=
m_64_uefi-poky-linux/had-image-dev/1.0-r0/opkg.conf-t yocto/build/tmp/work/=
acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp/-o yocto/build/tmp=
/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/rootfs? --force_postinsta=
ll--prefer-arch-to-version? --add-excludeutil-linux-cfdisk --add-exclude ut=
il-linux-mkfs --add-excludeutil-linux-readprofile --add-exclude util-linux-=
sfdisk install iproute2packagegroup-core-tools-profile sysvinit crashdump-k=
ernel gpiorw dmidecoderun-postinsts kexec-tools cpu smartmontools kernel-de=
vsrc mem devel-utils-initstressapptest strace ethtool lmbench procps makedu=
mpfile memtester rmc pciutilspackagegroup-core-boot perf util-linux-lscpu l=
inpack sshd packagegroup-core-deviqvlinux packagegroup-base-extended onegig=
 fio python-pip m2perf opkgpackagegroup-core-minimal iperf3 python3-modules=
 gcc pcipackagegr<br></div><div dir=3D"ltr"> oup-core-tools-debug packagegr=
oup-core-test util-linux-agetty<br></div><div dir=3D"ltr"><br></div><div di=
r=3D"ltr">ERROR: Unable to install packages.Command 'yocto/build/tmp/work/a=
cm_64_uefi-poky-linux/had-image-dev/1.0-r0/recipe-sysroot-native/usr/bin/op=
kg--volatile-cache -f yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image=
-dev/1.0-r0/opkg.conf-t yocto/build/tmp/work/acm_64_uefi-poky-linux/had-ima=
ge-dev/1.0-r0/temp/ipktemp/-o yocto/build/tmp/work/acm_64_uefi-poky-linux/h=
ad-image-dev/1.0-r0/rootfs? --force_postinstall--prefer-arch-to-version? --=
add-excludeutil-linux-cfdisk --add-exclude util-linux-mkfs --add-excludeuti=
l-linux-readprofile --add-exclude util-linux-sfdisk install iproute2package=
group-core-tools-profile sysvinit crashdump-kernel gpiorw dmidecoderun-post=
insts kexec-tools cpu smartmontools kernel-devsrc mem devel-utils-initstres=
sapptest strace ethtool lmbench procps makedumpfile memtester rmc pciutilsp=
ackagegroup-core-boot perf util-linux-lscpu linpack sshd packagegroup-core-=
deviqvlinux packagegroup-base-extended onegig fio python-pip m2perf opkgpac=
kagegroup-core-minimal ip<br></div><div dir=3D"ltr"> erf3 python3-modules g=
cc pcipackagegroup-core-tools-debug packagegroup-core-test util-linux-agett=
y'returned 1:<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Collecte=
d errors:<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">?* Solver en=
countered 1 problem(s):<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">?* Problem 1/1:<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">?*??=
 -package iqvlinux-2.2.4-r2.acm_64_uefi requireskernel-module-iqvlinux-4.9.=
56-rt37-intel-pk-preempt-rt, but none of theproviders can be installed<br><=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">?* <br></div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr">?* Solution 1:<br></div><div dir=3D"ltr"><br=
></div><div dir=3D"ltr">?*?? - donot ask to install a package providing iqv=
linux<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">?<br></div><div =
dir=3D"ltr"><br></div><div dir=3D"ltr">?*opkg_finalize_intercepts: Failed t=
o open dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0=
/temp/ipktemp//opkg-27HKeH/opkg-intercept-UpxBjM:No such file or directory.=
<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">?* rm_r: Failed toope=
n dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp=
/ipktemp//opkg-27HKeH/opkg-intercept-UpxBjM:No such file or directory.<br><=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">?* rm_r: Failed toopen dir=
 yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipkt=
emp//opkg-27HKeH:No such file or directory.<br></div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">?<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">?<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">DEBUG: Python func=
tion do_rootfs finished<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">ERROR: Function failed: do_rootfs<br></div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">-------------- next part --------------<br></div><div dir=3D"=
ltr">An HTML attachment was scrubbed...<br></div><div dir=3D"ltr">URL: &lt;=
<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/201907=
16/e30f7c25/attachment-0001.html" rel=3D"nofollow" target=3D"_blank">http:/=
/lists.yoctoproject.org/pipermail/yocto/attachments/20190716/e30f7c25/attac=
hment-0001.html</a>&gt;<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">------------------------------<br></div><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr">-- <br></div><div dir=3D"ltr">__________________________________=
_____________<br></div><div dir=3D"ltr">yocto mailing list<br></div><div di=
r=3D"ltr"><a href=3D"mailto:yocto@yoctoproject.org" rel=3D"nofollow" target=
=3D"_blank">yocto@yoctoproject.org</a><br></div><div dir=3D"ltr"><a href=3D=
"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"nofollow" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">End of yocto=
 Digest, Vol 106, Issue 52<br></div><div dir=3D"ltr">**********************=
****************<br></div></div>
            </div>
        </div></body></html>

------=_Part_2334857_1999441565.1563324874870--
