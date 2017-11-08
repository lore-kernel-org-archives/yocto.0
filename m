Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 394ECE00D51; Wed,  8 Nov 2017 11:27:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A24D0E00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 11:27:11 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id y15so8211090ita.4
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 11:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+WeA3RwCykJn6TG+tbM+Ru2OKgTZqWoiHCYuLITK2Dw=;
	b=KjlH50ADgxrZX57F+D9ion0WU5cISp9VqWZxxhjrAXsUAH/6Jyaovyojbdv6Dsiaxv
	Moq/Q4NT0Qx13bwUedhnsxfnmAJdK6Yt1FtovSAiCfu1talA/a8jYKKQtgfOs8cO79lU
	jZukEg0Lu6+Iju7TvSzJq/UWTAUoV3l/XjyNb/5ame2sqj2EHrV9ZxqCrFlYG0T9jKoj
	TfUe7tjf9fFWJuogQUD8Zgr4qFKio3MlVqDOSCT2V0c/ji4KoWTwYSh4D0o02YEBJWs3
	r6xfAap1nV3PlwCzG21y9p2ZbCR3KAw9Rsg7reLVWByHoMFzFhV4POkgrfTM8vKTI18m
	QyPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+WeA3RwCykJn6TG+tbM+Ru2OKgTZqWoiHCYuLITK2Dw=;
	b=RTGyPnP/F/75Lt1uCWAhKcFrVQJa0a1cQYh+N8jKAN/6KmVXkNLYH9A+fKrpn5ANrQ
	ThDk6/fG63P2K7CeiIPWC+I/24CDb3dfGrbtCf0oBu9qHJnJUkUzaNJlw0WLc9aS3wAu
	PeuGgVQVAR5qyhc9+cwJ4lwJ8TCTLIWYpj0bFwtCHYKtKo6+9xvQMCCgYOMo40pCg3Y3
	m87cpbko+xfCtS2bHIllW8WHFDqzI7H0ffYvlMKPZno7TAeUnZ01djXhSqAXIHC7Zeol
	hZ12i+fEiqHKo8rOc/PSTqk1rRQ9d1GmIRnqOyEfL3igv3Dj//xb6zavKTPUZbjMIsby
	99CA==
X-Gm-Message-State: AJaThX70UUr7U3NxrTb63qYfux7objtBuH9G/h2GoTZAP0IfA3Bu7j56
	pYro8ogXCnzdDSGVkvMH0iV3k6q9qdyODnD7kDNoVg==
X-Google-Smtp-Source: ABhQp+Tb1vdEN0ltvlHhG+9jAmDneix308xTmwML8bGdXjtjaidCl378I38eHtWbsjrJTiPV6Lg4tELtS2Woj3UOfBI=
X-Received: by 10.36.87.2 with SMTP id u2mr2209973ita.151.1510169230631; Wed,
	08 Nov 2017 11:27:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 11:26:49 -0800 (PST)
In-Reply-To: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 19:26:49 +0000
Message-ID: <CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
To: Ran Shalit <ranshalit@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: apt-get
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
X-List-Received-Date: Wed, 08 Nov 2017 19:27:12 -0000
Content-Type: multipart/alternative; boundary="001a1143e8548b0b64055d7dac72"

--001a1143e8548b0b64055d7dac72
Content-Type: text/plain; charset="UTF-8"

Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES includes
package-management.

Ross

On 8 November 2017 at 19:16, Ran Shalit <ranshalit@gmail.com> wrote:

> Hello,
>
> Is there a way to add "apt-get" command (and package manager) in yocto ?
>
> Thank you,
> Ran
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143e8548b0b64055d7dac72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_=
FEATURES includes package-management.<div><br></div><div>Ross</div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 November 2017 =
at 19:16, Ran Shalit <span dir=3D"ltr">&lt;<a href=3D"mailto:ranshalit@gmai=
l.com" target=3D"_blank">ranshalit@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">Hello,<br>
<br>
Is there a way to add &quot;apt-get&quot; command (and package manager) in =
yocto ?<br>
<br>
Thank you,<br>
Ran<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a1143e8548b0b64055d7dac72--
