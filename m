Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1905BE007D0; Sat, 11 Apr 2015 08:45:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3AECE005A0
	for <yocto@yoctoproject.org>; Sat, 11 Apr 2015 08:45:50 -0700 (PDT)
Received: by igbqf9 with SMTP id qf9so18001762igb.1
	for <yocto@yoctoproject.org>; Sat, 11 Apr 2015 08:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SkfoKMHgQ7t4j9hcRTrdtvGnMMhNxtPZXgYtvpFIvz0=;
	b=sCxxxVyO33+4f7zRoYek6jpt18+0TgmrYejbc07+AzO/0byI1ihH700TMHzxymlM63
	nHG6/S69keDtDeo2zYLBCKKsiRaTF/rkrGP6iiY6P+08bAZVw9ycFS0EiIJZhcEeqA+R
	ubH25nFi3fyih47TV5yktf2iU+Qdm728cZ+0JeMxr5xarpn+O4egMBzgQIfLzjW0e4kc
	08eGEWyHImz1EjEBZXNxJROLlKHjyu/oIaYTVBrLkiqGbzLdwdb4CNS83H9odvKWFn7Q
	iXp3HMQJwz8egoVwdbLdx5rZlJSvvVQ2jDkJZ95WvIBPvxBsIXUi4g0Ss+wf8fSB2wm6
	104w==
MIME-Version: 1.0
X-Received: by 10.50.111.10 with SMTP id ie10mr5455539igb.15.1428767149635;
	Sat, 11 Apr 2015 08:45:49 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Sat, 11 Apr 2015 08:45:49 -0700 (PDT)
Date: Sat, 11 Apr 2015 10:45:49 -0500
Message-ID: <CAK5mtex2DWeHiDc3mHtQDnUcVSrHyUcjb-ON0KdKRFgV5CEcVQ@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: How to export variable in bitbake build for MPICH
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
X-List-Received-Date: Sat, 11 Apr 2015 15:45:53 -0000
Content-Type: multipart/alternative; boundary=089e0149c0546bbf51051374c680

--089e0149c0546bbf51051374c680
Content-Type: text/plain; charset=UTF-8

HI MPICH build is facing a problem due to the fact that the configure has a
variable call BASH_SHELL the which set the bash shell of the developer
computer. However if the developer has /usr/bin/bash  the configure set
this for the rest of compilation ( you can check this in config.log). Due
to the fact that Yocto just has /bin/bash the build of any image that
includes mpich fails.

ERROR: Unable to install packages. Command
'/home/vrodri3/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart --quiet
--data-dir=/home/vrodri3/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/var/lib/smart
install -y mpich@i586 gcc@i586 run-postinsts@all
packagegroup-core-boot@qemux86 bash@i586' returned 1:
error: Can't install mpich-3.1.1-r0@i586: no package provides /usr/bin/bash


I tested on the mpich src and the problem is fixed with a simple :

export BASH_SHELL=/bin/bash

( configure does not have an option for this )

I have 2 points :

1) When I do the same export and then bitbake os-core-image-minimal the
build still fails , Why is that happening?

2) What is the best way to fix this ? How can I set the environment
variable on the recipe ? Should I patch the Configure ?

Thanks a lot and regards

Victor Rodriguez

--089e0149c0546bbf51051374c680
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>HI MPICH build is facing a problem due to the fa=
ct that the configure has a variable call BASH_SHELL the which set the bash=
 shell of the developer computer. However if the developer has /usr/bin/bas=
h=C2=A0 the configure set this for the rest of compilation ( you can check =
this in config.log). Due to the fact that Yocto just has /bin/bash the buil=
d of any image that includes mpich fails. <br><br>ERROR: Unable to install =
packages. Command &#39;/home/vrodri3/poky/build/tmp/sysroots/x86_64-linux/u=
sr/bin/smart --quiet --data-dir=3D/home/vrodri3/poky/build/tmp/work/qemux86=
-poky-linux/core-image-minimal/1.0-r0/rootfs/var/lib/smart install -y mpich=
@i586 gcc@i586 run-postinsts@all packagegroup-core-boot@qemux86 bash@i586&#=
39; returned 1:<br>error: Can&#39;t install mpich-3.1.1-r0@i586: no package=
 provides /usr/bin/bash<br><br><br></div>I tested on the mpich src and the =
problem is fixed with a simple : <br><br>export BASH_SHELL=3D/bin/bash<br><=
br></div><div>( configure does not have an option for this ) <br></div><div=
><br></div><div>I have 2 points : <br><br></div><div>1) When I do the same =
export and then bitbake os-core-image-minimal the build still fails , Why i=
s that happening?<br><br></div><div>2) What is the best way to fix this ? H=
ow can I set the environment variable on the recipe ? Should I patch the Co=
nfigure ?=C2=A0 <br><br></div><div>Thanks a lot and regards<br><br></div><d=
iv>Victor Rodriguez<br><br></div></div>

--089e0149c0546bbf51051374c680--
