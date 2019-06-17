Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 018E6E00D72; Mon, 17 Jun 2019 11:00:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33B8DE00D68
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 11:00:23 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id p17so10238645ljg.1
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 11:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=U69qF/ZAeOIiSgfLkuOrt+OvnwMfMMGxmZ7pLdZ/XPw=;
	b=Zpu2/gDdmBiEzzlbXg50udIKhwDpK+g70jnQ3AZFwzaJ4Fx9ZuWdPz5J5Lnk0y/mVg
	fSj/r9AYfW/Lv1IjOsHs0F8fIsBENEewriNDhQq3KL+AS0iZm/liDtwP0raRn8oBDtoo
	/I3zdEhu+ib7sHWVg/GwFlcqPNaAroqA6F91Dpdsi51kbyYFKivR44/Eqn7WS0tEy8pQ
	lxzVcaH7uoYd6Ec7tDhKEM8TA5umqVP8wx8vG3QN8URElkvzI+ydnbgiPef0BNz7LS6I
	S8gqiuT9pemYs7xof5D3lCbr455kr8gVzZXv5/orKqw7qBUFWBdh+rMln47OmCEQjmPy
	ZIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=U69qF/ZAeOIiSgfLkuOrt+OvnwMfMMGxmZ7pLdZ/XPw=;
	b=ildp9q2E6CcGMyMKlUZ0Rk+dWSdLZ1nhHuKcm7/SYEaWC+tHyB5euV9Qtx1a9JXT8K
	SRlT4J7rMdLH7vQrfjVKYXmdPHjltNk+MKfYbxNvZqXYGsjijpP/1oI93Y/UHb7wr8ga
	IT2ERNG9drNGXtyv18CErTjBS7PgtBw0cZ8C6Un0g0eGHEF1Y0iEb5GZWxqnBG2+iaM7
	3jqrxRhQ3yEwJJotpB/r5c6as1JsQ5+3N2d8eQvbLUoSOeaFo9J1QijV3kIcAVOzhIkE
	1cjP4xVw9RSr2H1t6zYkB2pOedb+1gP2/4fhJh7MFA40H5W4qe8xsQsXUk/vrJVljLt8
	N3BA==
X-Gm-Message-State: APjAAAWKAo6+FbWtQcBcuQvkdZOJJCNTUH/IHoeWo2T6v6DPeY39X2qQ
	SkSSfeEd8fSXaMKoGqonJwNOEBH/dXVym7AWaZ98tA==
X-Google-Smtp-Source: APXvYqylwHEzEJQTvubXtTmnEXASbsfQ+7qg5IAFb9TjWyxKMehFL3ND7ejCpsEnmjxi01DxdpI31C1nONZsmB0kOSc=
X-Received: by 2002:a2e:2993:: with SMTP id p19mr31956605ljp.202.1560794422084;
	Mon, 17 Jun 2019 11:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCUb18Yf6Qp33qQCu9O3s-qpa75uoSm+sKv89jR0FbZmQ@mail.gmail.com>
In-Reply-To: <CAAx3WaCUb18Yf6Qp33qQCu9O3s-qpa75uoSm+sKv89jR0FbZmQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Mon, 17 Jun 2019 11:00:09 -0700
Message-ID: <CAPxNcnfeBKEEn-fEW2evxd3O3uVxrFmuOJMb6quwZz=oGpXgYg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Running Yocto inside Docker
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
X-List-Received-Date: Mon, 17 Jun 2019 18:00:24 -0000
Content-Type: multipart/alternative; boundary="000000000000189888058b88c5b8"

--000000000000189888058b88c5b8
Content-Type: text/plain; charset="UTF-8"

That's more of a Gitlab than Yocto question. I am doing this all the time
with my GL server on AWS. You need to add deploy a key to the repo you want
to access and then push the key to your Docker instance from gitlab-ci.yaml
from the repo that you are using with GL CI.

:rjs

On Mon, Jun 17, 2019, 07:20 Gabriele Zampieri <gabbla.malist@gmail.com>
wrote:

> Hi all,
>
> does anyone have a guide on how to setup Yocto to run inside docker? Right
> now I managed to trigger the build from GitLab, but I'm facing an issue
> related to ssh keys (some recipes from my meta layer are hosted on a
> privare repository). Probably this is not the best mailing list to ask this
> kind of question, but it may worth a try.
>
> Thank you,
> Gabriele
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000189888058b88c5b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">That&#39;s more of a Gitlab than Yocto question. I am doi=
ng this all the time with my GL server on AWS. You need to add deploy a key=
 to the repo you want to access and then push the key to your Docker instan=
ce from gitlab-ci.yaml from the repo that you are using with GL CI.<div dir=
=3D"auto"><br></div><div dir=3D"auto">:rjs</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2019, 07:20=
 Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com">gabbla.ma=
list@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
dir=3D"ltr"><div>Hi all,</div><div><br></div><div>does anyone have a guide =
on how to setup Yocto to run inside docker? Right now I managed to trigger =
the build from GitLab, but I&#39;m facing an issue related to ssh keys (som=
e recipes from my meta layer are hosted on a privare repository). Probably =
this is not the best mailing list to ask this kind of question, but it may =
worth a try.</div><div><br></div><div>Thank you, <br></div><div>Gabriele<br=
></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>

--000000000000189888058b88c5b8--
