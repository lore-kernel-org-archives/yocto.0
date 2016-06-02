Return-Path: <marmaduke55@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB6CE00D2F; Thu,  2 Jun 2016 09:55:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marmaduke55[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E29E00D13
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 09:55:18 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id d127so79301424vkh.2
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 09:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=q1FUfOA1vMJakCqf8Q0KIkJDe4Q3RX94OMuHLAdTTj0=;
	b=0eH9Lg7MReUNZ9z01DyreQ2SfbQIeePGu6h04aFbEyfTSk8vaaOsDcbDCId2FIcVMl
	Bu6LMNDHG72ebR71Oo8m5F/Lz2NRch/HM+/VnVK/9WI5BWps705nrHN0cSPdbjnpYKtB
	yu+4FMsGYTsrj1dbLQIvM6uTYGM0ejAbWoEik3BDN5ZO2l+CCIDpVEPZA6Q1jg1mJgdf
	hyshIinY06MpwQhDRuBefF7bUoxsWAV4Qe0eOP02dCv760/7Ux/7qOCTVqw0zgliyize
	zza4PWCaK+K/2wgzmgV2HsSjt69U572BX88SCWCWpg4pOWUIwKl5QE+YgxxA5zr0ph4G
	L+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=q1FUfOA1vMJakCqf8Q0KIkJDe4Q3RX94OMuHLAdTTj0=;
	b=imeYuwtpL2v/e2reR50DYTxgNjpP8F0XA3WaHeBf+9JBxqVw4mqRO/dnjpqWaIbOZ+
	hjaFVnK7/Am979KndJ9jAciyDUuoqQaUJAWc3IavKQ/wQi7jzG5stCIe3sivSZGcpEEX
	W4YPVnMPTT44byAdAeaJCEsCQu8AH/tDZ55XeN6cwvJCeTMplA1ObjrA5kGFKuZ8eXaE
	+8FU0GyhCKlRDnokW1CQ3pICJMaDaD24301KUydyq944koofDuhz0RFvUu28HJSnTa9M
	gHPtjf2R1UX5E/JPtoRCr/MMAEyGhcDzkLexF8l3m2s4vEKBZL8jIIXndMUcp7wvTslc
	t0uQ==
X-Gm-Message-State: ALyK8tKjzycF8TtP4l72U6tTiB63sgDzVg5tVSvaM3s2gGYPnXS1RImJtX++VOFxX7v+aSmBt2KtgU5erOm1Ww==
MIME-Version: 1.0
X-Received: by 10.176.0.68 with SMTP id 62mr5069191uai.11.1464886517457; Thu,
	02 Jun 2016 09:55:17 -0700 (PDT)
Received: by 10.159.35.175 with HTTP; Thu, 2 Jun 2016 09:55:17 -0700 (PDT)
Date: Thu, 2 Jun 2016 12:55:17 -0400
Message-ID: <CALNhhxR9MY0T3FaWJmv3D3HcWVAF2nUktZD9p7jbiYwyzcpp_w@mail.gmail.com>
From: Michael Dangler <marmaduke55@gmail.com>
To: yocto@yoctoproject.org
Subject: Error building python-imaging_1.1.7.bb
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
X-List-Received-Date: Thu, 02 Jun 2016 16:55:24 -0000
Content-Type: multipart/alternative; boundary=001a1142ea7a826e2e05344e78c8

--001a1142ea7a826e2e05344e78c8
Content-Type: text/plain; charset=UTF-8

Hello

Am new to yocto and am trying to build an image for a Gumstix Pepper board
and use ROS. However always get to the point with python-imaging_1.1.7.bb
failing do_package_qa. HAve tried just doing the following -

bitbake python-imaging

But still have the same failure -

Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "pepper"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8"
TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):83aa565d93aacae484976562ef1ae8dbbb6b2bc0"
meta-gnome
meta-oe
meta-xfce
meta-systemd
meta-networking
meta-multimedia
meta-python       = "(nobranch):10d3c8f85280a0bf867a8e4f84bcda81c290d28e"
meta-gumstix      = "(nobranch):8ea631d8ef26cb13102dac0910be52674cb7b395"
meta-gumstix-extras = "(nobranch):15cfa9fcff75d3d95f66cfa190e1b604ff5ea4f6"
meta-ros          = "(nobranch):d465a23c0a96e651419d46b29ab7c0c3663da314"
meta-ti           = "(nobranch):03cb3ff15f3b8535ca409ce682f44ec1b81da0c3"
meta-java         = "(nobranch):66c97ae7461f4c1a13917131787bb76dc34e6b6f"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: QA Issue: python-imaging: The compile log indicates that host
include and/or library paths were used.
         Please check the log
'/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_compile'
for more information. [compile-host-path]
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_package_qa.11102
ERROR: Task 9 (/home/michael/yocto/poky/meta/recipes-devtools/python/
python-imaging_1.1.7.bb, do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 695 tasks of which 0 didn't need to be rerun
and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/michael/yocto/poky/meta/recipes-devtools/python/
python-imaging_1.1.7.bb, do_package_qa
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.


DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing python function do_package_qa
NOTE: DO PACKAGE QA
DEBUG: Executing python function read_subpackage_metadata
DEBUG: Python function read_subpackage_metadata finished
ERROR: QA Issue: python-imaging: The compile log indicates that host
include and/or library paths were used.
         Please check the log
'/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_compile'
for more information. [compile-host-path]
NOTE: Checking Package: python-imaging-staticdev
NOTE: Checking Package: python-imaging-dev
NOTE: Checking Package: python-imaging-dbg
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.debug/_imaging.so
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.debug/_imagingmath.so
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.debug/_imagingft.so
NOTE: Checking Package: python-imaging-doc
NOTE: Checking Package: python-imaging
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imaging.so
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imagingmath.so
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imagingft.so
ERROR: QA run found fatal errors. Please consider fixing them.
DEBUG: Python function do_package_qa finished
ERROR: Function failed: do_package_qa

Any help would be much grateful and please let me know if I should post
somewhere else. Thank you all.

Cheers, Michael

--001a1142ea7a826e2e05344e78c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>Am new to yocto and am trying to =
build an image for a Gumstix Pepper board and use ROS. However always get t=
o the point with=C2=A0<a href=3D"http://python-imaging_1.1.7.bb">python-ima=
ging_1.1.7.bb</a> failing=C2=A0do_package_qa. HAve tried just doing the fol=
lowing -=C2=A0</div><div><br></div><div>bitbake python-imaging<br></div><di=
v><br></div><div>But still have the same failure -=C2=A0</div><div><br></di=
v><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;1.26.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =3D &quot=
;Ubuntu-14.04&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;pepper&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=
=A0=3D &quot;1.8&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;arm =
armv7a vfp neon callconvention-hard cortexa8&quot;</div><div>TARGET_FPU =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;</div><div>meta =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;(nobranch):83aa565d93aacae484976562ef1ae8dbbb6b2bc0&=
quot;</div><div>meta-gnome =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-oe =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-xfce =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</div><div>meta-systemd =C2=A0 =C2=A0 =C2=A0</div><div>m=
eta-networking =C2=A0=C2=A0</div><div>meta-multimedia =C2=A0=C2=A0</div><di=
v>meta-python =C2=A0 =C2=A0 =C2=A0 =3D &quot;(nobranch):10d3c8f85280a0bf867=
a8e4f84bcda81c290d28e&quot;</div><div>meta-gumstix =C2=A0 =C2=A0 =C2=A0=3D =
&quot;(nobranch):8ea631d8ef26cb13102dac0910be52674cb7b395&quot;</div><div>m=
eta-gumstix-extras =3D &quot;(nobranch):15cfa9fcff75d3d95f66cfa190e1b604ff5=
ea4f6&quot;</div><div>meta-ros =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
(nobranch):d465a23c0a96e651419d46b29ab7c0c3663da314&quot;</div><div>meta-ti=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;(nobranch):03cb3ff15f3b8535ca=
409ce682f44ec1b81da0c3&quot;</div><div>meta-java =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;(nobranch):66c97ae7461f4c1a13917131787bb76dc34e6b6f&quot;</di=
v><div><br></div><div>NOTE: Preparing RunQueue</div><div>NOTE: Executing Se=
tScene Tasks</div><div>NOTE: Executing RunQueue Tasks</div><div>ERROR: QA I=
ssue: python-imaging: The compile log indicates that host include and/or li=
brary paths were used.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Please c=
heck the log &#39;/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_compile&#39; for more =
information. [compile-host-path]</div><div>ERROR: QA run found fatal errors=
. Please consider fixing them.</div><div>ERROR: Function failed: do_package=
_qa</div><div>ERROR: Logfile of failure stored in: /home/michael/yocto/buil=
d/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/t=
emp/log.do_package_qa.11102</div><div>ERROR: Task 9 (/home/michael/yocto/po=
ky/meta/recipes-devtools/python/<a href=3D"http://python-imaging_1.1.7.bb">=
python-imaging_1.1.7.bb</a>, do_package_qa) failed with exit code &#39;1&#3=
9;</div><div>NOTE: Tasks Summary: Attempted 695 tasks of which 0 didn&#39;t=
 need to be rerun and 1 failed.</div><div>Waiting for 0 running tasks to fi=
nish:</div><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /ho=
me/michael/yocto/poky/meta/recipes-devtools/python/<a href=3D"http://python=
-imaging_1.1.7.bb">python-imaging_1.1.7.bb</a>, do_package_qa</div><div>Sum=
mary: There were 3 ERROR messages shown, returning a non-zero exit code.</d=
iv></div><div><br></div><div><br></div><div><div>DEBUG: Executing python fu=
nction sstate_task_prefunc</div><div>DEBUG: Python function sstate_task_pre=
func finished</div><div>DEBUG: Executing python function do_package_qa</div=
><div>NOTE: DO PACKAGE QA</div><div>DEBUG: Executing python function read_s=
ubpackage_metadata</div><div>DEBUG: Python function read_subpackage_metadat=
a finished</div><div>ERROR: QA Issue: python-imaging: The compile log indic=
ates that host include and/or library paths were used.</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Please check the log &#39;/home/michael/yocto/build=
/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/te=
mp/log.do_compile&#39; for more information. [compile-host-path]</div><div>=
NOTE: Checking Package: python-imaging-staticdev</div><div>NOTE: Checking P=
ackage: python-imaging-dev</div><div>NOTE: Checking Package: python-imaging=
-dbg</div><div>NOTE: arm-poky-linux-gnueabi-objdump -p /home/michael/yocto/=
build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-=
r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.d=
ebug/_imaging.so</div><div>NOTE: arm-poky-linux-gnueabi-objdump -p /home/mi=
chael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-im=
aging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-pac=
kages/PIL/.debug/_imagingmath.so</div><div>NOTE: arm-poky-linux-gnueabi-obj=
dump -p /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-g=
nueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/py=
thon2.7/site-packages/PIL/.debug/_imagingft.so</div><div>NOTE: Checking Pac=
kage: python-imaging-doc</div><div>NOTE: Checking Package: python-imaging</=
div><div>NOTE: arm-poky-linux-gnueabi-objdump -p /home/michael/yocto/build/=
tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/pac=
kages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imaging.so<=
/div><div>NOTE: arm-poky-linux-gnueabi-objdump -p /home/michael/yocto/build=
/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/pa=
ckages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imagingmat=
h.so</div><div>NOTE: arm-poky-linux-gnueabi-objdump -p /home/michael/yocto/=
build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-=
r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imagi=
ngft.so</div><div>ERROR: QA run found fatal errors. Please consider fixing =
them.</div><div>DEBUG: Python function do_package_qa finished</div><div>ERR=
OR: Function failed: do_package_qa</div></div><div><br></div><div>Any help =
would be much grateful and please let me know if I should post somewhere el=
se. Thank you all.</div><div><br></div><div>Cheers, Michael</div></div>

--001a1142ea7a826e2e05344e78c8--
