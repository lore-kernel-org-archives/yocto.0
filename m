Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0812E00C95; Mon,  4 Sep 2017 07:33:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED, DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64C88E00C82
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 07:33:26 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id q64so1875441iod.5
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 07:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c1YmtzNm07xM0dIvp1HBSKnTbV/oJXLoVmuZnILJUoI=;
	b=sn7MrejUyBP7vJyT99K0gHUhfdsPzBdK8jV5UsII3Bh7fxR4Utpb1/nKV+IKJMthri
	zu5nxHyu5pQv6icOWps5Dg5h/pnvWNXQ3le3EVIi5t6yY/E9e09Hq7JhIEriZFY27FiV
	POFohmYG2vlZuN/4HFgO6ce+dnAoByc8GtvFT8a6AppxvQgZ5eaWaz93Ot1XXNOyv/+L
	vrFqndJkAWxmTpgyqi1Ztt85EgzcUt8+JH+drRJM16+0DMmStuUBUYBccGM/Pr/M4bNo
	6S0P9v1/uDfc1NenrqLuls+VvEubir+2HdLUhRMSY5veDyshIdIx9syQUs/4DDtGcXgx
	W/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c1YmtzNm07xM0dIvp1HBSKnTbV/oJXLoVmuZnILJUoI=;
	b=UQOL2RZj70IgalCuqTehqQYYapk/wbr/DyP642vtQfICYjqHFQwOSeXEo5SgMP5wG6
	wx7LnOKfB9AZUtG+XaCQmDYSdsEPoAXS71jbLTODmQX/7PpzH5tnLhkST51TdBl98F//
	A/kMRUx5RmPKBFD1T7/Nkx8e09+rxrw588dbNXVCMDNGJahCD0QQi7yekX/dj3QgTOsP
	WaPc50daCnX4cxzP3g/K0AtT/iUjvWPPx41+qrMVzRLHo1hhENBynXbt5zgq9VRvXfZF
	Prneq+8gDBYwEhyvxd9b0re9qMx3Iwrc/Fr2C2+JoJJbVnNm0llCcv5p5Dt1zoAeV2m+
	VMnw==
X-Gm-Message-State: AHPjjUinqyQnOCFdsk8gP+wu1lgckHtASzqse0huhYVl2VCn4dR74JEO
	LpYcKroh6mZwkK7PqZ3OszVeQ7GF0wSq
X-Google-Smtp-Source: ADKCNb47ML3dnAjHj4pVnxvZrivKjjalpE1qrBFJ0f1FxjQBZVF1EI2ofZouj5l1PUlxCDL+HD/CU9dnVVmhVsoBQ0o=
X-Received: by 10.107.53.17 with SMTP id c17mr811184ioa.117.1504535605727;
	Mon, 04 Sep 2017 07:33:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.33.83 with HTTP; Mon, 4 Sep 2017 07:33:05 -0700 (PDT)
In-Reply-To: <CAGAf8Lyitxw_adOzO7Rru6ho1zPOZ3k+Ese_bMsw=UJQrhbh7Q@mail.gmail.com>
References: <CAGAf8Lyitxw_adOzO7Rru6ho1zPOZ3k+Ese_bMsw=UJQrhbh7Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Sep 2017 15:33:05 +0100
Message-ID: <CAJTo0LZktt_mMu9rYFX0RtUnWT6yRAHv99HQW2VqJyOdLw8Twg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: The differences between rpm 4.x and rpm 5.x in Morty (Poky 2.2)
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
X-List-Received-Date: Mon, 04 Sep 2017 14:33:26 -0000
Content-Type: multipart/alternative; boundary="001a1144939054ed8505585dfed1"

--001a1144939054ed8505585dfed1
Content-Type: text/plain; charset="UTF-8"

On 4 September 2017 at 14:25, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> How can I achieve this for Morty? I know that I need to place DNF recipes
> into recipes-devtools/.
>
> Where should I place rpm 4.x, so it'll have only DNF to be dependent from
> it?
>

There were about 30 patches involved in the smart to DNF migration and
you'd need to backport most of them if you wanted to use dnf with morty.

If you *need* to use Morty then you'll have to use RPM+Smart (or dpkg, or
opkg).  If you want to use RPM+DNF then upgrading to Pyro is the only
sensible way.

Ross

--001a1144939054ed8505585dfed1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 4 September 2017 at 14:25, Zoran Stojsavljevic <span di=
r=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_b=
lank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>How can I ac=
hieve this for Morty? I know that I need to place DNF recipes into recipes-=
devtools/.<br></div></div></div></div></div></div></div><br></div>Where sho=
uld I place rpm 4.x, so it&#39;ll have only DNF to be dependent from it?</d=
iv></div></div></blockquote><div><br></div><div>There were about 30 patches=
 involved in the smart to DNF migration and you&#39;d need to backport most=
 of them if you wanted to use dnf with morty.</div><div><br></div><div>If y=
ou *need* to use Morty then you&#39;ll have to use RPM+Smart (or dpkg, or o=
pkg).=C2=A0 If you want to use RPM+DNF then upgrading to Pyro is the only s=
ensible way.</div><div><br></div><div>Ross</div></div></div></div>

--001a1144939054ed8505585dfed1--
