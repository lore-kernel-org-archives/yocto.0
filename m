Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8E9CE00C75; Wed,  5 Dec 2018 03:04:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58C9AE00B77
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 03:04:25 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id c206so17182070oib.0
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 03:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ny3rjV27uTvSFG/hUaMgH9uxrOfRZ2AvfEo9g0d3RnM=;
	b=WueR0D8HvclrJQ0Ffj5bEo+wIOFkKjQCivItmPRQwz3g2WTMpthDHxQzKYpvH/nVXL
	lZS+AILc3hU0Suowkp0faz+Cc9NtnfwwQDR1XZI35jHXMHRLYFYdwChj952V723wSRkS
	vrjJ4mfcYufb8GOygOVFwvgYyDkVqLokTuYuhRbzCgnmnpN6E2JT+L0wUQKu6cwzGDfZ
	hgMZBFRveJPHkWQAkWH9lySHm4gcYiE5HG5a1/6Nfr0cVr7hw/dOjbr5h1ln6x5/W3rd
	DkK2x2pVTSWdnH/5UfZmPgdjGneRxm1d9ugFOx9uuwh8Uz7lVCLUVe409iCOhXRgG6c0
	l4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ny3rjV27uTvSFG/hUaMgH9uxrOfRZ2AvfEo9g0d3RnM=;
	b=JtuZCWri0JkmW1Hx7DEaMWyeamCvy6yYTAxC3EufphdgqbLV6cysx7R1fP8o2TMpyx
	/Qt3MHJlpezLRR6alYk35r/ACOyEpVK1y/cxINtji32Ep4fFAyqBETYZ09bGQfg56ynV
	+xWruI+Z9Qh9wuhAmrJKKO3lnJNA/NKq7pUGF0+WTvtCoB1pg55pNhpLCh+BOhRU2WG1
	I74WuvIp/OHaYF0wEYxYwfTF737qwNOlIDs/N44mFqB9sYVDbkVrn7Y9Le5S32SsNcDF
	HE2C9rrB4JRYI3Bl8uOg3MkywNtTgMfhcTDm6FnCt0oOE7lLDYtx9gRIO2D+oD4DzO3L
	OSsQ==
X-Gm-Message-State: AA+aEWY6lQn45ww1Kd5p8aOh7e4PKFyLkhAMdSFEkRIBPTPaXjRx8iMi
	FHpqcDv9v7hkW4wca6e53zreuw6W4dNot5VOUkWTRg==
X-Google-Smtp-Source: AFSGD/WV+n4dfCO8hJFjKx7k9MmlKwj5cuBnPQPtUOWY1K3OPkRpJcYirTGUSF7fuY1xQAYJllR4W4g0/NcfPlqEiW0=
X-Received: by 2002:aca:a11:: with SMTP id 17mr14010441oik.15.1544007864590;
	Wed, 05 Dec 2018 03:04:24 -0800 (PST)
MIME-Version: 1.0
References: <CAKYRCLS7ty16S1V2=TxnB-zsRMpxmXKMmf4iZJc-p2oWbDm6mA@mail.gmail.com>
In-Reply-To: <CAKYRCLS7ty16S1V2=TxnB-zsRMpxmXKMmf4iZJc-p2oWbDm6mA@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 5 Dec 2018 12:04:13 +0100
Message-ID: <CACKFPN1TkZU0712kpLEaRtQmd2A6xK_LXJxGF7Zy2obubH-D2g@mail.gmail.com>
To: bhuvaneswarik1991@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Need Support- Variable exporting
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
X-List-Received-Date: Wed, 05 Dec 2018 11:04:25 -0000
Content-Type: multipart/alternative; boundary="0000000000004ca6f1057c44580c"

--0000000000004ca6f1057c44580c
Content-Type: text/plain; charset="UTF-8"

AFAIK, you can't have dynamic variables in the local.conf that you
can control from bitbake.
If you want to dynamically pass a variable to bitbake, you need to
use the `-e` option and pass an environment file with you dynamic
variables in there. Or use a custom script that calls bitbake and with
some `sed` magic replace dummy variables in your local.conf.

Regards,
Dimitris

On Mon, Nov 19, 2018 at 1:21 PM bhuvana easwari <bhuvaneswarik1991@gmail.com>
wrote:

> Hi,
>
> I need support on the below issue.
>
> 1) Actually we are trying to build two machine from one meta-layer based
> on some choice.
> 2) Both devices having different configuration files.
> 3) Now we have to export a variable from machine configuration conf file
> to layer.conf
> 4) Based on the exported variable value,we are choosing device specific
> conf file.
>
> Can you please give some input on this
>
> Regards,
> Bhuvaneswari K
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004ca6f1057c44580c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">AFAIK, you can&#39;t have dynamic variables in the local.c=
onf that you<div>can control from bitbake.<br><div>If you want to dynamical=
ly pass a variable to bitbake, you need to</div></div><div>use the `-e` opt=
ion and pass an environment file with you dynamic</div><div>variables in th=
ere. Or use a custom script that calls bitbake and with</div><div>some `sed=
` magic replace dummy variables in your local.conf.</div><div><br></div><di=
v>Regards,</div><div>Dimitris</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Mon, Nov 19, 2018 at 1:21 PM bhuvana easwari &lt;<a href=
=3D"mailto:bhuvaneswarik1991@gmail.com">bhuvaneswarik1991@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><span sty=
le=3D"font-family:sans-serif;font-size:12.8px">Hi,</span><div dir=3D"auto" =
style=3D"font-family:sans-serif;font-size:12.8px"><br></div><div dir=3D"aut=
o" style=3D"font-family:sans-serif;font-size:12.8px">I need support on the =
below issue.</div><div dir=3D"auto" style=3D"font-family:sans-serif;font-si=
ze:12.8px"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif;font=
-size:12.8px"><div dir=3D"auto">1) Actually we are trying to build two mach=
ine from one meta-layer based on some choice.</div><div dir=3D"auto">2) Bot=
h devices having different configuration files.</div><div dir=3D"auto">3) N=
ow we have to export a variable from machine configuration conf file to lay=
er.conf</div><div dir=3D"auto">4) Based on the exported variable value,we a=
re choosing device specific conf file.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Can you please give some input on this</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Bhuvaneswari =
K</div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000004ca6f1057c44580c--
