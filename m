Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF131E008CA; Mon, 30 Jul 2018 10:53:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9326FE0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 10:53:03 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id z8-v6so13019757qto.9
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 10:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZUTu2p9cR8bm6ZTRtTjL9uWoWHcZ4FovSmt082t0bcM=;
	b=RyG+dFViYsfJCdiwZoQL0/XS/tqropv4+zAyotHszHFyIwtqoIc1fYwTxeXGMt9wnB
	/FpUykfBwWgYR60inGDJG52QDpgsoXhFT5H+Xk7jlTMAzJv1yxpSO5CAvoY4xei6wQmS
	m7239vkCVDIzrSU2aJX6zeuk0U812lkR2rDO/6l/3fzIixxTTe8uqbwCJJZ8P/PMmbhb
	OVUXuw/dM3SJsQf4FWa+r2usK80QxDMUhk8EQSa2sSw48YFNVe6z0h3R7M03YwZ993Zx
	8KwsHm2Lz98hDN0OPYCBSOY0d4r5tDxQO2Kk6fFH6xGrWh7SuVd1fTnPRCaGBYt739Lk
	fJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZUTu2p9cR8bm6ZTRtTjL9uWoWHcZ4FovSmt082t0bcM=;
	b=MJMqhxXfnLl5zfXbB/qgwh0dOfbu5q7OZLrfmWb/+jyDvYQSzplgaDXCsGs9o3/rV3
	SK/0gTAkAvN3DvaORlGIGlowiR4z4miJuxYgx0AQaZticyrY0YLtpkA/BOphEGxipXuf
	JUaRya+yrF6vSfDeoVeyAoP+JAi42HbEHvrJlmBpF/5gmZaRn9Vp0tcXvxdpPumB25X+
	xiymBPc5CQ2UagySDEhB5XWPatG2o7U/s0ZLAMsmQRweFjVRupWdFLPcXOQTJSJUHuph
	y2ibUM7lgrEoykMJ1YRi4Dp7AfCc5WkZtCYv82fXXpNLVxzlYjiP28VsMTMLtdESEVQY
	o+qw==
X-Gm-Message-State: AOUpUlH7DK94D4xUoC8yCZXbIcbwmChrpbXONTGLCAehAfzsklf4zU+0
	r6ffw9/hpnZgtySYx3LNAEbIDqSfcS/CeBUWoOk7StOe4U8Gpw==
X-Google-Smtp-Source: AAOMgpdwCEp5d4hW847oOk+NLPfbazqAK1Lvmk9eea88PUO/bJvK3PoyuYE9f0kS70/vSsACuJMR7KrP4pHsIHaUVLQ=
X-Received: by 2002:ac8:367:: with SMTP id
	w39-v6mr18121471qtg.334.1532973182811; 
	Mon, 30 Jul 2018 10:53:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Mon, 30 Jul 2018 10:53:02 -0700 (PDT)
In-Reply-To: <CAJ86T=X5L+2ZqDh2P=ODhMB8-eMNiUhAHFZbvRaK=b1g772evg@mail.gmail.com>
References: <CANmTPBZ5G6nVbe+TtddpDsOC=TwqxcEcPEGivbgzPG8YQ_KNhA@mail.gmail.com>
	<CAJ86T=X5L+2ZqDh2P=ODhMB8-eMNiUhAHFZbvRaK=b1g772evg@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Mon, 30 Jul 2018 13:53:02 -0400
Message-ID: <CANmTPBacpv8Z3-N2jA5EJ7-JmebJELYALY5y1HA18No3bh1gZQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Removing syslogd form busybox
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
X-List-Received-Date: Mon, 30 Jul 2018 17:53:05 -0000
Content-Type: multipart/alternative; boundary="0000000000000315ee05723b224d"

--0000000000000315ee05723b224d
Content-Type: text/plain; charset="UTF-8"

So what you are saying is I need to update busybox to be able to remove
syslog from it?

Also I noticed 2 syslogd:
/sbin/syslogd
/usr/lib/opkg/alternatives/syslogd

/sbin/syslogd is a link to busybox.

What is /usr/lib/opkg/alternatives/syslogd   ?



On Fri, Jul 27, 2018 at 4:47 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Jul 27, 2018 at 1:07 PM, Simon Chamlian <simon.chamlian@mpbc.ca>
> wrote:
> > Hi,
> >
> > When I removing syslogd from busybox, I can compile with no error
> >
> > $ bitbake -c compile busybox
> > Loading cache: 100% |####################################| Time: 0:00:01
> > Loaded 3082 entries from dependency cache.
> > WARNING: No bb files matched BBFILE_PATTERN_phytec
> > '^/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-phytec/common/'
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION        = "1.32.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Ubuntu-16.04"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "imx7d-phyboard-zeta-001"
> > DISTRO            = "fsl-imx-x11"
> > DISTRO_VERSION    = "4.9.11-1.0.0"
> > TUNE_FEATURES     = "arm armv7ve vfp  neon        callconvention-hard
> > cortexa7"
> > TARGET_FPU        = "hard"
> > meta
> > meta-poky         = "HEAD:78890ea22750804e3e9113e76f7ca3d7234c8342"
> > meta-oe
> > meta-multimedia
> > meta-webserver    = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
> > meta-freescale    = "HEAD:a398b50b7fc084a9e68cc3000c218d5028522a25"
> > meta-freescale-3rdparty = "HEAD:68314612e236cab1da82d72a0da626
> 35a3523f84"
> > meta-freescale-distro = "HEAD:cd5c7a2539f40004f74126e9fdf08254fd9a6390"
> > meta-bsp
> > meta-sdk          = "HEAD:daba3340ecd8b358e0c6c415baeee0fcae95c525"
> > meta-browser      = "HEAD:10f6e3778d823ee1be106c126216c6f941088fbf"
> > meta-gnome
> > meta-networking
> > meta-python
> > meta-filesystems  = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
> > meta-qt5          = "HEAD:ff073f04109900fc07bf81e2f1df63c626caf342"
> > meta-phytec
> > meta-phytec-fsl   = "HEAD:f9897a4e06f43184a71d315cec4a412a28baa59b"
> >
> > WARNING:
> > /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-
> core/busybox/busybox_1.24.1.bb.do_compile
> > is tainted from a forced run
> > | ETA:  0:00:01
> > Initialising tasks: 100%
> > |###########################################################
> ############################################################
> ####################################################|
> > Time: 0:00:01
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > NOTE: Tasks Summary: Attempted 234 tasks of which 232 didn't need to be
> > rerun and all succeeded.
> >
> > Summary: There were 2 WARNING messages shown.
> >
> >
> > When I build my image for my machine, I am getting the following error:
> >
> >
> > WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target
> > (/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist,
> skipping...
> > WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative
> > provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist
> > ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog value
> > busybox-syslog.service does not exist
> > ERROR: busybox-1.24.1-r0 do_package: Function failed:
> > systemd_populate_packages
> > ERROR: Logfile of failure stored in:
> > /opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-
> neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.30442
> > ERROR: Task
> > (/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-
> core/busybox/busybox_1.24.1.bb:do_package)
> > failed with exit code '1'
> >
> > Any hints?
>
> It looks like you're using morty, which pre-dates busybox syslog
> "officially" being made optional:
>
>   http://git.openembedded.org/openembedded-core/commit/?id=
> 9732a2ba2edf2607e61ae4fe0d65a02b7918cfe7
>
> If you can't update to a newer release you could try backporting the
> above commit.
>

--0000000000000315ee05723b224d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So what you are saying is I need to update busybox to=
 be able to remove syslog from it?</div><div><br></div><div>Also I noticed =
2 syslogd:</div><div style=3D"margin-left:40px">
/sbin/syslogd

<br>/usr/lib/opkg/alternatives/syslogd<br></div><div><br></div><div>
/sbin/syslogd



is a link to busybox.</div><div><br></div><div>What is=20
/usr/lib/opkg/alternatives/syslogd=C2=A0=C2=A0

?</div><div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Fri, Jul 27, 2018 at 4:47 PM, Andre McCurdy <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank=
">armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div class=3D"HOEnZb"><div class=3D"h5">On Fri, Jul 27, 2018 at 1:07 PM,=
 Simon Chamlian &lt;<a href=3D"mailto:simon.chamlian@mpbc.ca">simon.chamlia=
n@mpbc.ca</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; When I removing syslogd from busybox, I can compile with no error<br>
&gt;<br>
&gt; $ bitbake -c compile busybox<br>
&gt; Loading cache: 100% |#############################<wbr>#######| Time: =
0:00:01<br>
&gt; Loaded 3082 entries from dependency cache.<br>
&gt; WARNING: No bb files matched BBFILE_PATTERN_phytec<br>
&gt; &#39;^/opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/meta-phytec/common/&#39=
;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-16.04&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi=
&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;imx7d-phyboa=
rd-zeta-001&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fsl-imx-x11&=
quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;4.9.11-1.0.0&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7ve vfp=C2=A0 neon=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 callconvention-hard<br>
&gt; cortexa7&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
&gt; meta<br>
&gt; meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:<wbr>78890ea=
22750804e3e9113e76f7ca3<wbr>d7234c8342&quot;<br>
&gt; meta-oe<br>
&gt; meta-multimedia<br>
&gt; meta-webserver=C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>fe5c83312de11e80b85680=
ef237f8a<wbr>cb04b4b26e&quot;<br>
&gt; meta-freescale=C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>a398b50b7fc084a9e68cc3=
000c218d<wbr>5028522a25&quot;<br>
&gt; meta-freescale-3rdparty =3D &quot;HEAD:<wbr>68314612e236cab1da82d72a0d=
a626<wbr>35a3523f84&quot;<br>
&gt; meta-freescale-distro =3D &quot;HEAD:<wbr>cd5c7a2539f40004f74126e9fdf0=
82<wbr>54fd9a6390&quot;<br>
&gt; meta-bsp<br>
&gt; meta-sdk=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>daba334=
0ecd8b358e0c6c415baeee0<wbr>fcae95c525&quot;<br>
&gt; meta-browser=C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>10f6e3778d823ee1b=
e106c126216c6<wbr>f941088fbf&quot;<br>
&gt; meta-gnome<br>
&gt; meta-networking<br>
&gt; meta-python<br>
&gt; meta-filesystems=C2=A0 =3D &quot;HEAD:<wbr>fe5c83312de11e80b85680ef237=
f8a<wbr>cb04b4b26e&quot;<br>
&gt; meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>ff073f0=
4109900fc07bf81e2f1df63<wbr>c626caf342&quot;<br>
&gt; meta-phytec<br>
&gt; meta-phytec-fsl=C2=A0 =C2=A0=3D &quot;HEAD:<wbr>f9897a4e06f43184a71d31=
5cec4a41<wbr>2a28baa59b&quot;<br>
&gt;<br>
&gt; WARNING:<br>
&gt; /opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/poky/meta/recipes-<wbr>core/b=
usybox/busybox_1.24.1.<wbr>bb.do_compile<br>
&gt; is tainted from a forced run<br>
&gt; | ETA:=C2=A0 0:00:01<br>
&gt; Initialising tasks: 100%<br>
&gt; |#############################<wbr>##############################<wbr>=
##############################<wbr>##############################<wbr>#####=
#########################<wbr>######################|<br>
&gt; Time: 0:00:01<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; NOTE: Tasks Summary: Attempted 234 tasks of which 232 didn&#39;t need =
to be<br>
&gt; rerun and all succeeded.<br>
&gt;<br>
&gt; Summary: There were 2 WARNING messages shown.<br>
&gt;<br>
&gt;<br>
&gt; When I build my image for my machine, I am getting the following error=
:<br>
&gt;<br>
&gt;<br>
&gt; WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target<br>
&gt; (/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist, skippin=
g...<br>
&gt; WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative=
<br>
&gt; provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist<br>
&gt; ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog va=
lue<br>
&gt; busybox-syslog.service does not exist<br>
&gt; ERROR: busybox-1.24.1-r0 do_package: Function failed:<br>
&gt; systemd_populate_packages<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /opt/PHYTEC_BSPs/yocto_imx7/<wbr>build/tmp/work/cortexa7hf-<wbr>neon-p=
oky-linux-gnueabi/<wbr>busybox/1.24.1-r0/temp/log.do_<wbr>package.30442<br>
&gt; ERROR: Task<br>
&gt; (/opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/poky/meta/recipes-<wbr>core/=
busybox/busybox_1.24.1.<wbr>bb:do_package)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; Any hints?<br>
<br>
</div></div>It looks like you&#39;re using morty, which pre-dates busybox s=
yslog<br>
&quot;officially&quot; being made optional:<br>
<br>
=C2=A0 <a href=3D"http://git.openembedded.org/openembedded-core/commit/?id=
=3D9732a2ba2edf2607e61ae4fe0d65a02b7918cfe7" rel=3D"noreferrer" target=3D"_=
blank">http://git.openembedded.org/<wbr>openembedded-core/commit/?id=3D<wbr=
>9732a2ba2edf2607e61ae4fe0d65a0<wbr>2b7918cfe7</a><br>
<br>
If you can&#39;t update to a newer release you could try backporting the<br=
>
above commit.<br>
</blockquote></div><br></div>

--0000000000000315ee05723b224d--
