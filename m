Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 123C3E00BF7; Thu,  8 Jun 2017 05:06:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1F3E00C37
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 05:06:07 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id i7so19076902ioe.1
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 05:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Xg9slUW0xm5vAT1a4XtFl+ql8ViMZ1pMogp1lZ5K/3k=;
	b=nzcBLyzAYXalkfNVhDuThQWt9FzHdU8BHY4rmJNiFOtVCqsnlFe0GHSMg929UsrQy1
	P1M82Tp6AMA8BxAApw3W0u/spU8QToOgQhLyt9PrBkb8ekX0VxHJyEeJFQyLLp/3oON/
	aw8jxHCWv+F0YdOuzhN2fBzg/2TidNzL0ufguTsuhBpV3oJheAUhaNaaBJuESpJcNSLC
	yGz/dADzwN/71b18j3UMF0ue08AIFFIqofqPirzoA/MrvepyuOurOOuAti0mbA8/gj7W
	xATSaAEx67DY3OaiMXoCh+//Jq7+QTcG7vbj9ro6LEVHXFTi2BrsjE5QzauOKEQsDT2k
	l5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Xg9slUW0xm5vAT1a4XtFl+ql8ViMZ1pMogp1lZ5K/3k=;
	b=B5QaQb05TrxGeAbqiFfRKCwSn/7gSmublCZ4ZsfWTnmNWcQbXYAmo4rnU6GQWVZ3xF
	/AvqFTMDSAdzmnd7tf61KQnVvXQwzC5N4f0azMNribbb6D8XUc4xTU0OzKs8PYRl/ocO
	BgWY9OblQ9qyOSlaVbuiqC06Lbjm0Z3f6dGUnp86kuNCik144YTfWFrNt7vpCteWFjN9
	w0fVET56aRJdBoSvtf/7B1FHAaUSA3iqu/iE1T/R7hxqWxxiLPsz87no/26vMiorlumG
	4SEO+jwl/MNhgu1eQYAzwdIzFYJwjirwEfBGJQv50gNEdS9f4KerDjNARpKFQ/Z4dU5d
	Er4w==
X-Gm-Message-State: AODbwcABERUxDe7fmu+VL6sUyDh7WDRiHv3I5aCfHRZbqPY1VF4l2lVQ
	GfiiQLHQgsIH3etY78w/i81svIsaB0ZC
X-Received: by 10.107.186.133 with SMTP id k127mr38004692iof.83.1496923566893; 
	Thu, 08 Jun 2017 05:06:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.130 with HTTP; Thu, 8 Jun 2017 05:05:36 -0700 (PDT)
In-Reply-To: <27cfc5c8-8741-a147-5c76-60d85e53cd9d@mlbassoc.com>
References: <27cfc5c8-8741-a147-5c76-60d85e53cd9d@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 8 Jun 2017 15:05:36 +0300
Message-ID: <CAHiDW_FLrA=m0fL_erHO2+QdGf4ZEQfh=uwhFHqEeh9XtkUpAQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changing terminal font in sato
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
X-List-Received-Date: Thu, 08 Jun 2017 12:06:19 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d8ca760598055171adcc"

--94eb2c05d8ca760598055171adcc
Content-Type: text/plain; charset="UTF-8"

On 1 June 2017 at 18:58, Gary Thomas <gary@mlbassoc.com> wrote:
>
> How does one change the terminal font (size) used by matchbox-terminal
> in the sato desktop?  I tried the 'matchbox-appearance' app and it didn't
> have any affect, nor could I see a way to change the font.


Hi, sorry for late answer,

matchbox-terminal is a _very_ thin app based on VteTerminal widget:
Modifying Vte font is a single API call but that is not exposed in the app
(as it has no configuration at all). In the short term your options are to
use another more serious terminal or send patches for mb-terminal...

Jussi

--94eb2c05d8ca760598055171adcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1 June 2017 at 18:58, Gary Thomas &lt;<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>&gt;<br>&gt; How do=
es one change the terminal font (size) used by matchbox-terminal<br>&gt; in=
 the sato desktop?=C2=A0 I tried the &#39;matchbox-appearance&#39; app and =
it didn&#39;t<br>&gt; have any affect, nor could I see a way to change the =
font.<br><br><br>Hi, sorry for late answer,<br><br>matchbox-terminal is a _=
very_ thin app based on VteTerminal widget: Modifying Vte font is a single =
API call but that is not exposed in the app (as it has no configuration at =
all). In the short term your options are to use another more serious termin=
al or send patches for mb-terminal...<br><br>Jussi<br>=C2=A0 <br><br></div>

--94eb2c05d8ca760598055171adcc--
