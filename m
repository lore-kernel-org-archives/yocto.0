Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27FD0E00C6B; Wed,  4 Jul 2018 08:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3CEDE00BAA
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 08:50:53 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id a17-v6so4624631ljd.8
	for <yocto@yoctoproject.org>; Wed, 04 Jul 2018 08:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xcAnncrJtmCHmHwudyIVcEJJUH7efpP7Y4WtPUCsdlQ=;
	b=F3b2Bn6FGD013nwn/pOafLi9+qROUUfhOUM2e3eEB1KRc7z9Vooy1pQ5xPeVHd5KiA
	5QdvEEHkPQA1zj0jEGqIqXr4gbtgw4IljOnbiz5KXnO7xOv/pC3sE2Ha/DD9tSpTzulG
	uQUEO6Adlv46VwZ16Y2XihrzC+LMrh2FPk7BSsWCUQY9Vu5MjPFJXmZk/LgFcGzfWNXB
	53eKb8Y/Dtu+/grZDc7oHNNlfLCFdQ2wyayWn30oBJhhboxpP0MpErYk1Xlr0TbkExWs
	wZxi+v071V8XDibJG/mzMF1hGIPIUgcHdGCdlyYIHUYt7OFnwbPJMXpNEZVNEqFmG84Z
	M/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xcAnncrJtmCHmHwudyIVcEJJUH7efpP7Y4WtPUCsdlQ=;
	b=KFPx1DdtneMkvDHJFW0GnmfLj0DkBxww9B9YRPTFxmJmvYpjDyD94d4rb7OWzL+uFg
	6T0GDWjJW78jur/6X+X3VpS9+wjpMzQJkKC/mZ5dE7aaZe6yl7u3GnT5hih8sUwErH1h
	KVPn4S0KGGr33/o/z18fZIvoY6zaZ2tpTiFjzSFy7+5UHIh+G+uAQpAU+szSohnCc1PO
	3+lzthl32KWDL34qRZGDaRW0y0HXeXUGyMZjGULKCOS6rppEwapw0Fw4DBfoCqhq5Wzd
	a3SRYMtCB62Ze5cbhm21dQJNP0V73xca5qtOehpb6lS3+uBjfXrxVDi5vqw+CrDDT5cN
	Mucw==
X-Gm-Message-State: APt69E14L9vzrjJSddJq8yMOlzaLS7TsBrX8dUqaoTwQ8zzH5tLwL2HN
	+eLAqLrE/TmCvmxkIRL0ctHXrNDhRztqiQKuyIk=
X-Google-Smtp-Source: AAOMgpdJ47+gxWTeYoKdmRXqLGDtYIYjNoRVH6zRxoBGGr2S1TCWMoNjInTy9shEq3VGo39+clcUZotnm3NIE2AhtH0=
X-Received: by 2002:a2e:9883:: with SMTP id b3-v6mr1818208ljj.80.1530719452641;
	Wed, 04 Jul 2018 08:50:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:2195:0:0:0:0:0 with HTTP;
	Wed, 4 Jul 2018 08:50:51 -0700 (PDT)
In-Reply-To: <CAMDWK9UuDCrPM1T8HQSFTpN0Eout+P_50_LpGXQ0wKnJWgsXYw@mail.gmail.com>
References: <CAMDWK9W30-W2Ooo5yzAjEgJHT_xS9rcq9BiYhnhFC-Jo7L27YA@mail.gmail.com>
	<CAHUNapTMgE5pVfe77OfkPF=h_mcZCVZU_dp8vh8xKmzXpY30_A@mail.gmail.com>
	<CAMDWK9UuDCrPM1T8HQSFTpN0Eout+P_50_LpGXQ0wKnJWgsXYw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 4 Jul 2018 11:50:51 -0400
Message-ID: <CAHUNapQh9cYYy5UHVOvXnKFO-0UKdRdKvFSqUCOU0tP5n1M3dw@mail.gmail.com>
To: Michele Tirinzoni <miketiri@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Waveshare touchscreen
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
X-List-Received-Date: Wed, 04 Jul 2018 15:50:54 -0000
Content-Type: multipart/alternative; boundary="00000000000039c80e05702e6570"

--00000000000039c80e05702e6570
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 3, 2018 at 4:40 AM, Michele Tirinzoni <miketiri@gmail.com>
wrote:

> Anyway, the config.txt is just enough to be able to use the screen with
> touch functionality ? No need to have any driver installed ?
>

These panels have two cables that must be connected to the board: HDMI and
USB.

The HDMI handles all the video. The USB handles power and all the touch
stuff; touch "just works" magically.

In my builds I tend to add:

RDEPENDS_packagegroup-core-x11-utils_remove_pn-packagegroup-core-x11 =
"xinput-calibrator"
PACKAGECONFIG_pn-xserver-nodm-init = "nocursor"

The first line removes the package that keeps popping up the touch
calibrator software on boot. The second line removes the pointer (which
isn't relevant if you're using touch). Both of these assume you're using
x11, I have no idea how to setup wayland similarly.

--00000000000039c80e05702e6570
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Jul 3, 2018 at 4:40 AM, Michele Tirinzoni <span dir=3D"ltr">&lt;<a href=
=3D"mailto:miketiri@gmail.com" target=3D"_blank">miketiri@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-serif">Anyway, the=
 config.txt is just enough to be able to use the screen with touch function=
ality ? No need to have any driver installed ?<br></div></div></blockquote>=
<div><br></div><div>These panels have two cables that must be connected to =
the board: HDMI and USB.<br></div><div><br></div><div>The HDMI handles all =
the video. The USB handles power and all the touch stuff; touch &quot;just =
works&quot; magically.</div><div><br></div><div>In my builds I tend to add:=
</div><div><br></div><div>RDEPENDS_packagegroup-core-x11-utils_remove_pn-pa=
ckagegroup-core-x11 =3D &quot;xinput-calibrator&quot;<br>PACKAGECONFIG_pn-x=
server-nodm-init =3D &quot;nocursor&quot;</div><div><br></div><div>The firs=
t line removes the package that keeps popping up the touch calibrator softw=
are on boot. The second line removes the pointer (which isn&#39;t relevant =
if you&#39;re using touch). Both of these assume you&#39;re using x11, I ha=
ve no idea how to setup wayland similarly.<br></div></div></div></div>

--00000000000039c80e05702e6570--
