Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE8A5E00985; Thu, 19 Nov 2015 03:21:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE315E007DA
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 03:21:15 -0800 (PST)
Received: by igcph11 with SMTP id ph11so122165476igc.1
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 03:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=BHew5nXgCIwtLgCctUsSXOKG57lJBIX65wVvjadXceI=;
	b=Xjapanlcz3BV6pWnhO7ptd/RQn3whoL8bzl2h6weRNC39YBCSo1hENZWVZfaIMOvAU
	e7bCgulqIxjfkWlNJHUu5f98DX5PpaqiQRdEpydBgMDPt1WRytNaYm2Fb5HIcJRX4eRG
	a/mx6eH+3WvTvHmACHkIvR80WzhVgLXWERueQrkcqOGWiH65bLDDypyGrWWa7beMdnZ5
	7v1wAWsti9bY/47uxifC7kFfxMUy7/9ezuG0yLJnUOiffKKG6H9VV4yy+lWv9U9q2oG8
	A2RImp8MBxLralPGy+ncUkgTuY2205x0eV1BpyRL5EFmfKDLNp7eDEkXSlK33ADfpja2
	V7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BHew5nXgCIwtLgCctUsSXOKG57lJBIX65wVvjadXceI=;
	b=jZsFvAR1/qaSij/yU9cva/ZPPP+0D/iAUJOJ/hNcXP07ZOM6stMy0eDAXAw00awdru
	9DPHEQ1ucKXCXe7ftj0yKgbjmg6XjlG9cVy+dPkeVoIgH605AcH4pT6qu404OmBDVKpI
	SH1nZRWgaazdKwkHvJVcsfb/tPgknJPGHJvftu5EwAyIZjBpkpxXLUEpZeqoQfOuKnOf
	sgT3ems+3nUpZY+7OjMUt+JaC7alx1mYQQ2Jlr4zuu9yuivGrqU1GOceR6f/Jz+jZTqA
	PWW3AfL1zDcqRFpQKCKNDjQ7av4HG+SO5/mPmR18mAw3OZSXioaInW4hcqiUK+RvqTC7
	DuZA==
X-Gm-Message-State: ALoCoQmc0RojHkZsXHIt+voKuR143ixH0G4S+1kxah2Puu3YV0Eh5jsMkjEXkqTNA1Bs8MuRvAss
X-Received: by 10.50.79.129 with SMTP id j1mr7721233igx.52.1447932075084; Thu,
	19 Nov 2015 03:21:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Thu, 19 Nov 2015 03:20:55 -0800 (PST)
In-Reply-To: <CA0E6F9BA6AED7458C23277BD87075E510107688@DEMUMBX005.nsn-intra.net>
References: <CA0E6F9BA6AED7458C23277BD87075E510107688@DEMUMBX005.nsn-intra.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Nov 2015 11:20:55 +0000
Message-ID: <CAJTo0LYjN2_7v38sCMkeZXGQ+cK0K-nVKdc1xpXyu8ON5Yqv7w@mail.gmail.com>
To: "Krzeminski, Marcin (Nokia - PL/Wroclaw)" <marcin.krzeminski@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: After update to yocto 2.0 from 1.8 can not install app to /usr/sbin in SDK
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
X-List-Received-Date: Thu, 19 Nov 2015 11:21:16 -0000
Content-Type: multipart/alternative; boundary=089e011609fcfeaa0c0524e2f4cd

--089e011609fcfeaa0c0524e2f4cd
Content-Type: text/plain; charset=UTF-8

On 19 November 2015 at 10:59, Krzeminski, Marcin (Nokia - PL/Wroclaw) <
marcin.krzeminski@nokia.com> wrote:

> Does this behavior is somehow expected?
>

Yes.  sbindir is set to bindir for the SDK, so that all binaries installed
are trivially available to the user.   Instead of hard-coding
${prefix}/sbin use ${sbindir} everywhere and your binary will end up in the
SDK's usr/bin/.

Ross

--089e011609fcfeaa0c0524e2f4cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 November 2015 at 10:59, Krzeminski, Marcin (Nokia - PL/Wroclaw) <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:marcin.krzeminski@nokia.com" target=3D"_=
blank">marcin.krzeminski@nokia.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div><font color=3D"#222222">Does this behavior is somehow =
expected?</font></div>
<div></div></blockquote></div><br>Yes. =C2=A0sbindir is set to bindir for t=
he SDK, so that all binaries installed are trivially available to the user.=
 =C2=A0 Instead of hard-coding ${prefix}/sbin use ${sbindir} everywhere and=
 your binary will end up in the SDK&#39;s usr/bin/.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e011609fcfeaa0c0524e2f4cd--
