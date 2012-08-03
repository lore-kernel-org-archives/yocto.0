Return-Path: <vidal.develone@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6146CE01447
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 06:19:25 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so949756ghb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 06:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YnmN2PzhD4gt852npwm89kOBKF/0sL1FjjyjH6O/sO4=;
	b=Uwfh+nvX6xGGXrZqqgtOq8AjzwOP5IxCr4BrXB7VOLHgT/Q4q5Vvnz6/gYRz5HZ7Fe
	puFct2Ohg+MFb1am5foZw9Ry0CzSTpEoauB1h2j3jrhTOGwN2GadfNbpJxrdKWNVjQwB
	Grz4Q+JGHPtFiqyhkfk9TFR9XGk4a1eu1ksxJcYnUhL7ln8PPjBM7T1y67mTTkAT+2vW
	4Nfd45dUIoOMxRg+cSzsdH5piggDjW8rifiq7ZH9KGT279kFim2Kggb9HhHGRxX6XU+L
	JCykF4PBb+pNKVR/HmwG2hNI0oDkzmb6RoEHVcC1Vq2p415nIvmVYaWtybBh3BvJx+Ei
	YPHg==
MIME-Version: 1.0
Received: by 10.50.236.4 with SMTP id uq4mr3502447igc.18.1343999964411; Fri,
	03 Aug 2012 06:19:24 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Fri, 3 Aug 2012 06:19:24 -0700 (PDT)
Date: Fri, 3 Aug 2012 07:19:24 -0600
Message-ID: <CANwz6nwYGvD2Mn9grjTDp2D9BpD7Uv218-noNtRTMYLQSA4EKQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: build error pandaboard on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Aug 2012 13:19:25 -0000
Content-Type: multipart/alternative; boundary=14dae9340e0f74f74404c65c602e

--14dae9340e0f74f74404c65c602e
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I too am interested in the pandaboard with yacto.
I added meta-ti to conf/bblayes.conf
I have tried master and git branch 30fb40.
Did you have to make any changes to meta-ti?
I get the following
 MACHINE=pandaboard bitbake -v core-image-sato
Pseudo is not present but is required, building this first before the main
build
DEBUG: Removed the following variables from the environment: LESSOPEN,
CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2,
XDG_RUNTIME_DIR, QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR,
HOSTNAME, HISTCONTROL, MAIL, LS_COLORS
DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)
DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf
DEBUG: Adding layer /home/vidal/poky/meta
DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf
DEBUG: Adding layer /home/vidal/poky/meta-yocto
DEBUG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf
DEBUG: Adding layer /home/vidal/poky/meta-ti
DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf
ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Errno 2]
No such file or directory: '/home/vidal/poky/meta-ti/conf/layer.conf'
Any help will be appreciated.
thanks

--14dae9340e0f74f74404c65c602e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>I too am interested in the pandaboard with yacto.<br>I added meta=
-ti to conf/bblayes.conf<br>I have tried master and git branch 30fb40.<br>D=
id you have to make any changes to meta-ti?<br>I get the following<br>=A0MA=
CHINE=3Dpandaboard bitbake -v core-image-sato<br>
Pseudo is not present but is required, building this first before the main =
build<br>DEBUG: Removed the following variables from the environment: LESSO=
PEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2=
, XDG_RUNTIME_DIR, QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HOS=
TNAME, HISTCONTROL, MAIL, LS_COLORS<br>
DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)<br>DEB=
UG: LOAD /home/ame/poky/build/conf/bblayers.conf<br>DEBUG: Adding layer /ho=
me/vidal/poky/meta<br>DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf<br>
DEBUG: Adding layer /home/vidal/poky/meta-yocto<br>DEBUG: LOAD /home/vidal/=
poky/meta-yocto/conf/layer.conf<br>DEBUG: Adding layer /home/vidal/poky/met=
a-ti<br>DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf<br>ERROR: Unab=
le to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Errno 2] No such fil=
e or directory: &#39;/home/vidal/poky/meta-ti/conf/layer.conf&#39;<br>
Any help will be appreciated.<br>thanks <br><br>

--14dae9340e0f74f74404c65c602e--
