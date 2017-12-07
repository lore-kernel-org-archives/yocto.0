Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B620E00D6B; Thu,  7 Dec 2017 02:20:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C6F2E00D69
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 02:20:50 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id m59so16133886qte.11
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 02:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6h54lU7L5RiV7F67SyQFLI9C1G3M5IOrT2s0sy9C2Js=;
	b=ht9y22kpXk+4q0+rRdAAJVXOuHCi9IYQgqO/1VfJH4C4DzMs1m1VHz7jD+Y0A9M/Cu
	4qcoo1jPHvIjHpx7UgqU4vRreEG/tR4JG58wuU5LicAh1QETM64nVe45+vvpGqBxnG1l
	BVsZUDS4va6oda26Xw2Bk2XRfalEGG0gsfLpPYD5OGwQTWqpPRc4Me+ctVUgWrBJ91RT
	wiPl+yb4WYSYgeyF1GVivvxECB2JUCDjQsNhoMJ2DCPngLVuWIDZW16AndjFUfsNN8cf
	ET/p9Tc7UVoqjcdfgCgt4dSrGiOHgIEiZxVpF6/rY2GQv9qapLnVg44FOFTJVEkvAIR9
	E8ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6h54lU7L5RiV7F67SyQFLI9C1G3M5IOrT2s0sy9C2Js=;
	b=GwEyYinxJPhjkfZgdhDvs9gUCqKqz5cew0F0haM/wwI/ai4o/ZaqqbITZigrJqquOr
	xp+JTXmzA2+B4+CB9xeAj20fwW/u2Qs4ewl0xn6PxuYTz8zuM9ePnxz0guDhiVTYWfLR
	ZZFbjkLEg12PIwlM2D38T2OpOQvRzotpfiriWDOrVzWVMFhUu6tGeNKi4hydHQkoKVre
	kPvrgDuKqjNLT4fwu++xsZS+Qj09eOh2tlzktZR7OcL7Wy/KhCSfWLY8vUhOi/eb6kk5
	gJgKSsDJYoU3N0XJhVpD9XUFgPSrKKZJE6YH2canUZ6BsU/Z8Sq0u4aNI10flftHT9GT
	AyWg==
X-Gm-Message-State: AKGB3mJuTadY+fUk+uwFzzdU3wfw87k0UW00bkdWrQ2tfUQNLjwyXkHW
	yfJTfsiMMxOHXZO0sN115TX9b3nKWhoonILYFO0Kig==
X-Google-Smtp-Source: AGs4zMaeKGVeBVCEAviKtdUhze6MXlHdgQI4LvXhXaBSPMfp3259MKZfxneSVhLi7lNHazElr+9dPbtajMlcYs9HwO4=
X-Received: by 10.55.159.145 with SMTP id i139mr28646570qke.339.1512642049301; 
	Thu, 07 Dec 2017 02:20:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.182.96 with HTTP; Thu, 7 Dec 2017 02:20:48 -0800 (PST)
In-Reply-To: <1512604009.9473.18.camel@ibrieger.de>
References: <1512604009.9473.18.camel@ibrieger.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 7 Dec 2017 05:20:48 -0500
Message-ID: <CADkTA4N1tHFuUyh4Hni1xF0sRdcQ66BsmF=-WFT6S6r-OR6u4g@mail.gmail.com>
To: erwin.rieger@ibrieger.de
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Q: Kernel SCC files: shouldn't a changed patch trigger a rebuild?
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
X-List-Received-Date: Thu, 07 Dec 2017 10:20:51 -0000
Content-Type: multipart/alternative; boundary="001a114d7f68056206055fbd6cea"

--001a114d7f68056206055fbd6cea
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 6, 2017 at 6:46 PM, Erwin Rieger <erwin.rieger@ibrieger.de>
wrote:

>
> Hello list,
>
> i have written a kernel recipe derived from linux-yocto-custom. The
> SRC_URI includes a SCC file that in turn includes a kernel patch.
>
> First of all, this works as expected, the patch is applied to the kernel
> source and my custom kernel is built.
>
> But the kernel is NOT rebuilt if i modify the kernel patch (without
> touching the SCC file). In other words: changed files that are directly
> named in the SRC_URI variable trigger a rebuild, but indirectly included
> changed input files (through a SCC file) do not.
>
> Is this the intended behaviour?
>


Currently that is the intended behaviour.

The fetcher is what is responsible for detecting if something changes, and
re-fetching, etc.
The fetcher only knows about the files on the SRC_URI (or the SRCREV for a
remote repository).

The patch referenced by the .scc file is not directly on the SRC_URI so it
doesn't trigger
the re-fetch.

I've had an old bugzilla for this for some time, and have tried on a couple
of occasions to
address it, but ended up not getting the semantics right. i.e. not
re-inventing the fetcher
or duplicating code, etc.

I manage all my patches via either .scc files on the SRC_URI or via a repo
containing
.scc files + patches. Since that allows me to re-use them as functional
blocks between
kernels and couples changes to their configuration fragments. (I only point
that out to
say that your use case and workflow is valid)

If you do store the .scc files + patches in a repo, and fetch it via
AUTOREV (or a set SRCREV),
then you will get the behaviour you are looking for.

I'll bubble this back up to the top of my queue and follow up when I know a
bit more. I need
to revisit my old notes and see if anything is viable.

Cheers,

Bruce


>
>
> PS:
> I can provide more info and my test files if needed.
>
>
>
>
>
>
> --
> Mit freundlichen Gruessen Erwin Rieger
>
> --------------------------------------------------------------------
> | Ingenieurbuero Rieger, Software Entwicklung
> | EMail: erwin.rieger@ibrieger.de
> --------------------------------------------------------------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a114d7f68056206055fbd6cea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Dec 6, 2017 at 6:46 PM, Erwin Rieger <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:erwin.rieger@ibrieger.de" target=3D"_blank">erwin.rieger@ibri=
eger.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Hello list,<br>
<br>
i have written a kernel recipe derived from linux-yocto-custom. The<br>
SRC_URI includes a SCC file that in turn includes a kernel patch.<br>
<br>
First of all, this works as expected, the patch is applied to the kernel<br=
>
source and my custom kernel is built.<br>
<br>
But the kernel is NOT rebuilt if i modify the kernel patch (without<br>
touching the SCC file). In other words: changed files that are directly<br>
named in the SRC_URI variable trigger a rebuild, but indirectly included<br=
>
changed input files (through a SCC file) do not.<br>
<br>
Is this the intended behaviour?<br></blockquote><div><br></div><div><br></d=
iv><div>Currently that is the intended behaviour.=C2=A0</div><div><br></div=
><div>The fetcher is what is responsible for detecting if something changes=
, and re-fetching, etc.</div><div>The fetcher only knows about the files on=
 the SRC_URI (or the SRCREV for a remote repository).</div><div><br></div><=
div>The patch referenced by the .scc file is not directly on the SRC_URI so=
 it doesn&#39;t trigger</div><div>the re-fetch.</div><div><br></div><div>I&=
#39;ve had an old bugzilla for this for some time, and have tried on a coup=
le of occasions to</div><div>address it, but ended up not getting the seman=
tics right. i.e. not re-inventing the fetcher</div><div>or duplicating code=
, etc.</div><div><br></div><div>I manage all my patches via either .scc fil=
es on the SRC_URI or via a repo containing</div><div>.scc files + patches. =
Since that allows me to re-use them as functional blocks between</div><div>=
kernels and couples changes to their configuration fragments. (I only point=
 that out to</div><div>say that your use case and workflow is valid)</div><=
div><br></div><div>If you do store the .scc files + patches in a repo, and =
fetch it via AUTOREV (or a set SRCREV),</div><div>then you will get the beh=
aviour you are looking for.</div><div><br></div><div>I&#39;ll bubble this b=
ack up to the top of my queue and follow up when I know a bit more. I need<=
/div><div>to revisit my old notes and see if anything is viable.</div><div>=
<br></div><div>Cheers,</div><div><br></div><div>Bruce</div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<br>
<br>
PS:<br>
I can provide more info and my test files if needed.<br>
<span class=3D"m_-1944965775611412406HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
<br>
<br>
<br>
--<br>
Mit freundlichen Gruessen Erwin Rieger<br>
<br>
------------------------------<wbr>------------------------------<wbr>-----=
---<br>
| Ingenieurbuero Rieger, Software Entwicklung<br>
| EMail: <a href=3D"mailto:erwin.rieger@ibrieger.de" target=3D"_blank">erwi=
n.rieger@ibrieger.de</a><br>
------------------------------<wbr>------------------------------<wbr>-----=
---<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"m_-1944965775611412406gmail_signature" data-smartmail=3D"gm=
ail_signature">&quot;Thou shalt not follow the NULL pointer, for chaos and =
madness await thee at its end&quot;</div>
</div></div>

--001a114d7f68056206055fbd6cea--
