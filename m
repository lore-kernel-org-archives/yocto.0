Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCC22E00D26; Wed,  7 Dec 2016 05:08:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A800AE00D12
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:08:34 -0800 (PST)
Received: by mail-qt0-f172.google.com with SMTP id p16so376337411qta.0
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 05:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TdvuW2cNoWAK2uHzyw9QI+GP7FdrV5O4ZN5fSrZcaq8=;
	b=MN25eYCvy0iRfgyEjIgNr6GqQoW84I/JdSavKdn8ggR+4dBfoNhiK8yy+C4/g8dhVa
	mflpvNEuJ7JdULx4yGpckrrQQaOSXWhenL/rYpbsP6MlY3kQLtVDtBVgLkjVzLdvJogy
	bi7jxTcsJ1LYZ09HnAlxRLBCqipCw6rzvk+NmHZH6y35PYri34xVa/qZTKaMbGLaeInS
	VEody/RQnRM3rAG4RnxQEvz5nDCnL/fijU9Jy7qVvz/CQH7fCyE9M3yEIy28ww1sBAIm
	gu9Ae9XeBzsOvyCVbeT76oYzflpEMW92hdrOYFR8A2n6EcmRL8M4TBNIBEq+e7vanWSH
	q1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TdvuW2cNoWAK2uHzyw9QI+GP7FdrV5O4ZN5fSrZcaq8=;
	b=UFgVbL0HijoRim5i4vK9sHQu0lO1axmbQhMsDbc64TVmCvNdqRM9hbc0kENb/6NWq5
	EYKcZproS8beJsJWXh6s+Y3yq9bA0zBQV9LexdGO+vqxBdUMtTvNPKfMbdb6nBR2bTXn
	ypvvI3jLwFx7zhBK8qWzx9x3jQAJ6dTFpbA93bQNrRryYp8fAfdhoEMxzMlLerT7G37e
	NSxJY9w2UJx8dRgdP9Xo3BfN5RneMtI0W28SFChdBxtPDnnJWDLVeNVGBc9IUrgT9Z8N
	XekcH9pjeYtnwr7X0lgxMMkFlcQwy1bs9d8XvOE/lfW1hlMbeKCIbnuWQUTmmGs5tRVj
	yONA==
X-Gm-Message-State: AKaTC03211T6JqAPOLysQ5KI2jXxre8qN4V+fRv/BSz+6ldkWlcJuWSoKrRIabYVWHfslc7QTq+ljFrnvVWnfvXd
X-Received: by 10.237.44.161 with SMTP id g30mr61056728qtd.144.1481116113547; 
	Wed, 07 Dec 2016 05:08:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 7 Dec 2016 05:08:12 -0800 (PST)
In-Reply-To: <1481115648.19291.5.camel@toganlabs.com>
References: <1481115648.19291.5.camel@toganlabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Dec 2016 13:08:12 +0000
Message-ID: <CAJTo0LbUhfsw1nqzf9YvNG7Rv=b8Cq=xvSFNgxx+ZegS6+yR-A@mail.gmail.com>
To: pidge@toganlabs.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Ignoring Fetch errors for optional source.
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
X-List-Received-Date: Wed, 07 Dec 2016 13:08:37 -0000
Content-Type: multipart/alternative; boundary=94eb2c125848d1d74405431137fe

--94eb2c125848d1d74405431137fe
Content-Type: text/plain; charset=UTF-8

On 7 December 2016 at 13:00, Beth 'pidge' Flanagan <pidge@toganlabs.com>
wrote:

> I've an odd use case that I wonder if anyone has a work around/way of
> doing it.
>
> I've a client who has contractors who can't have access to a certain
> segment of the code base. So for example, a recipe will have a SRC_URI
> for the main bit that everyone has access to, but an extra src_uri that
> some people won't have access to.
>
> I want to be able to just ignore any fetch/unpack errors if that extra
> src is unfetchable. Thoughts on how to achieve this?
>

One solution would be to have a global variable I_AM_SPECIAL which the
recipes can use:

SRC_URI = "http://public.com/tarball.tar.gz
${@oe.types.boolean(d.getVar("I_AM_SPECIAL")) and '
http://private.com/tarball.tar.gz'}"

That might work, and also add determinism.

Ross

--94eb2c125848d1d74405431137fe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 December 2016 at 13:00, Beth &#39;pidge&#39; Flanagan <span dir=3D"ltr=
">&lt;<a href=3D"mailto:pidge@toganlabs.com" target=3D"_blank">pidge@toganl=
abs.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D"=
:502" class=3D"a3s aXjCH m158d9607e70f63b2">I&#39;ve an odd use case that I=
 wonder if anyone has a work around/way of<br>
doing it.<br>
<br>
I&#39;ve a client who has contractors who can&#39;t have access to a certai=
n<br>
segment of the code base. So for example, a recipe will have a SRC_URI<br>
for the main bit that everyone has access to, but an extra src_uri that<br>
some people won&#39;t have access to.<br>
<br>
I want to be able to just ignore any fetch/unpack errors if that extra<br>
src is unfetchable. Thoughts on how to achieve this?</div></blockquote></di=
v><br>One solution would be to have a global variable I_AM_SPECIAL which th=
e recipes can use:</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">SRC_URI =3D &quot;<a href=3D"http://public.com/tarball.tar.gz"=
>http://public.com/tarball.tar.gz</a> ${@oe.types.boolean(d.getVar(&quot;I_=
AM_SPECIAL&quot;)) and &#39;<a href=3D"http://private.com/tarball.tar.gz&#3=
9;">http://private.com/tarball.tar.gz&#39;</a>}&quot;</div><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">That might work, and also a=
dd determinism.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Ross</div></div>

--94eb2c125848d1d74405431137fe--
