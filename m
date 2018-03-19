Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E3EEE00A44; Mon, 19 Mar 2018 09:38:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C58E00474
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 09:38:48 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id a23so18664019qtn.0
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aVb7Cjz5TORJBaSX5H3M3liaWXS8C4KmJBo7eJCcdmI=;
	b=RmfNkb1Vv18/XQFJikalaSYkPy55eF6IECkOvSEZriMOodpjtOOaxsRVPWaTPPK5St
	AwEZ8JLcp7cSM8xuZUprutA4Q0GEjzMzJKA4dKKQqXyz7Zo53jhxneTmZFUDXAck2PpI
	dbV/gGiayJTEGkqvmZZECwz5YR+mv9mdkIUJ87XjCQP2ONnF/RQ6p5XwwDEIdZs9XETx
	YECMG9nKGKmNRdlxGpE3zLPMgHqCbo+JEWzDwy3GMd4Fx/G9ETtTcB25ie4goIkEEiJo
	+jFgf51xgDxVDPx0acFFlQmCOVf/yKlqMHv+Fbisd+3zlmoRAlpCue7n08Nf03hJ5z5O
	fiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aVb7Cjz5TORJBaSX5H3M3liaWXS8C4KmJBo7eJCcdmI=;
	b=J0yYCoFj3zu55Wf0bRwY3HYjHiWWYTfhRMMpfpLeyKa1Nlnjvj5sCyF9UUYBqCHPHm
	HlGIU9amTG+Qbvepy7/uajIkToqYFwdi9ZDUWDC0ce72Itc+tFLaDLhEy1QyNhVrPtsU
	8ZGAWsW3FpIyHxxJC5Pyprw9KTnksTgciMSultXJkvU24HptFJJf/L6KR544l6FNlyE3
	yx81eHioMv4pvO7ZAwrWc8uZEvk+K121oK516y2BFDAWoQamZ5tLkdi8Rd9N4EVJxtkv
	lPldTM0oEwJ35RR6ecaKc4UZBDxD9POe4Vz9e3siU1nngnwPenXehHgVLxB1C2RpOjbW
	Abpw==
X-Gm-Message-State: AElRT7F18VyA3YqBph0ioGNyV+ZEUivyG/Yww4oK0Tg0tdgf2ZHsxkHB
	FCMVquWEa1p0yTptXhYqTOuPkudT9NzJ1aon3KF/kA==
X-Google-Smtp-Source: AG47ELtaLfyVnq/Cbs8EaRzyCGFNFbLtNi3Mxxk5c0Pb4KhGsiXXr0mug0oekrLanzT6lrXli46pXi/VDlo548muaQA=
X-Received: by 10.200.50.194 with SMTP id a2mr18845502qtb.172.1521477527687;
	Mon, 19 Mar 2018 09:38:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.130.100 with HTTP; Mon, 19 Mar 2018 09:38:47 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 19 Mar 2018 17:38:47 +0100
Message-ID: <CAGAf8Lzv-vjN2j1TkF33GkC9qjNSzqBSpvHkUoyS_5kd=oJAjQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Quick hack for compiling old and outdated YOCTO Jethro for Renesas iwg20m
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
X-List-Received-Date: Mon, 19 Mar 2018 16:38:51 -0000
Content-Type: multipart/alternative; boundary="001a114114fe9260b70567c69765"

--001a114114fe9260b70567c69765
Content-Type: text/plain; charset="UTF-8"

Hello,

I have to do some job on the Renesas iwg20m platform. From this site:
https://elinux.org/RZ-G/Boards/Yocto_2.0

I found some explanation how to do YOCTO build, which I a bit modified
(conf/local.conf).

It does download all the packages, but it fails here (in *RED*):

[vuser@localhost conf]$ bitbake core-image-minimal
WARNING: Host distribution "Fedora-27" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100%
|############################################################################################|
ETA:  00:00:00
Loaded 2160 entries from dependency cache.
WARNING: No recipes available for:

/home/vuser/projects2/iwg20m/build/../meta-renesas/meta-rzg1/recipes-qt/qt5/qtmultimedia_git.bbappend

/home/vuser/projects2/iwg20m/build/../meta-renesas/meta-rzg1/recipes-qt/qt5/qtbase_git.bbappend

/home/vuser/projects2/iwg20m/build/../meta-renesas/meta-rzg1/recipes-qt/qt5/qtwayland_git.bbappend
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-27"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "skrzg1m"
DISTRO            = "poky"
DISTRO_VERSION    = "2.0.1"
TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa15"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "tmp:3b223f75eec1738fbc913858e8e11c8305e3edcb"
meta-oe           = "tmp:dc5634968b270dde250690609f0015f881db81f2"
meta-yocto-bsp    = "tmp:3b223f75eec1738fbc913858e8e11c8305e3edcb"
meta-rzg1         = "yocto_2.0:a6c3c79635bd5ee309fc3c62d36b1707086d9136"
meta-linaro-toolchain = "tmp:12993e6bc8658ee37d303d8d59007f8dd9ab2b30"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at
/home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.30440)
ERROR: Logfile of failure stored in:
/home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.30440
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4






*| : && /usr/bin/mkdir -p doc && {
PATH='/home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH
&& export PATH; } && /usr/bin/perl
/home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake-native/1.15-r0/automake-1.15/doc/help2man
--output=doc/automake-1.15.1 automake-1.15| help2man: can't get `--help'
info from automake-1.15| Try `--no-discard-stderr' if option outputs to
stderr| make: *** [Makefile:3687: doc/automake-1.15.1] Error 255| ERROR:
oe_runmake failed| ERROR: Function failed: do_compile (log file is located
at
/home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.30440)ERROR:
Task 283
(virtual:native:/home/vuser/projects2/iwg20m/build/../poky/meta/recipes-devtools/automake/automake_1.15.bb
<http://automake_1.15.bb>, do_compile) failed with exit code '1'*
NOTE: Tasks Summary: Attempted 699 tasks of which 697 didn't need to be
rerun and 1 failed.
No currently running tasks (527 of 2182)

Summary: 1 task failed:

virtual:native:/home/vuser/projects2/iwg20m/build/../poky/meta/recipes-devtools/automake/
automake_1.15.bb, do_compile
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
[vuser@localhost conf]$
_______

My question is: does anybody know quick hack how to fix this error? Seems,
that it fails while generating doc files... How I can disable doc
generation for this, maybe some generic way for any package?

Thank you,
Zoran
_______

--001a114114fe9260b70567c69765
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br>I have to do some job on the =
Renesas iwg20m platform. From this site:<br><a href=3D"https://elinux.org/R=
Z-G/Boards/Yocto_2.0">https://elinux.org/RZ-G/Boards/Yocto_2.0</a><br><br>I=
 found some explanation how to do YOCTO build, which I a bit modified (conf=
/local.conf).<br><br>It does download all the packages, but it fails here (=
in <span style=3D"color:rgb(255,0,0)"><i><b>RED</b></i></span>):<br><br>[vu=
ser@localhost conf]$ bitbake core-image-minimal<br>WARNING: Host distributi=
on &quot;Fedora-27&quot; has not been validated with this version of the bu=
ild system; you may possibly experience unexpected failures. It is recommen=
ded that you use a tested distribution.<br>Loading cache: 100% |###########=
###########################################################################=
######| ETA: =C2=A000:00:00<br>Loaded 2160 entries from dependency cache.<b=
r>WARNING: No recipes available for:<br>=C2=A0 /home/vuser/projects2/iwg20m=
/build/../meta-renesas/meta-rzg1/recipes-qt/qt5/qtmultimedia_git.bbappend<b=
r>=C2=A0 /home/vuser/projects2/iwg20m/build/../meta-renesas/meta-rzg1/recip=
es-qt/qt5/qtbase_git.bbappend<br>=C2=A0 /home/vuser/projects2/iwg20m/build/=
../meta-renesas/meta-rzg1/recipes-qt/qt5/qtwayland_git.bbappend<br>NOTE: Re=
solving any missing task queue dependencies<br><br>Build Configuration:<br>=
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.28.0&quot;<br>BUILD_SYS =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=
 =C2=A0 =3D &quot;Fedora-27&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;skrzg1m&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;=
2.0.1&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp neon ca=
llconvention-hard cortexa15&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;vfp-neon&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<=
br>meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;tmp:3b223f75eec1738fbc91=
3858e8e11c8305e3edcb&quot;<br>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;tmp:dc5634968b270dde250690609f0015f881db81f2&quot;<br>meta-yocto-=
bsp =C2=A0 =C2=A0=3D &quot;tmp:3b223f75eec1738fbc913858e8e11c8305e3edcb&quo=
t;<br>meta-rzg1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;yocto_2.0:a6c3c79635b=
d5ee309fc3c62d36b1707086d9136&quot;<br>meta-linaro-toolchain =3D &quot;tmp:=
12993e6bc8658ee37d303d8d59007f8dd9ab2b30&quot;<br><br>NOTE: Preparing RunQu=
eue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>=
ERROR: oe_runmake failed<br>ERROR: Function failed: do_compile (log file is=
 located at /home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automa=
ke-native/1.15-r0/temp/log.do_compile.30440)<br>ERROR: Logfile of failure s=
tored in: /home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake=
-native/1.15-r0/temp/log.do_compile.30440<br>Log data follows:<br>| DEBUG: =
Executing shell function do_compile<br>| NOTE: make -j 4<br><span style=3D"=
color:rgb(255,0,0)"><i><b>| : &amp;&amp; /usr/bin/mkdir -p doc &amp;&amp; {=
 PATH=3D&#39;/home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/autom=
ake-native/1.15-r0/build/t/wrap:&#39;$PATH &amp;&amp; export PATH; } &amp;&=
amp; /usr/bin/perl /home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux=
/automake-native/1.15-r0/automake-1.15/doc/help2man --output=3Ddoc/automake=
-1.15.1 automake-1.15<br>| help2man: can&#39;t get `--help&#39; info from a=
utomake-1.15<br>| Try `--no-discard-stderr&#39; if option outputs to stderr=
<br>| make: *** [Makefile:3687: doc/automake-1.15.1] Error 255<br>| ERROR: =
oe_runmake failed<br>| ERROR: Function failed: do_compile (log file is loca=
ted at /home/vuser/projects2/iwg20m/build/tmp/work/x86_64-linux/automake-na=
tive/1.15-r0/temp/log.do_compile.30440)<br>ERROR: Task 283 (virtual:native:=
/home/vuser/projects2/iwg20m/build/../poky/meta/recipes-devtools/automake/<=
a href=3D"http://automake_1.15.bb">automake_1.15.bb</a>, do_compile) failed=
 with exit code &#39;1&#39;</b></i></span><br>NOTE: Tasks Summary: Attempte=
d 699 tasks of which 697 didn&#39;t need to be rerun and 1 failed.<br>No cu=
rrently running tasks (527 of 2182)<br><br>Summary: 1 task failed:<br>=C2=
=A0 virtual:native:/home/vuser/projects2/iwg20m/build/../poky/meta/recipes-=
devtools/automake/<a href=3D"http://automake_1.15.bb">automake_1.15.bb</a>,=
 do_compile<br>Summary: There were 2 WARNING messages shown.<br>Summary: Th=
ere were 2 ERROR messages shown, returning a non-zero exit code.<br>[vuser@=
localhost conf]$<br>_______<br><br></div>My question is: does anybody know =
quick hack how to fix this error? Seems, that it fails while generating doc=
 files... How I can disable doc generation for this, maybe some generic way=
 for any package?<br><br></div>Thank you,<br></div>Zoran<br>_______<br><br>=
</div>

--001a114114fe9260b70567c69765--
