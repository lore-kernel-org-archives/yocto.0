Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5547E0049A; Wed,  4 Jan 2017 09:21:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cos-us-iron01k.cos.keysight.com
	(cos-us-iron01k.cos.keysight.com [192.25.5.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9817CE0033D
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 09:21:45 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2BpBADqLW1YfRYYjJxeHAEBBAEBCgEBgnFHAQEBAQGCCge?=
	=?us-ascii?q?EK4oXpCaEUYIIGoYIAoIXEgECAQEBAQEBARMBARYwMIUcXgEqHTkUEgEEEwiIa?=
	=?us-ascii?q?J9NkiaKKwwBJY9uNIJ8gjEFiGeHaoo4ohpIkXglATCHPXKHJQGBDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.33,459,1477980000"; d="scan'208,217";a="44183258"
Received: from wcosexch03k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.22]) by cos-us-iron01k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Jan 2017 10:21:43 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.33]) by
	wcosexch03k.cos.is.keysight.com ([156.140.24.22]) with mapi id
	14.03.0279.002; Wed, 4 Jan 2017 10:21:35 -0700
From: <richard_allen@keysight.com>
To: <yocto@yoctoproject.org>
Thread-Topic: morty populate_sdk_ext fails for recipes inherit bin_package
Thread-Index: AdJmrdhZ9pbqzvy0R9qZ/7zxjaZvSQ==
Date: Wed, 4 Jan 2017 17:21:35 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.70]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22804.001
x-tm-as-result: No--3.722400-8.000000-31
x-tm-as-matchedid: 701625-704425-702876-702609-700359-139704-187067-703788-7
	05388-707654-702358-705861-701053-707451-700648-702169-711109-704034-701016
	-701465-706817-701339-704504-708797-701927-701305-701604-701232-701298-7006
	34-105040-148004-148036-42000-42003
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Wed, 04 Jan 2017 17:21:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BC774F321B0EF24DBF41FE7457B2B7862D17D5A2wcosexch01kcosi_"

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17D5A2wcosexch01kcosi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am getting errors with morty and -c populate_sdk_ext when I have recipes =
which inherit bin_package
These recipes work fine with Krogoth and it's populate_sdk_ext

Note: package is not empty, Use to install package on running system.

No idea how to proceed on fixing this (or if this is an morty issue with po=
pulate_sdk_ext
(-c populate_sdk works fine)


If I use ipk for package managment

NOTE: Executing RunQueue Tasks
ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packages=
. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opkg=
 --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-li=
nux/uninative-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/morty/tmp/wor=
k/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/ipktemp/ -o /home/rc=
allen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/=
sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall --prefer-arch-to-v=
ersion   install hals hals-doc' returned 255:
Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals'.
 * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk-linux/uninative-tarball/1.0-r0/temp/ipktemp//opkg-BL2Z8g: No such file=
 or directory.

ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Function failed: do_popula=
te_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/morty/tmp/work/x86=
_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/log.do_populate_sdk.81325
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/meta/uninative-tarball=
.bb:do_populate_sdk) failed with exit code '1'
ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install package=
s. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opk=
g --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-l=
inux/buildtools-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/morty/tmp/w=
ork/x86_64-nativesdk-linux/buildtools-tarball/1.0-r0/temp/ipktemp/ -o /home=
/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/buildtools-tarball/1.0=
-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall --prefer-arch-=
to-version   install hals hals-doc' returned 255:
Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals'.
 * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk-linux/buildtools-tarball/1.0-r0/temp/ipktemp//opkg-M2XGyh: No such fil=
e or directory.

ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: do_popul=
ate_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/morty/tmp/work/x86=
_64-nativesdk-linux/buildtools-tarball/1.0-r0/temp/log.do_populate_sdk.8133=
6
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/meta/buildtools-tarbal=
l.bb:do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2670 tasks of which 2663 didn't need to be r=
erun and 2 failed.

Summary: 2 tasks failed:
  /opt/yocto/morty/poky/meta/recipes-core/meta/uninative-tarball.bb:do_popu=
late_sdk
  /opt/yocto/morty/poky/meta/recipes-core/meta/buildtools-tarball.bb:do_pop=
ulate_sdk


if I use rpm for package management:

ERROR: uninative-tarball-1.0-r0 do_populate_sdk: hals not found in the feed=
s () in /home/rcallen/proto/morty/tmp/deploy/rpm.
ERROR: uninative-tarball-1.0-r0 do_populate_sdk: This is often caused by an=
 empty package declared in a recipe's PACKAGES variable. (Empty packages ar=
e not constructed unless ALLOW_EMPTY_<pkg> =3D '1' is used.)
ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Function failed: do_popula=
te_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/morty/tmp/work/x86=
_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/log.do_populate_sdk.74337
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/meta/uninative-tarball=
.bb:do_populate_sdk) failed with exit code '1'
ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: hals not found in the fee=
ds () in /home/rcallen/proto/morty/tmp/deploy/rpm.
ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: This is often caused by a=
n empty package declared in a recipe's PACKAGES variable. (Empty packages a=
re not constructed unless ALLOW_EMPTY_<pkg> =3D '1' is used.)
ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: do_popul=
ate_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/morty/tmp/work/x86=
_64-nativesdk-linux/buildtools-tarball/1.0-r0/temp/log.do_populate_sdk.7434=
4
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/meta/buildtools-tarbal=
l.bb:do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2940 tasks of which 2933 didn't need to be r=
erun and 2 failed.

Summary: 2 tasks failed:
  /opt/yocto/morty/poky/meta/recipes-core/meta/uninative-tarball.bb:do_popu=
late_sdk
  /opt/yocto/morty/poky/meta/recipes-core/meta/buildtools-tarball.bb:do_pop=
ulate_sdk



Richard C. Allen
richard_allen@Keysight.com<mailto:richard_allen@Keysight.com>





--_000_BC774F321B0EF24DBF41FE7457B2B7862D17D5A2wcosexch01kcosi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>I am getting errors with morty and -c populate_sdk_ext when I have rec=
ipes which inherit bin_package</div>
<div>These recipes work fine with Krogoth and it&#8217;s populate_sdk_ext</=
div>
<div>&nbsp;</div>
<div>Note: package is not empty, Use to install package on running system.<=
/div>
<div>&nbsp;</div>
<div>No idea how to proceed on fixing this (or if this is an morty issue wi=
th populate_sdk_ext</div>
<div>(-c populate_sdk works fine)</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>If I use ipk for package managment</div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">NOTE: Executing RunQueue Tasks</font></div>
<div><font face=3D"Courier New">ERROR: uninative-tarball-1.0-r0 do_populate=
_sdk: Unable to install packages. Command '/home/rcallen/proto/morty/tmp/sy=
sroots/x86_64-linux/usr/bin/opkg --volatile-cache -f /home/rcallen/proto/mo=
rty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/opkg.conf
-t /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarb=
all/1.0-r0/temp/ipktemp/ -o /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk-linux/uninative-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none&nbs=
p; --force_postinstall --prefer-arch-to-version&nbsp;&nbsp;
install hals hals-doc' returned 255:</font></div>
<div><font face=3D"Courier New">Collected errors:</font></div>
<div><font face=3D"Courier New"> * opkg_prepare_url_for_install: <b>Couldn'=
t find anything to satisfy 'hals'</b>.</font></div>
<div><font face=3D"Courier New"> * rm_r: Failed to open dir /home/rcallen/p=
roto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/ip=
ktemp//opkg-BL2Z8g: No such file or directory.</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">ERROR: uninative-tarball-1.0-r0 do_populate=
_sdk: Function failed: do_populate_sdk</font></div>
<div><font face=3D"Courier New">ERROR: Logfile of failure stored in: /home/=
rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r=
0/temp/log.do_populate_sdk.81325</font></div>
<div><font face=3D"Courier New">ERROR: Task (/opt/yocto/morty/poky/meta/rec=
ipes-core/meta/uninative-tarball.bb:do_populate_sdk) failed with exit code =
'1'</font></div>
<div><font face=3D"Courier New">ERROR: buildtools-tarball-1.0-r0 do_populat=
e_sdk: Unable to install packages. Command '/home/rcallen/proto/morty/tmp/s=
ysroots/x86_64-linux/usr/bin/opkg --volatile-cache -f /home/rcallen/proto/m=
orty/tmp/work/x86_64-nativesdk-linux/buildtools-tarball/1.0-r0/opkg.conf
-t /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/buildtools-tar=
ball/1.0-r0/temp/ipktemp/ -o /home/rcallen/proto/morty/tmp/work/x86_64-nati=
vesdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none&n=
bsp; --force_postinstall --prefer-arch-to-version&nbsp;&nbsp;
install hals hals-doc' returned 255:</font></div>
<div><font face=3D"Courier New">Collected errors:</font></div>
<div><font face=3D"Courier New"> * opkg_prepare_url_for_install: Couldn't f=
ind anything to satisfy 'hals'.</font></div>
<div><font face=3D"Courier New"> * rm_r: Failed to open dir /home/rcallen/p=
roto/morty/tmp/work/x86_64-nativesdk-linux/buildtools-tarball/1.0-r0/temp/i=
pktemp//opkg-M2XGyh: No such file or directory.</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">ERROR: buildtools-tarball-1.0-r0 do_populat=
e_sdk: Function failed: do_populate_sdk</font></div>
<div><font face=3D"Courier New">ERROR: Logfile of failure stored in: /home/=
rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/buildtools-tarball/1.0-=
r0/temp/log.do_populate_sdk.81336</font></div>
<div><font face=3D"Courier New">ERROR: Task (/opt/yocto/morty/poky/meta/rec=
ipes-core/meta/buildtools-tarball.bb:do_populate_sdk) failed with exit code=
 '1'</font></div>
<div><font face=3D"Courier New">NOTE: Tasks Summary: Attempted 2670 tasks o=
f which 2663 didn't need to be rerun and 2 failed.</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">Summary: 2 tasks failed:</font></div>
<div><font face=3D"Courier New">&nbsp; /opt/yocto/morty/poky/meta/recipes-c=
ore/meta/uninative-tarball.bb:do_populate_sdk</font></div>
<div><font face=3D"Courier New">&nbsp; /opt/yocto/morty/poky/meta/recipes-c=
ore/meta/buildtools-tarball.bb:do_populate_sdk</font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>if I use rpm for package management:</div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">ERROR: uninative-tarball-1.0-r0 do_populate=
_sdk: hals not found in the feeds () in /home/rcallen/proto/morty/tmp/deplo=
y/rpm.</font></div>
<div><font face=3D"Courier New">ERROR: uninative-tarball-1.0-r0 do_populate=
_sdk: This is often caused by an empty package declared in a recipe's PACKA=
GES variable. (Empty packages are not constructed unless ALLOW_EMPTY_&lt;pk=
g&gt; =3D '1' is used.)</font></div>
<div><font face=3D"Courier New">ERROR: uninative-tarball-1.0-r0 do_populate=
_sdk: Function failed: do_populate_sdk</font></div>
<div><font face=3D"Courier New">ERROR: Logfile of failure stored in: /home/=
rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r=
0/temp/log.do_populate_sdk.74337</font></div>
<div><font face=3D"Courier New">ERROR: Task (/opt/yocto/morty/poky/meta/rec=
ipes-core/meta/uninative-tarball.bb:do_populate_sdk) failed with exit code =
'1'</font></div>
<div><font face=3D"Courier New">ERROR: buildtools-tarball-1.0-r0 do_populat=
e_sdk: hals not found in the feeds () in /home/rcallen/proto/morty/tmp/depl=
oy/rpm.</font></div>
<div><font face=3D"Courier New">ERROR: buildtools-tarball-1.0-r0 do_populat=
e_sdk: This is often caused by an empty package declared in a recipe's PACK=
AGES variable. (Empty packages are not constructed unless ALLOW_EMPTY_&lt;p=
kg&gt; =3D '1' is used.)</font></div>
<div><font face=3D"Courier New">ERROR: buildtools-tarball-1.0-r0 do_populat=
e_sdk: Function failed: do_populate_sdk</font></div>
<div><font face=3D"Courier New">ERROR: Logfile of failure stored in: /home/=
rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/buildtools-tarball/1.0-=
r0/temp/log.do_populate_sdk.74344</font></div>
<div><font face=3D"Courier New">ERROR: Task (/opt/yocto/morty/poky/meta/rec=
ipes-core/meta/buildtools-tarball.bb:do_populate_sdk) failed with exit code=
 '1'</font></div>
<div><font face=3D"Courier New">NOTE: Tasks Summary: Attempted 2940 tasks o=
f which 2933 didn't need to be rerun and 2 failed.</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">Summary: 2 tasks failed:</font></div>
<div><font face=3D"Courier New">&nbsp; /opt/yocto/morty/poky/meta/recipes-c=
ore/meta/uninative-tarball.bb:do_populate_sdk</font></div>
<div><font face=3D"Courier New">&nbsp; /opt/yocto/morty/poky/meta/recipes-c=
ore/meta/buildtools-tarball.bb:do_populate_sdk</font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><font face=3D"Arial" size=3D"2" color=3D"#993300"><span style=3D"font-=
size:10pt;"><b>Richard C. Allen</b></span></font></div>
<div><a href=3D"mailto:richard_allen@Keysight.com"><font face=3D"Arial" siz=
e=3D"2" color=3D"blue"><span style=3D"font-size:10pt;"><u>richard_allen@Key=
sight.com</u></span></font></a></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17D5A2wcosexch01kcosi_--
