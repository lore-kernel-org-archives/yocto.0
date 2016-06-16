Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 513D1E00D2E; Thu, 16 Jun 2016 06:41:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Jun 2016 06:41:55 PDT
Received: from smtp.axxcelera.com
	(static-96-253-69-114.rcmdva.fios.verizon.net [96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3801E00D15
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 06:41:55 -0700 (PDT)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Thu, 16 Jun 2016 09:40:48 -0400
From: "Stath, Paul" <PStath@Axxcelera.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ifenslave recipe
Thread-Index: AdHHzvCriO+O5Zr0Sa2noKI6QbMYdg==
Date: Thu, 16 Jun 2016 13:40:47 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCF@RIC-MS02.MWSG.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Subject: ifenslave recipe
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
X-List-Received-Date: Thu, 16 Jun 2016 13:41:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCFRICMS02MWSGint_"

--_000_5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCFRICMS02MWSGint_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm looking at adding support for NIC bonding into our distribution.

Along with bonding support in the kernel, I would like to build the 'ifensl=
ave' utility program.

In checking the OpenEmbedded Layer Index, I find recipes-support/ifenslave/=
ifenslave_1.1.0.bb in the meta-networking layer.

This recipe has a SRC_URI for a version of 'ifenslave.c' (ifenslace-2.6_1.1=
.0.org.tar.gz) which I hazard to guess is based on the ifenslave distribute=
d with the 2.6 kernel sources.

The documentation for bonding (http://www.linuxfoundation.org/collaborate/w=
orkgroups/networking/bonding) recommends using the 'ifenslave.c' distribute=
d with the kernel sources.  It does indicate that sources from an earlier k=
ernel should still work, but may not support new functionallity.

Ideally, I would like to add a .bbappend to the linux-yocto recipe in my la=
yer that will compile and package the ifenslave program if "CONFIG_BONDING=
=3D[m|y]" is configured for the kernel build.

I'm unsure of the best way to determine if CONFIG_BONDING=3D[m|y].  Is is a=
s simple as "grep '^CONFIG_BONDING=3D[m|y] .config"?

If bonding is enabled:

+ do_compile_append() to compile ifenslave.c sources from kernel source tre=
e.
+ do_install_append() to stage ifenslave executable
+ Update the "PACKAGES" variable to add "ifenslave" as a package.
+ Add FILES_ifenslave variable to define the contents of the ifenslave pack=
age.

Please correct the above if I have missed something, made an invalid assump=
tion, or am barking up the wrong tree.

--
Paul Stath
Senior Software Engineer
Axxcelera Broadband Wireless
Richmond, VA 23228







--_000_5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCFRICMS02MWSGint_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Arial;color: #000000;font-size: 1=
2pt;">I'm looking at adding support for NIC bonding into our distribution.<=
br>
<br>
Along with bonding support in the kernel, I would like to build the 'ifensl=
ave' utility program.<br>
<br>
In checking the OpenEmbedded Layer Index, I find recipes-support/ifenslave/=
ifenslave_1.1.0.bb in the meta-networking layer.<br>
<br>
This recipe has a SRC_URI for a version of 'ifenslave.c' (ifenslace-2.6_1.1=
.0.org.tar.gz) which I hazard to guess is based on the ifenslave distribute=
d with the 2.6 kernel sources.<br>
<br>
The documentation for bonding (http://www.linuxfoundation.org/collaborate/w=
orkgroups/networking/bonding) recommends using the 'ifenslave.c' distribute=
d with the kernel sources.&nbsp; It does indicate that sources from an earl=
ier kernel should still work, but may
 not support new functionallity.<br>
<br>
Ideally, I would like to add a .bbappend to the linux-yocto recipe in my la=
yer that will compile and package the ifenslave program if &quot;CONFIG_BON=
DING=3D[m|y]&quot; is configured for the kernel build.<br>
<br>
I'm unsure of the best way to determine if CONFIG_BONDING=3D[m|y].&nbsp; Is=
 is as simple as &quot;grep '^CONFIG_BONDING=3D[m|y] .config&quot;?<br>
<br>
If bonding is enabled:<br>
<br>
&#43; do_compile_append() to compile ifenslave.c sources from kernel source=
 tree.<br>
&#43; do_install_append() to stage ifenslave executable<br>
&#43; Update the &quot;PACKAGES&quot; variable to add &quot;ifenslave&quot;=
 as a package.<br>
&#43; Add FILES_ifenslave variable to define the contents of the ifenslave =
package.<br>
<br>
Please correct the above if I have missed something, made an invalid assump=
tion, or am barking up the wrong tree.<br>
<br>
--<br>
Paul Stath<br>
Senior Software Engineer<br>
Axxcelera Broadband Wireless<br>
Richmond, VA 23228<br>
<br>
<br>
<br>
<br>
<br>
<br>
</div>
</body>
</html>

--_000_5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCFRICMS02MWSGint_--
