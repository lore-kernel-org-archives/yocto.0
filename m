Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EFC5E0070F; Sat, 10 Dec 2016 09:50:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0007]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Dec 2016 09:50:04 PST
Received: from cos-us-iron01k.cos.keysight.com
	(cos-us-iron01k.cos.keysight.com [192.25.5.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8663E005B9
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 09:50:04 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2DMAQDZP0xYfRUYjJxdgyNEAQEBAQF5gQYHuVqCCCGGAAK?=
	=?us-ascii?q?CJRQBAgEBAQEBAQETAQEWLzCEbAMnBl4BKlYmAQQbiGOcM5FqPYtFihGFOhiDL?=
	=?us-ascii?q?4ISHgWVAIVrhk+NG44CkhofhzJyh3UBgQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.33,328,1477980000"; d="scan'208,217";a="42996327"
Received: from wcosexch02k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.21]) by cos-us-iron01k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Dec 2016 10:48:50 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.103]) by
	wcosexch02k.cos.is.keysight.com ([156.140.24.21]) with mapi id
	14.03.0279.002; Sat, 10 Dec 2016 10:48:49 -0700
From: <richard_allen@keysight.com>
To: <yocto@yoctoproject.org>
Thread-Topic: busybox and images, how to change busybox based on image
	component added 
Thread-Index: AdJTCmBc9ulmDiAARdirOzGbvIR4Pg==
Date: Sat, 10 Dec 2016 17:48:48 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D16A580@wcosexch01k.cos.is.keysight.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.70]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22754.001
x-tm-as-result: No--3.663800-8.000000-31
x-tm-as-matchedid: 150588-701625-704425-702876-702609-700359-139704-187067-1
	06420-703788-707788-702829-701236-700470-863828-121338-862883-700057-705098
	-704980-704421-705388-701837-702358-700107-148004-148036-42000-42003
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: busybox and images, how to change busybox based on image component added
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
X-List-Received-Date: Sat, 10 Dec 2016 17:50:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BC774F321B0EF24DBF41FE7457B2B7862D16A580wcosexch01kcosi_"

--_000_BC774F321B0EF24DBF41FE7457B2B7862D16A580wcosexch01kcosi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to remove the udhcp( client / server) components in busybox whe=
n I include 'connman' in my image.

I have a busybox_%.bbappend which will
SRC_URI_append =3D " file://no-uhdpc.cfg"

no-uhdcpc.cfg

CONFIG_UDHCPD=3Dn
CONFIG_UDHCPC=3Dn

Hitting serval issues:
-) need to do a bitbake -c cleanall busybox for busybox to be recompiled wi=
th new configuration
-) need to do a bitbake -c clean core-image-minimal so a new rootfs will be=
 generated with the busybox ( new compile of busybox does not appear to tri=
gger a new rootfs creation)

Note: I tried just using

PACKAGE_EXCLUDE +=3D  " busybox-udhcpd busybox-udhcpc "

to keep from having to change busybox configuration , but still end up with=
 some of the udpc in the final image.

./sbin/udhcpc -> /bin/busybox.nosuid
./usr/lib/opkg/alternatives/udhcpc

grep: image-files: Is a directory
image-info.txt:PACKAGE_EXCLUDE =3D busybox-udhcpd busybox-udhcpc

Appears that busybox does some installation based on the actually setting o=
f CONFIG_UDHCPC and CONFIG_UDHCPD


FInally, I would like the busybox append to only change if 'connman' is pre=
sent
In local.conf, add 'example

IMAGE_INSTALL_append =3D " example"

In example.bb have
RDEPENDS_example =3D " connman"

So in busybox_*.bbappend

I thought this would work (but seems to be ignored)

SRC_URI_append_connman =3D " file://no-uhdpc.cfg"
#SRC_URI_append =3D " file://no-uhdpc.cfg"

But need to use
SRC_URI_append =3D " file://no-uhdpc.cfg"

to have the cfg added.
also tried
SRC_URI_append_pn-connman =3D " file://no-uhdpc.cfg"

How best to get a busybox configuration changed based on installation of a =
package?

Thanks

Richard C. Allen



--_000_BC774F321B0EF24DBF41FE7457B2B7862D16A580wcosexch01kcosi_
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
<div>I am trying to remove the udhcp( client / server) components in busybo=
x when I include &#8216;connman&#8217; in my image.</div>
<div>&nbsp;</div>
<div>I have a busybox_%.bbappend which will </div>
<div>SRC_URI_append =3D &quot; <a href=3D"file://no-uhdpc.cfg"><font color=
=3D"blue"><u>file://no-uhdpc.cfg</u></font></a>&quot;</div>
<div>&nbsp;</div>
<div>no-uhdcpc.cfg </div>
<div>&nbsp;</div>
<div>CONFIG_UDHCPD=3Dn</div>
<div>CONFIG_UDHCPC=3Dn</div>
<div>&nbsp;</div>
<div>Hitting serval issues:</div>
<div>-) need to do a bitbake -c cleanall busybox for busybox to be recompil=
ed with new configuration</div>
<div>-) need to do a bitbake -c clean core-image-minimal so a new rootfs wi=
ll be generated with the busybox ( new compile of busybox does not appear t=
o trigger a new rootfs creation)</div>
<div>&nbsp;</div>
<div>Note: I tried just using</div>
<div>&nbsp;</div>
<div>PACKAGE_EXCLUDE &#43;=3D&nbsp; &quot; busybox-udhcpd busybox-udhcpc &q=
uot;</div>
<div>&nbsp;</div>
<div>to keep from having to change busybox configuration , but still end up=
 with some of the udpc in the final image.</div>
<div>&nbsp;</div>
<div>./sbin/udhcpc -&gt; /bin/busybox.nosuid</div>
<div>./usr/lib/opkg/alternatives/udhcpc</div>
<div>&nbsp;</div>
<div>grep: image-files: Is a directory</div>
<div>image-info.txt:PACKAGE_EXCLUDE =3D busybox-udhcpd busybox-udhcpc</div>
<div>&nbsp;</div>
<div>Appears that busybox does some installation based on the actually sett=
ing of CONFIG_UDHCPC and CONFIG_UDHCPD</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>FInally, I would like the busybox append to only change if &#8216;conn=
man&#8217; is present </div>
<div>In local.conf, add &#8216;example</div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL_append =3D &quot; example&quot;</div>
<div>&nbsp;</div>
<div>In example.bb have</div>
<div>RDEPENDS_example =3D &quot; connman&quot;</div>
<div>&nbsp;</div>
<div>So in busybox_*.bbappend</div>
<div>&nbsp;</div>
<div>I thought this would work (but seems to be ignored)</div>
<div>&nbsp;</div>
<div>SRC_URI_append_connman =3D &quot; <a href=3D"file://no-uhdpc.cfg">file=
://no-uhdpc.cfg</a>&quot;</div>
<div>#SRC_URI_append =3D &quot; <a href=3D"file://no-uhdpc.cfg"><font color=
=3D"blue"><u>file://no-uhdpc.cfg</u></font></a>&quot;</div>
<div>&nbsp;</div>
<div>But need to use</div>
<div>SRC_URI_append =3D &quot; <a href=3D"file://no-uhdpc.cfg"><font color=
=3D"blue"><u>file://no-uhdpc.cfg</u></font></a>&quot;</div>
<div>&nbsp;</div>
<div>to have the cfg added.</div>
<div>also tried </div>
<div>SRC_URI_append_pn-connman =3D &quot; <a href=3D"file://no-uhdpc.cfg">f=
ile://no-uhdpc.cfg</a>&quot;</div>
<div>&nbsp;</div>
<div>How best to get a busybox configuration changed based on installation =
of a package?</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>&nbsp;</div>
<div><font face=3D"Arial" size=3D"2" color=3D"#993300"><span style=3D"font-=
size:10pt;"><b>Richard C. Allen</b></span></font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_BC774F321B0EF24DBF41FE7457B2B7862D16A580wcosexch01kcosi_--
