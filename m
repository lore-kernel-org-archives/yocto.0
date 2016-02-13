Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF520E00CAE; Sat, 13 Feb 2016 03:39:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59252E00CA2
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 03:39:26 -0800 (PST)
Received: by mail-lf0-f41.google.com with SMTP id 78so65669751lfy.3
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 03:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uYQ8n3jbDo9pqeKdFCjxmW5LJrFxED7dwaGs8TbUmfk=;
	b=DJjW9sqbAmFpEEkDh2SZOa2//L7sf/kK+uqoUcLfemZdqWRjtXEd8RqVsv2z6bUEh/
	YlNK64wjctUefXxDb79/HWD4OyFlgn06vF9yRs9Hyeor5AhCPZY+BDSTNm0hXMJ+S2ee
	EXFXTf10qWG4yUYmUD0LIEzfg+eeemrcK4999RnbjERIeionXMdABupXkZO4d8dgUPXX
	yD19gmGZYO3zbax+xliOS/yy2cxAGwnIn6ZYL7cRJDRXqERsbWRnBXjDmwPzTxTBO0Mz
	x6BfxGnbDR4TT01Lkvp86rlDZOg5yVc/NuE1rYMcz1ZjQDpjFy9IEaMpCOZR45x46KWT
	HeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=uYQ8n3jbDo9pqeKdFCjxmW5LJrFxED7dwaGs8TbUmfk=;
	b=UpYJaJw4uhxbt6CR6QCCmmdMOsxw3tc896l2yQ1omX6Gq0oxuw+LSLmY/+kyPqiPpu
	z2xtPUxFJN3vCvppfdvu5rIfQC2lXLHpZXdgPx2hazcRjK5k8HH/JZvHfypqi+fhpf5a
	nOJ5mprM5WodL/+4lmbSR2/ixnGCoxwcx/qzvCIU8B21/BQIm57K7CaK4DS0bsU9PAu8
	1jSLWU2WPiF3pHBA/Kb0MbwkCrflvpNhIH4Oaze+m3L61E6ZcONc4vUA+8AfKl2483Vj
	BZO6YG1rtNXZaAz5D7sCfcaHp6m/hsE3JZNApdmB4+fO4GKKWJBglAgsGOgN1AbY86NG
	xLLQ==
X-Gm-Message-State: AG10YOQNko73KZ+fm6lnCAkqT7pUnCmoSK+1Lu+1gLTw8/FLJC7xabGk50h5Lhl9rzMTWMf9Vs//+sTrtEANnw==
MIME-Version: 1.0
X-Received: by 10.25.21.29 with SMTP id l29mr2415686lfi.123.1455363564751;
	Sat, 13 Feb 2016 03:39:24 -0800 (PST)
Received: by 10.114.11.1 with HTTP; Sat, 13 Feb 2016 03:39:24 -0800 (PST)
Date: Sat, 13 Feb 2016 13:39:24 +0200
Message-ID: <CAGuQk8p22Kp+rymAK2r+KpsB++VVuSrk_yAqKyVjVK0yXuWdUw@mail.gmail.com>
From: Marius Liebenberg <mdlcameras@gmail.com>
To: yocto@yoctoproject.org
Subject: Build fails with gettext
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
X-List-Received-Date: Sat, 13 Feb 2016 11:39:31 -0000
Content-Type: multipart/alternative; boundary=001a114071404bd1a9052ba53ccf

--001a114071404bd1a9052ba53ccf
Content-Type: text/plain; charset=UTF-8

Hi
I just did a fresh pull of the poky-jethro, openembedded and meta-qt5.
I am building a console-image and a qt5-image as per Scott Ellis templates.

I get these errors after the update. Any suggestions please?

make[4]: Entering directory
'/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/build/gettext-tools/tests'
../arm-poky-linux-gnueabi-libtool  --tag=CC   --mode=link
arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfloat-abi=hard -mfpu=neon
-mtune=cortex-$
arm-poky-linux-gnueabi-libtool:   error: '../libgettextpo/libgettextpo.la'
is not a valid libtool archive
Makefile:2051: recipe for target 'gettextpo-1-prg' failed
| Makefile:2051: recipe for target 'gettextpo-1-prg' failed
| make[4]: *** [gettextpo-1-prg] Error 1
| make[4]: Leaving directory
'/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/build/gettext-tools/tests'
| Makefile:1698: recipe for target 'all-recursive' failed
| make[3]: *** [all-recursive] Error 1
| make[3]: Leaving directory
'/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/build/gettext-tools'
| Makefile:1564: recipe for target 'all' failed
| make[2]: *** [all] Error 2
| make[2]: Leaving directory
'/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/build/gettext-tools'
| Makefile:380: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/build'
| Makefile:336: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at
/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/temp/log.do_compile.3437)
ERROR: Task 312 (/home/badev/poky-jethro/meta/recipes-core/gettext/
gettext_0.19.4.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1896 tasks of which 1887 didn't need to be
rerun and 2 failed.

--001a114071404bd1a9052ba53ccf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi <br></div>I just did a fresh pull of the=
 poky-jethro, openembedded and meta-qt5.<br></div>I am building a console-i=
mage and a qt5-image as per Scott Ellis templates.<br><br></div>I get these=
 errors after the update. Any suggestions please?<br><br>make[4]: Entering =
directory &#39;/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linu=
x-gnueabi/gettext/0.19.4-r0/build/gettext-tools/tests&#39;<br>../arm-poky-l=
inux-gnueabi-libtool=C2=A0 --tag=3DCC=C2=A0=C2=A0 --mode=3Dlink arm-poky-li=
nux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtu=
ne=3Dcortex-$<br>arm-poky-linux-gnueabi-libtool:=C2=A0=C2=A0 error: &#39;..=
/libgettextpo/<a href=3D"http://libgettextpo.la">libgettextpo.la</a>&#39; i=
s not a valid libtool archive<br>Makefile:2051: recipe for target &#39;gett=
extpo-1-prg&#39; failed<br>| Makefile:2051: recipe for target &#39;gettextp=
o-1-prg&#39; failed<br>| make[4]: *** [gettextpo-1-prg] Error 1<br>| make[4=
]: Leaving directory &#39;/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neo=
n-poky-linux-gnueabi/gettext/0.19.4-r0/build/gettext-tools/tests&#39;<br>| =
Makefile:1698: recipe for target &#39;all-recursive&#39; failed<br>| make[3=
]: *** [all-recursive] Error 1<br>| make[3]: Leaving directory &#39;/home/b=
adev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19=
.4-r0/build/gettext-tools&#39;<br>| Makefile:1564: recipe for target &#39;a=
ll&#39; failed<br>| make[2]: *** [all] Error 2<br>| make[2]: Leaving direct=
ory &#39;/home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnue=
abi/gettext/0.19.4-r0/build/gettext-tools&#39;<br>| Makefile:380: recipe fo=
r target &#39;all-recursive&#39; failed<br>| make[1]: *** [all-recursive] E=
rror 1<br>| make[1]: Leaving directory &#39;/home/badev/bbb/build/tmp/work/=
cortexa8hf-vfp-neon-poky-linux-gnueabi/gettext/0.19.4-r0/build&#39;<br>| Ma=
kefile:336: recipe for target &#39;all&#39; failed<br>| make: *** [all] Err=
or 2<br>| ERROR: oe_runmake failed<br>| ERROR: Function failed: do_compile =
(log file is located at /home/badev/bbb/build/tmp/work/cortexa8hf-vfp-neon-=
poky-linux-gnueabi/gettext/0.19.4-r0/temp/log.do_compile.3437)<br>ERROR: Ta=
sk 312 (/home/badev/poky-jethro/meta/recipes-core/gettext/<a href=3D"http:/=
/gettext_0.19.4.bb">gettext_0.19.4.bb</a>, do_compile) failed with exit cod=
e &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1896 tasks of which 1887 di=
dn&#39;t need to be rerun and 2 failed.<br></div>

--001a114071404bd1a9052ba53ccf--
