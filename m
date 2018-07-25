Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7DEDE00BAF; Tue, 24 Jul 2018 17:08:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTP_ESCAPED_HOST, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	*  1.1 HTTP_ESCAPED_HOST URI: Uses %-escapes inside a URL's hostname
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B928E00B6C
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 17:08:53 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id y10-v6so3945245uao.4
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 17:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uQ04qiurb8PW0rP9B3l0DTenbx0RVkk/KCcIZY9a9TI=;
	b=MJ4OvnWpgRcCCxvw8APKHwWoqt3Igx873tt9C83NRNswyiJdKS55BwzwGmm3KRrQTM
	kHtu5flSzuKYRAy7U1H1CzcqK3/qNgh8LVWQlKCyh/3apfufdWyUjjFiF0+wWwM9l9zt
	i7CHTkrwGe+vL1F4b2Sl6aSq3GsW2CSliMSOXhy6G8SDYR04rabNTcnWtK1Y4QnxKg6j
	9YY6PvkDWtOGMi3bYRbAYMoPQDyRdQtuscaOmxvk5wE2GFxTsCTXeg2uThnDB6qUb3JT
	x7a6nINlxl4Tl3Kkxz6rgo/W+3pty+YbFp2uMjqqpVf91p+abeljTS+C/WhMQr6sUZOE
	sXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uQ04qiurb8PW0rP9B3l0DTenbx0RVkk/KCcIZY9a9TI=;
	b=TpbYC4Ul/7UV8JmTgwZ+B6e6eyI3uRCrXcJ3VJA/soCEObFRG/BUV1Xwtftpj7uDhb
	jJMTEnGosL0wpU2yrrDzXOs4vnnPN73bOgpOTJYLq9Jlq/HJSp2ilTBpqnGPhI9UdzA3
	L6juvshz+CsNbdK5E5vZlnziHe2IvkKlTpzN2d8McHqKnCIiH2pGeenjcw5IoPlDQCHx
	jtqODn32dwY8NMo+Z+nIkD1T0kK7dnV+35lza19DOZIHMofGHcTC6ajqNJrhaLhjqidC
	Lb/zL7d4Kg3Ht+R2ZPC+zTIi2szv8XBjmSvbME7KX8n93cHUD3QR4ixdFGnPxiKtjBj6
	OHhA==
X-Gm-Message-State: AOUpUlGjM+O08l2iR/IwNkIkWgCkpowojiIPNBsRYC/tdOrfpPSRZ038
	PXwb/UQE51kdwA95oY27xC6aKbouBm1sCPycJwWYo6DF
X-Google-Smtp-Source: AAOMgpdpx8BHhTTq5qXuc62Un31gddNrrw+W25tjbJV1rmzswLgD9fa0reqz9UTi3MKnlhd2r3L+42xmk15nbl2m9i0=
X-Received: by 2002:ab0:6654:: with SMTP id
	b20-v6mr6174188uaq.193.1532477332705; 
	Tue, 24 Jul 2018 17:08:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Tue, 24 Jul 2018 17:08:52 -0700 (PDT)
In-Reply-To: <e90846d06efa4e6c8a9fc52370af9ada@sakuraus.com>
References: <e90846d06efa4e6c8a9fc52370af9ada@sakuraus.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 24 Jul 2018 17:08:52 -0700
Message-ID: <CAJ86T=WENY_jRwhSLJmLXjm7_RbnCJx-fqesWwJw7P2jZh=u4g@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't get *.a's into SDK sysroot
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
X-List-Received-Date: Wed, 25 Jul 2018 00:08:54 -0000
Content-Type: multipart/alternative; boundary="0000000000000ad58a0571c7af07"

--0000000000000ad58a0571c7af07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 24, 2018 at 4:53 PM, Greg Wilson-Lindberg <GWilson@sakuraus.com=
>
wrote:

> I've created a recipe for Canfestival (a CAN bus CANOpen support library)=
.
> I have had it building for a while, but I had the configuration set up to
> build all parts of it as .so's. I need to change it so that parts of the
> library are .a's. My problem is that I can't get the .a's to copy to the
> SDK sysroot /usr/lib directory. The .a's are in the canfestival
> image/usr/lib & sysroot-destdir/usr/lib directories, but nothing that I'v=
e
> tried has gotten them to the SDK sysroot.
>
>
>
> Here is the canfestival_3-asc.bb file that I'm using:
>
>
>
> SUMMARY =3D "Independent CANOpen=C2=AE stack"
>
> DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform inde=
pendent \
>
>                CANOpen=C2=AE stack that can be built as master or slave n=
odes on PCs, \
>
>                Real-time IPCs, and Microcontrollers."
>
>
>
> HOMEPAGE =3D "http://www(dot)canfestival(dot)org/ <http://www%20(dot)%20c=
anfestival%20(dot)%20org/>" // obfuscated to get past our email system
>
>
>
> SRCREV =3D "895:8973dd8be7e8"
>
>
>
> SRC_URI =3D "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestiv=
al-3-asc \
>
>            file://canfestival_3-asc-configure.patch \
>
>            file://canfestival_3-asc-makefile.in.patch \
>
>            file://canfestival_3-asc-src_makefile.in.patch \
>
>            \
>
>            file://sdo.c.patch \
>
>            file://def.h.patch \
>
>            "
>
> PR =3D 'r01'
>
>
>
> LICENSE =3D "LGPLv2"
>
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D46ec399d3928b6c91e3634ab7263af=
44 \
>
>                     file://LICENCE;md5=3D085e7fb76fb3fa8ba9e9ed0ce95a43f9=
"
>
>
>
> TARGET_CC_ARCH +=3D "${LDFLAGS}"
>
>
>
>
>
>
>
> do_configure() {
>
>     bbplain "Starting Configure"
>
>     #bbplain "rootfs: ${D}"
>
>     ./configure --target=3Dunix --prefix=3D${D}/usr/ --can=3Dsocket --tim=
ers=3Dunix  --SDO_MAX_SIMULTANEOUS_TRANSFERS=3D30 --SDO_MAX_LENGTH_TRANSFER=
=3D4096 --MAX_NB_TIMER=3D128 --SDO_TIMEOUT_MS=3D3000 --debug=3D"WAR"
>
>
>
>     bbplain "Configure Done"
>
> }
>
>
>
> do_compile() {
>
>     oe_runmake canfestival
>
> }
>
>
>
> do_install() {
>
>     bbplain "Starting Install"
>
>     #bbplain "rootfs: ${D}"
>
>     oe_runmake install PREFIX=3D${D}/usr/
>
>
>
>     bbplain "Install Done"
>
> }
>
>
>
> FILES_${PN}-dbg =3D "/usr/src/debug/canfestival"
>
> FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a /usr/include/canfestival/=
*.h"
>
> FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
>
>
>
> #PACKAGE_BEFORE_PN =3D "${PN}-info"
>
> #FILES_${PN}-info =3D "usr/lib/pkgconfig"
>
>
>
> I've fiddled with the various FILES lines, but nothing that I do gets the
> .a files copied to the SDK sysroot /usr/lib directory.
>
>
>
> Any insight into what is going wrong would be greatly appreciated.
>

Assuming the static libs are being built and installed correctly they
should be packaged correctly by the default packaging rules. ie you
shouldn't need to tweak any FILES_xxx values.

However you will need to ensure that the -staticdev package gets included
in the SDK. Assuming you always want the static libs for this particular
recipe to be available then you can try adding the following to the recipe:

  RDEPENDS_${PN}-dev +=3D "${PN}-staticdev"

--0000000000000ad58a0571c7af07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Jul 24, 2018 at 4:53 PM, Greg Wilson-Lindberg <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank"=
>GWilson@sakuraus.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>





<div lang=3D"EN-US">
<div class=3D"gmail-m_-5621573016110685943WordSection1">
<p><span style=3D"font-size:11pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:black">I&#39;ve created a recipe for Canfestival (a CAN bus CANOpen su=
pport library). I have had it building for a while, but I had the configura=
tion set up to build all parts of it as .so&#39;s.
 I need to change it so that parts of the library are .a&#39;s. My problem =
is that I can&#39;t get the=C2=A0.a&#39;s to copy to the SDK sysroot /usr/l=
ib directory. The .a&#39;s are in the canfestival image/usr/lib &amp; sysro=
ot-destdir/usr/lib directories, but nothing that I&#39;ve tried
 has gotten them to=C2=A0the SDK sysroot.</span><span style=3D"font-size:11=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><u></u><u></u></=
span></p>
<p><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif=
;color:black"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-size:11pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:black">Here is the <a href=3D"http://canfestival_3-asc.bb" target=3D"_=
blank">canfestival_3-asc.bb</a> file that I&#39;m using:</span><span style=
=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=
<u></u><u></u></span></p>
<p><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif=
;color:black"><u></u>=C2=A0<u></u></span></p>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">SUMMARY =3D &quot;Independent CANOpen=C2=AE stack&quot;<u></u><u>=
</u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">DESCRIPTION =3D &quot;CanFestival focuses on providing an ANSI-C =
platform independent \<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 CANOpen=C2=AE stack that can be built as master or sl=
ave nodes on PCs, \<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Real-time IPCs, and Microcontrollers.&quot;<u></u><u>=
</u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">HOMEPAGE =3D &quot;<a href=3D"http://www%20(dot)%20canfestival%20=
(dot)%20org/" target=3D"_blank">http://www(dot)canfestival(<wbr>dot)org/</a=
>&quot; // obfuscated to get past our email system<u></u><u></u></span></pr=
e>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">SRCREV =3D &quot;895:8973dd8be7e8&quot;<u></u><u></u></span></pre=
>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">SRC_URI =3D &quot;hg://<a href=3D"http://bitbucket.org/Mongo;prot=
ocol=3Dhttps;module=3Dcanfestival-3-asc" target=3D"_blank">bitbucket.org/Mo=
ngo;<wbr>protocol=3Dhttps;module=3D<wbr>canfestival-3-asc</a> \<u></u><u></=
u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a>f=
ile://canfestival_3-asc-<wbr>configure.patch</a> \<u></u><u></u></span></pr=
e>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a>f=
ile://canfestival_3-asc-<wbr>makefile.in.patch</a> \<u></u><u></u></span></=
pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a>f=
ile://canfestival_3-asc-src_<wbr>makefile.in.patch</a> \<u></u><u></u></spa=
n></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<u>=
</u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a>f=
ile://sdo.c.patch</a> \<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a>f=
ile://def.h.patch</a> \<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quo=
t;<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">PR =3D &#39;r01&#39;<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">LICENSE =3D &quot;LGPLv2&quot;<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<wbr>46ec399d3928=
b6c91e3634ab7263af<wbr>44 \<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a>file://LICENCE;md5=
=3D<wbr>085e7fb76fb3fa8ba9e9ed0ce95a43<wbr>f9</a>&quot;<u></u><u></u></span=
></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">TARGET_CC_ARCH +=3D &quot;${LDFLAGS}&quot;<u></u><u></u></span></=
pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">do_configure() {<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 bbplain &quot;Starting Configure&quot;<u></u><=
u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 #bbplain &quot;rootfs: ${D}&quot;<u></u><u></u=
></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 ./configure --target=3Dunix --prefix=3D${D}/us=
r/ --can=3Dsocket --timers=3Dunix=C2=A0 --SDO_MAX_SIMULTANEOUS_<wbr>TRANSFE=
RS=3D30 --SDO_MAX_LENGTH_TRANSFER=3D4096 --MAX_NB_TIMER=3D128 --SDO_TIMEOUT=
_MS=3D3000 --debug=3D&quot;WAR&quot;<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 bbplain &quot;Configure Done&quot;<u></u><u></=
u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">}<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">do_compile() {<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 oe_runmake canfestival<u></u><u></u></span></p=
re>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">}<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">do_install() {<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 bbplain &quot;Starting Install&quot;<u></u><u>=
</u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 #bbplain &quot;rootfs: ${D}&quot;<u></u><u></u=
></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 oe_runmake install PREFIX=3D${D}/usr/<u></u><u=
></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">=C2=A0=C2=A0=C2=A0 bbplain &quot;Install Done&quot;<u></u><u></u>=
</span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">}<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">FILES_${PN}-dbg =3D &quot;/usr/src/debug/canfestival&quot;<u></u>=
<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">FILES_${PN}-dev =3D &quot;/usr/lib/libcanfestival*.a /usr/include=
/canfestival/*.h&quot;<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">FILES_${PN} =3D &quot;/usr/lib/libcanfestival*.a /usr/lib/libcanf=
estival*.so&quot;<u></u><u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">#PACKAGE_BEFORE_PN =3D &quot;${PN}-info&quot;<u></u><u></u></span=
></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black">#FILES_${PN}-info =3D &quot;usr/lib/pkgconfig&quot;<u></u><u></u>=
</span></pre>
<pre style=3D"background:white none repeat scroll 0% 0%"><span style=3D"col=
or:black"><u></u>=C2=A0<u></u></span></pre>
<p class=3D"MsoNormal"><span style=3D"color:black">I&#39;ve fiddled with th=
e various FILES lines, but nothing that I do gets the .a files copied to th=
e SDK=C2=A0sysroot /usr/lib directory.
</span><span style=3D"font-size:12pt;color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif=
;color:black"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-size:11pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:black">Any insight into what is going wrong would be greatly appreciat=
ed.</span></p></div></div></blockquote><div><br></div><div>Assuming the sta=
tic libs are being built and installed correctly they should be packaged co=
rrectly by the default packaging rules. ie you shouldn&#39;t need to tweak =
any FILES_xxx values.</div><div><br></div><div>However you will need to ens=
ure that the -staticdev package gets included in the SDK. Assuming you alwa=
ys want the static libs=C2=A0for this particular recipe  to be available th=
en you can try adding the following to the recipe:<br></div><div><br> </div=
><div>=C2=A0 RDEPENDS_${PN}-dev +=3D &quot;${PN}-staticdev&quot;</div><div>=
<br></div><div><br></div></div></div></div>

--0000000000000ad58a0571c7af07--
