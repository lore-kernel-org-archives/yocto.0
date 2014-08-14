Return-Path: <richaw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95B8CE007C2; Wed, 13 Aug 2014 22:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (richaw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A04E0079E
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 22:19:35 -0700 (PDT)
Received: by mail-yh0-f54.google.com with SMTP id v1so677095yhn.13
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 22:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=K4cI9zJMAzyOswg0hMSg2GDDfXmSZNJYKNVNkHnJsi0=;
	b=DK5KP4TGd4ZcVYUzxcRBbOa1NFNC+CuHE1asGOpTM3iuUd4eTh44YeAcxq0ACmxFyJ
	Vei3CtNSw7/gCqradsLFVswMzKkhQ7C1cR/zUv03hOUaQejTnrBwkeRKVq8Y41b17sAZ
	Ps6mNGm7E7DSNapcuuyQv8mtyVfWwitMAYz3bq4wY6CKItp7qWlXbaeg7SVDlhxMB120
	Fs1Bk3HaKmN8Te1ABSS8AtsCfD1LO3u/vjFhRu5BG/RVXDwmJDzXYCWL3EsJemCeiSEu
	5rIcP7t1ueG6TwsyEMOaR3hrHolClsEzTbWJ+UQfRUUqBFltfmsiO3U6Ka07DzCsxLz2
	pKZg==
MIME-Version: 1.0
X-Received: by 10.236.223.36 with SMTP id u34mr13745679yhp.79.1407993574850;
	Wed, 13 Aug 2014 22:19:34 -0700 (PDT)
Received: by 10.170.67.3 with HTTP; Wed, 13 Aug 2014 22:19:34 -0700 (PDT)
Date: Wed, 13 Aug 2014 22:19:34 -0700
Message-ID: <CAPTvksAckaeBWfuEvj0SJbzSX0BgCJfGy8FZyn9ycTtrdz7jEg@mail.gmail.com>
From: Rich Wilson <richaw@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to modify busybox
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
X-List-Received-Date: Thu, 14 Aug 2014 05:19:38 -0000
Content-Type: multipart/alternative; boundary=001a11c20234e009c90500900cca

--001a11c20234e009c90500900cca
Content-Type: text/plain; charset=UTF-8

In order to modify busybox, my googling seems to indicate this
can be done with
bitbake -c menuconfig busybox
When I do so, a window pops up and some compiling seems to
happen, but I am never presented with the menuconfig app.
How do I modify busybox?

What I really want is the httpd app in busybox. There is a bunch of code in
busybox.inc that I don't understand. My naive attempt at using it was adding
IMAGE_INSTALL_append = " busybox-httpd"
to local.conf, but that yielded

Error: busybox-httpd not found in the base feeds (zedboard_zynq7 zynq
armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e
armv5-vfp armv5 armv4 arm noarch any all).

Rich

rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build> bitbake -c menuconfig
busybox
Loading cache: 100%
|#####################################################################|
ETA:  00:00:00
Loaded 1194 entries from dependency cache.
Parsing recipes: 100%
|###################################################################| Time:
00:00:00
Parsing of 862 .bb files complete (861 cached, 1 parsed). 1194 targets, 54
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "openSUSE-project-12.3"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard-zynq7"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5.1"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "<unknown>:<unknown>"
meta-xilinx       = "dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 392 tasks of which 391 didn't need to be
rerun and all succeeded.
rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build>

--001a11c20234e009c90500900cca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In order to modify busybox, my googling seems to indicate =
this<div>can be done with</div><div>bitbake -c menuconfig busybox</div><div=
>When I do so, a window pops up and some compiling seems to</div><div>happe=
n, but I am never presented with the menuconfig app.</div>

<div>How do I modify busybox?<br clear=3D"all"><div><br></div><div>What I r=
eally want is the httpd app in busybox. There is a bunch of code in</div><d=
iv>busybox.inc that I don&#39;t understand. My naive attempt at using it wa=
s adding</div>
<div><div>IMAGE_INSTALL_append =3D &quot; busybox-httpd&quot;</div></div><d=
iv>to local.conf, but that yielded</div><div><div><br></div><div>Error: bus=
ybox-httpd not found in the base feeds (zedboard_zynq7 zynq armv7a-vfp-neon=
 armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4 =
arm noarch any all).</div>
</div><div><br></div><div>Rich</div>
<div><br></div><div><div><font face=3D"arial, sans-serif"><span style=3D"wh=
ite-space:nowrap">rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build&gt; bitb=
ake -c menuconfig busybox</span></font></div><div><font face=3D"arial, sans=
-serif"><span style=3D"white-space:nowrap">Loading cache: 100% |###########=
##########################################################| ETA: =C2=A000:0=
0:00</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">Lo=
aded 1194 entries from dependency cache.</span></font></div><div><font face=
=3D"arial, sans-serif"><span style=3D"white-space:nowrap">Parsing recipes: =
100% |###################################################################| =
Time: 00:00:00</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">Pa=
rsing of 862 .bb files complete (861 cached, 1 parsed). 1194 targets, 54 sk=
ipped, 0 masked, 0 errors.</span></font></div><div><font face=3D"arial, san=
s-serif"><span style=3D"white-space:nowrap">NOTE: Resolving any missing tas=
k queue dependencies</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap"><b=
r></span></font></div><div><font face=3D"arial, sans-serif"><span style=3D"=
white-space:nowrap">Build Configuration:</span></font></div><div><font face=
=3D"arial, sans-serif"><span style=3D"white-space:nowrap">BB_VERSION =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.20.0&quot;</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">BU=
ILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</span></fo=
nt></div><div><font face=3D"arial, sans-serif"><span style=3D"white-space:n=
owrap">NATIVELSBSTRING =C2=A0 =3D &quot;openSUSE-project-12.3&quot;</span><=
/font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">TA=
RGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;<=
/span></font></div><div><font face=3D"arial, sans-serif"><span style=3D"whi=
te-space:nowrap">MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zedbo=
ard-zynq7&quot;</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">DI=
STRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</span></=
font></div><div><font face=3D"arial, sans-serif"><span style=3D"white-space=
:nowrap">DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5.1&quot;</span></font></d=
iv>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">TU=
NE_FEATURES =C2=A0 =C2=A0 =3D &quot; armv7a vfp neon zynq&quot;</span></fon=
t></div><div><font face=3D"arial, sans-serif"><span style=3D"white-space:no=
wrap">TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;</span>=
</font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">me=
ta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></font></div><div=
><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">meta-y=
octo =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></font></div><div><font face=3D"aria=
l, sans-serif"><span style=3D"white-space:nowrap">meta-yocto-bsp =C2=A0 =C2=
=A0=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">me=
ta-xilinx =C2=A0 =C2=A0 =C2=A0 =3D &quot;dora:aa7d677515ab7d45bbd3bdd6c5383=
f4143147c6d&quot;</span></font></div><div><font face=3D"arial, sans-serif">=
<span style=3D"white-space:nowrap"><br>

</span></font></div><div><font face=3D"arial, sans-serif"><span style=3D"wh=
ite-space:nowrap">NOTE: Preparing runqueue</span></font></div><div><font fa=
ce=3D"arial, sans-serif"><span style=3D"white-space:nowrap">NOTE: Executing=
 SetScene Tasks</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">NO=
TE: Executing RunQueue Tasks</span></font></div><div><font face=3D"arial, s=
ans-serif"><span style=3D"white-space:nowrap">NOTE: Tasks Summary: Attempte=
d 392 tasks of which 391 didn&#39;t need to be rerun and all succeeded.</sp=
an></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap">rw=
@linux-cyy8:~/Downloads/poky-dora-10.0.1/build&gt;</span></font></div></div=
>
</div></div>

--001a11c20234e009c90500900cca--
