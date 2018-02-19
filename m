Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E575AE00DFB; Mon, 19 Feb 2018 12:46:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC50E00D41
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 12:46:46 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id h21so10117834wmd.1
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 12:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=l3KpzlJcshJZwek8rLufZluMQNLDiA3Lmn0jHWSCHqU=;
	b=RZZpM1xJoopEYAeVquw2F4BAZUhB9gyVBMZE/kwhVUT4jKvG+7AUTuoam/uAcZsVx9
	wO78wS3lCTX6WDJtXmv+xrWOIiduJpv627xW+pnSGrO7jVzn56cKPxc9NgNtK3At62Lt
	X4gizpeu9pGhnR30rkFLF6x6U5+ae+Pb52mOnMvSGTW2qIQqERDqbEeYNEl3ZpXYyW5F
	J50ABp0LPhnpXHpgnDr4ytYbZrfz26l4/n+TEwcW+9MwmP9nNyxWW/wvig9XRUBdg2Rs
	2rKk5DWBASQPziR7s3GwTZvnonCU6tgX8+yAOtxVjrr7+b62zK0kOH3SmMN7q7VCyiEC
	lLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=l3KpzlJcshJZwek8rLufZluMQNLDiA3Lmn0jHWSCHqU=;
	b=es5hNXPN3Wpld8fjjxi/aT/Q2H99Wf+DVZFfgtl2CtcMgFfin19Crcm7XebbkKoRrQ
	4pW+l5+bIc5qUxZMb3sdQAXl2LizrTljPmtp8rxdcgN6jQUsglIz7XIHmppSCBk0LKep
	BDimmvLR7J9D/clKpwGQn3KOGm+vS2DSGlWB6KHLJSIxuNjnaSeUVXMtNDMrHnqIaBuE
	iPirY5Gfq66S1YI+cI+k3wu6Ds1A7N4ksZ9rVIRPi6tkZgfLUnzYwwrI2TN5UgnqSWTL
	Ot80NKfnLXJ0PiYrYRQ4/00H1iof09UBRfDmbtvgEjqMhTeTjaF693za/o5HLd7m8eaq
	IkFQ==
X-Gm-Message-State: APf1xPAU/93lEZYZxX8J5SzxeoYbZQtXoA5+UL2+vmau6Sigzf1r1IX2
	gHNd1Q0Fjgw4xvO4hflnRr+2DWZBZhGVajL7Mog=
X-Google-Smtp-Source: AH8x2279nUPU7TfxweW6JxejVr2o4WsGZAcUXUSB2YAtRpuvQAp/mURg5g83ZtRrIajPMMEnnSY9kx/exDXBEpaDzB4=
X-Received: by 10.80.224.139 with SMTP id f11mr21300747edl.50.1519073205737;
	Mon, 19 Feb 2018 12:46:45 -0800 (PST)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.80.173.171 with HTTP; Mon, 19 Feb 2018 12:46:25 -0800 (PST)
In-Reply-To: <CAJTo0La7R7AhY3xVwerW7X+sJTE2y-MRJOofvHqOt1xvOZpo=A@mail.gmail.com>
References: <1518817283-31382-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0La7R7AhY3xVwerW7X+sJTE2y-MRJOofvHqOt1xvOZpo=A@mail.gmail.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Mon, 19 Feb 2018 15:46:25 -0500
X-Google-Sender-Auth: r6U6qyelVUgd_kq6Um9_qgYOD24
Message-ID: <CAFrQVPPwDP1yaqAUsj+RVnYa=FoR4H2tyAYVT5CemWGVEZvczQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH] ptest.bbclass: fix path for multilib
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
X-List-Received-Date: Mon, 19 Feb 2018 20:46:48 -0000
Content-Type: multipart/alternative; boundary="089e08222454d0de58056596ca7b"

--089e08222454d0de58056596ca7b
Content-Type: text/plain; charset="UTF-8"

That's reasonable, but how would you propose that work?  An analogous fix
for ptest-runner is to use ${libdir} instead of /usr/lib (leaving the
bbclass intact), but that just flips the problem if you try to run
lib32-libfoo-ptest using a 64-bit ptest-runner with default arguments (not
specifying -d /usr/lib).  Alternatively, I suppose ptest-runner could look
in multiple directories by default (for example, ${libdir} and
${nonarch_libdir}, assuming they're different).  Although, it almost feels
like the run-ptest scripts should really be installed to ${libexecdir}.

I'll be glad to workup a different patch, but I want to make sure I
understand the desired design.

On Fri, Feb 16, 2018 at 6:12 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 16 February 2018 at 21:41, Kyle Russell <bkylerussell@gmail.com> wrote:
>
>> ptest-runner always looks at /usr/lib, so make this arch independent.
>>
>
> I'd say the bug here is in ptest-runner.  I'd expect to be able to install
> libfoo-ptest and lib32-libfoo-ptest in parallel.
>
> Ross
>

--089e08222454d0de58056596ca7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s reasonable, but how would you propose that work=
?=C2=A0 An analogous fix for ptest-runner is to use ${libdir} instead of /u=
sr/lib (leaving the bbclass intact), but that just flips the problem if you=
 try to run lib32-libfoo-ptest using a 64-bit ptest-runner with default arg=
uments (not specifying -d /usr/lib).=C2=A0 Alternatively, I suppose ptest-r=
unner could look in multiple directories by default (for example, ${libdir}=
 and ${nonarch_libdir}, assuming they&#39;re different).=C2=A0 Although, it=
 almost feels like the run-ptest scripts should really be installed to ${li=
bexecdir}.<div><br></div><div>I&#39;ll be glad to workup a different patch,=
 but I want to make sure I understand the desired design.</div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Feb 16, 2018 at=
 6:12 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@=
intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span class=3D"">On 16 Feb=
ruary 2018 at 21:41, Kyle Russell <span dir=3D"ltr">&lt;<a href=3D"mailto:b=
kylerussell@gmail.com" target=3D"_blank">bkylerussell@gmail.com</a>&gt;</sp=
an> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<span class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">ptest-runner always looks a=
t /usr/lib, so make this arch independent.<br></blockquote><div><br></div><=
/span><div>I&#39;d say the bug here is in ptest-runner.=C2=A0 I&#39;d expec=
t to be able to install libfoo-ptest and lib32-libfoo-ptest in parallel.</d=
iv><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross=
=C2=A0</div></font></span></div></div></div>
</blockquote></div><br></div>

--089e08222454d0de58056596ca7b--
