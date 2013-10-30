Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E201E0173C
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:08:30 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id x13so2334921ief.37
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=R1/GEH+OKsmbgiS0hpKKRnC8IZpHoaAaMF8+lNTKKq0=;
	b=Beuc7oxH7tjIuofwQ6dqWKhS5DQNePd7YEXeXbLMG342QwE1G3K0qdYnL0V/FrDnpI
	VqHWYakwO0VIkg2zOgM+VXnvU+v5yPNLM8jnzPwKIZkkLTI7+frD3GfvYSx2WfFvIQLD
	ihlZ2lk1iHKCpr/8W6lC/OZ9e2pptP8Q70N2fl1p97LkG8LYM77uBFJUSeA15WI5x10l
	ftdHNJ4R99QNUSOsWw8d0Wqqq7wBvVlzlSSR7OVy8sgzFZZ5rqEOKPd7VPXdDRzhEbhg
	Qm8a1VGSSw+ISLLqtjkkp5mIlq2mEr9lumn1pbdy/3creuq071nZsTO4i3DfqcuwM6Ux
	Jy4w==
X-Received: by 10.50.43.131 with SMTP id w3mr2520627igl.17.1383142110559; Wed,
	30 Oct 2013 07:08:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Wed, 30 Oct 2013 07:08:10 -0700 (PDT)
In-Reply-To: <52710F99.7020701@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
	<526ECFF3.4060207@windriver.com>
	<CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
	<CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
	<CAMCfZKFPhz4odA9iMZ5aWzWtT1XR8JX_EHxJQLXyVuy+S7KLqg@mail.gmail.com>
	<CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com>
	<52710F99.7020701@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 30 Oct 2013 12:08:10 -0200
Message-ID: <CAMCfZKGkNCo-UCzEW5ZRJBrD-4z3CwgBzL+H8VjeKZdjRPkqTg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Wed, 30 Oct 2013 14:08:31 -0000
Content-Type: multipart/alternative; boundary=047d7bfea1862c967304e9f5de92

--047d7bfea1862c967304e9f5de92
Content-Type: text/plain; charset=ISO-8859-1

2013/10/30 Bruce Ashfield <bruce.ashfield@windriver.com>

> I've confirmed this behaviour on dylan when I exactly reproduced
> your configuration. The more interesting one is scenario 2, so I'm
> trying it out, before looking at #1 in more detail.
>
Phew, now I'm not feeling crazy.

Looking at linux.inc from meta-beagleboard I can see that there are a lot
of tweaks applied onto kernel config. Maybe it is bricking something.
https://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux.inc


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--047d7bfea1862c967304e9f5de92
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/30 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#000000">I&#39;ve confirm=
ed this behaviour on dylan when I exactly reproduced<br>


    your configuration. The more interesting one is scenario 2, so I&#39;m<=
br>
    trying it out, before looking at #1 in more detail.</div></blockquote><=
/div>Phew, now I&#39;m not feeling crazy.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra" style>Looking at linux.inc from meta-be=
agleboard I can see that there are a lot of tweaks applied onto kernel conf=
ig. Maybe it is bricking something.</div>

<div class=3D"gmail_extra" style><a href=3D"https://github.com/beagleboard/=
meta-beagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux.inc">http=
s://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/recipes-k=
ernel/linux/linux.inc</a><br>

</div><div class=3D"gmail_extra"><br><br clear=3D"all"><div><div dir=3D"ltr=
"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long=
 live rock &#39;n roll*/<br></div></div>
</div></div>

--047d7bfea1862c967304e9f5de92--
