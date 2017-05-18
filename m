Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E275FE00B43; Thu, 18 May 2017 08:24:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB70CE00961
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 08:24:30 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id b204so58388671oii.1
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 08:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4ZmteOlQL0TSg6Zf1xD96Cles/8MUZCcapCqXQ2GBXA=;
	b=hIdOtZcwuM42qG2LdCI8kmgB9EdM7NwzGthOjV+yJ0I4qoLWBxybKSszeCQqvbQfZy
	RBQ8qzTnY4ItuA/xj5QOCDysxrfyviwtSkNxumwHesREJVrou/txaPx/lHQ1+cRW3yPx
	2tiG0OuI0nPhlDvaQD6CLtoi27zgAffMLa9Ixtk1Qx40RVY5Q3TUFMed30Cvr0kAVS9b
	wPwZxZyns6RoGTyg5Hrmn5UtwgjwYstZb+R49K3J+hDWzG6iGpwbKNagDGgBPNDr+DV+
	u5SM8eBxNkVHdUZA8E4ZrZg2qanaP0jJfIsPuYcwHA3KzqQEM72BTOTLZE7X6CJrvJb1
	Ok0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4ZmteOlQL0TSg6Zf1xD96Cles/8MUZCcapCqXQ2GBXA=;
	b=F07DX2w+LxzAbggudvlYE4EVxRjKzg7AorT6Zt5ZNNjSREGrvkO3tmA4tzxBpBezG0
	Kgwf2Uh49NSH5EHOd2vlSB82sVF2VSYDKaYXUJe/4gnsdqps12ZlHj4VA7qvRQNN08nS
	sjaRpyUTXsavXJz0W9aa2nIdMcgKocO4sPJzj10qLB7XuNJRvYmAcnZJZG8k2tAR72o5
	VgrOwzIP49ZHpN+ylp35SxXO1d5JVSmgPgWl1v4we7T6qx2AhGaCwQXxkcADaFLRaXOm
	zW87dH4ixbX2EGniPTjA5iAtVMA0WnycdzoEn/v5LGvbtQ4NggFko3q9jawOdzQJKk9q
	WP0Q==
X-Gm-Message-State: AODbwcAOcjC6LvXmMYdGPg4Uio7VeZWdqiAswB/CB0aDipPZMFmDhrMl
	L9JyH7HI7EvRL/T7xvwovbm2PnVEsM8B
X-Received: by 10.202.172.194 with SMTP id v185mr2601267oie.176.1495121069498; 
	Thu, 18 May 2017 08:24:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.30.226 with HTTP; Thu, 18 May 2017 08:24:09 -0700 (PDT)
In-Reply-To: <20170518072237.9271-2-kai.kang@windriver.com>
References: <20170518072237.9271-1-kai.kang@windriver.com>
	<20170518072237.9271-2-kai.kang@windriver.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Thu, 18 May 2017 08:24:09 -0700
Message-ID: <CABcZANn+ARi=zuBQ61D7TkLWd++u0f-RVgsFzXz-C6OxGvnKzg@mail.gmail.com>
To: Kang Kai <kai.kang@windriver.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [PATCH] mtree: add recipe
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
X-List-Received-Date: Thu, 18 May 2017 15:24:34 -0000
Content-Type: multipart/alternative; boundary="001a113ce7dc3e6e93054fce00ef"

--001a113ce7dc3e6e93054fce00ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 18, 2017 at 12:22 AM, <kai.kang@windriver.com> wrote:

> From: Kai Kang <kai.kang@windriver.com>
>
> Add recipe mtree port from BSD. Add a patch to handle null return
> from getlogin.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>

Exactly what layer are you aiming for this to go to? The list you sent it
to (yocto) doesn=E2=80=99t imply any particular layer..
--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--001a113ce7dc3e6e93054fce00ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, May 18, 2017 at 12:22 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:=
kai.kang@windriver.com" target=3D"_blank">kai.kang@windriver.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1hg" class=3D"a3s=
 aXjCH m15c1a744903223bb">From: Kai Kang &lt;<a href=3D"mailto:kai.kang@win=
driver.com">kai.kang@windriver.com</a>&gt;<br>
<br>
Add recipe mtree port from BSD. Add a patch to handle null return<br>
from getlogin.<br>
<br>
Signed-off-by: Kai Kang &lt;<a href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a>&gt;</div></blockquote></div><br>Exactly what layer ar=
e you aiming for this to go to? The list you sent it to (yocto) doesn=E2=80=
=99t imply any particular layer..<br>-- <br><div class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">C=
hristopher Larson<br>kergoth at gmail dot com<br>Founder - BitBake, OpenEmb=
edded, OpenZaurus<br>Senior Software Engineer, Mentor Graphics</div></div><=
/div></div>
</div></div>

--001a113ce7dc3e6e93054fce00ef--
