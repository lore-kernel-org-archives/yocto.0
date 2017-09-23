Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2297DE00D0D; Fri, 22 Sep 2017 22:56:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 130DFE00D00
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 22:56:56 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id w22so1978754ywa.13
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 22:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=cTkYGQ6BeqpqpPJxhqzmucOOoBwlu7It9d2B2F87HCM=;
	b=rwHLFb4ESu4eqZBU/ibbT0q3xjw3ntwcxHAYpEEX96N3+xufsvcpRuiqMMJUuqSLD2
	Jxpx72GzJbjR+T6wy6ncxIVrq7lDVcUW0o3f85RVXFgmQCKtm4DivwqMoEWXONvyDHVB
	Xa6u4HBydIGKLGfVtZhnS3XteOA5k49wVUEPnK7L9Gj9wSWhHG1dLAJH2yDLEbTt6TGM
	Tw9sh2hz7CjVMAPKOL8tCm0SqgQ7S37R0fGktApvkMFrAeGr0i6WUzd3tgIyK7EgUG+a
	JNDOeJ6KKzg+smmgjJTvQfbdZZ+PyKYyWg9DBugmiyx6Rl63UEq21dIDlX3C776Km5ty
	iVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=cTkYGQ6BeqpqpPJxhqzmucOOoBwlu7It9d2B2F87HCM=;
	b=oNe+H6rjT0C+FsmHPQ/mgaorf9aPgSb3qB7VttdB6Kxp2r3lisDV1N+9qMcoERHqJS
	d6bKNuv7UFLaViiWNLLDBaqvZf779jzVghWcbDKUmKgl3bpSN9D4i38DXDF4rFn+KAsf
	Z7y4Bq7lCX3BrRZZOzAc+cKCwS/hx6bSgQv6JV1377ChItwmFlald4KcdLGBYsSOL0vk
	mB+uwAh4Ha42eEI+qdA/UVr19M4Z6+s6QdMFwYIi0/2qaQ7VEWGNzwYuWWKtC2cU/N6p
	FklJ8MFq/o4sBo0IeOkxxkksBaC32eIKipNon7Onqi8nTK7LiSCx8Sh7J1TN5kuORIgk
	uUdA==
X-Gm-Message-State: AHPjjUiAxeLVTHKjvjDqgDhbjUIEMrSZar97fuLC5NIi97TSnx0+WN4t
	hUm+lt5/OdhtrQVaPU1qaGJQaSWgcmsOp/uBc80=
X-Google-Smtp-Source: AOwi7QC/n03U/FDGsK+ohJyGEqTuOWKkP1dcTvhp/EHzlFPBIHJEnRZuPnuDka9ubgL+rRJzJPrLvYjSVZNsBwd9o14=
X-Received: by 10.37.205.194 with SMTP id d185mr846466ybf.259.1506146216107;
	Fri, 22 Sep 2017 22:56:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.216.86 with HTTP; Fri, 22 Sep 2017 22:56:55 -0700 (PDT)
Received: by 10.13.216.86 with HTTP; Fri, 22 Sep 2017 22:56:55 -0700 (PDT)
In-Reply-To: <CAGsrAHcGAo=L8Oy3aWRwUD8QL=iQ-Hw7bc21X8HX-sOGVL31RA@mail.gmail.com>
References: <CAGsrAHcGAo=L8Oy3aWRwUD8QL=iQ-Hw7bc21X8HX-sOGVL31RA@mail.gmail.com>
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Sat, 23 Sep 2017 11:26:55 +0530
Message-ID: <CAGsrAHfGk6tXhYBawVSjCJnd+2JUZaD+_J-z__wwHivdS2+VwQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: do_configure error
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
X-List-Received-Date: Sat, 23 Sep 2017 05:56:59 -0000
Content-Type: multipart/alternative; boundary="94eb2c18a5ac30e80b0559d4feca"

--94eb2c18a5ac30e80b0559d4feca
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ----------
From: "mohammed aqdam" <mohammedaqdam@gmail.com>
Date: Sep 21, 2017 6:59 PM
Subject: do_configure error
To: "yocto" <yocto@yoctoproject.org>
Cc:

Hi all,
i was trying to build rpi-test-image for my rpi3.

i'm getting the following error...

root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k rpi-test-image
Loading cache: 100%
|###########################################################
##########################################################################|
Time: 0:00:01
Loaded 3160 entries from dependency cache.
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
meta-qt5          = "pyro:c6aa602d0640040b470ee81de39726276ddc0ea3"
meta-qt5-extra    = "master:05d63591612623ce7751f5536690c40998188ad2"
meta-oe
meta-networking
meta-python
meta-multimedia   = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

Initialising tasks: 100%
|###########################################################
#####################################################################|
Time: 0:00:11
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
 configure: error: you should not run configure as root (set
FORCE_UNSAFE_CONFIGURE=1 in environment to bypass this check)
| See `config.log' for more details
| ERROR: Function failed: do_configure (log file is located at
/u/my_poky/poky-2/poky/build/tmp/work/x86_64-linux/
coreutils-native/8.26-r0/temp/log.do_configure.17147)
ERROR: Task (virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/
coreutils/coreutils_8.26.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4168 tasks of which 4167 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/
coreutils/coreutils_8.26.bb:do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

i checked for same branch while cloning the data, except for the
qt5-extra layer all are pyro.

what is that i'm missing?

--94eb2c18a5ac30e80b0559d4feca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div><div class=3D"gmail_quote">---------- Forwarded mes=
sage ----------<br>From: &quot;mohammed aqdam&quot; &lt;<a href=3D"mailto:m=
ohammedaqdam@gmail.com">mohammedaqdam@gmail.com</a>&gt;<br>Date: Sep 21, 20=
17 6:59 PM<br>Subject: do_configure error<br>To: &quot;yocto&quot; &lt;<a h=
ref=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Cc:=
 <br><br type=3D"attribution">Hi all,<br>
i was trying to build rpi-test-image for my rpi3.<br>
<br>
i&#39;m getting the following error...<br>
<br>
root@pcz-ee207837-2:/u/my_<wbr>poky/poky-2/poky/build# bitbake -k rpi-test-=
image<br>
Loading cache: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####|<br>
Time: 0:00:01<br>
Loaded 3160 entries from dependency cache.<br>
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
meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;pyro:<wbr>c6aa602d0640=
040b470ee81de39726<wbr>276ddc0ea3&quot;<br>
meta-qt5-extra=C2=A0 =C2=A0 =3D &quot;master:<wbr>05d63591612623ce7751f5536=
690c4<wbr>0998188ad2&quot;<br>
meta-oe<br>
meta-networking<br>
meta-python<br>
meta-multimedia=C2=A0 =C2=A0=3D &quot;pyro:<wbr>5e82995148a2844c6f483ae5ddd=
143<wbr>8d87ea9fb7&quot;<br>
<br>
Initialising tasks: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>#########|=
<br>
Time: 0:00:11<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
=C2=A0configure: error: you should not run configure as root (set<br>
FORCE_UNSAFE_CONFIGURE=3D1 in environment to bypass this check)<br>
| See `config.log&#39; for more details<br>
| ERROR: Function failed: do_configure (log file is located at<br>
/u/my_poky/poky-2/poky/build/<wbr>tmp/work/x86_64-linux/<wbr>coreutils-nati=
ve/8.26-r0/temp/<wbr>log.do_configure.17147)<br>
ERROR: Task (virtual:native:/u/my_poky/<wbr>poky-2/poky/meta/recipes-core/<=
wbr>coreutils/coreutils_8.26.bb:do<wbr>_configure)<br>
failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 4168 tasks of which 4167 didn&#39;t need to<=
br>
be rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
=C2=A0 virtual:native:/u/my_poky/<wbr>poky-2/poky/meta/recipes-core/<wbr>co=
reutils/coreutils_8.26.bb:do<wbr>_configure<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
i checked for same branch while cloning the data, except for the<br>
qt5-extra layer all are pyro.<br>
<br>
what is that i&#39;m missing?<br>
</div>

--94eb2c18a5ac30e80b0559d4feca--
