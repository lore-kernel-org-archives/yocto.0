Return-Path: <jefro.net@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95CE1E00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 14:07:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk32 with SMTP id 32so653222pzk.7
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 14:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=cXEo+PPkiHhrwYQntUp8wRt9F9lt8n22Fp5JjnuVNLc=;
	b=lezCRmBfG/HlxqIanjxyBjQFAxOYKFOQlHIC+kP+0UaRrrTY7NljVgwOq5D4k3sHvM
	8axVv1XOLSug32MLouYwoeqCp9eRH0UmzgSDhAgcH9E7mfjS6hulhzT1ueNJYnBno5HK
	V4lUplpvbj6PJ66iDQi4lIaitL7dk70meFgug=
MIME-Version: 1.0
Received: by 10.50.188.225 with SMTP id gd1mr35570194igc.50.1321481250669;
	Wed, 16 Nov 2011 14:07:30 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.50.187.225 with HTTP; Wed, 16 Nov 2011 14:07:30 -0800 (PST)
Date: Wed, 16 Nov 2011 14:07:30 -0800
X-Google-Sender-Auth: hVgWSH7YLIN5Wy0aohRkmd1bLoc
Message-ID: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Yocto usability questions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Nov 2011 22:07:31 -0000
Content-Type: multipart/alternative; boundary=14dae93411f986038604b1e154b3

--14dae93411f986038604b1e154b3
Content-Type: text/plain; charset=ISO-8859-1

Mark Hatle said:

> Yocto is a cross-compiled build environment.  This is a departure to a lot
> of the Moblin/MeeGo work that has occurred in the past.  The advantages are
> you can use any commodity PC to target any (supported) architecture.
>  Disadvantages are that when you introduce new code, you need to ensure
> that it has a recipe (build instructions for bitbake) and can cross
> compile.  If everyone has to do the same work over and over, this can be
> time consuming and counter productive.  If people work together, the time
> and support burden are dramatically reduced. This can help negate issues
> people have had in the past with cross compiling. Note: Yocto -does- have a
> self hosted compile environment if it is needed, this is usually when cross
> compiling isn't easy to do for some reason.
>

Mark & everyone else listening:

Would you say that (1) the need for a recipe and (2) the requirement to
cross-compile are two of the most major usability or learning-curve
disadvantages of working with the Yocto Project (and oe-core)? What would
be a third disadvantage from a usability standpoint?

Another way to put it: if you could change three things about the Yocto
Project to make it more approachable for someone who has never used it
before, what would they be?

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--14dae93411f986038604b1e154b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Mark Hatle said:<div><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; mar=
gin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 2=
04); border-left-style: solid; padding-left: 1ex; ">
Yocto is a cross-compiled build environment. =A0This is a departure to a lo=
t of the Moblin/MeeGo work that has occurred in the past. =A0The advantages=
 are you can use any commodity PC to target any (supported) architecture. =
=A0Disadvantages are that when you introduce new code, you need to ensure t=
hat it has a recipe (build instructions for bitbake) and can cross compile.=
 =A0If everyone has to do the same work over and over, this can be time con=
suming and counter productive. =A0If people work together, the time and sup=
port burden are dramatically reduced. This can help negate issues people ha=
ve had in the past with cross compiling. Note: Yocto -does- have a self hos=
ted compile environment if it is needed, this is usually when cross compili=
ng isn&#39;t easy to do for some reason.<br>
</blockquote><div><br></div><div>Mark &amp; everyone else listening:</div><=
div><br></div><div>Would you say that (1) the need for a recipe and (2) the=
 requirement to cross-compile are two of the most major usability or learni=
ng-curve disadvantages of working with the Yocto Project (and oe-core)? Wha=
t would be a third disadvantage from a usability standpoint?=A0</div>
<div><br></div><div>Another way to put it: if you could change three things=
 about the Yocto Project to make it more approachable for someone who has n=
ever used it before, what would they be?</div><div><br></div></div>--=A0<br=
>
Jeff Osier-Mixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http=
://jefro.net/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=
=3D"http://yoctoproject.org/" target=3D"_blank">http://yoctoproject.org</a>=
</div><div>
<br></div>
</div>

--14dae93411f986038604b1e154b3--
