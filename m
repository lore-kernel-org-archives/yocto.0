Return-Path: <gunasekaran@solitontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 296A3E00D83; Thu,  7 Dec 2017 19:02:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_NONELEMENT_30_40,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 HTML_NONELEMENT_30_40 BODY: 30% to 40% of HTML elements are
	*      non-standard
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7E81E00D7B
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 19:02:21 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id q9so9472681wre.7
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 19:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=solitontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=NYoDw0CjBTEvRv5tyonUureMAuTGybrFrvgMtnSt0nk=;
	b=gqQJvUKGNZ6mwFrXeg5lGJDctETX7ZZs3M1akizZIJZQZFpNi2d4TGhNWZtbGzQEGu
	gcN9vg4f84QUsvOWNqaPu3vwotoC6Fnd15dmfh8CL2auCgc7kBSQ0nXVYk+RYSKpSAMr
	9iInWDxrFv87+rxyFajLBN2RsDOrs6GcXyXJuuGSgC9SLl00KtZf5yV3mDJbGK254cFw
	bm3OMBh6qgWKPj9Xnzkpv5gmBa5HC1vAeGtp3CX5buyTHwIfwQGKMsLk/WNFLUamPSEJ
	vJbG8P/rXdhoG5+5O6kHbrpvvQcpCO3Yzp2hp4GWRikDVK6dIohsVZBJjWs9ynf2MvHh
	Rr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NYoDw0CjBTEvRv5tyonUureMAuTGybrFrvgMtnSt0nk=;
	b=jVIKuX1llnU1IAVEUctpPjuKnkA8nltjPMfjpY6VUw4AmbncYtV4cppcfDPrfsXKfF
	faEJwi2O6W+xdVEHfga1JikjNCS7SsZO52zcmPrV0TNPQBTe6W6qc3B6LLCXqxuVrcjt
	58lIyGIKLkgQUBbHKfOD6leI4wk7ExkKwV6+v9W10qjOq8gyacmAF/WlklzxV8E/ZVTC
	o3IQelz79eCZjI9A5KUT+413ijGd6mSRbJkTlD4koO8Oi8Isj/y+IyXOIXZD7bpPYGmJ
	ZBS4U7R4cIqVbnbHNRAtourIsp4cUEk2B+E6Max/8DnhNMFJ3r1NVWeLg0cj9/DQLUvT
	/i6Q==
X-Gm-Message-State: AJaThX4Or+hZwg3r40F8WLkKHFdDdSrno4uTR/wStQzht+a6ToEl9Wbp
	yjkmBZKOTSWWXOycrDHEO6PtYMmsyA1whJ8Xdgyz/OLV
X-Google-Smtp-Source: AGs4zMYQosItNgO6lZWxL3MVsqNYpRfBNkYx+PDScXI+AD7Ocb1SCi7Vm/H7ofJ+Ld1DdSbQQkEZ9D8tSieoAirzB+s=
X-Received: by 10.223.161.158 with SMTP id u30mr26566305wru.96.1512702140133; 
	Thu, 07 Dec 2017 19:02:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.46.141 with HTTP; Thu, 7 Dec 2017 19:02:19 -0800 (PST)
From: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Date: Fri, 8 Dec 2017 08:32:19 +0530
Message-ID: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Morty Branch: Error in building core-image-sato | matchbox-panel recipe
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
X-List-Received-Date: Fri, 08 Dec 2017 03:02:23 -0000
Content-Type: multipart/alternative; boundary="f403045f3af0b6c9bd055fcb6945"

--f403045f3af0b6c9bd055fcb6945
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to build core-image-sato image with poky 2.2.2. I am getting
following error in matchbox-panel recipe

............................................................
......................................................
 checking what language compliance flags to pass to the C compiler...
| checking for arm-poky-linux-gnueabi-pkg-config... no
| checking for pkg-config... </path/>fsl-community-bsp/
matchbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
| checking pkg-config is at least version 0.9.0... yes
| checking for MATCHBOX_PANEL... no
| configure: error: Package requirements (glib-2.0
|                   gmodule-export-2.0
|                   x11
|                   gdk-x11-3.0
|                   gtk+-3.0) were not met:
|
| No package 'gdk-x11-3.0' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
<path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-
neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/
log.do_configure.27179)
ERROR: Task (<path>/fsl-community-bsp/sources/poky/meta/recipes-
sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with
exit code '1'
NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matchbox-panel-2/
matchbox-panel-2_2.11.bb:do_configure

Is there a recipe for gdk-x11 in yocto?


Thanks,
Guna

--f403045f3af0b6c9bd055fcb6945
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I am trying to build core-image-sato image =
with poky 2.2.2. I am getting following error in matchbox-panel recipe<br><=
br>..............................<wbr>..............................<wbr>..=
............................<wbr>........................<br>=C2=A0checking=
 what language compliance flags to pass to the C compiler...<br>| checking =
for arm-poky-linux-gnueabi-pkg-<wbr>config... no<br>| checking for pkg-conf=
ig... &lt;/path/&gt;fsl-community-bsp/<wbr>matchbox/tmp/sysroots/x86_64-<wb=
r>linux/usr/bin/pkg-config<br>| checking pkg-config is at least version 0.9=
.0... yes<br>| checking for MATCHBOX_PANEL... no<br>| configure: error: Pac=
kage requirements (glib-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gmodule-=
export-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x11<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gtk+-3.0=
) were not met:<br>| <br>| No package &#39;gdk-x11-3.0&#39; found<br>| <br>=
| Consider adjusting the PKG_CONFIG_PATH environment variable if you<br>| i=
nstalled software in a non-standard prefix.<br>| <br>| Alternatively, you m=
ay set the environment variables MATCHBOX_PANEL_CFLAGS<br>| and MATCHBOX_PA=
NEL_LIBS to avoid the need to call pkg-config.<br>| See the pkg-config man =
page for more details.<br>| WARNING: exit code 1 from a shell command.<br>|=
 ERROR: Function failed: do_configure (log file is located at &lt;path&gt;/=
fsl-community-bsp/<wbr>matchbox/tmp/work/cortexa9hf-<wbr>neon-poky-linux-gn=
ueabi/<wbr>matchbox-panel-2/2.11-r0/temp/<wbr>log.do_configure.27179)<br>ER=
ROR: Task (&lt;path&gt;/fsl-community-bsp/<wbr>sources/poky/meta/recipes-<w=
br>sato/matchbox-panel-2/<wbr>matchbox-panel-2_2.11.bb:do_<wbr>configure) f=
ailed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 2607 tas=
ks of which 0 didn&#39;t need to be rerun and 1 failed.<br><br>Summary: 1 t=
ask failed:<br>=C2=A0 &lt;path&gt;/fsl-community-bsp/<wbr>sources/poky/meta=
/recipes-<wbr>sato/matchbox-panel-2/<wbr>matchbox-panel-2_2.11.bb:do_<wbr>c=
onfigure<br><div><br></div><div>Is there a recipe for gdk-x11 in yocto?<br>=
</div><div><br></div><div><br clear=3D"all"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Than=
ks,<br></div><div>Guna<br></div></div></div></div></div></div></div></div>
</div></div>

--f403045f3af0b6c9bd055fcb6945--
