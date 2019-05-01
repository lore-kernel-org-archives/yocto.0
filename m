Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2695E00D14; Wed,  1 May 2019 16:18:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 942E6E00BAA
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 16:18:04 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id i131so246924itf.5
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 16:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+uiqZwOJOzIxnloz9hs8zXCmCeB0nQK652zfGr0w62Q=;
	b=p97NQzR+PmJvKPW9zURCWbVmcKPeqsqqAx+x267rQ2HIsvZ6sJbzLN+mJX84snFheJ
	z679wQbX7gf/ttD3akiJR9iLrszkeRAdzlm+6dBwy0PE2duD8t+ITOU8Ng8oHufjmAnB
	3f11yO09PE8r9f59YXNRdIiOOnmjMIvDFtUDfy2J3uzxIn7x0SeIOUtLEGcbWjRCQOtB
	XGoOn1Dwqy1NCzJxuAZFiq4KqDLyrE90shsx0r3NI4H32eDyzrBM7fLzq1E4Z6M4vTJR
	drjCiC8YVz71IwnE3b98QLuUzdqkT0JeTYjh08eYomC1iXiGdq3Sx/s3LICbd+GYsfRt
	3xVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+uiqZwOJOzIxnloz9hs8zXCmCeB0nQK652zfGr0w62Q=;
	b=KXP3VEYYAOSWaOZuU0I0WF1b/Kq/XsTaWMdboSQGrsGyp/fPi1ykEJtLJVaIWh1UoB
	SoUPE3azT/rXA/OkdGNb/h2Y9CKaD64hIt6ykSkbJrSJvoIh/JkUOBRIZxFoTW5AdCMN
	TP16WtOeAeruwgNZpDuyaxlOjiKoQrIQIpwyQAU78fG0t4B2p8up0tMFHx08qGPNwe9C
	BC0n6RdXW1UfLJW786K4ip0KDa6osJG+Mgy4dgN2ODeAsZZ0dbyHkmjVRnB5wmhH9Kb5
	HBf5eI3N5Dd/0HfUSrxhjZtkxfzOLkTwwkvPicSM9ox0+mSlBcdDzOABW5XGGqjYt06S
	aN7Q==
X-Gm-Message-State: APjAAAU7UjFwC2X0DusgHzjaMcZqO8UFlNJ+LFevLQ7QR1Issuk3oPs2
	A+aXI0ys0BAjfnXrXS+G1YghQ594HItSOURqAY8=
X-Google-Smtp-Source: APXvYqy9Ihgl6oSdCqrGVQqre60ihfCcL60KlyDkvZ27NsSpTltFZ0xGB3lW4jeYczHmLs3N6ML5At0lMBC6+dq/CdI=
X-Received: by 2002:a24:5c10:: with SMTP id q16mr149482itb.81.1556752684055;
	Wed, 01 May 2019 16:18:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
	<3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
	<CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
	<CALbNGRQ2aAazVL9bV6NqxE5pdUKMU4jUFGsDt_NvEx_qXPs1_g@mail.gmail.com>
	<CAA=hcWRc5aaXvUDZ+Fc9uB+gjFdpVPK-aP2Gd4wNmKj=r1Yuqw@mail.gmail.com>
In-Reply-To: <CAA=hcWRc5aaXvUDZ+Fc9uB+gjFdpVPK-aP2Gd4wNmKj=r1Yuqw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 2 May 2019 01:17:52 +0200
Message-ID: <CALbNGRRs_nVeQ0X+crQnN=3cpp5hYQFxTqhnwYvfuUgphvRc3Q@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Could not find glib.h
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
X-List-Received-Date: Wed, 01 May 2019 23:18:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2019 at 12:32 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi Andreas,
>
> It was my program, it has been compiled for weeks without any issues
> until I added an #include <glib.h>, despite the glib-2.0 was defined
> in the recipe, the do_compile() stopped at following errors, I can see
> glib-2.0 was built in build and image directory, I can see glib.h was
> in build and image directory, is it a basic principle if a package
> library was defined in DEPENDS, the bitback should automatically find
> the header files and library links? Why it still complained no such
> file?
>
> DEPENDS +=3D "glib-2.0"
> RDEPENDS +=3D "glib-2.0"
^ In case your program links successfully this can go

you could write

do_compile() {
    CFLAGS=3D"${CFLAGS} `pkg-config --cflags glib-2.0`"
    LDFLAGS=3D"${LDFLAGS} `pkg-config --libs glib-2.0`"
    oe_runmake -e
}

Or similar in your Makefile

And and don't forget

inherit pkgconfig

in your recipe

Andreas


>
> do_compile() {
>     oe_runmake -e
> }
>
>
> fatal error: glib.h: No such file or directory #include <glib.h>
>
>    ^~~~~~~~
> compilation terminated.
>
> Thank you.
>
> Kind regards,
>
> - jupiter
>
>
>
>
> On 5/1/19, Andreas M=C3=BCller <schnitzeltony@gmail.com> wrote:
> > On Wed, May 1, 2019 at 12:35 PM JH <jupiter.hce@gmail.com> wrote:
> >>
> >> Thanks Richard, where to run pkg-config? If I run pkg-config in the
> >> host, it pointed to host Ubuntu package which is different to the
> >> cross compiler.
> >>
> >> On 5/1/19, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> >> > On Wed, 2019-05-01 at 10:43 +1000, JH wrote:
> >> >> Hi,
> >> >>
> >> >> I added glib-2.0 to DEPENDS but it still could find the glib.h, wha=
t
> >> >> I
> >> >> could be missing here?
> >> >>
> >> >> fatal error: glib.h: No such file or directory
> >> >> >  #include <glib.h>
> >> >> >           ^~~~~~~~
> >> >> > compilation terminated.
> >> >
> >> > You probably need to use pkg-config to find out which CFLAGS to use =
for
> >> > glib-2.0...
> >> >
> > Maybe I missed something but there is not much information about what
> > you are trying to build. Starts with build system: autotools / cmake /
> > meson / qmake / waf?
> >
> > Is there a place to look into the recipe? That might make support easie=
r.
> >
> > Andreas
> >

