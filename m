Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399C3E015DA
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 02:08:58 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pa12so4607318veb.11
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 02:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=giyWy/h60ppYs8vVuBiEp3YwpR9XSYMe0SKG4/HmKkk=;
	b=kyuMjuCqXujRmHRBuGBWVEBu1yQEd4qaroxV4wULt+TNzABpdnL+ih2Ws7D7EECAQL
	FHOzREhkPEtTP1NZF6FyP3fNRwlCaQsxCOXY+dPHiXqLldqnBzCTuZTDw7Z8kr2InrRd
	Ka/Wc8te4QWvaHWiIry+dfaO2D6nYe3ZalpV5NnL1JuXU8pf0AIe0kpqjE1o7opsTn6O
	adt69j8AmPx/Ky0tLopqSbJFJnpddrV14Afp1/7jXVS/LyIdpBYxSJe95nkQhugYyMfk
	BNYdKZToa081RUav7tY/3NxYeMtk64VcdfWnu2uw0AdgBiLI1ypxrmc4X7Y+uG/Dgu8H
	nglQ==
X-Received: by 10.52.117.134 with SMTP id ke6mr4245404vdb.66.1370855337261;
	Mon, 10 Jun 2013 02:08:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.24.129 with HTTP; Mon, 10 Jun 2013 02:08:37 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
References: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 10 Jun 2013 12:08:37 +0300
Message-ID: <CAK18fxGaNCVtcugSPshTSBN7gSn+b1qn6FYRY2U+Yy13sk2V0g@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQkCnNNAQd8rCr9OJvqS4zsIC6NIfNtT9ye2OjbTsdNyrvdo4WVZf2SU855NvDM6/a8A11au
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Patches from recent discussions
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
X-List-Received-Date: Mon, 10 Jun 2013 09:08:58 -0000
Content-Type: multipart/alternative; boundary=bcaec547c7f96a8df104dec92128

--bcaec547c7f96a8df104dec92128
Content-Type: text/plain; charset=ISO-8859-1

Merged. Thanks for you contribution and sorry for being late.


On Wed, May 22, 2013 at 12:06 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> I've made recent comments on the Raspberry Pi firmware and on the first run
> script included in meta-raspberrypi. As I've not really got a definitive
> answer
> on either I thought I'd send in patches for review.
>
> The patch for bootfiles and vc-graphics doesn't reduce the amount we need
> to
> fetch but it does make it easier to override the firmware source to a local
> clone or an archive. If there's no need for vc-graphics any more and the
> userland recipe satisfies everyone's use cases maybe this is redundant and
> vc-graphics should just be removed?
>
> Paul Barker (2):
>   rpi-first-run-wizard: remove
>   bootfiles, vc-graphics: consolidate SRC_URI and S variables
>
>  recipes-bcm/bootfiles/bcm2835-bootfiles.bb         |   6 +-
>  recipes-bcm/common/firmware.inc                    |   3 +
>  recipes-bcm/vc-graphics/vc-graphics.inc            |   9 +-
>  recipes-extra/startup/rpi-first-run-wizard.bb      |  37 ---
>  recipes-extra/startup/rpi-first-run-wizard/LICENSE | 339
> ---------------------
>  .../rpi-first-run-wizard/first-run-wizard.sh       | 213 -------------
>  .../startup/rpi-first-run-wizard/rc.firstrun       |  73 -----
>  .../startup/rpi-first-run-wizard/rpi_startup.sh    |   6 -
>  8 files changed, 9 insertions(+), 677 deletions(-)
>  delete mode 100644 recipes-extra/startup/rpi-first-run-wizard.bb
>  delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/LICENSE
>  delete mode 100644
> recipes-extra/startup/rpi-first-run-wizard/first-run-wizard.sh
>  delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rc.firstrun
>  delete mode 100644
> recipes-extra/startup/rpi-first-run-wizard/rpi_startup.sh
>
> --
> 1.8.2.2
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--bcaec547c7f96a8df104dec92128
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged. Thanks for you contribution and sorry for being la=
te.=A0</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Wed, May 22, 2013 at 12:06 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I&#39;ve made recent comments on the Raspber=
ry Pi firmware and on the first run<br>
script included in meta-raspberrypi. As I&#39;ve not really got a definitiv=
e answer<br>
on either I thought I&#39;d send in patches for review.<br>
<br>
The patch for bootfiles and vc-graphics doesn&#39;t reduce the amount we ne=
ed to<br>
fetch but it does make it easier to override the firmware source to a local=
<br>
clone or an archive. If there&#39;s no need for vc-graphics any more and th=
e<br>
userland recipe satisfies everyone&#39;s use cases maybe this is redundant =
and<br>
vc-graphics should just be removed?<br>
<br>
Paul Barker (2):<br>
=A0 rpi-first-run-wizard: remove<br>
=A0 bootfiles, vc-graphics: consolidate SRC_URI and S variables<br>
<br>
=A0recipes-bcm/bootfiles/<a href=3D"http://bcm2835-bootfiles.bb" target=3D"=
_blank">bcm2835-bootfiles.bb</a> =A0 =A0 =A0 =A0 | =A0 6 +-<br>
=A0recipes-bcm/common/firmware.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 3 +<br>
=A0recipes-bcm/vc-graphics/vc-graphics.inc =A0 =A0 =A0 =A0 =A0 =A0| =A0 9 +=
-<br>
=A0recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" target=
=3D"_blank">rpi-first-run-wizard.bb</a> =A0 =A0 =A0| =A037 ---<br>
=A0recipes-extra/startup/rpi-first-run-wizard/LICENSE | 339 ---------------=
------<br>
=A0.../rpi-first-run-wizard/first-run-wizard.sh =A0 =A0 =A0 | 213 ---------=
----<br>
=A0.../startup/rpi-first-run-wizard/rc.firstrun =A0 =A0 =A0 | =A073 -----<b=
r>
=A0.../startup/rpi-first-run-wizard/rpi_startup.sh =A0 =A0| =A0 6 -<br>
=A08 files changed, 9 insertions(+), 677 deletions(-)<br>
=A0delete mode 100644 recipes-extra/startup/<a href=3D"http://rpi-first-run=
-wizard.bb" target=3D"_blank">rpi-first-run-wizard.bb</a><br>
=A0delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/LICENSE<br=
>
=A0delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/first-run-=
wizard.sh<br>
=A0delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rc.firstru=
n<br>
=A0delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rpi_startu=
p.sh<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.8.2.2<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--bcaec547c7f96a8df104dec92128--
