Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D61F3E00D84; Tue, 20 Aug 2019 23:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FB67E00D74
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 23:36:24 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id b29so946223lfq.1
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 23:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hBNwAIz2S6+6sx/DBw8D46w9nho8yioWvN0Ag+cTnkw=;
	b=XqkwYDNCIMvfqj6dQVf+kT2QmbueumkZUJNjNR5/1I2DrOcXEUF8NyftCbPGDil3VN
	kIM+IbI1HnDWYCW4Da+4wMetWw2lsT31CSh59J/L97ni74ndZpMy5qOAlTfuC4B8XbVU
	WoJf88lCyd4FwtnaOIwD5vFAUe1f5K109v+h+AHlkYlRW1WfR6nlqB5N8aYkRQDgpNb3
	0b8aVUV2JKEfGsVcVojTrXChgSPa1x1TYOxl8YNyUC+tStmyftrCmJq+D1gZ3Sv/M7UB
	MHwsYlVn6MCv7DgtEmKtG8+eXd0+qqXJnpBZF3ByweNXe/9sswj8MlgJxZZgySeNsLpq
	eYaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hBNwAIz2S6+6sx/DBw8D46w9nho8yioWvN0Ag+cTnkw=;
	b=Pt4abca0isy9sAOl5DaU41lgEWcrCqGOxrJOkkfYBv4QYeJuOS9h+qYpguE+NGLQM6
	pODBA3/7ilMAjzed++JpQHqJL2Q+G6SwOSh5JU2joXZnmicGFb8y9sxn2BDvkfsGZLcS
	4gEhqWZxac64L+LjoC1GGGTRE9VaczpSYMpZtfVuuyubs+Yo3DgptMh/DC7HO0ZdFjyV
	7HuO8+UFFe2t8x674oOedKuDMaiRQPBahO23v9awz0SaDt3wJv95DjZGC/SLoE3dV0U6
	RhldwsBms9defDoBol4C0hxZzg1X5Vka+CpGUL+qDVrstyWGCt7oH/4LDAR44ebgciIf
	D+vw==
X-Gm-Message-State: APjAAAUkwRuh3eU+DKuTPJlkscXNDO6bTImtP1a4Pzp6vyAyo+ekSh+g
	HXTmloF2hWoR5JwmNiOpRGRglIAiInFwkdfl56azlA==
X-Google-Smtp-Source: APXvYqxMlCGj2IsodK2BQ9ZCJxLXyQLr+qx8QzYL0ln+xBis3cAPxxbadXqxUfDBF3m6xblyEu5XVJxRC/TARij99NI=
X-Received: by 2002:ac2:4351:: with SMTP id o17mr17914033lfl.21.1566369383437; 
	Tue, 20 Aug 2019 23:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <fb9ff55a-2fa8-39c5-aa9e-1cb9a5533c6e@faresoftware.it>
In-Reply-To: <fb9ff55a-2fa8-39c5-aa9e-1cb9a5533c6e@faresoftware.it>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 21 Aug 2019 08:36:12 +0200
Message-ID: <CAAx3WaCZF75mCHjBP_3vF=Xy8xNUUnBGQWaakhvZV7a_S9LqMA@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Final DISTRO_FEATURES value
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
X-List-Received-Date: Wed, 21 Aug 2019 06:36:25 -0000
Content-Type: multipart/alternative; boundary="000000000000afdec405909acac3"

--000000000000afdec405909acac3
Content-Type: text/plain; charset="UTF-8"

Ciao,

you can inspect the testdata file located next to the generated image,
under deploy floder.

Best regards,
Gabriele

Il giorno mer 21 ago 2019 alle ore 08:25 Mauro Ziliani <
mauro@faresoftware.it> ha scritto:

> Hi all.
>
> How can I inspect the final value of DISTRO_FEATURES when bitbake has
> completed the parse all recipes?
>
>
> Best regards,
>
>    MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000afdec405909acac3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ciao, <br></div><div><br></div><div>you can inspect t=
he testdata file located next to the generated image, under deploy floder.<=
/div><div><br></div><div>Best regards,</div><div>Gabriele<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorn=
o mer 21 ago 2019 alle ore 08:25 Mauro Ziliani &lt;<a href=3D"mailto:mauro@=
faresoftware.it">mauro@faresoftware.it</a>&gt; ha scritto:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Hi all.<br>
<br>
How can I inspect the final value of DISTRO_FEATURES when bitbake has <br>
completed the parse all recipes?<br>
<br>
<br>
Best regards,<br>
<br>
=C2=A0=C2=A0 MZ<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000afdec405909acac3--
