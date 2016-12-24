Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C269E00887; Fri, 23 Dec 2016 17:39:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38FF4E00887
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2016 17:39:39 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2BxBABJ0V1YfRUYjJxeHAEBBAEBCgEBgnE5DQEBAQEBghG?=
	=?us-ascii?q?OPap3ggkahggCgi4SAQIBAQEBAQEBEwEBFi8whRxeASoZPSYBBBuIaJwYkieKf?=
	=?us-ascii?q?QELASWPdoMvgjAFiF+HZ4RAhXSiEEmRcyUBMIV1gUaIbQGBDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.33,396,1477980000"; d="scan'208,217";a="43793714"
Received: from wcosexch02k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.21]) by cos-us-iron01k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Dec 2016 18:39:35 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.33]) by
	wcosexch02k.cos.is.keysight.com ([156.140.24.21]) with mapi id
	14.03.0279.002; Fri, 23 Dec 2016 18:39:33 -0700
From: <richard_allen@keysight.com>
To: <yocto@yoctoproject.org>
Thread-Topic: morty, how to debug opkg issues with do_populate_sdk? (ipk
	based) Error 255 (recipes  use bin_package)
Thread-Index: AdJdhnNOmnONknVRQRmUj1Y2Nn388g==
Date: Sat, 24 Dec 2016 01:39:33 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D17CCBE@wcosexch01k.cos.is.keysight.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.70]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22780.004
x-tm-as-result: No--5.520500-8.000000-31
x-tm-as-matchedid: 701625-704425-702876-702609-700359-139704-863828-700748-7
	09584-707451-701927-705388-700648-702169-701305-711109-701604-121270-701407
	-706249-704034-701016-701053-701465-188019-701236-702358-701446-700107-1480
	04-148036-42000-42003
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: morty, how to debug opkg issues with do_populate_sdk? (ipk based) Error 255 (recipes use bin_package)
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
X-List-Received-Date: Sat, 24 Dec 2016 01:39:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BC774F321B0EF24DBF41FE7457B2B7862D17CCBEwcosexch01kcosi_"

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17CCBEwcosexch01kcosi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have some simple recipes which
inherit bin_package

Local has
PACKAGE_CLASSES ?=3D "package_ipk"

There are no issues with the krogoth release , can do -c populate_sdk and a=
ll is well
with morty, same recipe, same command
but the -c populate_sdk give me;




ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Function failed: do_popul=
ate_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/ipkwork/tmp/work/i=
mx6qdl_imx-k-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_populate_s=
dk.55748
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/images/core-image-mini=
mal.bb:do_populate_sdk) failed with exit code '1'

The log file has:

NOTE: Installing the following packages: opkg foosysm foo foocaps-samples p=
ackagegroup-core-boot foo-sdt foo-utils packagegroup-core-eclipse-debug pac=
kagegroup-core-standalone-sdk-target packagegroup-core-standalone-sdk-targe=
t-dbg foo-tests foocaps u-boot-imx- ssh-keys foo-samples run-postinsts fooi=
o foocaps-tests
NOTE: /home/rcallen/proto/ipkwork/tmp/sysroots/x86_64-linux/usr/bin/opkg --=
volatile-cache -f /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-=
gnueabi/core-image-minimal/1.0-r0/opkg.conf -t /home/rcallen/proto/ipkwork/=
tmp/work/imx6qdl_imx-k-linux-gnueabi/core-image-minimal/1.0-r0/temp/ipktemp=
/ -o /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-=
image-minimal/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/cortexa9hf-neon-k-linux=
-gnueabi  --force_postinstall --prefer-arch-to-version   install opkg foosy=
sm foo foocaps-samples packagegroup-core-boot foo-sdt foo-utils packagegrou=
p-core-eclipse-debug packagegroup-core-standalone-sdk-target packagegroup-c=
ore-standalone-sdk-target-dbg foo-tests foocaps u-boot-imx- ssh-keys foo-sa=
mples run-postinsts fooio foocaps-tests
ERROR: Unable to install packages. Command '/home/rcallen/proto/ipkwork/tmp=
/sysroots/x86_64-linux/usr/bin/opkg --volatile-cache -f /home/rcallen/proto=
/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-image-minimal/1.0-r0/opk=
g.conf -t /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/=
core-image-minimal/1.0-r0/temp/ipktemp/ -o /home/rcallen/proto/ipkwork/tmp/=
work/imx6qdl_imx-k-linux-gnueabi/core-image-minimal/1.0-r0/sdk/image/opt/tl=
o/2.2/sysroots/cortexa9hf-neon-k-linux-gnueabi  --force_postinstall --prefe=
r-arch-to-version   install opkg foosysm foo foocaps-samples packagegroup-c=
ore-boot foo-sdt foo-utils packagegroup-core-eclipse-debug packagegroup-cor=
e-standalone-sdk-target packagegroup-core-standalone-sdk-target-dbg foo-tes=
ts foocaps u-boot-imx- ssh-keys foo-samples run-postinsts fooio foocaps-tes=
ts' returned 255:
 Removing any system startup links for run-postinsts ...

If I change to use rpm

PACKAGE_CLASSES ?=3D "package_rpm"

No issues.
I need ipk , since want to put the more efficient opkg on my system (no roo=
m for smartpm)

If I don't include the recipes based on " inherit bin_package"
I have no problems with

PACKAGE_CLASSES ?=3D "package_ipk"

This is keeping me from moving to morty .

Thanks
Richard Allen




--_000_BC774F321B0EF24DBF41FE7457B2B7862D17CCBEwcosexch01kcosi_
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
<div>I have some simple recipes which </div>
<div>inherit bin_package</div>
<div>&nbsp;</div>
<div>Local has</div>
<div>PACKAGE_CLASSES ?=3D &quot;package_ipk&quot;</div>
<div>&nbsp;</div>
<div>There are no issues with the krogoth release , can do -c populate_sdk =
and all is well</div>
<div>with morty, same recipe, same command </div>
<div>but the -c populate_sdk give me;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">ERROR: core-image-minimal-1.0-r0 do_populat=
e_sdk: Function failed: do_populate_sdk</font></div>
<div><font face=3D"Courier New">ERROR: Logfile of failure stored in: /home/=
rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-image-minim=
al/1.0-r0/temp/log.do_populate_sdk.55748</font></div>
<div><font face=3D"Courier New">ERROR: Task (/opt/yocto/morty/poky/meta/rec=
ipes-core/images/core-image-minimal.bb:do_populate_sdk) failed with exit co=
de '1'&nbsp; </font></div>
<div>&nbsp;</div>
<div>The log file has:</div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">NOTE: Installing the following packages: op=
kg foosysm foo foocaps-samples packagegroup-core-boot foo-sdt foo-utils pac=
kagegroup-core-eclipse-debug packagegroup-core-standalone-sdk-target packag=
egroup-core-standalone-sdk-target-dbg
foo-tests foocaps u-boot-imx- ssh-keys foo-samples run-postinsts fooio fooc=
aps-tests</font></div>
<div><font face=3D"Courier New">NOTE: /home/rcallen/proto/ipkwork/tmp/sysro=
ots/x86_64-linux/usr/bin/opkg --volatile-cache -f /home/rcallen/proto/ipkwo=
rk/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-image-minimal/1.0-r0/opkg.conf=
 -t /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-i=
mage-minimal/1.0-r0/temp/ipktemp/
-o /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-im=
age-minimal/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/cortexa9hf-neon-k-linux-g=
nueabi&nbsp; --force_postinstall --prefer-arch-to-version&nbsp;&nbsp; insta=
ll opkg foosysm foo foocaps-samples packagegroup-core-boot
foo-sdt foo-utils packagegroup-core-eclipse-debug packagegroup-core-standal=
one-sdk-target packagegroup-core-standalone-sdk-target-dbg foo-tests foocap=
s u-boot-imx- ssh-keys foo-samples run-postinsts fooio foocaps-tests</font>=
</div>
<div><font face=3D"Courier New"><b>ERROR</b>: Unable to install packages. C=
ommand '/home/rcallen/proto/ipkwork/tmp/sysroots/x86_64-linux/usr/bin/opkg =
--volatile-cache -f /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linu=
x-gnueabi/core-image-minimal/1.0-r0/opkg.conf
-t /home/rcallen/proto/ipkwork/tmp/work/imx6qdl_imx-k-linux-gnueabi/core-im=
age-minimal/1.0-r0/temp/ipktemp/ -o /home/rcallen/proto/ipkwork/tmp/work/im=
x6qdl_imx-k-linux-gnueabi/core-image-minimal/1.0-r0/sdk/image/opt/tlo/2.2/s=
ysroots/cortexa9hf-neon-k-linux-gnueabi&nbsp;
--force_postinstall --prefer-arch-to-version&nbsp;&nbsp; install opkg foosy=
sm foo foocaps-samples packagegroup-core-boot foo-sdt foo-utils packagegrou=
p-core-eclipse-debug packagegroup-core-standalone-sdk-target packagegroup-c=
ore-standalone-sdk-target-dbg foo-tests foocaps
u-boot-imx- ssh-keys foo-samples run-postinsts fooio foocaps-tests' returne=
d 255:</font></div>
<div><font face=3D"Courier New"> Removing any system startup links for run-=
postinsts ...</font></div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">If I change to use rpm</font></div>
<div>&nbsp;</div>
<div>PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;</div>
<div>&nbsp;</div>
<div>No issues.</div>
<div>I need ipk , since want to put the more efficient opkg on my system (n=
o room for smartpm)</div>
<div>&nbsp;</div>
<div>If I don&#8217;t include the recipes based on &#8220; inherit bin_pack=
age&#8221;</div>
<div>I have no problems with</div>
<div>&nbsp;</div>
<div>PACKAGE_CLASSES ?=3D &quot;package_ipk&quot;</div>
<div>&nbsp;</div>
<div>This is keeping me from moving to morty .</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Richard Allen</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17CCBEwcosexch01kcosi_--
