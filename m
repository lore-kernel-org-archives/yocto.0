Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDE94E00E4F; Sun, 11 Feb 2018 19:13:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F99E00DA9
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 19:12:59 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id g72so18519018lfg.5
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 19:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zHBZYSzFS2130T5VpCGi6pssIj0N6ofS4PJHewArY3s=;
	b=nLY8q6hlyHsHqcm1QR2i2tMl6uiOoSxJmNP6sMQOUd9ERfzU4GEOCX4FzOX3NaL6IU
	vhK1DP/h1cwKVVkLaY5SA/z+lGg8wwqELo3pAhgF1/njJtVwGEwApqInBJafTHAY1eZ5
	b8+viNZ+5OcXRKS3e6YQ1U+lnosOkRnzfri0t29GY4ZI/Nk1LVODWRrsV2B9ioPWnKLs
	VIlx6BfduluecOn4MG+Gxvb5k5iqUOlP6eYTSvVzZJghYPu2uxtumA166g+5hRDUw/OP
	HvFTF7ximQncMML+movXcuvuE/ikghT76fHsGMkz8GvC+/VBsoWAqXCCMK77kMpXHgRR
	aAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zHBZYSzFS2130T5VpCGi6pssIj0N6ofS4PJHewArY3s=;
	b=KawfVvs+mLV4i0n8MnSqt2aHBkjgoEvp1rkmSv4Ly7cSaBsoZKnhYxoWJr1huOCv1t
	mB1aRk4f6k1BhMcH9erx8KY6WKMzDXbKTQzr6F9SaNPrPWeQn32U8eH8hTH5KS3046Dk
	LtpcNa1zca/Kj/3odXQZeGC14Pk1rtDDsQ15S/Dhm4ieqfWY+mcw6ecS4+jC9WjDkK/H
	t0DYr4O4vPRIDxuWwMtUT+KhSoT2D2Jzph1PTTNN6a/x+1DwQQmJ1bvxOWME5sR8YBib
	IH9EkKM6JwfAH9MA4lxkBigV606PUxO6/4dfXzNWAkddqArZFAcqUcAC2Jh/w7O/yJnI
	kqnQ==
X-Gm-Message-State: APf1xPDDkm/wKlODKfVcvI4HTYSgJzWeG8PGX0zYZJ2y42TgsJc5/Dmq
	jCF04noi56pkth+0uzEC7wDLI0nIezK+5wbcmwM=
X-Google-Smtp-Source: AH8x226VM2eFzcpoyDuV/8aluMaI90neXUwsvPbArnDoKSSJSIxHKU41eObEcN5ZHnboXWU4i2H6x1J57UtAZj9XfrI=
X-Received: by 10.25.40.132 with SMTP id o126mr5956757lfo.29.1518405178475;
	Sun, 11 Feb 2018 19:12:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.217.21 with HTTP; Sun, 11 Feb 2018 19:12:57 -0800 (PST)
In-Reply-To: <CACfi_Z3y+gdLH04Ta3j+oGy4TU9J7YfFWoz=qavQfo6ntBmmSg@mail.gmail.com>
References: <CACfi_Z3y+gdLH04Ta3j+oGy4TU9J7YfFWoz=qavQfo6ntBmmSg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 11 Feb 2018 22:12:57 -0500
Message-ID: <CAHUNapSPmr7N5ZGbX5-hDewtjwLuU5tQEdOofz29wwBMSkuKaw@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto uses UTC time for DATETIME instead of localtime
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
X-List-Received-Date: Mon, 12 Feb 2018 03:13:00 -0000
Content-Type: multipart/alternative; boundary="001a1146c06a49cb170564fb418d"

--001a1146c06a49cb170564fb418d
Content-Type: text/plain; charset="UTF-8"

On Sun, Feb 11, 2018 at 7:30 PM, Davis Roman <davis.roman84@gmail.com>
wrote:

> I'm using the DATETIME variable to generate timestamps for my final images
> however I see that yocto is using UTC time.
>
> I'd much prefer if yocto used localtime.
>
> Any suggestions on how to change this?
>
>
You asked this same question almost exactly a month ago, and it was
answered then. Was there something wrong with that answer?

--001a1146c06a49cb170564fb418d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
un, Feb 11, 2018 at 7:30 PM, Davis Roman <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:davis.roman84@gmail.com" target=3D"_blank">davis.roman84@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">I&#39;m using the DATETIME variable to generate timestamps f=
or my final images however I see that yocto is using UTC time.<div><br></di=
v><div>I&#39;d much prefer if yocto used localtime.</div><div><br></div><di=
v>Any suggestions on how to change this?</div><br></div></blockquote><div><=
br>You asked this same question almost exactly a month ago, and it was answ=
ered then. Was there something wrong with that answer? <br></div></div></di=
v></div>

--001a1146c06a49cb170564fb418d--
