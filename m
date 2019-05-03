Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F18BFE00CBC; Fri,  3 May 2019 06:52:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5BEFE00C14
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 06:52:19 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id a190so9182573ite.4
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 06:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tUlSnhW5CnJzZTY+ZynQnjC3V5IKIuBFIQ689qfvJVg=;
	b=KuWWGIPtNrKPHIgXDauREqV6xD7iq3rei0eRN6VxMWrRwpADBUIULuTFfkCsEe5r2n
	twlcKfmuDcrVuCWdZliaKvBNUjD/SW80NzwU1DlWIPGtaShwkbokz/gNRO/kNwG3tbQn
	Uvt0O9+SRDJH38BfOrrJpi6lDq4u2jatjmqI7caFJ+vrAQ3MenAP2o7HrNiidT6+A+/g
	qg52e8J3TD7dCl656WzLcfoQT8wf4TP96NyhXj03dOHMwGxzHastZ80RNXK3R3fVJR22
	KcAgG/Gkck2a8iYg9naVCUWy60IOG95U19loQ1yhNb7ER0Khozb6Lm+EMmQ1eGbkfc1B
	sQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tUlSnhW5CnJzZTY+ZynQnjC3V5IKIuBFIQ689qfvJVg=;
	b=gskS7h2KmdF2PL97AMEBqdP4yFETJirYkGDxpvm5DpL4iCKdeCclQRu8oTausA7P2n
	Z0jw4c0k8h00CnmfpNJ7Tb+iE0ulf9/QNWQgWVddzvYMPGJhNxtm4lGLoFw9SJsDZqAp
	pOFBUiSUtM+GNB+RX7Y58y9QTkG91iWulplVRT6SepTW9/KgZCS4RGb+Y/uwj+8Fdyn5
	jm9/vBMHtg+CXUn69viIHSF2xw6RzTA0A+0MeCgmVa/e3uemTmbFa7EXjaOAjmg7NMLE
	8TyY5sl1iGvAtFyYB7vsjswoDjz7BFjerMdxz+TVjd5XqnxkcJCeo00ldv5hKroySUu9
	U3NQ==
X-Gm-Message-State: APjAAAUy5W7NUVnjNCyeUV2L/QWN9T8bYKdGqxD3dpZ8mLzunCf+apmd
	LYwiLwLhgkfq3dC9oKhiRcYbyB+ye+QP79g3AiA=
X-Google-Smtp-Source: APXvYqzQ+PJRPnQewpKGOqLY8ZgAHvW3Pwq74GWJtTZecblEn+ELLGe+F+NyKRrHOCM1e94Eid/HmBWG3c9+yH/SLKU=
X-Received: by 2002:a02:c88d:: with SMTP id m13mr6641817jao.63.1556891539101; 
	Fri, 03 May 2019 06:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1905020916480.10974@localhost.localdomain>
	<6e58005a-83b4-a7dc-d5dd-c1533fc29ad8@mvista.com>
	<CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com>
	<4dec56c4-3876-b96c-9b31-a1e4d726f78b@mvista.com>
	<CAFNP8Ou5PB396Ln0mnZP86tyKDv8nMgDL7p=HxpUpEVBW5-hUA@mail.gmail.com>
	<alpine.LFD.2.21.1905030649530.6705@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1905030649530.6705@localhost.localdomain>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 3 May 2019 15:52:07 +0200
Message-ID: <CAC+thW1zpk4uALurMZnsqScCeeg_PdzpwMs=LKE2XX-Qs-KcnA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bsp-guide: replace meta-intel with meta-xilinx as container layer
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
X-List-Received-Date: Fri, 03 May 2019 13:52:21 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 3, 2019 at 12:56 PM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> On Thu, 2 May 2019, Scott Rifenbark wrote:
>
> > Great, thanks!
> >
> > On Thu, May 2, 2019 at 11:21 AM akuster <akuster@mvista.com> wrote:
> >
> >
> >       On 5/2/19 10:45 AM, Scott Rifenbark wrote:
> >       The term "Container Layer" was put in the ref-manual by me to describe a
> >       "meta-*" layer that had other "meta-*" layers (see
> >       https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer
> >       and the term "Container Layer").  Maybe this was never a good term?  I don't
> >       know.  Nobody has said anything about that term for many releases.
> >
> > The problem Robert points out needs to be fixed in the BSP manual as "meta-intel" is
> > not longer qualifying by my definition.  I can fix that.
> >
> > Is "Container Layer" ok as I have defined it?
> >
> > in those terms above, yes its fine.
>
>   the more i think about it, the more i'm nervous about the phrase
> "container layer", as it suggests a "layer" of some kind in the
> context of OE. the one distinction i think worth making is that a "BSP
> layer" is a layer expressly designed to support identified target
> systems (eg., meta-xilinx-bsp), while a non-BSP layer simply packages
> functionality (recipes, classes) -- a good example is
> meta-virtualization.
>
>   in either case, the trivial property of an OE layer is something
> that can be specified in a bblayers.conf file. so i'm not sure *how*
> you would describe, for example, meta-openembedded.

Maybe just as a "metadata collection repo"? IMHO from a OE
perspective, a "layer" is a metadata set which provides its own
layer.conf file (which, as you say, means you can add it to your
project's bblayers.conf). Bundling more than one layer within the same
git repository (or whatever archive format use to distribute them)
does not qualify this metadata collection as anything otherwise
meaningful for bitbake. That said, meta-openembedded is definitely the
most evident example of such a "concept". I agree the term "container
layer" can be either confused with a OE layer, which technically is
not, or something having to do with containers (as I suspect from
Armin's reply), which is completely unrelated to. Maybe rewording a
little bit the manual here could reduce potential confusion to new
users. Moreover whatever term we choose to explain this concept, we
should make clear that it is orthogonal to any other layer
classification by content (i.e. BSP, distro, ...).

>   i'm sure i'm overthinking this.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                          http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

