Return-Path: <yogesh.bit2006@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A2EDE009C8; Wed,  3 Jun 2015 21:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yogesh.bit2006[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67D36E0095D
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 21:14:29 -0700 (PDT)
Received: by oiww2 with SMTP id w2so23021904oiw.0
	for <yocto@yoctoproject.org>; Wed, 03 Jun 2015 21:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=vd80gBVhNKE3GM9Md8x/eACBO8CXXAAM6Da5UTmLCqE=;
	b=FIvmyzoxDyACXHwSf+Odl8ol7bu8xXZdpscyWlo9Vhp/VOQ09luNoSwWcy6UyK+G2t
	mT5GrLmic/9V/z6SpVj9hkXWl0ZQI4ctRXP4bmX8FaV+vJccIoL8rKjtgrqQ4OQdnACn
	XtG1oOdKdbFUFSuFS9VThXZN1tgzTfG+OLtbiDT+2FVhWyfHMH2fPGdRCYEw6JzaxMIF
	qin2y7mRnkxsb/Zgilaq6iUWJ5EOOSn+L6W5lByeOoOnxGOTZ/7kP1wkg2OIkXQBYCKD
	hXV2On1/hosbC0HdzA06xMREG+y2NzQ2QDirp/WOeCfwqBXpS62GhNzFWObzmQISymKC
	/nSQ==
X-Received: by 10.60.50.168 with SMTP id d8mr30868968oeo.41.1433391268591;
	Wed, 03 Jun 2015 21:14:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.211.143 with HTTP; Wed, 3 Jun 2015 21:14:08 -0700 (PDT)
From: Yogesh Tyagi <yogesh.bit2006@gmail.com>
Date: Thu, 4 Jun 2015 09:44:08 +0530
Message-ID: <CADL-HDjW1hhO02HBRCCZnYM5OKKbnccCs9cwyT+=k604zXH+GQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Library not getting installed to intended path
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
X-List-Received-Date: Thu, 04 Jun 2015 04:14:30 -0000
Content-Type: multipart/alternative; boundary=001a11c30bf063805b0517a96928

--001a11c30bf063805b0517a96928
Content-Type: text/plain; charset=UTF-8

Hi,

I am using yocto 1.6 and I have written a component and written bitbake
recipe file for this component. When rootfs is created my library is found
in "/lib" directory but I want it to be installed to "/lib/gstreamer-0.10"
directory (which is already created by open source gstreamer packages).

Following is the content of my bb file:

DESCRIPTION = "Plugin for support in GStreamer"

LICENSE = "BSD | LGPLv2.1"
LIC_FILES_CHKSUM = "file://COPYING;md5=7e2d09b34a9cdf39567252d39ce57cca"

DEPENDS = "virtual/libc \
           system-utils \
           gstreamer \
           gst-plugins-base \
          "

PR = "r0"

TD_PKG_REPO = "td-gst-plugin"

inherit autotools td_package td_paths



library is installed to /lib/gstreamer-0.10 if I add this line to
Makefile.am

libdir = /lib/gstreamer-0.10

and these to bb file

FILES_${PN} += "/lib/gstreamer-0.10"
FILES_${PN}-dbg += "/lib/gstreamer-0.10/.debug"
INSANE_SKIP_${PN} += "dev-so

Is this correct to use INSANE_SKIP or is it not recommended?

Should I consider not to inherit autotools?  I have seen a lot of packages
doing that. In this case whatever path I assign here in FILES variable , my
library is installed to that path but with autotools I have to use
INSANE_SKIP option.

Thanks,
Yogesh

--001a11c30bf063805b0517a96928
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div><span style=3D"font-size:12.8000001=
907349px">I am using yocto 1.6 and I have written a component and written b=
itbake recipe file for this component. When rootfs is created my library is=
 found in &quot;/lib&quot; directory but I want it to be installed to &quot=
;/lib/gstreamer-0.10&quot; directory (which is already created by open sour=
ce gstreamer packages).</span><br></div><div><div style=3D"font-size:12.800=
0001907349px"><br></div><div style=3D"font-size:12.8000001907349px">Followi=
ng is the content of my bb file:</div><div style=3D"font-size:12.8000001907=
349px"><br></div><div style=3D"font-size:12.8000001907349px"><div>DESCRIPTI=
ON =3D &quot;Plugin for support in GStreamer&quot;</div><div><br></div><div=
>LICENSE =3D &quot;BSD | LGPLv2.1&quot;</div><div>LIC_FILES_CHKSUM =3D &quo=
t;file://COPYING;md5=3D7e2d09b34a9cdf39567252d39ce57cca&quot;</div><div><br=
></div><div>DEPENDS =3D &quot;virtual/libc \</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0system-utils \<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0gstreamer \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0gst-plugins-base \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot=
;<br></div><div><br></div><div>PR =3D &quot;r0&quot;</div><div><br></div><d=
iv>TD_PKG_REPO =3D &quot;td-gst-plugin&quot;</div><div><br></div><div>inher=
it autotools td_package td_paths</div><div><br></div><div><br></div><div><b=
r></div><div><span style=3D"font-size:small">library is installed to /lib/g=
streamer-0.10 if I add this line to Makefile.am</span><br></div></div><div>=
<br></div><div><span class=3D"" style=3D"color:rgb(0,0,0);font-family:monos=
pace;font-size:12px;white-space:pre">libdir </span><span class=3D"" style=
=3D"color:rgb(102,102,0);font-family:monospace;font-size:12px;white-space:p=
re">=3D</span><span class=3D"" style=3D"color:rgb(0,0,0);font-family:monosp=
ace;font-size:12px;white-space:pre"> </span>/lib/gstreamer-0.10</div><div><=
br></div><div>and these to bb file</div><div><br>FILES_${PN} +=3D &quot;/li=
b/gstreamer-0.10&quot;</div><div>FILES_${PN}-dbg +=3D &quot;/lib/gstreamer-=
0.10/.debug&quot;<br>INSANE_SKIP_${PN} +=3D &quot;dev-so<br><br>Is this cor=
rect to use INSANE_SKIP or is it not recommended?</div><div><br></div><div>=
Should I consider not to inherit autotools?=C2=A0 I have seen a lot of pack=
ages doing that. In this case whatever path I assign here in FILES variable=
 , my library is installed to that path but with autotools I have to use IN=
SANE_SKIP option.</div><div><br></div><div><span style=3D"color:rgb(0,0,0);=
font-family:monospace;font-size:12px;white-space:pre">Thanks,</span></div><=
div><span style=3D"color:rgb(0,0,0);font-family:monospace;font-size:12px;wh=
ite-space:pre">Yogesh</span></div><div><br></div></div></div>

--001a11c30bf063805b0517a96928--
