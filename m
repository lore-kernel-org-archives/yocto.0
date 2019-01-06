Return-Path: <jon.szymaniak.foss@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A303E00C59; Sun,  6 Jan 2019 14:26:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7898DE00BFB
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2019 14:26:30 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id z23so22427305vsj.11
	for <yocto@yoctoproject.org>; Sun, 06 Jan 2019 14:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=okpDZL2ABhqEhbFUA0JoFKiQAaeee+ykApYvyQhTULo=;
	b=elfx9IBdEyf9n16ZPpbY4JDOnh/i8TE8Y2cd9cVWTc+CBFlMJF6AIxJ8VRI8NITMkP
	kMS775Gq2p8DWKIldIbi5MiFljvbu+fv3Q5veo+UtgeGNoykUJcxzCrrjpTj7y7ifoUy
	hV5m+CgmRr0WJE7UprZjFEGOJtHM9ag15pkdcfECPA7J2sjya50IpDWrZO/X1kSYx3di
	kC+jJIox0/PH2/MDVKJ9xgznlaJtQaCbdf6BbVq+94AF7z4IYOwDei9Obo95ukgpgqju
	z2Sc76Ave5jK0rBL5G82qmh8CjB/n8Mtwz9e07WmBBnwCDWe3N+onA+W1+1n5l0DCq3+
	4VTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=okpDZL2ABhqEhbFUA0JoFKiQAaeee+ykApYvyQhTULo=;
	b=BrL2knP1jhpFmHrzEl+alHhnwbbQZvToZSokbf809IoN8AyxZeMbvC5HO/eFrH8AMA
	LzhyaRYnZDqPrDnS7LgJ8M4vEhhcwfjAZqdmdyYtckVtZXQ85HsOPr4WLxMDpxdILa1Q
	pDT3oeNE4MFbtqVfW82eDts7uscR78xvr8hlpK+O/fchkVy5nvBkyqk/GGa20PZifF71
	IyEr3ywZUAjplInMXT28GlJaB4mc26MDugQ3RhrPIvOgmxm/Ir422kIO8PO8D+yMa5jI
	HL/DdlGc0PEqXn0p84ETpgddo7dTLf25KlWQWUwP5VmPip/TOQrsITnp2k5adPDDTQvG
	mJJA==
X-Gm-Message-State: AA+aEWbd2HLe4GmTK43LpZRV7nnKnLVIESqWoYOz4jTJ0pVXcFY1PQ06
	Ub8ZfMB14W8TCL78UabX8+z8EulnOqReQJ11J4M=
X-Google-Smtp-Source: AFSGD/XVN+bvCULBXKB0sfxCi8/tgkEr3WSh2Qbk59PvWLiLsRzqyxEaKcBXs2xusP1Do6G1ubKKX3CKv06mA21tnbg=
X-Received: by 2002:a67:7685:: with SMTP id r127mr23760734vsc.35.1546813589555;
	Sun, 06 Jan 2019 14:26:29 -0800 (PST)
MIME-Version: 1.0
References: <CAN70yQXGX5kvedi=MqfbRmPBHk5zR+ZrsaaT31NXq1wYc0Z06Q@mail.gmail.com>
In-Reply-To: <CAN70yQXGX5kvedi=MqfbRmPBHk5zR+ZrsaaT31NXq1wYc0Z06Q@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Sun, 6 Jan 2019 16:26:17 -0600
Message-ID: <CAPxrFVmJ4KheAw=nKGfZri1ovU02ycpBFbNux_XCGipyje+bOA@mail.gmail.com>
To: nishant poorswani <nishantpoorswani@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Making a script into an executable binary in yocto
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
X-List-Received-Date: Sun, 06 Jan 2019 22:26:31 -0000
Content-Type: multipart/alternative; boundary="0000000000008a0e05057ed19a86"

--0000000000008a0e05057ed19a86
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could you provide a bit more context about your particular use-case and
need to do this?

i.e. Why is deployment of the existing script insufficient?

I know this isn=E2=80=99t addressing your underlying question, but just wan=
t to see
if perhaps an alternative solution may be a better one for you.

On Sun, Jan 6, 2019 at 13:12 nishant poorswani <nishantpoorswani@gmail.com>
wrote:

> Hi, I wanted to know which is the best way of converting a bash script
> into an executable binary in yocto. One way to do this is to add a recipe
> for shc( script compiler) in yocto and then use the shc for compiling it =
in
> another recipe. Is there any other way to achieve this ? Any suggestions
> would be deeply appreciated.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008a0e05057ed19a86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div><div dir=3D"auto">Could you provide a bit more context about your=
 particular use-case and need to do this?</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">i.e. Why is deployment of the existing script insufficien=
t?</div></div><div dir=3D"auto"><br></div><div dir=3D"auto">I know this isn=
=E2=80=99t addressing your underlying question, but just want to see if per=
haps an alternative solution may be a better one for you.</div><div dir=3D"=
auto"><br></div><div><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Ja=
n 6, 2019 at 13:12 nishant poorswani &lt;<a href=3D"mailto:nishantpoorswani=
@gmail.com">nishantpoorswani@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"auto">Hi, I wanted to know which is the best=
 way of converting a bash script into an executable binary in yocto. One wa=
y to do this is to add a recipe for shc( script compiler) in yocto and then=
 use the shc for compiling it in another recipe. Is there any other way to =
achieve this ? Any suggestions would be deeply appreciated.=C2=A0</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--0000000000008a0e05057ed19a86--
