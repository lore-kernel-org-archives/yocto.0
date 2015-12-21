Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44098E00AFD; Mon, 21 Dec 2015 02:52:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD05E00825
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 02:52:07 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id q126so150339422iof.2
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 02:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=46PUiVUvTwOKacGaGFlt5SYvM1lQ2fV+19gIx+M+xWI=;
	b=trbub8DVo+HqmQiQrJJkOZZgKIKmUdBDg7sDPfozf45kPsGdpMMy0tY1LgYPdwpuYe
	ugee4Fl6tc/LEQ7RVedrQUn4wFb5NxcQaez7FZhy69j0fYS0VzD4AEubuqSI51NXwWTB
	66QqCCjAf9kMa1CX9LOPr2+Su7hGcWvhq9AtusVOojXUIqYshuAhd88O0U05X1XdTV+X
	Qt8UriM8Vvi+puwCyAAkobbSi8scGm3E/GEnpO4smobCS0fZUOLSC8ikmZdGoI10Vx9x
	XKy0GnroNa1RxlgKFrj+pJ0wFV5gwMgNsMW07V8h4Z6NO4xx/M98/zsw8vokXQtdiMxX
	UGDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=46PUiVUvTwOKacGaGFlt5SYvM1lQ2fV+19gIx+M+xWI=;
	b=kcwIgH1NEIiofAsExvcO/DlpD5KpmYfeOifQOg9GkLB9KzgUJ3OjlUC36/bINfJ1Nu
	ZKxFU1Rl5KpvWPFo7XZuDpMldVw7iVntcKKVQXEgY5HIfiYRiwqKTbiNzP/eIWUuvUar
	EAsxfURk0/84dlWh6UQAIzV8oHrPaV8TRWhpfp7ZOs06HRROYQybNyc+ruXO/MoN5X5L
	oy+qLELAp44FKmsYH9/sAfx8JKGMUQKygCh7Ff7ElRsXZojdigy9nW8EX1WTE856As/c
	pARt2hkSmh0+yhlUy28sdeW24vc5l5JeXpu3T4kU0FUMQX7OPrikNMYEWhkdJxLm0hVY
	YuUQ==
X-Gm-Message-State: ALoCoQlgbq1LSa2iPqKUtVcOx5ZrqFx6yLDgsAQ9+m/ntiJmC+qdZrejVsetmOWu/rZe3CAojChJGAuQi/Korsr5QoTtZBcLePcLorQ91mWbkOfBSTKxt9U=
X-Received: by 10.107.164.161 with SMTP id d33mr16916482ioj.148.1450695126616; 
	Mon, 21 Dec 2015 02:52:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 21 Dec 2015 02:51:47 -0800 (PST)
In-Reply-To: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
References: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Dec 2015 10:51:47 +0000
Message-ID: <CAJTo0Lbx7BWsWQiYqsRgbjStZh9sN7-WOFacJTfvG9GeEfhxnA@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
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
X-List-Received-Date: Mon, 21 Dec 2015 10:52:09 -0000
Content-Type: multipart/alternative; boundary=001a1141c976b31fba0527664799

--001a1141c976b31fba0527664799
Content-Type: text/plain; charset=UTF-8

On 21 December 2015 at 09:43, Belisko Marek <marek.belisko@gmail.com> wrote:

> I did check internet before asking but there is not much reference. So
> sorry for stupid question but it is possible to build e.g.
> core-image-minimal on os x natively? I read something about
> meta-darwin but I'm not sure if it's what I'm looking for ( IIRC it's
> for creating SDK for osx). Anybody tried that? Many thanks.
>

I've patches to make bitbake work (there's a few linuxisms here and there)
but the biggest problem is that OSX doesn't use GCC and various recipes
fail to build properly.  It's a whole lot easier to use a Linux VM, you can
even do a minimal (non-graphical) install and SSH into it.

Ross

--001a1141c976b31fba0527664799
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 December 2015 at 09:43, Belisko Marek <span dir=3D"ltr">&lt;<a href=
=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":5xx"=
 class=3D"a3s" style=3D"overflow:hidden">I did check internet before asking=
 but there is not much reference. So<br>
sorry for stupid question but it is possible to build e.g.<br>
core-image-minimal on os x natively? I read something about<br>
meta-darwin but I&#39;m not sure if it&#39;s what I&#39;m looking for ( IIR=
C it&#39;s<br>
for creating SDK for osx). Anybody tried that? Many thanks.</div></blockquo=
te></div><br>I&#39;ve patches to make bitbake work (there&#39;s a few linux=
isms here and there) but the biggest problem is that OSX doesn&#39;t use GC=
C and various recipes fail to build properly.=C2=A0 It&#39;s a whole lot ea=
sier to use a Linux VM, you can even do a minimal (non-graphical) install a=
nd SSH into it.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Ross</div></div>

--001a1141c976b31fba0527664799--
