Return-Path: <akarnil@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B375AC7EE30
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 10:50:33 +0000 (UTC)
Subject: Controlling host CPU utilization (avoiding building on e-cores)
To: yocto@lists.yoctoproject.org
From: akarnil@witekio.com
X-Originating-Location: Bristol, England, GB (86.31.129.214)
X-Originating-Platform: Linux Firefox 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Jul 2025 03:50:24 -0700
Message-ID: <HToV.1751453424466673150.avI7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HG3lnHzvayTVHnmO0Fuc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 10:50:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65590

--HG3lnHzvayTVHnmO0Fuc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I got an Intel 13700H with 6 High performance hyper-threaded cores (so 12 t=
hreads) and 8 efficiency atom cores, the 8 efficiency cores are useless but=
 I still want them enabled for background tasks, I am on Kernel 6.8 which s=
upports the scheduler for this processor

I've used
BB_NUMBER_THREADS=3D"12"
BB_NUMBER_PARSE_THREADS=3D"12"
PARALLEL_MAKE=3D"-j 12"
PARALLEL_MAKEINST=3D"-j 12"

in attempt to limit the number of threads available to bitbake in the hopes=
 of the scheduler putting everything on the High performance cores but I st=
ill see my entire machine maxed out even on the 8 e-cores

Is there something I am misunderstanding or is there another way to set the=
 affinity of the bitbake environment to just the first 12 threads.

I am probably overthinking this but it never hurts to ask

Thanks

--HG3lnHzvayTVHnmO0Fuc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone,</div>
<div>&nbsp;</div>
<div>I got an Intel 13700H with 6 High performance hyper-threaded cores (so=
 12 threads) and 8 efficiency atom cores, the 8 efficiency cores are useles=
s but I still want them enabled for background tasks, I am on Kernel 6.8 wh=
ich supports the scheduler for this processor</div>
<div>&nbsp;</div>
<div>I've used <br /><span style=3D"font-family: monospace;"><span style=3D=
"color: #000000; background-color: #ffffff;">BB_NUMBER_THREADS=3D"12" </spa=
n><br />BB_NUMBER_PARSE_THREADS=3D"12" <br />PARALLEL_MAKE=3D"-j 12" <br />=
PARALLEL_MAKEINST=3D"-j 12"<br /><br /></span>in attempt to limit the numbe=
r of threads available to bitbake in the hopes of the scheduler putting eve=
rything on the High performance cores but I still see my entire machine max=
ed out even on the 8 e-cores</div>
<div>&nbsp;</div>
<div>Is there something I am misunderstanding or is there another way to se=
t the affinity of the bitbake environment to just the first 12 threads.</di=
v>
<div>&nbsp;</div>
<div>I am probably overthinking this but it never hurts to ask</div>
<div>&nbsp;</div>
<div>Thanks</div>

--HG3lnHzvayTVHnmO0Fuc--

