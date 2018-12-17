Return-Path: <sanjuchopracool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EFC6E00C5F; Mon, 17 Dec 2018 12:08:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sanjuchopracool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39AAAE00C10
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 12:08:28 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id n18-v6so12138697lji.7
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 12:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dsBC3seNqbUjr5xNwvN0Q+9SrMW40Jt2UuhMxNkHF1Y=;
	b=t2FGmwn1DK5S39DWRJfn0IQCEryiR8hhrofVZ56vt5EOfvpgqvScVbam3yAG4eYWnZ
	QJ0jgvNyLytNXXAmsdLlASInvKtBURIJE35R1PS20q10bYOYOZipxIairuuLbGbWeutl
	oeWA2ar2xcIHBqpyFFqjMssLX1rGTlneO/F3lgpUFf7sDnjUePkcV3NbT9y8KfaMbqYI
	TOaqm4ALiYQ+NSx0MDmSdgU4RjJ1+AstdO2KhLKyVaGir1S+yblGAuz12yO9Ur3J3bzb
	ewCkvMZwKnwNZBwJt8OASf/ooXpdxLG0DHUUl8zcGAb6yXLhpxo0c/b/0r/r2O4l3Vyw
	5sKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dsBC3seNqbUjr5xNwvN0Q+9SrMW40Jt2UuhMxNkHF1Y=;
	b=a3JyBwvmnS7brAc4UAda4aeKRY/pF2P730Zy0b+xOqOPPd19MfrTPzBHaQgfqHfsVh
	E43RzCp07qSETGdK0hutXyAPGQG+dNxieq6Xfh0Ppbrc/kUbxNqHYkijLNzXEAkiVL17
	s7jSx3ej01Q9rQwY9lv+Mz1nIccgMj2Q6nY+IHw31D+vyY6VG4CF2XvOQrRfMFJlPJrx
	/jw3iHs1tK5uOxZXaa8o9/Wv6JkRVljI+NfnwCTzYVVygDvs+zQqGwStRgk09OIuvX27
	sNteOm33LQ4QfFLCSgRhAUjhpJgdANGjYHwcYTtzWQMtElTCNFVlFaoaBC03zXnjs0F9
	LbvA==
X-Gm-Message-State: AA+aEWYw6qvjZQZeEj3pJama/uN8pbeAQBsakCtKhjVo1tRn5aTF6+W+
	OIjXjEUzBm1smIWaeiWnQSTbgZV3y7jmJXsBLD+xVAeo
X-Google-Smtp-Source: AFSGD/WIqMU+StEfFSxpWJQXvRqHbb34bKO0JoOdHFfh7g43+c3BxeXq0gDBQd7trqwJraI9pK/pUOmusu0hJxB5MFU=
X-Received: by 2002:a2e:98c9:: with SMTP id
	s9-v6mr7051589ljj.166.1545077306961; 
	Mon, 17 Dec 2018 12:08:26 -0800 (PST)
MIME-Version: 1.0
From: sanjay chopra <sanjuchopracool@gmail.com>
Date: Tue, 18 Dec 2018 01:38:16 +0530
Message-ID: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: build fails for qemux86
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
X-List-Received-Date: Mon, 17 Dec 2018 20:08:29 -0000
Content-Type: multipart/alternative; boundary="00000000000008375d057d3d5800"

--00000000000008375d057d3d5800
Content-Type: text/plain; charset="UTF-8"

Hi,

Whenever I try to build core-image-minimal , it fails in rootfs step.But I
am able to build core-image-sato.

With thud and master branch I am getting this issue. Sumo branch was
working fine.Please help me to figure this out.



bitbake core-image-minimal
Loading cache: 100%
|###############################################################################################################################################################################|
Time: 0:00:00
Loaded 1263 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.40.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.6"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "thud:d0e0a3d7a8218fbbf057a922c86bcdd2cf469ce9"

Initialising tasks: 100%
|##########################################################################################################################################################################|
Time: 0:00:01
Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% match, 99%
complete)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook
'update_font_cache' failed, details in
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035
ERROR: Task
(/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:
do_rootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

-- 

*RegardsSanjay*

--00000000000008375d057d3d5800
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-size:small;color:rgb(0,0,0)">Hi,</div><div class=3D"gmai=
l_default" style=3D"font-size:small;color:rgb(0,0,0)"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)">Whenever I tr=
y to build core-image-minimal , it fails in rootfs step.But I am able to bu=
ild core-image-sato.</div><div class=3D"gmail_default" style=3D"font-size:s=
mall;color:rgb(0,0,0)"><br></div><div class=3D"gmail_default" style=3D"font=
-size:small;color:rgb(0,0,0)">With thud and master branch I am getting this=
 issue. Sumo branch was working fine.Please help me to figure this out. <br=
></div><div class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,=
0)"><br></div><div class=3D"gmail_default" style=3D"font-size:small;color:r=
gb(0,0,0)"><br></div><div class=3D"gmail_default" style=3D"font-size:small;=
color:rgb(0,0,0)"><br></div></div><div dir=3D"ltr"><div style=3D"font-size:=
small;color:rgb(0,0,0)" class=3D"gmail_default">bitbake core-image-minimal<=
br>Loading cache: 100% |###################################################=
###########################################################################=
#################################################| Time: 0:00:00<br>Loaded =
1263 entries from dependency cache.<br>NOTE: Resolving any missing task que=
ue dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.40.0&quot;<br>BUILD_=
SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-linux&quot;<br>MACHINE=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;qemux86&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_V=
ERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;2.6&quot;<br>TUNE_FEAT=
URES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 i586&quot;<br>=
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
&quot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;thud:d0e0a3d7a8218fbbf057a922c86bc=
dd2cf469ce9&quot;<br><br>Initialising tasks: 100% |########################=
###########################################################################=
#######################################################################| Ti=
me: 0:00:01<br>Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% ma=
tch, 99% complete)<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing Run=
Queue Tasks<br>ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall =
intercept hook &#39;update_font_cache&#39; failed, details in /home/sanju/q=
emu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do=
_rootfs<br>ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_=
rootfs<br>ERROR: Logfile of failure stored in: /home/sanju/qemu_check/tmp/w=
ork/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035<b=
r>ERROR: Task (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image=
-minimal.bb:do_rootfs) failed with exit code &#39;1&#39;<br>NOTE: Tasks Sum=
mary: Attempted 2420 tasks of which 2419 didn&#39;t need to be rerun and 1 =
failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /mnt/DATA_PARTITION/poky/m=
eta/recipes-core/images/core-image-minimal.bb:do_rootfs<br>Summary: There w=
ere 2 ERROR messages shown, returning a non-zero exit code.<br></div><div s=
tyle=3D"font-size:small;color:rgb(0,0,0)" class=3D"gmail_default"></div><br=
>-- <br><div dir=3D"ltr" class=3D"gmail-m_5123466811654956225gmail_signatur=
e"><div dir=3D"ltr"><div><span style=3D"background-color:rgb(0,0,0)"><i sty=
le=3D"color:rgb(51,204,255)"><span style=3D"background-color:rgb(255,255,25=
5)"><span style=3D"color:rgb(0,0,0)">Regards<br>Sanjay</span><span></span><=
/span></i></span><br></div></div></div></div></div></div>

--00000000000008375d057d3d5800--
