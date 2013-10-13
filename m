Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7649CE0167B
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2013 08:42:58 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id er20so4817929lab.7
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2013 08:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=dJOorZqlbcoeXuRoqNj5p9fkbEarweaFhEi5C9BMtVw=;
	b=Rjb90fLcNXj9dWi0m2SEWmtNaBPMtRKjSwUsAfi9NrZPdNJtU9bImzi+i6B6PXRo1b
	OtuRtxHuZnbPS3fqK0MOn8li7uaQGrcaAis4e7uPStxy9wTOsI/N3x6iDFRv7V5MV7o9
	+mEYyKGyLAKWFxLkfWg1jZQ4NJY93KYJ0qhwMK1p5QOXQjyZs/vf+bkudfLtEoqIbI2k
	8Ckn+vNqD0ID3uXf9HRbDfgVMyt14WMQl45AkGd9CLCA7t/B0J76J286HqNBB+hra/d3
	0QJpZXTWN9IDLjlOiKUGaAAbH6RB9kf/0U0uFFkG5VCT5nrheMmvEpYQ1p5puzmAZiKN
	9czg==
X-Received: by 10.112.52.225 with SMTP id w1mr2038265lbo.31.1381678977331;
	Sun, 13 Oct 2013 08:42:57 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Sun, 13 Oct 2013 08:42:36 -0700 (PDT)
In-Reply-To: <525AB688.6050409@gmail.com>
References: <525AB688.6050409@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 13 Oct 2013 08:42:36 -0700
X-Google-Sender-Auth: 6JFrKlmliVJyStwvde3yBjejQlc
Message-ID: <CABcZANkOcQtPrdJgqEnC69xkmBq+WMRenAVvhQiH5LUm+wWLtA@mail.gmail.com>
To: seth bollinger <seth.boll@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DISTRO_FEATURES and shared SSTATE
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
X-List-Received-Date: Sun, 13 Oct 2013 15:42:59 -0000
Content-Type: multipart/alternative; boundary=001a11c3fe90a3371d04e8a134ae

--001a11c3fe90a3371d04e8a134ae
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 13, 2013 at 8:04 AM, seth bollinger <seth.boll@gmail.com> wrote:

> How does yocto know which package version to choose for an image if the
> package can be altered (compilation difference, or perhaps config
> alteration, etc.) by a DISTRO_FEATURE?
>
> For instance, if I make a change to sysvinit-inittab/inittab based on a
> DISTRO_FEATURE, I can have multiple versions of sysvinit-inittab, but only
> one shipping package, right?  If I'm building two different images that
> have that DISTRO_FEATURE set differently, won't one of the builds have the
> incorrect sysvinit-inittab package installed?
>

Changing such a variable will alter the checksum of the task, resulting in
re-execution of altered tasks if appropriate, or pulling from a different
sstate archive.
-- 
Christopher Larson

--001a11c3fe90a3371d04e8a134ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Oct 13, 2013 at 8:04 AM, seth bollinger <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:seth.boll@gmail.com" target=3D"_blank">seth.boll@gmail.com</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":ca" style=3D"overflow:hidden">Ho=
w does yocto know which package version to choose for an image if the packa=
ge can be altered (compilation difference, or perhaps config alteration, et=
c.) by a DISTRO_FEATURE?<br>


<br>
For instance, if I make a change to sysvinit-inittab/inittab based on a DIS=
TRO_FEATURE, I can have multiple versions of sysvinit-inittab, but only one=
 shipping package, right? =C2=A0If I&#39;m building two different images th=
at have that DISTRO_FEATURE set differently, won&#39;t one of the builds ha=
ve the incorrect sysvinit-inittab package installed?</div>

</blockquote></div><br>Changing such a variable will alter the checksum of =
the task, resulting in re-execution of altered tasks if appropriate, or pul=
ling from a different sstate archive.<br>-- <br>Christopher Larson</div>

</div>

--001a11c3fe90a3371d04e8a134ae--
