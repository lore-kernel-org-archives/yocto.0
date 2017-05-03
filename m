Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F56E0094C; Wed,  3 May 2017 06:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B313E00812;
	Wed,  3 May 2017 06:55:25 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id w10so34635054oif.0;
	Wed, 03 May 2017 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S5ieyoauJyL9h2JGfcvEDNCMTxHQAY8xK2VJbwOQ2GU=;
	b=fx8NN77UA5eUBapyNhYu7ItbIpQuTLIseRi29HmvsD8rzoOuJdhsa5xNdiNnpjCxUO
	GKxTm1SBjDFgn2SXh2RkaHgpnSaR2PH/8NaVtbJL2n5hQOa8UhxFrp8iScB6xgWPgQJ+
	681pVEJuIPM41hINEvtPZk3U4S5RiGDHI5h02omWj3gE7Uv3Sb2urmr05twV5G0iD5Oh
	6gqx9tN8vuFJ9GCWE99rwg5UGgHv6mvIvulCPY+snOCuP372ugrmNA9eDcdbi3CYWokJ
	5gnJmciwM9X7+ZjXCK80U8LCbgV/ZbA4EfUr78JQo1B5xVi6///1tEXQlqNeboU//SiN
	XOug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S5ieyoauJyL9h2JGfcvEDNCMTxHQAY8xK2VJbwOQ2GU=;
	b=b1Oad6dytXVUNiyzitpplmr0R6WVuXUFwZBEV80EjQ74aK9FHZTHgf4JvYdxHt+954
	4AylpB4v+oQZpyH7wGIkWBumbE+lCySr3BCcbs/eJMDWb0GKY3OezA0569ZeAnO5LxG4
	evn4rWvBJE05xi+qWHJVJYu1g5qZ99k8jDPj2hbpxOVR9ZwNIji7w9dPH1j6robQvvGP
	djGXRdr5oOPxeeeuJxGUHEhWdsEeyTDmhbX22rxgAf/kKb09zgz6+Iwe9f1+J0/sGuyU
	rb9W/hcUi/3sTAm8fZ6FneldJ8yswlnWyfQL0+oDBdkgsQlQ2Y+OWiVvs+6uhgTrsWsb
	wqdg==
X-Gm-Message-State: AN3rC/6T/wozJVCOCHkK//l4BM8iknKcJav8XzCZV0BObls7VIpZ6D+T
	ijIJ0nPYJo+eEbUfYAMhq7rUjmfIvQ==
X-Received: by 10.157.30.163 with SMTP id n32mr14108398otn.192.1493819724790; 
	Wed, 03 May 2017 06:55:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Wed, 3 May 2017 06:55:24 -0700 (PDT)
In-Reply-To: <CAFL6qn7SykziH4rvKmcw2Gd0z5SEafiimTYkkhOAGe13vm+-TA@mail.gmail.com>
References: <CAFL6qn7SykziH4rvKmcw2Gd0z5SEafiimTYkkhOAGe13vm+-TA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 3 May 2017 15:55:24 +0200
Message-ID: <CAC+thW0o9Emp=53XNkWRLVwnmq6efEt3oR6thgJZGiqPt7PSeQ@mail.gmail.com>
To: Pello Heriz <pello.heriz@alumni.mondragon.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	meta-virtualization@yoctoproject.org, meta-xilinx@yoctoproject.org
Subject: Re: Redis on Yocto
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
X-List-Received-Date: Wed, 03 May 2017 13:55:26 -0000
Content-Type: multipart/alternative; boundary=001a113729b00e0804054e9f02fc

--001a113729b00e0804054e9f02fc
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed, May 3, 2017 at 9:21 AM, Pello Heriz <
pello.heriz@alumni.mondragon.edu> wrote:

> Hi,
>
> I want to implement Redis in an image that I have created with Yocto
> master branch. What I have understood is that there are some recipes into
> meta-oe layer that support to have Redis in the created image. Anyway, what
> steps do I need to do in order to install/start-up/execute Redis in the
> created image on MPSoC QEMU?
>

As soon as meta-oe is in your conf/bblayers.conf, adding the following line
to your conf/local.conf should be enough to get the server enabled at boot
(at least with systemd as the chosen init system) with default
configuration
from meta-openembedded/meta-oe/recipes-extended/redis/redis/redis.conf in
whatever image you are building.

IMAGE_INSTALL_append = " redis"

You might want to override the default configuration with an appropriate
bbappend in one of your custom layers..

--001a113729b00e0804054e9f02fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Wed, May 3, 2017 at 9:21 AM, Pello Heriz <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:pello.heriz@alumni.mondragon.edu" target=3D"_blank">pello.h=
eriz@alumni.mondragon.edu</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I want to=
 implement Redis in an image that I have created with Yocto master branch. =
What I have understood is that there are some recipes into meta-oe layer th=
at support to have Redis in the created image. Anyway, what steps do I need=
 to do in order to install/start-up/execute Redis in the created image on M=
PSoC QEMU?</div></div></blockquote><div><br></div><div>As soon as meta-oe i=
s in your conf/bblayers.conf, adding the following line to your conf/local.=
conf should be enough to get the server enabled at boot (at least with syst=
emd as the chosen init system) with default configuration from=C2=A0meta-op=
enembedded/meta-oe/recipes-extended/redis/redis/redis.conf in whatever imag=
e you are building.</div><div><br></div><div>IMAGE_INSTALL_append =3D &quot=
; redis&quot;<br></div><div><br></div><div>You might want to override the d=
efault configuration with an appropriate bbappend in one of your custom lay=
ers..</div></div><br></div></div>

--001a113729b00e0804054e9f02fc--
