Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CD73E00D13; Tue, 26 Sep 2017 05:15:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.175 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD157E00D10
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 05:15:41 -0700 (PDT)
Received: by mail-wr0-f175.google.com with SMTP id 108so13070753wra.5
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 05:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=A8jA99BsVxTqRagmetPk8XZnSNgh74VVfYonDmFji6A=;
	b=T8rV7VxmRCrb3cs4unxggK7mPMRcoh3bKXwNyXJfgMFEFw3drZ3qZG+jfVJadumDoF
	zMbNlZ0cXeHddqCBbpHwIdxR4Fw78Bel1lmOy7FP4hIxYMXaGSxbUopUCFLdjqhxT49B
	qvtmODJVXp1xkeD1mE+refe8xia5VnOMpFyp1u7pn3sJw5ppAw5fbJpEpkwrj154oHZQ
	KK7z0TB0YoYutOxsWPqgDJDubemgZUDWEiA1fCUaC+xbL28MKFUVIyephk/U2YSZ4hSS
	ZUyB+/v2vvAiROzQ3Zx+cfY1IVNF5klYUeV9VsU9dsyMK8TjwfODC1vMoAKe4l9Mmhde
	2hoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A8jA99BsVxTqRagmetPk8XZnSNgh74VVfYonDmFji6A=;
	b=g4XZwcwlQysPQj6NlOEAI5JrY8k6PsoaZTFMOFA7K8hIfdcT+Q0pANkKGDUDLJvH3L
	18/2tgsOt/gVBXfiW0LpJdgE+mMnRNfV+6fKddN3y483Pd3INjIjWDLXmsG+jm2nHxO+
	8muqAYCPQPw9WtImoQvj1lelTNLCiQp3gqDWy6uR9WpNXqXoNInZjxb2b/lmSU3yngYu
	QB9h/ezeR6ZHpKWycmgZBmWNRqQVCeiwwS43wbH1lFvBBpfziKb8+gsykc1CsU9Qb4gU
	CEuIzKS3Tqlpisu2HTO5kqTI+BK4rnJ7FR1ppy4+ubLGZD6G9z8Utmd34aR9bpPfHE6V
	EdVw==
X-Gm-Message-State: AHPjjUhwx93JD1sqD9sLaYQ/SitV2iQx1rKCQAfLlbVe/NGWlhGamuk7
	gOeQvmtubWzPux+rpg39POAYBwQhyZKQlS4SPO9XQQ==
X-Google-Smtp-Source: AOwi7QAOxsGkxNs1MJyt7EaQa6pt76Mf5NoxwoRbH5lxuxftgDQvChfM5JzwIv+4QQKO0+98bWYYntsFTZJRKzymzhs=
X-Received: by 10.223.165.5 with SMTP id i5mr343705wrb.87.1506428140055; Tue,
	26 Sep 2017 05:15:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.228.213 with HTTP; Tue, 26 Sep 2017 05:15:38 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 26 Sep 2017 14:15:38 +0200
Message-ID: <CAGAf8LzkrzSzg=wO4==jioEDoRZRPLuhe+iEnQW+Opnxyy6YmA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Kernel change in YOCTO
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
X-List-Received-Date: Tue, 26 Sep 2017 12:15:43 -0000
Content-Type: multipart/alternative; boundary="f403045f1c262aef02055a16a28e"

--f403045f1c262aef02055a16a28e
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a bit dummy question. I have older Pyro distro, compiled for
qemux86_64. It has there kernel 4.10.17, and there are two interesting
directories, where one can find definitions of the kernels:

[user@localhost poky]$ find . -name *.bbappend
...
./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend <<===
Introduced later
./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
...

And the .bb scripts are located in:
./meta/recipes-kernel/linux/linux-yocto-tiny_4.1.bb
./meta/recipes-kernel/linux/linux-dummy.bb
./meta/recipes-kernel/linux/linux-yocto_4.9.bb
./meta/recipes-kernel/linux/linux-yocto_4.1.bb
./meta/recipes-kernel/linux/linux-yocto-rt_4.1.bb
./meta/recipes-kernel/linux/linux-yocto-dev.bb
./meta/recipes-kernel/linux/linux-yocto-rt_4.12.bb
./meta/recipes-kernel/linux/linux-generic_4.13.3.bb <<=== Introduced later
(git HEAD checkout)
./meta/recipes-kernel/linux/linux-yocto-tiny_4.9.bb
./meta/recipes-kernel/linux/linux-yocto_4.10.bb
./meta/recipes-kernel/linux/linux-yocto-tiny_4.4.bb
./meta/recipes-kernel/linux/linux-yocto-rt_4.9.bb
./meta/recipes-kernel/linux/linux-yocto_4.4.bb
./meta/recipes-kernel/linux/linux-yocto_4.12.bb <<=== Introduced later
./meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb
./meta/recipes-kernel/linux/kernel-devsrc.bb

Whatever I did (introduced kernel_4.12.12 with the same set of the scripts
from master - different git headers), I was not able to switch kernel while
building qemux86-64!?

Even at the end (in desperation to understand from where dependencies are
coming) I deleted .git in poky/, and deleted everything in build/, except
conf/bbappend.conf and conf/local.conf?!

But still, kernel 4.10.17 is always taken... No idea why?

user@localhost build]$ bitbake -c fetchall core-image-sato
WARNING: Host distribution "fedora-26" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100%
|#################################################################################################################################################################|
Time: 0:00:01
Loaded 1300 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "m64 core2"
TARGET_FPU        = ""
meta
meta-poky
*meta-yocto-bsp    = "<unknown>:<unknown>" <<=== .git deleted prior
fetching*

Initialising tasks: 100%
|############################################################################################################################################################|
Time: 0:00:18
NOTE: Executing RunQueue Tasks

Summary: There were 11 WARNING messages shown.
[user@localhost build]$
_______

Questions:
[1] Should I blindly follow:
http://www.yoctoproject.org/docs/2.3.2/kernel-dev/kernel-
dev.html#creating-and-preparing-a-layer
Where it is written that new layer must be introduced for the new kernel,
also (after layer and scripts creation) placed in
.../build/conf/bbappend.conf?

[2] If [1] is a must, where I can read about reasons why this requirement
exists?? Maybe BSP and kernel have some invisible dependencies??

[3] Where are these invisible kernel dependencies? So is there something
(?) kernel depends on, although I always believed that everything else is
dependent on kernel (kernel is HW dependend via device drivers), since
kernel lives on its own (except some BSP data - kernel command line passed
to it at the boot time, which should have no influence on dependency of any
kind between kernel boot-loader and kernel itself)?!

Thank you,
Zoran

--f403045f1c262aef02055a16a28e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div>I have a bit dummy question.=
 I have older Pyro distro, compiled for qemux86_64. It has there kernel 4.1=
0.17, and there are two interesting directories, where one can find definit=
ions of the kernels:</div><div><br></div><div>[user@localhost poky]$ find .=
 -name *.bbappend<br>...<br>./meta-yocto-bsp/recipes-kernel/linux/linux-yoc=
to_4.1.bbappend<br>./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.b=
bappend<br>./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend =
&lt;&lt;=3D=3D=3D Introduced later<br>./meta-yocto-bsp/recipes-kernel/linux=
/linux-yocto_4.4.bbappend<br>./meta-yocto-bsp/recipes-kernel/linux/linux-yo=
cto_4.9.bbappend<br>...</div><div><br></div><div>And the .bb scripts are lo=
cated in:</div><div>./meta/recipes-kernel/linux/<a href=3D"http://linux-yoc=
to-tiny_4.1.bb">linux-yocto-tiny_4.1.bb</a><br>./meta/recipes-kernel/linux/=
<a href=3D"http://linux-dummy.bb">linux-dummy.bb</a><br>./meta/recipes-kern=
el/linux/<a href=3D"http://linux-yocto_4.9.bb">linux-yocto_4.9.bb</a><br>./=
meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_4.1.bb">linux-yocto=
_4.1.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-rt=
_4.1.bb">linux-yocto-rt_4.1.bb</a><br>./meta/recipes-kernel/linux/<a href=
=3D"http://linux-yocto-dev.bb">linux-yocto-dev.bb</a><br>./meta/recipes-ker=
nel/linux/<a href=3D"http://linux-yocto-rt_4.12.bb">linux-yocto-rt_4.12.bb<=
/a> <br>./meta/recipes-kernel/linux/<a href=3D"http://linux-generic_4.13.3.=
bb">linux-generic_4.13.3.bb</a> &lt;&lt;=3D=3D=3D Introduced later (git HEA=
D checkout)<br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-ti=
ny_4.9.bb">linux-yocto-tiny_4.9.bb</a><br>./meta/recipes-kernel/linux/<a hr=
ef=3D"http://linux-yocto_4.10.bb">linux-yocto_4.10.bb</a><br>./meta/recipes=
-kernel/linux/<a href=3D"http://linux-yocto-tiny_4.4.bb">linux-yocto-tiny_4=
.4.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-rt_4=
.9.bb">linux-yocto-rt_4.9.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"=
http://linux-yocto_4.4.bb">linux-yocto_4.4.bb</a><br>./meta/recipes-kernel/=
linux/<a href=3D"http://linux-yocto_4.12.bb">linux-yocto_4.12.bb</a> &lt;&l=
t;=3D=3D=3D Introduced later<br>./meta/recipes-kernel/linux/<a href=3D"http=
://linux-yocto-rt_4.4.bb">linux-yocto-rt_4.4.bb</a><br>./meta/recipes-kerne=
l/linux/<a href=3D"http://kernel-devsrc.bb">kernel-devsrc.bb</a><br><br></d=
iv><div>Whatever I did (introduced kernel_4.12.12 with the same set of the =
scripts from master - different git headers), I was not able to switch kern=
el while building qemux86-64!?</div><div><br></div><div>Even at the end (in=
 desperation to understand from where dependencies are coming) I deleted .g=
it in poky/, and deleted everything in build/, except conf/bbappend.conf an=
d conf/local.conf?!</div><div><br></div><div>But still, kernel 4.10.17 is a=
lways taken... No idea why?<br></div><div><br>user@localhost build]$ bitbak=
e -c fetchall core-image-sato<br>WARNING: Host distribution &quot;fedora-26=
&quot; has not been validated with this version of the build system; you ma=
y possibly experience unexpected failures. It is recommended that you use a=
 tested distribution.<br>Loading cache: 100% |#############################=
###########################################################################=
#########################################################| Time: 0:00:01<br=
>Loaded 1300 entries from dependency cache.<br>NOTE: Resolving any missing =
task queue dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.34.0&quot;<br>BUILD_SYS=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>=
NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>M=
ACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;qemux86-64&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=
=A0 =3D &quot;2.3.1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;m64 core2&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 <br><span style=3D"color:rgb(255,0,0)"><b>meta-yocto-bsp=C2=
=A0=C2=A0=C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot; &lt;&lt;=3D=
=3D=3D .git deleted prior fetching</b></span><br><br>Initialising tasks: 10=
0% |#######################################################################=
###########################################################################=
##########| Time: 0:00:18<br>NOTE: Executing RunQueue Tasks<br><br>Summary:=
 There were 11 WARNING messages shown.<br>[user@localhost build]$=C2=A0</di=
v><div>_______</div><div><br></div><div>Questions:</div><div>[1] Should I b=
lindly follow: <br><div id=3D"gmail-:ru" class=3D"gmail-a3s gmail-aXjCH gma=
il-m15ebdf4efe5eff73"><a href=3D"http://www.yoctoproject.org/docs/2.3.2/ker=
nel-dev/kernel-dev.html#creating-and-preparing-a-layer" target=3D"_blank"><=
font color=3D"blue" size=3D"2" face=3D"sans-serif">http://www.yoctoproject.=
org/<wbr>docs/2.3.2/kernel-dev/kernel-<wbr>dev.html#creating-and-<wbr>prepa=
ring-a-layer</font></a></div><div class=3D"gmail-a3s gmail-aXjCH gmail-m15e=
bdf4efe5eff73"><font size=3D"2" face=3D"sans-serif">Where it is written tha=
t new layer must be introduced for the new kernel, also (after layer and sc=
ripts creation) placed in .../build/conf/bbappend.conf?</font></div><div cl=
ass=3D"gmail-a3s gmail-aXjCH gmail-m15ebdf4efe5eff73"><font size=3D"2" face=
=3D"sans-serif"><br></font></div><div class=3D"gmail-a3s gmail-aXjCH gmail-=
m15ebdf4efe5eff73"><font size=3D"2" face=3D"sans-serif">[2] If [1] is a mus=
t, where I can read about reasons why this requirement exists?? Maybe BSP a=
nd kernel have some invisible dependencies??<br></font></div><div class=3D"=
gmail-a3s gmail-aXjCH gmail-m15ebdf4efe5eff73"><font size=3D"2" face=3D"san=
s-serif"><br></font></div><div class=3D"gmail-a3s gmail-aXjCH gmail-m15ebdf=
4efe5eff73"><font size=3D"2" face=3D"sans-serif">[3] Where are these invisi=
ble kernel dependencies? So is there something (?) kernel depends on, altho=
ugh I always believed that everything else is dependent on kernel (kernel i=
s HW dependend via device drivers), since kernel lives on its own (except s=
ome BSP data - kernel command line passed to it at the boot time, which sho=
uld have no influence on dependency of any kind between kernel boot-loader =
and kernel itself)?!<br></font></div><div class=3D"gmail-a3s gmail-aXjCH gm=
ail-m15ebdf4efe5eff73"><font size=3D"2" face=3D"sans-serif"><br></font></di=
v><div class=3D"gmail-a3s gmail-aXjCH gmail-m15ebdf4efe5eff73"><font size=
=3D"2" face=3D"sans-serif">Thank you,</font></div><div class=3D"gmail-a3s g=
mail-aXjCH gmail-m15ebdf4efe5eff73"><font size=3D"2" face=3D"sans-serif">Zo=
ran</font></div><div class=3D"gmail-a3s gmail-aXjCH gmail-m15ebdf4efe5eff73=
"><font size=3D"2" face=3D"sans-serif"><br>
</font></div></div></div>

--f403045f1c262aef02055a16a28e--
