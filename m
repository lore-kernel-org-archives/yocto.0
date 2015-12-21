Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BC51E00BFF; Mon, 21 Dec 2015 03:25:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636E2E00BEE
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:25:12 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id 186so153247028iow.0
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=uyG8Ge/ymQvIl2thDodIbUqBzTBIQXwaI2Im381D+YY=;
	b=CSm0F7YvaMIN7nuZyCTZMBYkyj6AlGLqG/oGSd9T7II/rBGyWYIS3Xkv9LGUGuhzUe
	FsMjzui+GMvuNlJsfC1A1uTVVqswTr3Yd8cKZZXkUUxzHdgLbBlrej0YVKwkmUJVAfPO
	NQj1rvVo9THHknviq5nJDkASAmCjf6v+SANKhlJfosoPLFHzUDpOgI6betItmkR2K5kE
	uuq3nMN+7ltM0gMoimPG5E9RucWOhuEYyyDAfLrU3TmYCLjv38cXJTKYl/6MiWQYrSNC
	yM/kXKxmUiwQI/TX+G9QlV9qXqEbdQ7bJuRbEj9vVi6lodtLzuFkxtdVOBTghrNnWWQ5
	d5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=uyG8Ge/ymQvIl2thDodIbUqBzTBIQXwaI2Im381D+YY=;
	b=lm6RtYFrDV+xcRdahvJKz2EZr8uh0yvJ31cwJa1OiSlXw7KBR951vcrsT5H1fnJylz
	XU8HSFj71dxpaLPXy+L5euWEYx2H45jJ/QX/x/gYfhLVDw7K/qC0ZrC0mNMt6PC6VYBf
	mrdD26SoTqczN+K+98gYMU4uNw/lXVlTfMpnactX8POEO7kvfScuQ62FTQZmoc9EJRHx
	W/MHWu4uy7RrqFke45KJ38pwpaUtHU+yCN0iWDveLcvTS8dtLBU98QVNR3mPKoorl7It
	KdsbTfAI+1wZ3s38dFybeqhNO4jnwsPBofOhRciZCCh7DpOJlCpfhjjybY5NEkP+qQVg
	B+ww==
X-Gm-Message-State: ALoCoQmxqIW6XSsqVI3+9VnDuibpT3CLIfwh8ws9W95Of5sNrh1VoYP8SNKgux2mTbNwC4baVzfOn66eCUGsLNxDBVbu862vYg5gpw6pganRYYnh/bsUyHk=
X-Received: by 10.107.155.209 with SMTP id d200mr20641797ioe.133.1450697111727;
	Mon, 21 Dec 2015 03:25:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 21 Dec 2015 03:24:52 -0800 (PST)
In-Reply-To: <3848CC51-54FB-4AA9-A548-95229C186560@binarylemon.com>
References: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
	<CAJTo0Lbx7BWsWQiYqsRgbjStZh9sN7-WOFacJTfvG9GeEfhxnA@mail.gmail.com>
	<3848CC51-54FB-4AA9-A548-95229C186560@binarylemon.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Dec 2015 11:24:52 +0000
Message-ID: <CAJTo0Lb9PkqWxb6rDGv=TvJsi4b0F3UPzH-qmTPQ8-KtqFOMKA@mail.gmail.com>
To: Jozef Maslik <maslo@binarylemon.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: building on os x
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
X-List-Received-Date: Mon, 21 Dec 2015 11:25:13 -0000
Content-Type: multipart/alternative; boundary=001a11403402058576052766be6a

--001a11403402058576052766be6a
Content-Type: text/plain; charset=UTF-8

On 21 December 2015 at 11:09, Jozef Maslik <maslo@binarylemon.com> wrote:

> Anyway, are there any activities or plans to fix and support osx?
>

Well with El Capitan's improved security apparently crippling LD_PRELOAD
(so I hear, unverified currently), Pseudo won't work, which means an
alternative will need to be researched and implemented.  We really
recommend using a VM.  For what it's worth OSX supports hypervisors so
something like https://github.com/mist64/xhyve is free and should be very
efficient.

Ross

--001a11403402058576052766be6a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 December 2015 at 11:09, Jozef Maslik <span dir=3D"ltr">&lt;<a href=3D=
"mailto:maslo@binarylemon.com" target=3D"_blank">maslo@binarylemon.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bord=
er-left-style:solid;padding-left:1ex"><div>Anyway, are there any activities=
 or plans to fix and support osx?</div><div></div></blockquote></div><br>We=
ll with El Capitan&#39;s improved security apparently crippling LD_PRELOAD =
(so I hear, unverified currently), Pseudo won&#39;t work, which means an al=
ternative will need to be researched and implemented.=C2=A0 We really recom=
mend using a VM.=C2=A0 For what it&#39;s worth OSX supports hypervisors so =
something like=C2=A0<a href=3D"https://github.com/mist64/xhyve">https://git=
hub.com/mist64/xhyve</a> is free and should be very efficient.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11403402058576052766be6a--
