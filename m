Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39812E00DC3; Wed,  8 Nov 2017 08:48:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32219E00D79
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:48:04 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id f187so7605835itb.1
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WhN5vIScjX2dnAiRPcP9e9Pu+BSkKoznrEnmbThWioU=;
	b=z8glP3A/lmVVIpPbFGCXQmr/g3K/UypdaBjd2QIrK8YFFa7s1nTnmWIJt/REMuKcfX
	9X9WPt5CY4w4GXMSlnOnFaeP9OiOmrnpuMHf42nzQUDDE4QzyV9kG90BP7boTEVb/7qZ
	+ZUaGvaVgtNgS5RiWGAiLK5cLQxdNcOeCgDMZzHtHP1Kfiailz/1LZIhukWrqPHR6Ei4
	ZouOi75+BHIMHzz9xRcaGq30uxZwEbXPoX7oOg5ipblN4v42195ocyJ+URHZ/oqJYKp8
	DLN1J1FSAr1QOga3Vl2FZYs58hr0LczLpWCHUU89yG+25JJBV04Z92/GMEzNya2DtOmM
	XhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WhN5vIScjX2dnAiRPcP9e9Pu+BSkKoznrEnmbThWioU=;
	b=NxYt7JTgFkPkqX3DnAD2kqJOjP8pCQEfxE434mCxbe51n2l5drqAzkCPRwJZFU8Dyt
	QUZXJKBNaqqLXpl3rWzMWR54oE2270S/THPyBDNLahWjWAYnu1rkAjd2AXyapgkV5G/U
	U3HaFImyZ29a2S08zNlUK8ZlvMVGxOP/0M/slA+o8QLKW598GnCFqyEVpuZgBR3bgoFt
	Tlw69KKUSro3uBhkG+0Z36/B2LcRn44YdxsK8++d1SKBcZCSkvkoKWm6AYEyheXU+9V0
	s7uww6/NyLmP3g31XxsUoDpIuhOXAO1gNpfOJPEPjiAHuIRiouRGDqlzTAYvH8obQTNj
	Ou3A==
X-Gm-Message-State: AJaThX52jzdJrn3DFDC2k8HxII6YT1fehPVXGH6DhjuWyHR8QmBMjE2e
	YyeX3mOdzuoqfOLK55MZYo2sXGqQtFMK51rntiSEuQ==
X-Google-Smtp-Source: ABhQp+Q7ksQN+kTd0dSzDVXCpLDSG9Iex85DaOaNgTI/SNcpEDz2eUZa42QqBVjRZyTBNUSAZ2LHIujdwAE+D4DSi58=
X-Received: by 10.36.81.21 with SMTP id s21mr1584374ita.144.1510159684509;
	Wed, 08 Nov 2017 08:48:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:47:44 -0800 (PST)
In-Reply-To: <CAE0QtjP=Yn32nBL0JBnMN0t8mqWNT1nh6r6074N7b5yzZ-VCVQ@mail.gmail.com>
References: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
	<CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
	<CAE0QtjP=Yn32nBL0JBnMN0t8mqWNT1nh6r6074N7b5yzZ-VCVQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:47:44 +0000
Message-ID: <CAJTo0Lbfeqt6jnn=d1DujyiDAoo9t_-vjTiu3YHP5KQctesdhA@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto documentation: no content, no PDF?
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
X-List-Received-Date: Wed, 08 Nov 2017 16:48:15 -0000
Content-Type: multipart/alternative; boundary="001a113a71468cba06055d7b7314"

--001a113a71468cba06055d7b7314
Content-Type: text/plain; charset="UTF-8"

On 8 November 2017 at 16:45, Jerry Lian <jerry.lian@gmail.com> wrote:

> The mega-manual should have content like: at least one line for each
> chapter, so that we can have a big picture.
>
> By the way, where is the "real docs"?
>
>
https://www.yoctoproject.org/documentation

Ross

--001a113a71468cba06055d7b7314
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 8=
 November 2017 at 16:45, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto=
:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The mega-manual should h=
ave content like: at least one line for each chapter, so that we can have a=
 big picture.<br><br></div>By the way, where is the &quot;real docs&quot;?<=
br><br></div></blockquote><div><br></div><div><a href=3D"https://www.yoctop=
roject.org/documentation">https://www.yoctoproject.org/documentation</a></d=
iv><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113a71468cba06055d7b7314--
