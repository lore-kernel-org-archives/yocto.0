Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4FE1E01346
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 05:44:10 -0700 (PDT)
Received: by lagr15 with SMTP id r15so4824240lag.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 05:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sFqK11tnP4OsruzjUjOff/XXAmua1YaYvSB2vky1xS0=;
	b=uOqJE1ttL3DkLBWPSpZviSxw0xQyzUL0dxrIn8x2LpepcLGDuA3bb9OF6Nr4e8DKU0
	XomebF4xG0QEHk3Ah+jub5EqIzN3UXk5ywXdwCaLeWQGAmk1A7sz6XxyE8v9y20f5Y1y
	Rl/gT7JGiNBMKOTfUdfayyr6v94JVIh4cdQShB+ksqNT120hf4TB5lQNHSFZsrgXp3RO
	f2SITZ2cwe1Hz3xEqdgXYqWRxkWMknwwEi9JnkKj315RBJ2sa9SsaysEtetcCnL4V9UW
	KffMz9F0a0gWbktl06LveD31lS6k18o0naj54GM+Y1dAjw0ypMvEJD52WWkjKJ7he4Uz
	ya/w==
MIME-Version: 1.0
Received: by 10.152.110.46 with SMTP id hx14mr9588541lab.21.1347885838403;
	Mon, 17 Sep 2012 05:43:58 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Mon, 17 Sep 2012 05:43:58 -0700 (PDT)
In-Reply-To: <10140530.yfykbKl0dX@helios>
References: <CANmVirgOc_q2oedDxnCQBqgP+-t8=DdFT_nhTGjbAh=9iZZhaA@mail.gmail.com>
	<10140530.yfykbKl0dX@helios>
Date: Mon, 17 Sep 2012 09:43:58 -0300
Message-ID: <CANmVirh19vggzaRJWi1L5ZZBnCZSgdR8zgo7ujD2fpNNbFfYZw@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake for list packages
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
X-List-Received-Date: Mon, 17 Sep 2012 12:44:11 -0000
Content-Type: multipart/alternative; boundary=bcaec54ee3bc98875d04c9e5203c

--bcaec54ee3bc98875d04c9e5203c
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks That is IT!

2012/9/17 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Monday 17 September 2012 09:37:13 Raul Rosetto Munoz wrote:
> > I know that habe a bitbake command that list all packages.
>
> Do you mean list all recipes? If so, one of the following may be helpful:
>
>   bitbake -s
>
>   bitbake-layers show-recipes
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



--=20
*Raul Rosetto Mu=F1oz*

--bcaec54ee3bc98875d04c9e5203c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks That is IT!<br><br><div class=3D"gmail_quote">2012/9/17 Paul Eggleto=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" ta=
rget=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span><br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
<div class=3D"im">On Monday 17 September 2012 09:37:13 Raul Rosetto Munoz w=
rote:<br>
&gt; I know that habe a bitbake command that list all packages.<br>
<br>
</div>Do you mean list all recipes? If so, one of the following may be help=
ful:<br>
<br>
=A0 bitbake -s<br>
<br>
=A0 bitbake-layers show-recipes<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><b>Raul Rosetto Mu=F1oz</b><br>

--bcaec54ee3bc98875d04c9e5203c--
