Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75976E00DA5; Wed, 12 Jun 2019 03:04:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58825E00AD5
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 03:04:01 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id w7so11244533oic.3
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 03:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hbgmyszmlJP/XaJoCYYVLW1tLUuVQcUnB5NQWeJggQQ=;
	b=gkLRTMX2yACiIo0tW/ZYh0YFjYQN/OrLQ3mUvxwZKPyRSEXxCsUOQOFwK/B94mwXPA
	1UP5O7LSodv1mUWloQyKJzl/kxjfya/igItSBNlgfCsPNTQePhn8rv5sWF6g9yoFK5jX
	x4sk/rCW9DRsbNCSed14XmHIxu9z9I420mozhPkd0c/4fcwCgQPs1WzHVEMroXYDPxvP
	+VO6XwUTNktR+0cFWSk1hXlYJn2mwr+JsiS0tnZ4HdgBOiS3MT1d3bSMqsfvbJngcR/r
	J4IHUl3mD0vBTNb5IKAjkAT4VDqsYrMmUq/DrLwTXg2q+Ab3QEOsUj2o/wM7SZi6ACrR
	AHew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hbgmyszmlJP/XaJoCYYVLW1tLUuVQcUnB5NQWeJggQQ=;
	b=r9KzvbMoOhbPXEqnQZF5HEy2z6VsJ2k306K8lQs19XNmtiZXyacSf+NFmDeb+vZjyD
	XpZ8ItXrXOHMhISy2MxmlqEXFWFwfWSsQGyzA1kYe9IYMU1M3jGD5wyjRP6YfgJ553km
	elue8+EvdN9xKm9TNkQASZTd6L2QDicZXxgQyuB+327Qb710n+SgPA41cy2usKm8QVFo
	e3tZtd4+RnNqn3avaxBcf46gy19F51+880PX5LWEPpeKSxaCosuKC91kH//B/prWkHoi
	qkLFwSsiN6LNNjrUfwWCsk45GV86ya3nPA3VEd2I4MGmxG7eS2CneXUY2gqOxp2tNlFb
	ZdpQ==
X-Gm-Message-State: APjAAAXXTbu8CIKtIxv6e4OcumaXIowltwaTns2M86k1L7gw5ctCjWv2
	Poy8yf4UWdZ2sGy1On+P7xRhKxvCDKMWfL2Mufo=
X-Google-Smtp-Source: APXvYqwXHEedu9gJoa11ns8kJq+DOpoGM7K770WT1sihtTs+Y4tHudmThctbvpHYzYTC4MADIbrw0qC7xC3Z29ikZgU=
X-Received: by 2002:aca:c008:: with SMTP id q8mr11596444oif.135.1560333840448; 
	Wed, 12 Jun 2019 03:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <1560326000-21130-1-git-send-email-yi.zhao@windriver.com>
In-Reply-To: <1560326000-21130-1-git-send-email-yi.zhao@windriver.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Jun 2019 12:03:49 +0200
Message-ID: <CANNYZj_7JUwUu0WgtRS2C_bR8thJPDMwWvBg74cCKw763Lq6Vw@mail.gmail.com>
To: Yi Zhao <yi.zhao@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] glib-2.0: fix configure error for meson build
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
X-List-Received-Date: Wed, 12 Jun 2019 10:04:02 -0000
Content-Type: multipart/alternative; boundary="0000000000004a82d1058b1d8896"

--0000000000004a82d1058b1d8896
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Jun 2019 at 09:54, Yi Zhao <yi.zhao@windriver.com> wrote:

> +PACKAGECONFIG[selinux] =
> "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
>

This line should probably go into the oe-core recipe? It is fine to have
options that depend on things absent in oe-core, as long as those options
are disabled by default.

Alex

--0000000000004a82d1058b1d8896
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 12 Jun 2019 at 09:54, Yi Zhao &lt=
;<a href=3D"mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>&gt; wro=
te:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">+PACKAGECONFIG[selinux] =3D &quot;-Dselinux=3Denabled,-Dseli=
nux=3Ddisabled,libselinux,&quot;<br></blockquote><div><br></div><div>This l=
ine should probably go into the oe-core recipe? It is fine to have options =
that depend on things absent in oe-core, as long as those options are disab=
led by default.<br></div><div><br></div><div>Alex<br></div></div></div>

--0000000000004a82d1058b1d8896--
