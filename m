Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C28FCE00C29; Tue,  7 Jun 2016 09:02:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3088BE006E9
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 09:02:53 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id h62so32265476itb.1
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 09:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=omF2tIkipdvAH7jLcnk/KKEFMjZpqLj+XyQ9e5NQy0I=;
	b=oJfgfZzpPirV88q5YbOWAb/UlaogOdRRd3qFQz16q95be+xlyoX28lKBMFVhLpWHWW
	XwbnnPdU/yARtDCXdev7kbtp8wyKmTUJ0VtBvxVmDDnMsxpVnWCU3FIuD3iWyQ7LlZoC
	KX2SQXgpehD4m/Y+cJUUydJd7X2zEEh3cYkkIr2PzgMf1r/XLg6wZTO/utwqTCx506mh
	b+Z82V3Tu8iYXBolZekw314giazGMEnnB1+zMnVuNjBDBw4+2sgz7B8YWjZBAob5hKxI
	8qncfcsFLCmH8/WjwEY013pIOxhCq3H7Ahli7KKeiGwqikFctIi00yUN1zYG+H5AiCyf
	ReNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=omF2tIkipdvAH7jLcnk/KKEFMjZpqLj+XyQ9e5NQy0I=;
	b=gZLBq6UVsTap3OyS8GQeSUOzhVuRyH3xybHN2kkYYYt2sRhRg70rbnDYB0PTEKSrbD
	+/L3tcXgS2jOQr8wLgynb7lLERZ5XyDpAV2Bt+StLMKWwRQHhG7Uw+t0QMkFf8YGQtix
	FSfhf5kOTyJMGIfvfdU7JCo/pJyqk5oqGaAN39UVt53cjud8yvWPg7ZrUX8PZIv4/ZHw
	/ccyjF5fO3Fz2cNv4gPnBZ7ZJAJ01sxheahKmE88jQwt2PdOqUrsxF0zXqKfQli8ilgM
	DOFzbDe2dSzrxmbMPAqMHUz+ijADVLxg6+fluLdC43XOpunm1pjRU/5JPHSmHSlV21Pd
	LkeA==
X-Gm-Message-State: ALyK8tJF6GCdUDsFukJaN71amx01spD1Y/+iHsMwtG+sfA/z0Y5yHbbwMdVSt0+vUhb+ny2Var3B6dGiHlss/gFc
X-Received: by 10.107.135.137 with SMTP id r9mr104272ioi.133.1465315372125;
	Tue, 07 Jun 2016 09:02:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 7 Jun 2016 09:02:32 -0700 (PDT)
In-Reply-To: <575456D5.4080800@mlbassoc.com>
References: <575456D5.4080800@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Jun 2016 17:02:32 +0100
Message-ID: <CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's this
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
X-List-Received-Date: Tue, 07 Jun 2016 16:02:56 -0000
Content-Type: multipart/alternative; boundary=001a113ec8423d66db0534b2528c

--001a113ec8423d66db0534b2528c
Content-Type: text/plain; charset=UTF-8

On 5 June 2016 at 17:44, Gary Thomas <gary@mlbassoc.com> wrote:

> I just updated my Poky repo and did a rebuild and saw this "error"
> (although it carried on with the build):
> ERROR: base-files-3.0.14-r89 do_install: Taskhash mismatch
> ceb25febc6f11a5cc2b3c4a4b0b2c136 verses 44f498452dfce5875451bca66b230e31
> for
> /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install
> ERROR: Taskhash mismatch ceb25febc6f11a5cc2b3c4a4b0b2c136 verses
> 44f498452dfce5875451bca66b230e31 for
> /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install
>
> What does this mean?  Should I be worried?
>

It means the hash calculated my the bitbake master was different to the
hash calculated when the worker started up.  This usually means that you're
using something like ${TIME} in the recipe but not marking it appropriatly
so the cache ignores it.  Do you have a base-files bbappend that writes a
timestamp?

Ross

--001a113ec8423d66db0534b2528c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 June 2016 at 17:44, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":2pw" class=3D"a3s aXjCH m=
15521749cc3610f9">I just updated my Poky repo and did a rebuild and saw thi=
s &quot;error&quot;<br>
(although it carried on with the build):<br>
ERROR: base-files-3.0.14-r89 do_install: Taskhash mismatch ceb25febc6f11a5c=
c2b3c4a4b0b2c136 verses 44f498452dfce5875451bca66b230e31 for /local/poky-cu=
tting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install<br>
ERROR: Taskhash mismatch ceb25febc6f11a5cc2b3c4a4b0b2c136 verses 44f498452d=
fce5875451bca66b230e31 for /local/poky-cutting-edge/meta/recipes-core/base-=
files/base-files_3.0.14.bb.do_install<br>
<br>
What does this mean?=C2=A0 Should I be worried?</div></blockquote></div><br=
>It means the hash calculated my the bitbake master was different to the ha=
sh calculated when the worker started up.=C2=A0 This usually means that you=
&#39;re using something like ${TIME} in the recipe but not marking it appro=
priatly so the cache ignores it.=C2=A0 Do you have a base-files bbappend th=
at writes a timestamp?</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a113ec8423d66db0534b2528c--
