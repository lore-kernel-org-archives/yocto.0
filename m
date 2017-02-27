Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E791AE009A0; Sun, 26 Feb 2017 20:37:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
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
	*      [209.85.215.41 listed in list.dnswl.org]
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8148E00939
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 20:37:14 -0800 (PST)
Received: by mail-lf0-f41.google.com with SMTP id z127so28190219lfa.2
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 20:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QMEtDTi7WG5L238OXQZ/c7okSnyn6Rg64jiD/2e+tvU=;
	b=j294hK07a+Jy7MKC0EzuR+c9Sc1dmjxEnu+2CDnHjiFT0+tqFDXljIfO5mVHy/R4aV
	w2edJjbeGB664LUIxI54BY5uHATrGDf4lNCmLJxfTjX+A9BAo9u2WNiJMMAtRYm+BbaY
	vgJNVZGKgqAlEs7O87wZU8/x4pq+uC2zdmB9YiEDlSB+UbYQTzM9zmxFMq7tbcQNhWCU
	DSaYnX9zH9VQUCoX++JYTkQlo9n5LTtsFTB2T3QN5PpbSTHsPlB7g2SZgLRLHjA6mLX/
	IxVgOXjB4f6EeO6MTUxSUFgDABAnnxjXj9aqWBk/ClrOD4GyKTMpTWERAE68GEDwvlLR
	DjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QMEtDTi7WG5L238OXQZ/c7okSnyn6Rg64jiD/2e+tvU=;
	b=Al7fwMqL3ZjQbSH1jMRltE1FMKcaCF3/BFl9S1zvD+cUdoNy56g7xTd/2Jm+781YXL
	5XZbZI4jmfevwFxXhuSPEkX2pKCjL0ybrCwf+hL/AIxiFazCAmKi28LA3QEUjI2mgxCh
	67c6LeqZSaT92AOcCEXE8l6DEfsbASQSKRbD5lyw+6zxpD6gc0vZ+FPP9UgzkDy1g3NM
	SyuvLJKr6De/imO5cyZsBnBDDyf5GZP02GkErsD2bIRULl2J7D5Sm8Ucp2kWPWeu4xyy
	fBi9YR3vpVJ+D4haSx0tgQFyV1f9X5lNpIGbkqpvvd4pWwkwc+M6GAqiroJsHDrMwk/s
	NDmQ==
X-Gm-Message-State: AMke39nYC12qYhXA2h/tJQmwuEmnH8wUy+T0O+HjmH8OamAHsznaLEQr16btXgLI/qRIy3rfxi9Y00vkOqYEhA==
X-Received: by 10.25.233.27 with SMTP id g27mr4002903lfh.133.1488170233621;
	Sun, 26 Feb 2017 20:37:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Sun, 26 Feb 2017 20:37:13 -0800 (PST)
In-Reply-To: <17107755.BvxCBHeu1s@peggleto-mobl.ger.corp.intel.com>
References: <CAF1M0z5-fo4TOBppF7ETWYUpPc-tqcni=pv=+oyRnHv3PuLUdw@mail.gmail.com>
	<17107755.BvxCBHeu1s@peggleto-mobl.ger.corp.intel.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 27 Feb 2017 10:07:13 +0530
Message-ID: <CAF1M0z5-k0Hou9BpXtWWdHQocO5jKR9Tfbo9NhE4Cg4=L=eKKA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Conflicts: Meta-layers with same priority
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
X-List-Received-Date: Mon, 27 Feb 2017 04:37:19 -0000
Content-Type: multipart/alternative; boundary=001a113c26ae23f65f05497ba2e1

--001a113c26ae23f65f05497ba2e1
Content-Type: text/plain; charset=UTF-8

Thanks Paul.

-Satya Sampangi

On Mon, Feb 27, 2017 at 2:31 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Sunday, 26 February 2017 9:24:05 PM NZDT SatyaNarayana Sampangi wrote:
> > Hi all,
> >
> > I need to know, if two meta-layers in poky has the same priority, then
> how
> > it is resolved.
> >
> > say e.g,
> >
> > mylayer-1 with default priority:6
> > mylayer-2 with default priority:6
> >
> > How it will be resolved.
>
> If you mean which of two recipes with the same name will be selected, it
> will
> be the same as if the recipes were in the same layer - i.e. other
> mechanisms
> such as the version number (higher is preferred); DEFAULT_PREFERENCE (if
> specified); or PREFERRED_VERSION_recipename will be used to determine which
> gets selected.
>
> In general if one of these layers is under your control you are probably
> best
> advised to set the priority different there as desired, or use
> PREFERRED_VERSION to explicitly choose the desired version for recipes
> which
> are overlayed.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a113c26ae23f65f05497ba2e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul.<div><br></div><div>-Satya Sampangi</div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Feb 27, =
2017 at 2:31 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul=
.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On=
 Sunday, 26 February 2017 9:24:05 PM NZDT SatyaNarayana Sampangi wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I need to know, if two meta-layers in poky has the same priority, then=
 how<br>
&gt; it is resolved.<br>
&gt;<br>
&gt; say e.g,<br>
&gt;<br>
&gt; mylayer-1 with default priority:6<br>
&gt; mylayer-2 with default priority:6<br>
&gt;<br>
&gt; How it will be resolved.<br>
<br>
</span>If you mean which of two recipes with the same name will be selected=
, it will<br>
be the same as if the recipes were in the same layer - i.e. other mechanism=
s<br>
such as the version number (higher is preferred); DEFAULT_PREFERENCE (if<br=
>
specified); or PREFERRED_VERSION_recipename will be used to determine which=
<br>
gets selected.<br>
<br>
In general if one of these layers is under your control you are probably be=
st<br>
advised to set the priority different there as desired, or use<br>
PREFERRED_VERSION to explicitly choose the desired version for recipes whic=
h<br>
are overlayed.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a113c26ae23f65f05497ba2e1--
