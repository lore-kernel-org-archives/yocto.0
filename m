Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C84E013D6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:23:32 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id t61so660540wes.16
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:23:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xPCWejFoMHtRwYqM7A1SqpzbvEMVjPjNQCzRzlh95Zc=;
	b=XE+E8y0rtPWCanwBfT50F/CnN/q/Rg4LaSKTVsZU3oipt/qLwfRD9BV9gfq/aQ6JXu
	4uDZJjJGOj8+UfCzOvPWbIsuGJ+lWQm1qTeC98QTaLuE5IgzTbQB8/wjQ2p0NXCp4lXp
	TPWoZOWg0a+uPoSd0Cs1exXxqW5BOi9qYvvOrsFRNU64i7Szi5oxpAhd1UIJtHGPxZ3M
	r9Vldp4J9F9CIPbX/wiQZolIJ6yp/km9cd3LPSJsIBaBkxbEUFd6OC1fd9Dy3L9LFRX3
	SgaKgxx+cbOL1IJ6Hin8d9gBcA8fOJY0deliLTXg1jf9SfO0UFMEVbVxjcIXMalHoOjb
	BgSg==
X-Gm-Message-State: ALoCoQlSPwEivmuYt7/YSNOVvIiX3gaNgjJ0NHLBy3tegkALeUublTLw/e0ZcqotVqdAjbd4iPgH
X-Received: by 10.194.20.202 with SMTP id p10mr8088431wje.39.1384359811079;
	Wed, 13 Nov 2013 08:23:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 08:23:10 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 18:23:10 +0200
Message-ID: <CAK18fxH91paTaKpkEinkmuvhjuz3PWr30DfiFBWw6Q3bsinv9Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 1/6] bcm2835: Update to version 1.32
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
X-List-Received-Date: Wed, 13 Nov 2013 16:23:33 -0000
Content-Type: multipart/alternative; boundary=047d7b5d9657c7f99d04eb116227

--047d7b5d9657c7f99d04eb116227
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> From: Alexandru Niculita <alexnick87@gmail.com>
>
> Change-Id: I68721f30c9551b392d2851a96d9819524a088faf
> Signed-off-by: Alexandru Niculita <alexnick87@gmail.com>
> ---
>  recipes-bcm/bcm2835/bcm2835_1.32.bb | 42
> ++++++++++++++++++++++++++++++++++++
>  recipes-bcm/bcm2835/bcm2835_1.9.bb  | 43
> -------------------------------------
>  2 files changed, 42 insertions(+), 43 deletions(-)
>  create mode 100644 recipes-bcm/bcm2835/bcm2835_1.32.bb
>  delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.9.bb
>
>
Discard this. This is already merged.

ag

--047d7b5d9657c7f99d04eb116227
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">From: Alexandru Niculita &lt;<a href=3D"mail=
to:alexnick87@gmail.com">alexnick87@gmail.com</a>&gt;<br>
<br>
Change-Id: I68721f30c9551b392d2851a96d9819524a088faf<br>
Signed-off-by: Alexandru Niculita &lt;<a href=3D"mailto:alexnick87@gmail.co=
m">alexnick87@gmail.com</a>&gt;<br>
---<br>
=A0recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.32.bb" target=3D"_blank"=
>bcm2835_1.32.bb</a> | 42 ++++++++++++++++++++++++++++++++++++<br>
=A0recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.9.bb" target=3D"_blank">=
bcm2835_1.9.bb</a> =A0| 43 -------------------------------------<br>
=A02 files changed, 42 insertions(+), 43 deletions(-)<br>
=A0create mode 100644 recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.32.bb=
" target=3D"_blank">bcm2835_1.32.bb</a><br>
=A0delete mode 100644 recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.9.bb"=
 target=3D"_blank">bcm2835_1.9.bb</a><br>
<br></blockquote><div><br></div><div>Discard this. This is already merged.<=
/div><div><br></div><div>ag</div></div>
</div></div>

--047d7b5d9657c7f99d04eb116227--
