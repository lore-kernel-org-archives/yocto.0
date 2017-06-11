Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A78E00718; Sat, 10 Jun 2017 17:31:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD94E00349
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 17:31:19 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id m47so11825279iti.1
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 17:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZqrEsClIZE7F2HSmTcvb3J49sm0fDrmR5LJTS/yQO/A=;
	b=m3fMjWpK4uUrNAXEAOkGXk5nMW0WbDtwxdvWG0f9UZXa3vS38xsGVxtWv0QtmmI9wH
	5d/4nN8W/BVD8Hyc7LGSqFOeWphcFp+rSMzZvB31G48yCHiKcTkEp85mrBYsqbkMV4Y+
	f9CIqaHiE+xBkveqc6LDpPOGpZQJ9yWwMtkiJFtC0qLIPFrNx8JVbrIuzrGg6goteZoH
	x/Q9dI7Kt6AOylnwXd/OVrOv2U+YRN8202AmaGB57trYFo0IEjWo7rn/keDqTzHCwps2
	Q9+jgWz75bbQJnRgsMNQCMUi9tDakViX5sX8orLITyVOZ1mxMNsFC9MTqzeD0vR+/Qin
	DhYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZqrEsClIZE7F2HSmTcvb3J49sm0fDrmR5LJTS/yQO/A=;
	b=Q9McZuguvVEgi+KKKc6egxQZiLoaa4+guG0VZDgl9bZyiphqEOh4sFihihUQ+BWPLO
	sVVajk4kfsat0dV9jjx+JWqd50hLXuA3DkwNiks8/MvlJHXEPh0ksC8ISjnKjYqg45nF
	HW6efkmB/1eh6CRhGw6/F0R6NGy+btkxcZD4piRHmOccXS0BVsytcvJp89ryeMcHF/oC
	j9RWg+9T9RvRw+olnSRp5A/hGw1DJzVW5a7K2FNadlbkl4lRIuKJgJNZL3mUJgMTwkDC
	ZApzqEvU1umw1naMFtM3OLHdEQRaRudQXZ++A/1wbpfDHGveL+sv2UDvokbXJhrhRAqW
	CS6A==
X-Gm-Message-State: AODbwcBgejq7K0ZMy1LiK/jXhCNNN5kSegq9mnOQ37bEEO7VxweIkZkX
	gjZ331r8v5GXVhIA1ePMaJoFDcbR0RfO
X-Received: by 10.36.147.2 with SMTP id y2mr5694251itd.43.1497141079403; Sat,
	10 Jun 2017 17:31:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.33.129 with HTTP; Sat, 10 Jun 2017 17:30:38 -0700 (PDT)
X-Originating-IP: [86.186.204.183]
In-Reply-To: <1496787197-8964-1-git-send-email-drew.moseley@mender.io>
References: <1496787197-8964-1-git-send-email-drew.moseley@mender.io>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 11 Jun 2017 01:30:38 +0100
Message-ID: <CAK18fxG2Xg6K_Ar=p1t+xD8Be6WgTjssG11i3B5-UKJGin57aA@mail.gmail.com>
To: drew.moseley@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][PATCH] chip: Unclude kernel-image and kernel-devicetree in all images.
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
X-List-Received-Date: Sun, 11 Jun 2017 00:31:24 -0000
Content-Type: multipart/alternative; boundary="94eb2c089e1c3791630551a4525d"

--94eb2c089e1c3791630551a4525d
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, Jun 6, 2017 at 11:13 PM, <drew.moseley@gmail.com> wrote:

> From: Drew Moseley <drew.moseley@mender.io>
>
> Add the kernel-image and kernel-devicetree packages to
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS to ensure they are deployed
> into the UBI image since that is where UBoot expects to find
> it.
>
> Signed-off-by: Drew Moseley <drew.moseley@mender.io>
> ---
>  conf/machine/chip.conf                 | 3 ++-
>  recipes-core/images/chip-hwup-image.bb | 6 ------
>  2 files changed, 2 insertions(+), 7 deletions(-)



Merged to master. Thanks for your contribution.

--
Andrei Gherzan

--94eb2c089e1c3791630551a4525d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div class=3D"gmail_extra"><div class=3D"gmail=
_quote">On Tue, Jun 6, 2017 at 11:13 PM,  <span dir=3D"ltr">&lt;<a href=3D"=
mailto:drew.moseley@gmail.com" target=3D"_blank">drew.moseley@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Fro=
m: Drew Moseley &lt;<a href=3D"mailto:drew.moseley@mender.io">drew.moseley@=
mender.io</a>&gt;<br>
<br>
Add the kernel-image and kernel-devicetree packages to<br>
MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS to ensure they are deployed<br>
into the UBI image since that is where UBoot expects to find<br>
it.<br>
<br>
Signed-off-by: Drew Moseley &lt;<a href=3D"mailto:drew.moseley@mender.io">d=
rew.moseley@mender.io</a>&gt;<br>
---<br>
=C2=A0conf/machine/chip.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 3 ++-<br>
=C2=A0recipes-core/images/<a href=3D"http://chip-hwup-image.bb" rel=3D"nore=
ferrer" target=3D"_blank">chip-hwup-<wbr>image.bb</a> | 6 ------<br>
=C2=A02 files changed, 2 insertions(+), 7 deletions(-)</blockquote><div><br=
></div><div><br></div><div>Merged to master. Thanks for your contribution.<=
/div><div><br></div><div>--</div><div>Andrei Gherzan</div><div>=C2=A0</div>=
</div></div></div></div>

--94eb2c089e1c3791630551a4525d--
