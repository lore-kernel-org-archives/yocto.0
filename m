Return-Path: <robin@deltastrike.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68EEEE009E5; Mon, 29 Jun 2015 19:26:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vn0-f48.google.com (mail-vn0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F7DAE009D7
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2015 19:26:29 -0700 (PDT)
Received: by vnbf1 with SMTP id f1so8366890vnb.1
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2015 19:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=LFiVbPaZtjwiRDpGnCblHMDLj29hyKNaHGcxxDSfguU=;
	b=CaMhpfb7sv89+eX8nw3QqJhn91cnnQkWfvBTQvP4tVw14AAovA3Ni60QBrqvGtc1On
	03Al1ak/LciC3YJXqqm9lXpBmbjFIzY/YCd6hZbUWcQ359S6OP3Wl7v9czWP5cBWTSyv
	ZeZem6CD66Stug+Crz0NHYB9MJf8gThPGGTePpntINwcriwJapSI70BxhRwEiIAYshJO
	YPDEC9ZPzZQIqcc/DQ4jB2pOWxlQCFC4VpNWU0maWJB3D1RpivsmKxKr62WQwR2kLRhD
	tLvaxTrCj6nNrZILMV3nuv26upmy4iabpPs8cZ3tL7LeJg51jAudh//b8O+VZPsNSwmC
	EY+g==
X-Gm-Message-State: ALoCoQmFGQdn6KfyVyrF2Z5784bEViI8n+FV7iUrBU70E/LBVwu9LIcMGU1X40rJArS68DR01x5v
MIME-Version: 1.0
X-Received: by 10.52.103.8 with SMTP id fs8mr17261086vdb.13.1435631188562;
	Mon, 29 Jun 2015 19:26:28 -0700 (PDT)
Received: by 10.31.138.199 with HTTP; Mon, 29 Jun 2015 19:26:28 -0700 (PDT)
Date: Tue, 30 Jun 2015 14:26:28 +1200
Message-ID: <CAHG6Dmcc5ti=vFy0ttjo5hqm0NMM3HAVejyOmH48sTJOvkdVfA@mail.gmail.com>
From: Robin Gilks <robin@deltastrike.com>
To: yocto@yoctoproject.org
Subject: Unknown expectations!
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
X-List-Received-Date: Tue, 30 Jun 2015 02:26:33 -0000
Content-Type: multipart/alternative; boundary=047d7b86ef2e05ebeb0519b2efb6

--047d7b86ef2e05ebeb0519b2efb6
Content-Type: text/plain; charset=UTF-8

Greetings all

I've just started playing with a Variscite imx6 'VAR-SOM-SOLO' and Yocto
but I'm missing some fundamental info.

So far I've built a poky-fido image for the qemu emulator which works fine
even though I don't yet understand 90% of the build process.

Having succeeded there, I've built an sdcard image using the variscite
daisy recipe(s) and can boot that on the target.

Its the crossover of the two where I'm confused - should I expect the ext3
image built using the variscite recipes to run in qemu? It doesn't :( The
uboot wrapped kernel image won't run (fair enough) so I've tried with the
fido kernel which boots but then crashes out with a 'panic init....' error
once the filesystem image is entered. Unwrapping the uimage fails to even
boot. Loopback mounting the ext3 filesystem looks pretty much like the ext4
from Fido in structure so I'm guessing its more a crash than a pivot root
issue.

Is it kernel incompatibility, ARM binary version issues, or something I
haven't even thought of.

I'm familiar with uboot, buildroot, kernel to driver level (having written
a few for 2.0, 2.2 and 2.4 kernels) and Gentoo portage but not bitbake.

All titbits gratefully received!

-- 
*Robin Gilks*
Development

Delta Strike
Success through Delta Strike
phone:    +64 3 982 9892
skype:     robindeltastrike
web:       www.deltastrike.com

--047d7b86ef2e05ebeb0519b2efb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings all<div><br></div><div>I&#39;ve just started pla=
ying with a Variscite imx6 &#39;VAR-SOM-SOLO&#39; and Yocto but I&#39;m mis=
sing some fundamental info.</div><div><br></div><div>So far I&#39;ve built =
a poky-fido image for the qemu emulator which works fine even though I don&=
#39;t yet understand 90% of the build process.</div><div><br></div><div>Hav=
ing succeeded there, I&#39;ve built an sdcard image using the variscite dai=
sy recipe(s) and can boot that on the target.</div><div><br></div><div>Its =
the crossover of the two where I&#39;m confused - should I expect the ext3 =
image built using the variscite recipes to run in qemu? It doesn&#39;t :( T=
he uboot wrapped kernel image won&#39;t run (fair enough) so I&#39;ve tried=
 with the fido kernel which boots but then crashes out with a &#39;panic in=
it....&#39; error once the filesystem image is entered. Unwrapping the uima=
ge fails to even boot. Loopback mounting the ext3 filesystem looks pretty m=
uch like the ext4 from Fido in structure so I&#39;m guessing its more a cra=
sh than a pivot root issue.</div><div><br></div><div>Is it kernel incompati=
bility, ARM binary version issues, or something I haven&#39;t even thought =
of.</div><div><br></div><div>I&#39;m familiar with uboot, buildroot, kernel=
 to driver level (having written a few for 2.0, 2.2 and 2.4 kernels) and Ge=
ntoo portage but not bitbake.</div><div><br></div><div>All titbits grateful=
ly received!<br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"font-size:12.8=
000001907349px"><font color=3D"#444444"><b>Robin Gilks</b></font></div><div=
 style=3D"font-size:12.8000001907349px"><div><font color=3D"#444444"><font =
face=3D"verdana, arial, helvetica, sans-serif">Development<br><br></font></=
font></div><div style=3D"font-family:verdana,arial,helvetica,sans-serif"><s=
pan style=3D"font-weight:bold;font-size:large;font-family:arial,sans-serif;=
color:rgb(255,69,0)">Delta=C2=A0</span><span style=3D"font-weight:bold;font=
-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)">Strike</span>=
</div><div style=3D"font-family:verdana,arial,helvetica,sans-serif"><span s=
tyle=3D"color:rgb(68,68,68)"><span style=3D"font-size:small;font-family:Ver=
dana,Arial,Helvetica,sans-serif;font-weight:bold">Success=C2=A0</span><span=
 style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-serif;fo=
nt-weight:bold;font-style:italic"><span style=3D"color:rgb(255,0,0)"></span=
></span></span><span style=3D"color:rgb(68,68,68)"><span style=3D"font-size=
:small;font-family:Verdana,Arial,Helvetica,sans-serif;font-weight:bold;font=
-style:italic"><span style=3D"color:rgb(255,0,0)"><span style=3D"font-famil=
y:arial,sans-serif;color:rgb(255,69,0)">through</span></span>=C2=A0</span><=
span style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-seri=
f;font-weight:bold">Delta Strike</span></span><span style=3D"font-weight:bo=
ld;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)"><br></=
span></div><font color=3D"#444444">phone: =C2=A0=C2=A0=C2=A0</font><a value=
=3D"+6439829892">+64 3 982 9892</a><br><font color=3D"#444444">skype: =C2=
=A0 =C2=A0 robindeltastrike</font></div><div style=3D"font-size:12.80000019=
07349px">web: =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://www.deltastrike.c=
om/" style=3D"color:rgb(17,85,204)" target=3D"_blank">www.deltastrike.com</=
a></div></div></div></div></div>
</div></div>

--047d7b86ef2e05ebeb0519b2efb6--
