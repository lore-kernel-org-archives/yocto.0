Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 975DAE00B60; Sat, 14 Nov 2015 06:27:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCF2E00B30
	for <yocto@yoctoproject.org>; Sat, 14 Nov 2015 06:27:02 -0800 (PST)
Received: by lffu14 with SMTP id u14so66600431lff.1
	for <yocto@yoctoproject.org>; Sat, 14 Nov 2015 06:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SLoXi80G1zAQK5LjaLpuCFPDqrEaFgiMWVOjB+fvH3c=;
	b=YJxfjcK3FAZqQ8NodF2MVAEtePbma58LbhRDRFpzpXJ/IEzNUIGDSUtjRm9ZpwNcya
	XHhMDafibyvv2V/w/UgZ5d/+XAuKbKqX4aVMN/EZLpDPLtYICM1ySt+URHsi0ChEIW35
	+lvg96F1h3VZBdYFfFHTkb0rM3hPtn8WwDlGjADlpgM+orhozcNM3qCyxllKecf+WwOo
	ld5AQiMo0LXqA9riiaNzYopSPDEQp4pYzuupjOgzlMtDJvxUJl2FgIrXrXtS2RTnGkAP
	xFadNRBnLxuDA7Io0LXdSnUtE7sx1wJznlrMmMsNVyEp8ofZ0rMtElTGbwWdSzjm5Ubi
	byLQ==
MIME-Version: 1.0
X-Received: by 10.25.43.149 with SMTP id r143mr12872980lfr.45.1447511221332;
	Sat, 14 Nov 2015 06:27:01 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Sat, 14 Nov 2015 06:27:01 -0800 (PST)
Date: Sat, 14 Nov 2015 14:27:01 +0000
Message-ID: <CABatt_ykrWtkrAv-CC-uUiHb4kOKf5B3UFgcuvDUvJ2MRbW1WA@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: SDK
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
X-List-Received-Date: Sat, 14 Nov 2015 14:27:06 -0000
Content-Type: multipart/alternative; boundary=001a1140294027f2bd052480f808

--001a1140294027f2bd052480f808
Content-Type: text/plain; charset=UTF-8

Hi,


I want to provide an SDK to the app developers that is a self contained
installation.  The ADT looked like just the thing except I don't want to
have to setup an ADT Repo.  I would like it to include:

The cross development toolchain.
The target sysroot to build against.  I would like them to be able to
dynamically link and statically link against everything in the Image.
They may want to develop kernel modules so I would want the kernel header
files etc in the target sysroot.
The Eclipse IDE Yocto plug-in or another way of using Eclipse to build and
debug for the target.
I Would also like to use things like the LTTNG and Valgrind integration in
Eclipse.
QEMU would be a nice to have and with integration into Eclipse.

I have my own distro and image files which aren't a million miles away from
poky and core-image-minimal :)

From what I've read I think the best thing for me to do is
bitbake my-image -cpopulate_sdk
which gives my an installer for the toolchain, target sysroot and qemu (I
think).
Then get them to install the Eclipse plugin by following the instructions
from
http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#adt-eclipse

Just want to check I'm on the right path and there's not another better way.

Many Thanks,
Martin.

--001a1140294027f2bd052480f808
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br><br></div><div>I want to provide an SDK to=
 the app developers that is a self contained installation.=C2=A0 The ADT lo=
oked like just the thing except I don&#39;t want to have to setup an ADT Re=
po.=C2=A0 I would like it to include:<br><br></div><div>The cross developme=
nt toolchain.<br></div><div>The target sysroot to build against.=C2=A0 I wo=
uld like them to be able to dynamically link and statically link against ev=
erything in the Image.<br></div><div>They may want to develop kernel module=
s so I would want the kernel header files etc in the target sysroot.<br></d=
iv><div>The Eclipse IDE Yocto plug-in or another way of using Eclipse to bu=
ild and debug for the target.=C2=A0 <br>I Would also like to use things lik=
e the LTTNG and Valgrind integration in Eclipse.<br></div><div>QEMU would b=
e a nice to have and with integration into Eclipse.<br><br></div><div>I hav=
e my own distro and image files which aren&#39;t a million miles away from =
poky and core-image-minimal :)<br><br></div><div>From what I&#39;ve read I =
think the best thing for me to do is<br></div><div>bitbake my-image -cpopul=
ate_sdk<br></div><div>which gives my an installer for the toolchain, target=
 sysroot and qemu (I think).<br></div><div>Then get them to install the Ecl=
ipse plugin by following the instructions from<br><a href=3D"http://www.yoc=
toproject.org/docs/1.8/dev-manual/dev-manual.html#adt-eclipse">http://www.y=
octoproject.org/docs/1.8/dev-manual/dev-manual.html#adt-eclipse</a><br><br>=
</div><div>Just want to check I&#39;m on the right path and there&#39;s not=
 another better way.<br><br></div><div>Many Thanks,<br></div><div>Martin.<b=
r></div><div><br><br></div></div>

--001a1140294027f2bd052480f808--
