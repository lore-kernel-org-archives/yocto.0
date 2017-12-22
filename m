Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A21CE00D9C; Thu, 21 Dec 2017 16:23:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26F8DE00C0F
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 16:23:02 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 22 Dec 2017 00:23:01 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 21 Dec 2017 16:07:53 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 21 Dec 2017 16:07:53 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Trevor Woerner <twoerner@gmail.com>
Thread-Topic: [yocto] add kernel modules & dtbo's for Raspberry Pi3
Thread-Index: AQHTeeVq9WEGDWWB7kmaupbor0m+a6NOQT8A///sUEk=
Date: Fri, 22 Dec 2017 00:07:53 +0000
Message-ID: <f9664e0ff7bf4110966d7daf9f0d0012@sakuraus.com>
References: <246f195bf41b44dbaa3d46cdfde44e82@sakuraus.com>,
	<20171221123020.GA29794@linux-uys3>
In-Reply-To: <20171221123020.GA29794@linux-uys3>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1513902181-321458-19749-37288-1
X-BESS-VER: 2017.16-r1712182224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.188239
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn'
	t match header 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, HTML_MESSAGE,
	BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: add kernel modules & dtbo's for Raspberry Pi3
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
X-List-Received-Date: Fri, 22 Dec 2017 00:23:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f9664e0ff7bf4110966d7daf9f0d0012sakurauscom_"

--_000_f9664e0ff7bf4110966d7daf9f0d0012sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Other than the fact that I was using '()' instead of '{}' for the file name=
, your catch of the missing ':' got the file include fixed. And your sugges=
tion for including the Device Tree Overlays was perfect. Thanks,


I seem to have something still messed up in the kernel configs though, it l=
ooks like my file is getting included, or at least the path is not blowing =
up, but the config elements are not being set.


Here is my Scribe.cfg file:

# Enable MAX9768
CONFIG_SND_SOC_MAX9768=3Dm

# Enable MAX11606
CONFIG_MAX1363=3Dm


The 'CONFIG_SND_SOC_MAX9768' is not showing up at all in the .config file, =
and the 'CONFIG_MAX1363' is not set. They both are found in the appropriate=
 Kconfig files.


Is there something else that I'm missing?


Regards,

Greg

________________________________
From: Trevor Woerner <twoerner@gmail.com>
Sent: Thursday, December 21, 2017 4:30:20 AM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] add kernel modules & dtbo's for Raspberry Pi3

On Wed 2017-12-20 @ 11:40:50 PM, Greg Wilson-Lindberg wrote:
> I'm building an image for the Raspberry Pi 3 and I'm trying to add some
> modules to the kernel and I need to add some device tree overlays. The
> modules and overlays are part of the kernel, just not built by default.
>
> For the kernel modules I've added a linux-raspberrypi_4.4.bbappend file i=
n
> the path .../recipes-bsp/linux. The file consists of:
>
> # Scribe additions to Kernel configuration
>
> FILESEXTRAPATHS_prepend +=3D "$(THISDIR)/files"
> SRC_URI +=3D "file://Scribe.cfg"
>
> Whether I use "+=3D" or ":=3D" as suggested in "Embedded Linux Systems wi=
the
> the Yocto Project", I get an error that "file://0001-fix-dtbo-rules.patch=
"
> cannot be found. I don't get this error if my .bbappend file is not being
> used.

You're missing a colon at the end of the path definition, and you should us=
e
the ':=3D' operator:

        FILESEXTRAPATHS_prepend :=3D "$(THISDIR)/files:"

The path you're introducing is getting added to a bunch of other paths, and
therefore needs the separator. The :=3D operator causes your change to this
variable to be immediately expanded by bitbake, which is what you want.

> Also, if there are any quick tips on how to add dtbo's to the kernel buil=
d I
> would appreciate them.

If you look through the raspberry pi kernel sources
        ($TMPDIR/work/raspberrypi3-*/linux-raspberrypi/${VERSION}/linux-ras=
pberrypi3-standard-build/source)
at
        arch/arm/boot/dts/overlays

and find an overlay you like (e.g. spi1-3cs-overlay.dts) then to have it ad=
ded
to your image and applied at boot time:

1. edit local.conf to add it to the kernel's device tree (but add it as a d=
tbo
without the "-overlay"):

        KERNEL_DEVICETREE_append =3D " overlays/spi1-3cs.dtbo"

2. extend rpi-config to include it in the image's config.txt file:

        rpi-config_%.bbappend:
                do_deploy_append() {
                        echo "dtoverlay=3Dspi1-3cs" >>${DEPLOYDIR}/bcm2835-=
bootfiles/config.txt"
                }

--_000_f9664e0ff7bf4110966d7daf9f0d0012sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Trevor,</p>
<p>Other than the fact that I was using '()' instead of '{}' for the file n=
ame, your catch of the missing ':' got the file include fixed. And your sug=
gestion for including the Device Tree Overlays was perfect. Thanks,</p>
<p><br>
</p>
<p>I seem to have something still messed up in the kernel configs though, i=
t looks like my file is getting included, or at least the path is not blowi=
ng up, but the config elements are not being set.</p>
<p><br>
</p>
<p>Here is my Scribe.cfg file:</p>
<p></p>
<div>
<pre># Enable MAX9768=0A=
CONFIG_SND_SOC_MAX9768=3Dm=0A=
=0A=
# Enable MAX11606=0A=
CONFIG_MAX1363=3Dm=0A=
</pre>
</div>
The 'CONFIG_SND_SOC_MAX9768' is not showing up at all in the .config file, =
and the 'CONFIG_MAX1363' is not set. They both are found in the appropriate=
 Kconfig files.
<p></p>
<p><br>
</p>
<p>Is there something else that I'm missing?</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Trevor Woerner &lt;=
twoerner@gmail.com&gt;<br>
<b>Sent:</b> Thursday, December 21, 2017 4:30:20 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] add kernel modules &amp; dtbo's for Raspberry P=
i3</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Wed 2017-12-20 @ 11:40:50 PM, Greg Wilson-Lindb=
erg wrote:<br>
&gt; I'm building an image for the Raspberry Pi 3 and I'm trying to add som=
e<br>
&gt; modules to the kernel and I need to add some device tree overlays. The=
<br>
&gt; modules and overlays are part of the kernel, just not built by default=
.<br>
&gt; <br>
&gt; For the kernel modules I've added a linux-raspberrypi_4.4.bbappend fil=
e in<br>
&gt; the path .../recipes-bsp/linux. The file consists of:<br>
&gt; <br>
&gt; # Scribe additions to Kernel configuration<br>
&gt; <br>
&gt; FILESEXTRAPATHS_prepend &#43;=3D &quot;$(THISDIR)/files&quot;<br>
&gt; SRC_URI &#43;=3D &quot;<a href=3D"file://Scribe.cfg">file://Scribe.cfg=
</a>&quot;<br>
&gt; <br>
&gt; Whether I use &quot;&#43;=3D&quot; or &quot;:=3D&quot; as suggested in=
 &quot;Embedded Linux Systems withe<br>
&gt; the Yocto Project&quot;, I get an error that &quot;<a href=3D"file://0=
001-fix-dtbo-rules.patch">file://0001-fix-dtbo-rules.patch</a>&quot;<br>
&gt; cannot be found. I don't get this error if my .bbappend file is not be=
ing<br>
&gt; used.<br>
<br>
You're missing a colon at the end of the path definition, and you should us=
e<br>
the ':=3D' operator:<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILESEXTRAPATHS_prepend :=3D &qu=
ot;$(THISDIR)/files:&quot;<br>
<br>
The path you're introducing is getting added to a bunch of other paths, and=
<br>
therefore needs the separator. The :=3D operator causes your change to this=
<br>
variable to be immediately expanded by bitbake, which is what you want.<br>
<br>
&gt; Also, if there are any quick tips on how to add dtbo's to the kernel b=
uild I<br>
&gt; would appreciate them.<br>
<br>
If you look through the raspberry pi kernel sources<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ($TMPDIR/work/raspberrypi3-*/lin=
ux-raspberrypi/${VERSION}/linux-raspberrypi3-standard-build/source)<br>
at<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; arch/arm/boot/dts/overlays<br>
<br>
and find an overlay you like (e.g. spi1-3cs-overlay.dts) then to have it ad=
ded<br>
to your image and applied at boot time:<br>
<br>
1. edit local.conf to add it to the kernel's device tree (but add it as a d=
tbo<br>
without the &quot;-overlay&quot;):<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KERNEL_DEVICETREE_append =3D &qu=
ot; overlays/spi1-3cs.dtbo&quot;<br>
<br>
2. extend rpi-config to include it in the image's config.txt file:<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rpi-config_%.bbappend:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; do_deploy_append() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo &quot;=
dtoverlay=3Dspi1-3cs&quot; &gt;&gt;${DEPLOYDIR}/bcm2835-bootfiles/config.tx=
t&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; }<br>
</div>
</span></font>
</body>
</html>

--_000_f9664e0ff7bf4110966d7daf9f0d0012sakurauscom_--
