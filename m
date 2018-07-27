Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B41BE00874; Fri, 27 Jul 2018 13:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD22E006F1
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 13:07:49 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id b15-v6so6312204qtp.11
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 13:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Mjl9Thb3QCPoASKjk0AvhOhLR2YRQ0Pee7sid0Jof+k=;
	b=t+fVAATSLh6O12hZU1i6a5oF1uwkmDVJzr68OTpjB45pCsYK657uv4j327l47JNuVH
	6PBQkslAtTwzpKu5vhVWtFI7qDE6sU3CQtmKD/THrO+KfB1709bspFPPQN3S5L9p3Iff
	l6jB+rWVOfGd2CaV4NCuAySJGg9peR9+gAokNwfBqg0sdZItM8+11nGZba2vCNsUUISl
	//jpz8vZCABTYs/26/SpLNKy+3xFIrJLFVNxTqoA2h/gsTexuEBfZ7+uo+o4POml9FGQ
	CHqFxh7xYjaQNusjozvvrkTLXMTx1kFNMEPq3TCxQ3TM7MR61/UwCCVqd864L5Ogefrl
	Gr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Mjl9Thb3QCPoASKjk0AvhOhLR2YRQ0Pee7sid0Jof+k=;
	b=f2zmTmLg6gFhHrM9LezZqBSxApHfdZBHB4bPJDHMk6TsqzjsowCJRX5jJXPV754tzi
	V+3OBH4uMyOuvEJho6Qj21AS8MS++fhgvRb8v4yGUVf91Y8Bv5P3Ckk04U/lnkAhVN1b
	mTGiIqfV5mObi67GSTO70YjzjR1aTrgaOMEfC14RF1q8/rZujyGYrGpM1H1pMoH5qGyX
	FYZj39OsjQ5h2EICRI6uXeNQLzsQWKlrXP7ntwJZHbNze+K80bevGYAMQ03ziUWX2IsE
	pIO4TvM/ET+dabySVbEIat13+54hr+e93Aqur3Mrl3ohu6KzZu1of+ThBLDf45u8K0R9
	U5aA==
X-Gm-Message-State: AOUpUlE6nw8INB80Uhlsh3Q6fBBePFgucmiBttIAN+/Igpn87bQYJSud
	UIjvA7zdRTnXFfZD42fYn2EdlH8L8XikEIxwUL9SFoMiHUtwmw==
X-Google-Smtp-Source: AAOMgpe7yMphINMmJWY/h3fpT1sYiekRtiH6bQ3yO+wmYajfMFco3tvtltpOILfAVTo/KkeHvdQznUZ/gvVNzuKT81Q=
X-Received: by 2002:ac8:367:: with SMTP id
	w39-v6mr7795016qtg.334.1532722069161; 
	Fri, 27 Jul 2018 13:07:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Fri, 27 Jul 2018 13:07:48 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Fri, 27 Jul 2018 16:07:48 -0400
Message-ID: <CANmTPBZ5G6nVbe+TtddpDsOC=TwqxcEcPEGivbgzPG8YQ_KNhA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Removing syslogd form busybox
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
X-List-Received-Date: Fri, 27 Jul 2018 20:07:51 -0000
Content-Type: multipart/alternative; boundary="0000000000007902f1057200aad6"

--0000000000007902f1057200aad6
Content-Type: text/plain; charset="UTF-8"

Hi,

When I removing syslogd from busybox, I can compile with no error

$ bitbake -c compile busybox
Loading cache: 100% |####################################| Time: 0:00:01
Loaded 3082 entries from dependency cache.
WARNING: No bb files matched BBFILE_PATTERN_phytec
'^/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-phytec/common/'
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-16.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "imx7d-phyboard-zeta-001"
DISTRO            = "fsl-imx-x11"
DISTRO_VERSION    = "4.9.11-1.0.0"
TUNE_FEATURES     = "arm armv7ve vfp  neon
callconvention-hard        cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky         = "HEAD:78890ea22750804e3e9113e76f7ca3d7234c8342"
meta-oe
meta-multimedia
meta-webserver    = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
meta-freescale    = "HEAD:a398b50b7fc084a9e68cc3000c218d5028522a25"
meta-freescale-3rdparty = "HEAD:68314612e236cab1da82d72a0da62635a3523f84"
meta-freescale-distro = "HEAD:cd5c7a2539f40004f74126e9fdf08254fd9a6390"
meta-bsp
meta-sdk          = "HEAD:daba3340ecd8b358e0c6c415baeee0fcae95c525"
meta-browser      = "HEAD:10f6e3778d823ee1be106c126216c6f941088fbf"
meta-gnome
meta-networking
meta-python
meta-filesystems  = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
meta-qt5          = "HEAD:ff073f04109900fc07bf81e2f1df63c626caf342"
meta-phytec
meta-phytec-fsl   = "HEAD:f9897a4e06f43184a71d315cec4a412a28baa59b"

WARNING:
/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb.do_compile
is tainted from a forced
run                                                                | ETA:
0:00:01
Initialising tasks: 100%
|###########################################################################################################################################################################|
Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 234 tasks of which 232 didn't need to be
rerun and all succeeded.

Summary: There were 2 WARNING messages shown.


When I build my image for my machine, I am getting the following error:


WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target
(/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist, skipping...
WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative
provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist
ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog value
busybox-syslog.service does not exist
ERROR: busybox-1.24.1-r0 do_package: Function failed:
systemd_populate_packages
ERROR: Logfile of failure stored in:
/opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.30442
ERROR: Task
(/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package)
failed with exit code '1'

Any hints?

Thanks,
S

--0000000000007902f1057200aad6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>When I removing syslogd =
from busybox, I can compile with no error</div><div><br></div><div style=3D=
"margin-left:40px"><span style=3D"font-family:monospace,monospace">$ bitbak=
e -c compile busybox<br>Loading cache: 100% |##############################=
######| Time: 0:00:01<br>Loaded 3082 entries from dependency cache.<br>WARN=
ING: No bb files matched BBFILE_PATTERN_phytec &#39;^/opt/PHYTEC_BSPs/yocto=
_imx7/sources/meta-phytec/common/&#39;<br>NOTE: Resolving any missing task =
queue dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.32.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVE=
LSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-16.04&quot;<br>TARGET_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br=
>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;imx7d-phyboard-zeta-001&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;fsl-imx-x11&quot;<br>DISTRO_=
VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;4.9.11-1.0.0&quot;<br>TUNE_FEATURES=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv7ve vfp=C2=A0 neon=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 callconvention-hard=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 cortexa7&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;hard&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;HEAD:78890ea22750804e3e9113e76f=
7ca3d7234c8342&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>meta-multimedia=C2=A0=C2=A0 <br>meta-webserver=C2=A0=
=C2=A0=C2=A0 =3D &quot;HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e&quot;<=
br>meta-freescale=C2=A0=C2=A0=C2=A0 =3D &quot;HEAD:a398b50b7fc084a9e68cc300=
0c218d5028522a25&quot;<br>meta-freescale-3rdparty =3D &quot;HEAD:68314612e2=
36cab1da82d72a0da62635a3523f84&quot;<br>meta-freescale-distro =3D &quot;HEA=
D:cd5c7a2539f40004f74126e9fdf08254fd9a6390&quot;<br>meta-bsp=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-sdk=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;HEAD:daba3340ecd8b358e0c6c415ba=
eee0fcae95c525&quot;<br>meta-browser=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;HEAD:10f6e3778d823ee1be106c126216c6f941088fbf&quot;<br>meta-gnome=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-networking=C2=A0=C2=A0 <br>me=
ta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-filesystems=C2=A0 =
=3D &quot;HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e&quot;<br>meta-qt5=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;HEAD:ff073=
f04109900fc07bf81e2f1df63c626caf342&quot;<br>meta-phytec=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>meta-phytec-fsl=C2=A0=C2=A0 =3D &quot;HEAD:f9897a4e0=
6f43184a71d315cec4a412a28baa59b&quot;<br><br>WARNING: /opt/PHYTEC_BSPs/yoct=
o_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb.do_compile =
is tainted from a forced run=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 0:00:01<br>Initialising task=
s: 100% |##################################################################=
###########################################################################=
##############################| Time: 0:00:01<br>NOTE: Executing SetScene T=
asks<br>NOTE: Executing RunQueue Tasks<br>NOTE: Tasks Summary: Attempted 23=
4 tasks of which 232 didn&#39;t need to be rerun and all succeeded.<br><br>=
Summary: There were 2 WARNING messages shown.</span></div><div><br></div><d=
iv><br></div><div>When I build my image for my machine, I am getting the fo=
llowing error:</div><div><br></div><div><br></div><div style=3D"margin-left=
:40px"><span style=3D"font-family:monospace,monospace">WARNING: busybox-1.2=
4.1-r0 do_package: busybox: alternative target (/etc/syslog.conf or /etc/sy=
slog.conf.busybox) does not exist, skipping...<br>WARNING: busybox-1.24.1-r=
0 do_package: busybox: NOT adding alternative provide /etc/syslog.conf: /et=
c/syslog.conf.busybox does not exist<br>ERROR: busybox-1.24.1-r0 do_package=
: SYSTEMD_SERVICE_busybox-syslog value busybox-syslog.service does not exis=
t<br>ERROR: busybox-1.24.1-r0 do_package: Function failed: systemd_populate=
_packages<br>ERROR: Logfile of failure stored in: /opt/PHYTEC_BSPs/yocto_im=
x7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp=
/log.do_package.30442<br>ERROR: Task (/opt/PHYTEC_BSPs/yocto_imx7/sources/p=
oky/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package) failed with exi=
t code &#39;1&#39;</span></div><div><br></div><div>Any hints?</div><div><br=
></div><div>Thanks,</div><div>S<br><br></div><div><br></div><div><br></div>=
<div class=3D"gmail_extra"><br></div></div>

--0000000000007902f1057200aad6--
