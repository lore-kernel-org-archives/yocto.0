Return-Path: <dan.florincristian@gmail.com>
Received: from mail-ia0-f182.google.com (mail-ia0-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0212AE01469
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 21:21:01 -0700 (PDT)
Received: by mail-ia0-f182.google.com with SMTP id u8so1071298iag.13
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 21:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=BX1ukZb6kNxun83nS1YBgdVkEnr8jeA4Vk1Z2ABh7q4=;
	b=uCgNCyLzy0Di8fWWyaPis5QYJdh4c1CosSy21XrHPP+L3aJUmNsqaV/7IoxJJSH98Z
	LXQIqGErf5ea7b5Hw2aRd8uVKqxDmcRNEy3zaBhlEmNdVG9oybZTGSc+Oa7VS2Pql2pM
	rgELLcG0WTvZcge8Hk82bScqawc56RgSN+6wuX7vFMnHLErvjfKvG8QkoLQRIajz6TCM
	dOypjsJ1Cen0hJCunheYCNiNTeR3zWvpi2ijJd6pbgFyNkmYy56WL2YREw4EaI1xO1QR
	KixcSehRc/6it1RVBOw+jLBR4kRrVoET8GTo6WZUJ8slAJTPv+ddGFvpNTSAjM9riDO3
	Tj8w==
MIME-Version: 1.0
X-Received: by 10.50.108.235 with SMTP id hn11mr3109369igb.107.1363753261407; 
	Tue, 19 Mar 2013 21:21:01 -0700 (PDT)
Received: by 10.64.20.6 with HTTP; Tue, 19 Mar 2013 21:21:01 -0700 (PDT)
Date: Wed, 20 Mar 2013 06:21:01 +0200
Message-ID: <CABzOdpRRuxcbZt2DpC4hG2dmzLTELkfmRJ-bQ8=+L2CCLs7=Ww@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: Hob and bitbake problem!
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
X-List-Received-Date: Wed, 20 Mar 2013 04:21:02 -0000
Content-Type: multipart/alternative; boundary=f46d0402aeefb52a2f04d8538c9d

--f46d0402aeefb52a2f04d8538c9d
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I was trying to make a new image with Hob, a core-image-sato-sdk with the
meta-intel layer....so, i've added the path for the layer in and changed
the machine name to "emenlow", so i kicked the build image procces....after
some time, this happend:

Hob cannot build your image
   Package qt4-x11-free-4.8.1-r47.1
   Task: do_compile
      Function Failed: do_compile (see
/home/user/poky-danny-8.0/build/tmp/work/core2-poky-linux/qt4-x11-free-4.8.1-r47.1/temp/log.do_compile.28027
for furter information

Befora that o i was trying to build the same image buit with the bitbake
command instead, after a while the procces ended with a similar error:

ERROR: Function failed: do_compile (see
/home/cristi/poky-danny-8.0/build/tmp/work/core2-poky-linux/pango-1.30.0-r1/temp/log.do_compile.1582
for further information)
ERROR: Logfile of failure stored in:
/home/cristi/poky-danny-8.0/build/tmp/work/core2-poky-linux/pango-1.30.0-r1/temp/log.do_compile.1582

Please can someone tell me what's going on?
Best regards,
Cristian

--f46d0402aeefb52a2f04d8538c9d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,=A0<div>I was trying to make a new image with Hob, a core-image-sato-=
sdk with the meta-intel layer....so, i&#39;ve added the path for the layer =
in and changed the machine name to &quot;emenlow&quot;, so i kicked the bui=
ld image procces....after some time, this happend:</div>
<div><br></div><div>Hob cannot build your image</div><div>=A0 =A0Package qt=
4-x11-free-4.8.1-r47.1</div><div>=A0 =A0Task: do_compile</div><div>=A0 =A0 =
=A0 Function Failed: do_compile (see /home/user/poky-danny-8.0/build/tmp/wo=
rk/core2-poky-linux/qt4-x11-free-4.8.1-r47.1/temp/log.do_compile.28027 for =
furter information</div>
<div><br></div><div>Befora that o i was trying to build the same image buit=
 with the bitbake command instead, after a while the procces ended with a s=
imilar error:</div><div><br></div><div><div>ERROR: Function failed: do_comp=
ile (see /home/cristi/poky-danny-8.0/build/tmp/work/core2-poky-linux/pango-=
1.30.0-r1/temp/log.do_compile.1582 for further information)</div>
<div>ERROR: Logfile of failure stored in: /home/cristi/poky-danny-8.0/build=
/tmp/work/core2-poky-linux/pango-1.30.0-r1/temp/log.do_compile.1582</div></=
div><div><br></div><div>Please can someone tell me what&#39;s going on?</di=
v>
<div>Best regards,=A0</div><div>Cristian</div><div><br></div>

--f46d0402aeefb52a2f04d8538c9d--
