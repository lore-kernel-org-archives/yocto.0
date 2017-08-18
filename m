Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9940CE00CE2; Fri, 18 Aug 2017 10:31:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA274E008D2
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 10:31:51 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id g189so34398873vke.5
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 10:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QWQkmq1lvmXgqhEhf1OFokoGU0DQ82D8tcwTcLgwB3I=;
	b=DmJTA9h4PCcwfq7QMMz8QSDyoc6C6vvYZCWw0cEs4YxY3wPbD5ZSx/4/gZpzrfIRsg
	3qrCgqYh0+sy4mrqlv9sjhUA9xnqdwLABKBUmIYsl6tna123Y+aILEgiYYtOypGVo3c3
	5kRFhGVfN/zO2HiwHE9THqve5aKZTRa93ZL5oGcCY60cbQDf99zHLPPEAJPPa9hxkTst
	tKHOO959ODqLIeOfkHorIjMnhtjG8CLpPtAgozHmk10pTBm6pYdJ2HgXXUhj4CMvdQ9f
	e9j6oGDwEPPVvbD/v3rx9spo83hk01twa8R8IG6N8MO7V9MCqNPO5XAe/zQ9faQqd078
	E3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QWQkmq1lvmXgqhEhf1OFokoGU0DQ82D8tcwTcLgwB3I=;
	b=INd1URyMKpY7EvU5tNm91TjfexAXEqOfnz+fEqAvvDky0cR4Cy4TtMB90xDEZEbwRN
	nUx2gcB4UYwXcFqOpn8wMXae+UM7VhYnalYuG+CEFfXO99sfMaAJxMjeW29OQ69xk18Q
	3N+gzUrxLk6yjKQsg+rAzodl3QOcMXC9SzdYGWYBeE+zzPR5xY/KiugFuMEywsVuO8BS
	z/DeyoHKXqgumIkgbNk9V5WHcw3dkQQ400BN2iCQ+wynlJinCwJsyhXcAbFbjjvFx10+
	PAsRLRyQJcN6cxibPxTWEIhvBh1n7WuWBCenDnAXj8NWEYuoy4vtVYSPpAfDBMFuw7GY
	tdhw==
X-Gm-Message-State: AHYfb5gQVEn5OnY+C/hagaRHI9dCll745FJvDIJw2TqRufMTnnT+K+Bv
	gvNjS3dPoTrR4AGrHAM2Vy/9ZRosxA==
X-Received: by 10.31.227.6 with SMTP id a6mr6221242vkh.15.1503077510618; Fri,
	18 Aug 2017 10:31:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.74.94 with HTTP; Fri, 18 Aug 2017 10:31:50 -0700 (PDT)
Received: by 10.176.74.94 with HTTP; Fri, 18 Aug 2017 10:31:50 -0700 (PDT)
In-Reply-To: <CAGsrAHeCnGRMgkMH5oqqHQoVqYQzKVxXb93PKkL3-4tALv_05Q@mail.gmail.com>
References: <CAGsrAHeCnGRMgkMH5oqqHQoVqYQzKVxXb93PKkL3-4tALv_05Q@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 18 Aug 2017 19:31:50 +0200
Message-ID: <CAC+thW2vrPAsWvSUWuWEpBJcfJK_YruY4ONCW+W1pWcNvpaRJg@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: why do we get do_configure() fuction fail
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
X-List-Received-Date: Fri, 18 Aug 2017 17:31:52 -0000
Content-Type: multipart/alternative; boundary="001a114da98017230c05570a8158"

--001a114da98017230c05570a8158
Content-Type: text/plain; charset="UTF-8"

Il 18 ago 2017 7:24 AM, "mohammed aqdam" <mohammedaqdam@gmail.com> ha
scritto:

root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k rpi-basic-image
Loading cache: 100%
|###########################################################
##########################################################################|
Time: 0:00:01
Loaded 2716 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
meta-raspberrypi  = "pyro:8ba2d6fc80b31c87d25c87c863e2a77752b07c3c"
meta-oe
meta-multimedia
meta-networking
meta-python       = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 2876 of 4136
(virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/
coreutils/coreutils_8.26.bb:do_configure)
NOTE: recipe coreutils-native-8.26-r0: task do_configure: Started
ERROR: coreutils-native-8.26-r0 do_configure: configure failed
ERROR: coreutils-native-8.26-r0 do_configure: Function failed:
do_configure (log file is located at
/u/my_poky/poky-2/poky/build/tmp/work/x86_64-linux/
coreutils-native/8.26-r0/temp/log.do_configure.5008)
ERROR: Logfile of failure stored in:
/u/my_poky/poky-2/poky/build/tmp/work/x86_64-linux/
coreutils-native/8.26-r0/temp/log.do_configure.5008
NOTE: recipe coreutils-native-8.26-r0: task do_configure: Failed
ERROR: Task (virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/
coreutils/coreutils_8.26.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4114 tasks of which 4113 didn't need to
be rerun and 1 failed.

why i'm getting this error?
and how to solve this?


What does the mentioned logfile show?

--001a114da98017230c05570a8158
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">Il 18 ago 2017 7:24 AM, &quot;mohammed aqdam&quot; &lt;<a href=3D=
"mailto:mohammedaqdam@gmail.com">mohammedaqdam@gmail.com</a>&gt; ha scritto=
:<br type=3D"attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">root@pcz-ee207837-2:/u/m=
y_<wbr>poky/poky-2/poky/build# bitbake -k rpi-basic-image<br>
Loading cache: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####|<br>
Time: 0:00:01<br>
Loaded 2716 entries from dependency cache.<br>
NOTE: Resolving any missing task queue dependencies<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.34.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal-4.8&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi3&quot=
;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.3.1&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7ve vfp thumb neon vfpv4=
<br>
callconvention-hard cortexa7&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
meta<br>
meta-poky<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;pyro:<wbr>4a39979c8d1e560fa54240e9973=
4a6<wbr>51dfbaa63a&quot;<br>
meta-raspberrypi=C2=A0 =3D &quot;pyro:<wbr>8ba2d6fc80b31c87d25c87c863e2a7<w=
br>7752b07c3c&quot;<br>
meta-oe<br>
meta-multimedia<br>
meta-networking<br>
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;pyro:<wbr>5e82995148a2844c6=
f483ae5ddd143<wbr>8d87ea9fb7&quot;<br>
<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: Running task 2876 of 4136<br>
(virtual:native:/u/my_poky/<wbr>poky-2/poky/meta/recipes-core/<wbr>coreutil=
s/coreutils_8.26.bb:do<wbr>_configure)<br>
NOTE: recipe coreutils-native-8.26-r0: task do_configure: Started<br>
ERROR: coreutils-native-8.26-r0 do_configure: configure failed<br>
ERROR: coreutils-native-8.26-r0 do_configure: Function failed:<br>
do_configure (log file is located at<br>
/u/my_poky/poky-2/poky/build/<wbr>tmp/work/x86_64-linux/<wbr>coreutils-nati=
ve/8.26-r0/temp/<wbr>log.do_configure.5008)<br>
ERROR: Logfile of failure stored in:<br>
/u/my_poky/poky-2/poky/build/<wbr>tmp/work/x86_64-linux/<wbr>coreutils-nati=
ve/8.26-r0/temp/<wbr>log.do_configure.5008<br>
NOTE: recipe coreutils-native-8.26-r0: task do_configure: Failed<br>
ERROR: Task (virtual:native:/u/my_poky/<wbr>poky-2/poky/meta/recipes-core/<=
wbr>coreutils/coreutils_8.26.bb:do<wbr>_configure)<br>
failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 4114 tasks of which 4113 didn&#39;t need to<=
br>
be rerun and 1 failed.<br>
<br>
why i&#39;m getting this error?<br>
and how to solve this?<br></blockquote></div></div></div><div dir=3D"auto">=
<br></div><div dir=3D"auto">What does the mentioned logfile show?</div></di=
v>

--001a114da98017230c05570a8158--
