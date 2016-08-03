Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B216E00D71; Wed,  3 Aug 2016 12:34:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D812AE00D54
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 12:34:27 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id j185so294286220oih.0
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2016 12:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=IgXOG6f5MmaorqOdJGxlLgjQkToa11bKAfXBOVvE6jE=;
	b=RXRax2rAwEMyRMi4ltsmT0iO8PqduOZA7UUsQgOBxNAUz7tJUpCas0mivMMw24zaNB
	JhCtPn+bjBJr9sI/MWseeu/V8ftxK+BSbJgWEHbm4fUtdFbDMY70c1ywS4T5b7p/kYnR
	k/JanPGC4DwMGj03kRE2UgcHVH4dHxuSaBVfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IgXOG6f5MmaorqOdJGxlLgjQkToa11bKAfXBOVvE6jE=;
	b=G4H8OIGMWufNaIwxPgZawxeBDgQAU70vhBTj1xOwStSkgYkdrZ+8lDl88KrjCVuBgW
	uWsyQynqqnFGU0JP9QzlI1eUIRnqAO+DDkIo+OAViEJpdOuPQPIJsXjipnLwZXyJgDWA
	or1TNLAwjJAQgf9NIuvnovEuc9VsUYvKpSsdm01grSwuLrouI7DLfKY1Nu27E2NJspsv
	GYLaz7bb9f4/wbHsFjbNxogRDekU2uizASmwusiyH/yk2KZGNADca6COOXJhr0398cyn
	DlQxCmWWtennVymY1g0scleHYtpWDr3GMhg6XUIp/B1SHC5JTHmP/IN+hZ/OMc0Q2FtS
	HhnA==
X-Gm-Message-State: AEkoouv9Eb1au1hZckY1j/E6FimPjzxWQL5D42t+811eLDNmoorjG+3WHk9sjGc0ViVhKX1Z5kmp8/6I9OqaAnHj
X-Received: by 10.157.14.5 with SMTP id c5mr44683223otc.55.1470252867056; Wed,
	03 Aug 2016 12:34:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.50.10 with HTTP; Wed, 3 Aug 2016 12:34:26 -0700 (PDT)
From: Joel Zhou <joel.zhou@broadcom.com>
Date: Wed, 3 Aug 2016 15:34:26 -0400
Message-ID: <CAAJbk1Fr-=jn7Mk8hOVuuTkW3hq2fv+amP13Agaar21DBwFvOg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: krogoth: quilt-native failed on Ubuntu 14
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
X-List-Received-Date: Wed, 03 Aug 2016 19:34:33 -0000
Content-Type: multipart/alternative; boundary=001a11414dcedfcc1f05392feba0

--001a11414dcedfcc1f05392feba0
Content-Type: text/plain; charset=UTF-8

Hi All,

When I build core-image-minimal using Yocto 2.1 on Ubuntu 14.
It failed on quilt-native-0.64-r0 do_configure

ERROR: quilt-native-0.64-r0 do_configure: no configure script found at
./configure


The source directory in work area is empty.

tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/


Any idea how to fix this issue?

The details message:

[joelz@ldt-joelz]:(krogoth)$ bitbake core-image-minimal
Parsing recipes: 100%
|####################################################################################################################################|
Time: 00:02:08
Parsing of 1915 .bb files complete (0 cached, 1915 parsed). 2469 targets,
357 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "2.1.1"
TUNE_FEATURES     = "arm armv7a vfp  neon        callconvention-hard
 cortexa8"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
meta-networking
meta-oe
meta-python       = "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
meta-linaro       = "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"

NOTE: Preparing RunQueue
NOTE: Checking sstate mirror object availability (for 895 objects)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: quilt-native-0.64-r0 do_populate_lic: Could not copy license file
/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/COPYING
to
/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/license-destdir/quilt-native/COPYING:
[Errno 2] No such file or directory:
'/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/COPYING'
*ERROR: quilt-native-0.64-r0 do_configure: no configure script found at
./configure*
*ERROR: quilt-native-0.64-r0 do_configure: Function failed: do_configure
(log file is located at
/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_configure.29952)*
ERROR: Logfile of failure stored in:
/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_configure.29952
ERROR: Task 29
(/home/joelz/poky2.1/poky/build/../meta/recipes-devtools/quilt/
quilt-native_0.64.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6 tasks of which 4 didn't need to be rerun
and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/joelz/poky2.1/poky/build/../meta/recipes-devtools/quilt/
quilt-native_0.64.bb, do_configure
Summary: There were 7 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Host info:

[joelz@ldt-joelz]:(krogoth)$ cat /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=14.04
DISTRIB_CODENAME=trusty
DISTRIB_DESCRIPTION="Ubuntu 14.04.2 LTS"


Thanks,
Joel

--001a11414dcedfcc1f05392feba0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>When I build core-image-minimal=
 using Yocto 2.1 on=C2=A0Ubuntu 14.</div><div>It failed on quilt-native-0.6=
4-r0 do_configure</div><blockquote style=3D"margin:0px 0px 0px 40px;border:=
none;padding:0px"><div>ERROR: quilt-native-0.64-r0 do_configure: no configu=
re script found at ./configure</div></blockquote><div><br></div><div>The so=
urce directory in work area is empty.</div><blockquote style=3D"margin:0 0 =
0 40px;border:none;padding:0px"><div>tmp/work/x86_64-linux/quilt-native/0.6=
4-r0/quilt-0.64/</div></blockquote><div><br></div><div>Any idea how to fix =
this issue?</div><div><br></div><div>The details message:</div><div><br></d=
iv><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><d=
iv><div>[joelz@ldt-joelz]:(krogoth)$ bitbake core-image-minimal</div></div>=
<div><div>Parsing recipes: 100% |##########################################=
###########################################################################=
###############| Time: 00:02:08</div></div><div><div>Parsing of 1915 .bb fi=
les complete (0 cached, 1915 parsed). 2469 targets, 357 skipped, 0 masked, =
0 errors.</div></div><div><div>NOTE: Resolving any missing task queue depen=
dencies</div></div><div><div><br></div></div><div><div>Build Configuration:=
</div></div><div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.30.=
0&quot;</div></div><div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;x86_64-linux&quot;</div></div><div><div>NATIVELSBSTRING =C2=A0 =3D &quot;=
universal&quot;</div></div><div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;arm-poky-linux-gnueabi&quot;</div></div><div><div>MACHINE =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;beaglebone&quot;</div></div><div><div=
>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div>=
</div><div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.1.1&quot;</div></di=
v><div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp =C2=A0neon=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0callconvention-hard =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cortexa8&quot;</div></div><div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;hard&quot;</div></div><div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</div></div><div><div>meta-poky =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</div></div><div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;kro=
goth:f5da2a5913319ad6ac2141438ba1aa17576326ab&quot;</div></div><div><div>me=
ta-networking =C2=A0=C2=A0</div></div><div><div>meta-oe =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</div></div><div><div>meta-python =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a&quot;</div><=
/div><div><div>meta-linaro =C2=A0 =C2=A0 =C2=A0 =3D &quot;krogoth:f5da2a591=
3319ad6ac2141438ba1aa17576326ab&quot;</div></div><div><div><br></div></div>=
<div><div>NOTE: Preparing RunQueue</div></div><div><div>NOTE: Checking ssta=
te mirror object availability (for 895 objects)</div></div><div><div>NOTE: =
Executing SetScene Tasks</div></div><div><div>NOTE: Executing RunQueue Task=
s</div></div><div><div>WARNING: quilt-native-0.64-r0 do_populate_lic: Could=
 not copy license file /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux=
/quilt-native/0.64-r0/quilt-0.64/COPYING to /home/joelz/poky2.1/poky/build/=
tmp/work/x86_64-linux/quilt-native/0.64-r0/license-destdir/quilt-native/COP=
YING: [Errno 2] No such file or directory: &#39;/home/joelz/poky2.1/poky/bu=
ild/tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/COPYING&#39;</div=
></div><div><div><b>ERROR: quilt-native-0.64-r0 do_configure: no configure =
script found at ./configure</b></div></div><div><div><b>ERROR: quilt-native=
-0.64-r0 do_configure: Function failed: do_configure (log file is located a=
t /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0=
/temp/log.do_configure.29952)</b></div></div><div><div>ERROR: Logfile of fa=
ilure stored in: /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt=
-native/0.64-r0/temp/log.do_configure.29952</div></div><div><div>ERROR: Tas=
k 29 (/home/joelz/poky2.1/poky/build/../meta/recipes-devtools/quilt/<a href=
=3D"http://quilt-native_0.64.bb">quilt-native_0.64.bb</a>, do_configure) fa=
iled with exit code &#39;1&#39;</div></div><div><div>NOTE: Tasks Summary: A=
ttempted 6 tasks of which 4 didn&#39;t need to be rerun and 1 failed.</div>=
</div><div><div>Waiting for 0 running tasks to finish:</div></div><div><div=
><br></div></div><div><div>Summary: 1 task failed:</div></div><div><div>=C2=
=A0 /home/joelz/poky2.1/poky/build/../meta/recipes-devtools/quilt/<a href=
=3D"http://quilt-native_0.64.bb">quilt-native_0.64.bb</a>, do_configure</di=
v></div><div><div>Summary: There were 7 WARNING messages shown.</div></div>=
<div><div>Summary: There were 2 ERROR messages shown, returning a non-zero =
exit code.</div></div></blockquote><div><div><br></div><div>Host info:</div=
></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px=
"><div><div>[joelz@ldt-joelz]:(krogoth)$ cat /etc/lsb-release=C2=A0</div></=
div><div><div>DISTRIB_ID=3DUbuntu</div></div><div><div>DISTRIB_RELEASE=3D14=
.04</div></div><div><div>DISTRIB_CODENAME=3Dtrusty</div></div><div><div>DIS=
TRIB_DESCRIPTION=3D&quot;Ubuntu 14.04.2 LTS&quot;</div></div></blockquote><=
div><div><br></div><div><div class=3D"gmail_signature" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,</div><di=
v>Joel</div></div></div></div></div></div>
</div></div>

--001a11414dcedfcc1f05392feba0--
