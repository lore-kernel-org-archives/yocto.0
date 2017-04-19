Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CF9AE00AD0; Wed, 19 Apr 2017 08:02:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE61FE00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 08:02:00 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id c45so21239962qtb.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 08:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CuEsuDvBXXjuVLoTIUNUltf3m6mz4Y/LmVaqONYqM+I=;
	b=XrGlkPo+dRuqJuQQHGlJs2NhCrC6Z7UtdQgmHk1IPHzgFUfQAdxqJhIzyhTFW9w9ml
	sU3N1K8mte+PzFaQA/PAfhuZJ+DizijkbMDkUBFoNkq3S9oJtXILAecDw3W0GtaVsWZP
	eb3AgiOofoC8btzMofPbKWC2kNcyzO/egEn+vnY3pJLnsAMoN2yHUOoGt9Q9UXmnRMr8
	wbD8YPBes8tOQNeDPwacM8vn0noBpYJalgaesOFjwRPUioRq2e+aNQE7ZZ0U+OCdxyLO
	Io49Nq9W7+4YU9jw715VE6bSabHP/LFHktQiLRfbD3S8FPeVI4y2Y2DKw25XoRXIbYHO
	JRHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CuEsuDvBXXjuVLoTIUNUltf3m6mz4Y/LmVaqONYqM+I=;
	b=FU2RqTJvkMY0oFdTm03leZAQmDY3GzeX7spH0+/tZinsqv1lx3qxlkiPymbrMs+FSh
	9hStoMOquUagNhVtgeQ9wLEoA9QeP+3i6/btEpwUHAaVhALqBxAlNLxqxbLjaAHckEZS
	cSwHv8kZHqsw9KUIlgiBtZVOCxb0UVHqsC4T2xr723xJHuVcs+Q563SisjG+Id9IGF25
	ZDwVDrypgC5shAI6kR0KawIYEnZILIY2J83gme3WL8EogWyUg3vExjJQ748WhRpSHmxZ
	fzTTKzhnB8dxiphKXybkAlyuAlFp0mMjCWa/p1BqaY5VJWZwawL6sLbcFlJTihC9wH0t
	HF+Q==
X-Gm-Message-State: AN3rC/501ZCGrZA+0U7yOggGa5DbNee1InVueyp8bhZT5LWD1Fu+Aj4L
	SY8tee0tWZ19ctMohQS8ALTxr0TRn+aw
X-Received: by 10.200.56.56 with SMTP id q53mr3254365qtb.105.1492614119891;
	Wed, 19 Apr 2017 08:01:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 19 Apr 2017 08:01:39 -0700 (PDT)
In-Reply-To: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
References: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Apr 2017 16:01:39 +0100
Message-ID: <CAJTo0LZcB7++s9CZLSdnYe-UsrGd1gnHh_emaX4AZ-QtnJfozw@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Share recipes
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
X-List-Received-Date: Wed, 19 Apr 2017 15:02:01 -0000
Content-Type: multipart/alternative; boundary=001a1137aca2673ac0054d864ef4

--001a1137aca2673ac0054d864ef4
Content-Type: text/plain; charset=UTF-8

On 19 April 2017 at 15:57, Alvaro Garcia <maxpowel@gmail.com> wrote:

> Hi! I have built some recipes (ddcutil, unclutter, supervisor,
> nvidia-propietary-driver...) and I would like to share it. Should I push to
> openembedded meta or create my own layer?
>

Wherever is suitable really, meta-oe or one of the sublayers is probably
best.

Ross

--001a1137aca2673ac0054d864ef4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 April 2017 at 15:57, Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:maxpowel@gmail.com" target=3D"_blank">maxpowel@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi! I have bui=
lt some recipes (ddcutil, unclutter, supervisor, nvidia-propietary-driver..=
.) and I would like to share it. Should I push to openembedded meta or crea=
te my own layer?<br></div>
</blockquote></div><br>Wherever is suitable really, meta-oe or one of the s=
ublayers is probably best.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a1137aca2673ac0054d864ef4--
