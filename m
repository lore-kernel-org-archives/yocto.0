Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCF54E00BEB; Tue, 27 Sep 2016 02:28:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.41 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D27BE00A48
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 02:28:38 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id 192so7540238vkl.2
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 02:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cnOeWVJVZuVGxdhlz4CiUbwUEdVIOMjweCoo3iF3ChU=;
	b=h1MxOkNeUHUL0rAfo134P3vojxQK95omUjX8rVkCz2tmz3bTcB6BQZ1mNgKTr9Qy0M
	kIVNdPJFxFHw7sTIu9J98He5xp4JNnUBa0+VizTnJJTwRzL6K9LYcrK0sxCmJWDiXnT3
	uYy6WsDE1BKTqQJWeM47Kk8uqw4D1REfIydlM+AVqMtETQoPtNdJXIqJttXIOf1S6AmO
	gQrxLtMhqyTeF0wQlBV35XbyXjjMgo7rl+W8g8G6QC2LUWI256Ney6vjeXNp+QomxZlh
	p87/Fw1O3JN8jfKyC7980rI1r/29mnWCjL5IwPJIOfXxGW349QYhHLz95N1MH6RxIAJk
	Mtnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cnOeWVJVZuVGxdhlz4CiUbwUEdVIOMjweCoo3iF3ChU=;
	b=WVdH3mtOB5Rnx2lg94YfpXCzlnM+QfRoaQqqblj/8lQXnfVh2E0Rdzlz2ULsymKpZ4
	jQtYgMb/L1ChN1R8o/p3LJGp1UK487OuHlM8MTcNhBJLrs6NQUF5gA34S6JkuYhD4vJS
	2Z6LPQShHPzuUhE/Ee56caVhdZ/hTkRUP0uDH/y3H16wIbnFaeMp6ftIhJdZphxuq/rX
	1HKD0LBFlqQFqfHaSOHjknx7qIlGl+ezLUMjmeLbxGz5wnTAMJuFBP4050f8xbqRz1Ex
	+I8fSe0OZNIQlrqsBNY5/szlhtwoV0/Xf5NoULFMYXh0qgHYDj5mMY8m5+QrNbGo+MyH
	jW0A==
X-Gm-Message-State: AA6/9RkDAnrObk/cTrXFTBEFLiquT6wwtberUUd2GO8yq8agkD61ur2pR62mDSc4OyPpwgx7yYkPWZWygpvPHg==
X-Received: by 10.31.61.133 with SMTP id k127mr12195165vka.76.1474968517829;
	Tue, 27 Sep 2016 02:28:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.83.26 with HTTP; Tue, 27 Sep 2016 02:28:37 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20FA7E3F@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20FA7C19@MBX214.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20FA7E3F@MBX214.d.ethz.ch>
From: "Chris Z." <winotu.email@gmail.com>
Date: Tue, 27 Sep 2016 11:28:37 +0200
Message-ID: <CAEjjReJMjr=dVvxhUtYB0y_SwGQvOYEEe0MTNLqufmozC=iJLA@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetcher failure
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
X-List-Received-Date: Tue, 27 Sep 2016 09:28:40 -0000
Content-Type: multipart/alternative; boundary=001a114db2f68f69f6053d79de06

--001a114db2f68f69f6053d79de06
Content-Type: text/plain; charset=UTF-8

Hi,

Have you checked repository for hash
bd51baffc04ecc73f933aee1c3a37c8b44b889a7 in branch sdk-v2.0.x ?

On Tue, Sep 27, 2016 at 9:50 AM, Anicic Damir (PSI) <damir.anicic@psi.ch>
wrote:

> Hi again,
>
> it seems no one has interests in my problem.
>
> I have the same problem with Ubuntu host build, too.
>
> What I see is that file gets downloaded several times, and then discarded
> for some reason.
> One of the last downloads (or the last one), does some
>    git -c core.fsyncobjectfiles=0 fetch -f --prune git://
> git.freescale.com/ppc/sdk/linux.git refs/*:refs/*
>    git index-pack --stdin --fix-thin --keep=fetch-pack 23181 on pc8414
> --pack_header=2,861898
> stuf, but that probably also fails.
>
> I have attached the bitbake output, and error log files.
>
> Kind regards,
> Damir
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114db2f68f69f6053d79de06
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>Have you checked repository for hash=
 bd51baffc04ecc73f933aee1c3a37c8b44b889a7 in branch sdk-v2.0.x ?<br></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 27, 20=
16 at 9:50 AM, Anicic Damir (PSI) <span dir=3D"ltr">&lt;<a href=3D"mailto:d=
amir.anicic@psi.ch" target=3D"_blank">damir.anicic@psi.ch</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:#000000;font-size:10pt=
">Hi again,<br>
<br>
it seems no one has interests in my problem.<br>
<br>
I have the same problem with Ubuntu host build, too.<br>
<br>
What I see is that file gets downloaded several times, and then discarded f=
or some reason.<br>
One of the last downloads (or the last one), does some<br>
=C2=A0=C2=A0 git -c core.fsyncobjectfiles=3D0 fetch -f --prune git://<a hre=
f=3D"http://git.freescale.com/ppc/sdk/linux.git" target=3D"_blank">git.free=
scale.com/ppc/<wbr>sdk/linux.git</a> refs/*:refs/*<br>
=C2=A0=C2=A0 git index-pack --stdin --fix-thin --keep=3Dfetch-pack 23181 on=
 pc8414 --pack_header=3D2,861898<br>
stuf, but that probably also fails.<br>
<br>
I have attached the bitbake output, and error log files.<br>
<br>
Kind regards,<br>
Damir<br>
<br>
<br>
<br>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114db2f68f69f6053d79de06--
