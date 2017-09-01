Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0473E00C95; Fri,  1 Sep 2017 06:54:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1172BE00B1B
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 06:54:37 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id j46so782080uag.5
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 06:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OGEcs9P1xgeZBuMh8YRuJI9htzEgSCkV6mf7RrHybCE=;
	b=qkt44lUvPlJyx1/nN46O6EHSpvOwqNfFodK47yZg/crUTL/dapPB+FNngYzoOjXHJD
	L8C2Ili11O4U6E+IbcG3+XtAolJGW0fcu86lGR7XMgzZNHRfccKvCX9RpFK3DCKqLRnT
	UsNRS9ico32ymJryAYfAJCv3SMpxlD1oSbId1XFLxtRqok9LbouWQd8DDGlLrt4yXgUN
	Xrjo0Mr1AZoey0RuN4mQ239gCbokK4YvGMN8eNpLXwjGDWlg1IQ74DGLRKerHqdkMqGM
	UfhCyC9fBu3PfcXrvZPjOllQh/tXRKZ3UcOe7N0/PlGttPz0Sd0qmSt13O4wCqzDGIAD
	LljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OGEcs9P1xgeZBuMh8YRuJI9htzEgSCkV6mf7RrHybCE=;
	b=a5+Q61qPVi4pI2bwgj22qBBY/ebHHQE9cBMn6IrBW5DIw48iQr+TmguWiKeE+Uq2tK
	OpGX1Wgwmc1Y7BnLruEILUbbLJ52c3Fh5sVXy2jpKtcPTQE3aa35k+Wnqya5wtCkHpUE
	fUR1P5qeeqPYjpzI4mMAmDUVFQDKsSQv29xsOz9ImLo0fboBlaAIzrr54Suk7gL3fYYI
	GsBVrfqLkMuuzejUFW+aVpiO2bGGYgvUheBDc74GrFJBCiLHXmvH+7NpZS+IRTW5pCTh
	uwuo2uZH8uLzIHCznDiRisbOlc01GayN+wy05MiYJTQ7CC79mXso6y6GcGV4yMi8zFAJ
	VeNw==
X-Gm-Message-State: AHPjjUhEfX/A8rbGoZlLV9JqS03kWZ39Yf2Yx0HgODgQP+KpAaeOja09
	4rC0rx4YvfcM9DTdZMg/lWLLwVwioVQW
X-Google-Smtp-Source: ADKCNb4l36y96d14CjVBnopL/RCFSuu37gHuVzkh+VPf+DO63rC0iYwIi9QcSFCgP2FhCfw4LFOOnWy8zV7ktGFXp/w=
X-Received: by 10.176.2.18 with SMTP id 18mr1283265uas.16.1504274076723; Fri,
	01 Sep 2017 06:54:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.93.42 with HTTP; Fri, 1 Sep 2017 06:54:36 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 1 Sep 2017 15:54:36 +0200
Message-ID: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Fri, 01 Sep 2017 13:54:41 -0000
Content-Type: multipart/alternative; boundary="001a113edb24fcf08d0558211939"

--001a113edb24fcf08d0558211939
Content-Type: text/plain; charset="UTF-8"

Hi!

I was trying to share sstate between different hosts, but the consumer
build system seems to be unable to use re-use any sstate object. My
scenario is setup as follows:

* The cache was populated by a pristine qemux86 core-image-minimal build of
morty. This was done in a crops/poky container (running in docker on Mac)
* The cache was then served via HTTP
* The second host is a VM running Ubuntu 16.04 where I set SSTATE_MIRRORS
to point to the hosted sstate cache like this:

SSTATE_MIRRORS ?= "\
file://.* http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=PATH"

* I checked with curl that the VM can successfully get sstate objects from
the server.
* Then I start a new build (same metadata revisions, default configuration
for core-image-minimal) and each and every task run from scratch with no
sstate cache re-use.

Here are the two configurations from bitbake and /etc/lsb-release files:

On the container used to seed sstate cache:

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "2.2.2"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"

$ cat /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04.2 LTS"

On the VM that should consume the cache:

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-16.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "2.2.2"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"

$ cat /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04.3 LTS"


To me, the only differing bit that in my understanding can lead to sstate
cache objects invalidation is the value of NATIVELSBSTRING which is
"universal" inside the container and "Ubuntu-16.04". This sounds strange to
me, since both underlying systems are Ubuntu 16.04 (although not exactly
the same dot release) as confirmed by /etc/lsb-release contents.

Is the different NATIVELSBSTRING the root cause for everything being
re-built? If so, what's causing them being different in the end and what
does "universal" exactly mean (to me it looks like a more generic and
incluse term than any distro label, so I'm confused...)?

--001a113edb24fcf08d0558211939
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>I was trying to share sstate betwee=
n different hosts, but the consumer build system seems to be unable to use =
re-use any sstate object. My scenario is setup as follows:</div><div><br></=
div><div>* The cache was populated by a pristine qemux86 core-image-minimal=
 build of morty. This was done in a crops/poky container (running in docker=
 on Mac)</div><div>* The cache was then served via HTTP</div><div>* The sec=
ond host is a VM running Ubuntu 16.04 where I set SSTATE_MIRRORS to point t=
o the hosted sstate cache like this:</div><div><br></div><div><div>SSTATE_M=
IRRORS ?=3D &quot;\</div><div>file://.* <a href=3D"http://192.168.33.1:8000=
/sstate-cache/PATH;downloadfilename=3DPATH">http://192.168.33.1:8000/sstate=
-cache/PATH;downloadfilename=3DPATH</a>&quot;</div></div><div><br></div><di=
v>* I checked with curl that the VM can successfully get sstate objects fro=
m the server.</div><div>* Then I start a new build (same metadata revisions=
, default configuration for core-image-minimal) and each and every task run=
 from scratch with no sstate cache re-use.</div><div><br></div><div>Here ar=
e the two configurations from bitbake and /etc/lsb-release files:</div><div=
><br></div><div>On the container used to seed sstate cache:</div><div><br><=
/div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =3D &q=
uot;universal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;i586-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;qemux86&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D=
 &quot;2.2.2&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;m32 i586=
&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</di=
v><div>meta</div><div>meta-poky</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &=
quot;morty:2a70e84643381eca0e7bf7928d4a3d56f9651128&quot;</div></div><div><=
br></div><div><div>$ cat /etc/lsb-release</div><div>DISTRIB_ID=3DUbuntu</di=
v><div>DISTRIB_RELEASE=3D16.04</div><div>DISTRIB_CODENAME=3Dxenial</div><di=
v>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.2 LTS&quot;</div></div><div><br>=
</div><div>On the VM that should consume the cache:</div><div><br></div><di=
v><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =3D &quot;Ubu=
ntu-16.04&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i=
586-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;qemux86&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot=
;2.2.2&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;=
</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div=
>meta</div><div>meta-poky</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;m=
orty:2a70e84643381eca0e7bf7928d4a3d56f9651128&quot;</div></div><div><br></d=
iv><div>$ cat /etc/lsb-release<br></div><div><div>DISTRIB_ID=3DUbuntu</div>=
<div>DISTRIB_RELEASE=3D16.04</div><div>DISTRIB_CODENAME=3Dxenial</div><div>=
DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.3 LTS&quot;</div></div><div><br></=
div><div><br></div><div>To me, the only differing bit that in my understand=
ing can lead to sstate cache objects invalidation is the value of NATIVELSB=
STRING which is &quot;universal&quot; inside the container and &quot;Ubuntu=
-16.04&quot;. This sounds strange to me, since both underlying systems are =
Ubuntu 16.04 (although not exactly the same dot release) as confirmed by /e=
tc/lsb-release contents.</div><div><br></div><div>Is the different NATIVELS=
BSTRING the root cause for everything being re-built? If so, what&#39;s cau=
sing them being different in the end and what does &quot;universal&quot; ex=
actly mean (to me it looks like a more generic and incluse term than any di=
stro label, so I&#39;m confused...)?</div><div><br></div></div>

--001a113edb24fcf08d0558211939--
