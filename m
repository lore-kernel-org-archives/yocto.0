Return-Path: <mail@oripessach.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D799CE00D79; Wed,  5 Jun 2019 21:42:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CB05E00D74
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 21:42:28 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id e9so393836uar.9
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 21:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oripessach-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oHhsZiLaLfA1bcnZ1y+TZwNgUPxDbcIlsD5xjrU8OAc=;
	b=RxmEhjYL3jWmVfEZPe2QWyKnLnws9rLtMDciwmaUL4bU9yKEkZJ6rj9XgX6rRIXHIm
	4Y3ggbdIxrmwphare6h6t2HcoojvOIOwMZ00Amp+6INVy2CAcA7DWn1gBp12vESVsOY8
	oKpekNwm5oFUQPDc7EzRn6OcamCVu8HZ41oY6liytNYkMf/rMqjHl9rMsOkaIh19Qs6/
	Gm0uWAaDUVYIGbM/ZTyovFI34qJpfUt18hMCuhtEXFB4wi+k2epSTLfobzMJGoPXGZE2
	eXZXcz3JIwY4rnePqsMVkB2f/Iu8G09J0PvB9s/3jazEh+oxb41R/hO3pWR4A9Ran81C
	j99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oHhsZiLaLfA1bcnZ1y+TZwNgUPxDbcIlsD5xjrU8OAc=;
	b=Lgilgnm0YSBYqk0atLoRHUGtXIeSBJcb91H5vJeOt2+rUSHDWA0ZhqHprETzzm2AA5
	Y+0p+WAMgu16N6JwNG1xwdPRz1v4SbBLbcTpIcyIZcFCCEe8HHULETlJQXsqA/+1XW0t
	USm3DLWGF3nc7Kzaj/5iRpkxVuIRjXd/9b9hmfbzblnszBNf5hwpPDIWslvdunnjrN8O
	siYuSkEWMrQv6eZ4x+29e4OA+bPxDftJ1IjytHXu7b28K4jsgaXKIluKP4e/Qgj/Y1Ci
	Pg7Zp2jNywDuMfizfUWF8bTU7njvz6LHgcoJjka91blxTaziDVlxzDUfs/tnqJ/znD5L
	j48A==
X-Gm-Message-State: APjAAAVMBoEbkNOTg+jVu1VRKzQkB/6d4FQ0Fis3Cq57AE1oN4nRSR00
	72VAlPlHylAU3d1Hz4Ag1okfnd4Rth4vvFTvvloboTGMvuw3Uw==
X-Google-Smtp-Source: APXvYqxMFBykhIvaUouprzKxGG1pB1+PpioLAwUsdsNdd+wwd/JJvrGIAK5sVE4U+ZVtHnxYnRzoLB5mzG/LpS2XMvI=
X-Received: by 2002:ab0:698f:: with SMTP id t15mr13032839uaq.34.1559796147157; 
	Wed, 05 Jun 2019 21:42:27 -0700 (PDT)
MIME-Version: 1.0
From: Ori Pessach <mail@oripessach.com>
Date: Wed, 5 Jun 2019 22:42:01 -0600
Message-ID: <CAJekvNTjU=BLhEOpx8TG_Kfam+F+FCak7rS_vzeuasEgPepUvA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: QA issue [configure-unsafe] when compiling vlc
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
X-List-Received-Date: Thu, 06 Jun 2019 04:42:28 -0000
Content-Type: multipart/alternative; boundary="0000000000004619eb058aa05776"

--0000000000004619eb058aa05776
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to compile vlc 3.0.6 as part of my image from the recipe found
here:

https://layers.openembedded.org/layerindex/recipe/4796/

When bitbake configures the source, I get the following error:

ERROR: vlc-3.0.6-r0 do_configure: QA Issue: This autoconf log indicates
errors, it looked at host include and/or library paths while determining
system capabilities.
Rerun configure task after fixing this. [configure-unsafe]
ERROR: vlc-3.0.6-r0 do_configure: Fatal QA errors found, failing task.
ERROR: vlc-3.0.6-r0 do_configure:
ERROR: vlc-3.0.6-r0 do_configure: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
/home/ori/projects/poky/build/tmp/work/core2-64-poky-linux/vlc/3.0.6-r0/temp/log.do_configure.14767
ERROR: Task
(/home/ori/projects/poky/meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vlc_3.0.6.bb:do_configure)
failed with exit code '1'

I looked in the log, and the problem happens when checking for the
existence of live555 - the configure script outputs this:

configure:32517: x86_64-poky-linux-g++  -m64 -march=core2 -mtune=core2
-msse3 -mfpmath=sse -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/ori/projects/poky/build/tmp/work/core2-64-poky-linux/vlc/3.0.6-r0/recipe-sysroot
-E  -I/usr/include/liveMedia -I/usr/include/groupsock
-I/usr/include/BasicUsageEnvironment -I/usr/include/UsageEnvironment
conftest.cpp
cc1plus: warning: include location "/usr/include/liveMedia" is unsafe for
cross-compilation [-Wpoison-system-directories]
cc1plus: warning: include location "/usr/include/groupsock" is unsafe for
cross-compilation [-Wpoison-system-directories]
cc1plus: warning: include location "/usr/include/BasicUsageEnvironment" is
unsafe for cross-compilation [-Wpoison-system-directories]
cc1plus: warning: include location "/usr/include/UsageEnvironment" is
unsafe for cross-compilation [-Wpoison-system-directories]

I verified that the include directories are in /usr/include/ under the
sysroot specified above, and I, say, move /usr/include/liveMedia out of the
way, compilation fails when the compiler doesn't find the headers, so it
doesn't seem like it's even looking under sysroot.

Any idea how I can fix this?

Thanks,

Ori

--0000000000004619eb058aa05776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m trying to compil=
e vlc 3.0.6 as part of my image from the recipe found here:</div><div><br><=
/div><div><a href=3D"https://layers.openembedded.org/layerindex/recipe/4796=
/">https://layers.openembedded.org/layerindex/recipe/4796/</a></div><div><b=
r></div><div>When bitbake configures the source, I get the following error:=
</div><div><br></div><div>ERROR: vlc-3.0.6-r0 do_configure: QA Issue: This =
autoconf log indicates errors, it looked at host include and/or library pat=
hs while determining system capabilities.<br>Rerun configure task after fix=
ing this. [configure-unsafe]<br>ERROR: vlc-3.0.6-r0 do_configure: Fatal QA =
errors found, failing task.<br>ERROR: vlc-3.0.6-r0 do_configure: <br>ERROR:=
 vlc-3.0.6-r0 do_configure: Function failed: do_qa_configure<br>ERROR: Logf=
ile of failure stored in: /home/ori/projects/poky/build/tmp/work/core2-64-p=
oky-linux/vlc/3.0.6-r0/temp/log.do_configure.14767<br>ERROR: Task (/home/or=
i/projects/poky/meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vl=
c_3.0.6.bb:do_configure) failed with exit code &#39;1&#39;</div><div><br></=
div><div>I looked in the log, and the problem happens when checking for the=
 existence of live555 - the configure script outputs this:</div><div><br></=
div><div>configure:32517: x86_64-poky-linux-g++ =C2=A0-m64 -march=3Dcore2 -=
mtune=3Dcore2 -msse3 -mfpmath=3Dsse -fstack-protector-strong =C2=A0-D_FORTI=
FY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroo=
t=3D/home/ori/projects/poky/build/tmp/work/core2-64-poky-linux/vlc/3.0.6-r0=
/recipe-sysroot -E =C2=A0-I/usr/include/liveMedia -I/usr/include/groupsock =
-I/usr/include/BasicUsageEnvironment -I/usr/include/UsageEnvironment confte=
st.cpp<br>cc1plus: warning: include location &quot;/usr/include/liveMedia&q=
uot; is unsafe for cross-compilation [-Wpoison-system-directories]<br>cc1pl=
us: warning: include location &quot;/usr/include/groupsock&quot; is unsafe =
for cross-compilation [-Wpoison-system-directories]<br>cc1plus: warning: in=
clude location &quot;/usr/include/BasicUsageEnvironment&quot; is unsafe for=
 cross-compilation [-Wpoison-system-directories]<br>cc1plus: warning: inclu=
de location &quot;/usr/include/UsageEnvironment&quot; is unsafe for cross-c=
ompilation [-Wpoison-system-directories]<br></div><div><br></div><div>I ver=
ified that the include directories are in /usr/include/ under the sysroot s=
pecified above, and I, say, move /usr/include/liveMedia out of the way, com=
pilation fails when the compiler doesn&#39;t find the headers, so it doesn&=
#39;t seem like it&#39;s even looking under sysroot.</div><div><br></div><d=
iv>Any idea how I can fix this?</div><div><br></div><div>Thanks,</div><div>=
<br></div><div>Ori <br></div><div><br></div></div>

--0000000000004619eb058aa05776--
