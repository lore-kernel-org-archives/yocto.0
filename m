Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA354E0092E; Sun, 29 Mar 2015 09:24:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73170E00477
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 09:24:03 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-24.us.mimecast.lan; Sun, 29 Mar 2015 12:24:01 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Sun, 29 Mar 2015 09:23:54 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sun, 29 Mar 2015 09:23:51 -0700
Thread-Topic: How do VIRTUAL-RUNTIME's work and how to create a new keymap
	for VIRTUAL-RUNTIME_ir_keytable-keymaps
Thread-Index: AdBqPL4vM1/kesRLRgKpcFXYFzKttw==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDC9879DC@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: 3Ed61m6qQQqGT1HGFdiXEg-1
Subject: How do VIRTUAL-RUNTIME's work and how to create a new keymap for VIRTUAL-RUNTIME_ir_keytable-keymaps
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
X-List-Received-Date: Sun, 29 Mar 2015 16:24:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879DCMSXBEBVT12pla_"

--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879DCMSXBEBVT12pla_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

The v4l-utils recipe defines VIRTUAL-RUNTIME_ir-keytable-keymaps and the ir=
-keytable package appears to RDEPENDS on its value.

I want to define my own key map so  I think that I should create a new pack=
age, called "my-rc-keymaps", for now it simple installs a file in /lib/udev=
/rc_keymaps
In my image recipe I set VIRTUAL-RUNTIME_ir-keytable-keymaps =3D "my-rc-key=
maps"
I then added ir-keytable as a RDEPENDS of another of my packages.

The problem is I don't see my keymap file getting added to the image, in fa=
ct it looks like the default rc-keymaps package is getting installed.

If I add "my-rc-keymaps" to the same RDEPENDS I added ir-keytable then it g=
ets installed so I know the package is ok.

I don't understand what's going on here.
I also find it frustrating that I don't see the VIRTUAL-RUNTIME mechanism d=
ocumented so it makes it even harder to understand.

Thanks,
Matt S.






--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879DCMSXBEBVT12pla_
Content-Type: text/html; charset=WINDOWS-1252
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
<font face=3D"Calibri, sans-serif" size=3D"2">
<div>The v4l-utils recipe defines VIRTUAL-RUNTIME_ir-keytable-keymaps and t=
he ir-keytable package appears to RDEPENDS on its value.&nbsp; </div>
<div>&nbsp;</div>
<div>I want to define my own key map so&nbsp; I think that I should create =
a new package, called &#8220;my-rc-keymaps&#8221;, for now it simple instal=
ls a file in /lib/udev/rc_keymaps</div>
<div>In my image recipe I set VIRTUAL-RUNTIME_ir-keytable-keymaps =3D &quot=
;my-rc-keymaps&quot;</div>
<div>I then added ir-keytable as a RDEPENDS of another of my packages. </di=
v>
<div>&nbsp;</div>
<div>The problem is I don&#8217;t see my keymap file getting added to the i=
mage, in fact it looks like the default rc-keymaps package is getting insta=
lled. </div>
<div>&nbsp;</div>
<div>If I add &#8220;my-rc-keymaps&#8221; to the same RDEPENDS I added ir-k=
eytable then it gets installed so I know the package is ok. </div>
<div>&nbsp;</div>
<div>I don&#8217;t understand what&#8217;s going on here. </div>
<div>I also find it frustrating that I don&#8217;t see the VIRTUAL-RUNTIME =
mechanism documented so it makes it even harder to understand. </div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Matt S. </div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</font>
</body>
</html>



--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879DCMSXBEBVT12pla_--
