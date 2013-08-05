Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 873ADE002F9
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 14:18:16 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id ep20so2496094lab.30
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 14:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=qM3QuO35WhEjdMY11RtYVm6sqREpk2jcO/rsb5j9mJU=;
	b=wH1D9sEk9xNQzr9ycWQlhl22nRVsvrHJAzhVxPia/52pmjyUW+dm67e7672JY7/DqG
	jt12+l8/bO69BVxfe4rmv0+mjv75bfzXYnpw8+TJ5Bdnhp3Cj7N8tjTbn0RPcLe7wtYg
	kjqA4ZVeuO/0bmnq1y2nVKdlpLqxOAdBcovObT+mJqe/c9GYuca0tEtRRAV8yqIAq51b
	zUcLNlOmNEXi4P7R0OIeLH6tRNk3u+5Lmbn20M4AJ2z3D2pA3nOy9v28OemWzrujVCnU
	vfCf+PK2jLMOc1IkZXU1tNwIV1FoHoAL8yjb2M6Rv7m8qGr5OsDE1qMQ0Wcav5dlv3iF
	uvEA==
X-Received: by 10.152.22.42 with SMTP id a10mr9737300laf.30.1375737495079;
	Mon, 05 Aug 2013 14:18:15 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.17.67 with HTTP; Mon, 5 Aug 2013 14:17:54 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1308051615370.5540@oneiric>
References: <alpine.DEB.2.02.1308051615370.5540@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 5 Aug 2013 14:17:54 -0700
X-Google-Sender-Auth: 7tdxR7CcxjjFS-sqD54ED6UOImQ
Message-ID: <CABcZANnuHQDFmvNe77KECajcm-ex9HMXsLQkLeHq=GNf7hqmkA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: easiest way to add opkg and all .ipk data to core-image-minimal?
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
X-List-Received-Date: Mon, 05 Aug 2013 21:18:18 -0000
Content-Type: multipart/alternative; boundary=089e0158b794b2d16904e339d8a5

--089e0158b794b2d16904e339d8a5
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 5, 2013 at 1:19 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>   i should know this but, if i don't want to define a new image, what
> is the canonical way to add "opkg" and full ipk data to a stock build
> of, say, core-image-minimal? i can see that what i'll want is to
> inherit rootfs_ipk in some way, but i'm not sure of the correct way.
>

You should never have to inherit rootfs_ipk. image.bbclass inherits the
appropriate rootfs class based on the packaging class(es) you have
inherited and a variable.

From what I can recall, you'd need to add "package-management" to its
IMAGE_FEATURES, or copy and modify its IMAGE_INSTALL to include
${ROOTFS_PKGMANAGE} rather than ${ROOTFS_PKGMANGE_BOOTSTRAP}.
-- 
Christopher Larson

--089e0158b794b2d16904e339d8a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Aug 5, 2013 at 1:19 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.c=
a</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":ks" style=3D"overflow:hidden">=
=C2=A0 i should know this but, if i don&#39;t want to define a new image, w=
hat<br>
is the canonical way to add &quot;opkg&quot; and full ipk data to a stock b=
uild<br>
of, say, core-image-minimal? i can see that what i&#39;ll want is to<br>
inherit rootfs_ipk in some way, but i&#39;m not sure of the correct way.</d=
iv></blockquote></div><br>You should never have to inherit rootfs_ipk. imag=
e.bbclass inherits the appropriate rootfs class based on the packaging clas=
s(es) you have inherited and a variable.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">From what I=
 can recall, you&#39;d need to add &quot;package-management&quot; to its IM=
AGE_FEATURES, or copy and modify its IMAGE_INSTALL to include ${ROOTFS_PKGM=
ANAGE} rather than ${ROOTFS_PKGMANGE_BOOTSTRAP}.<br>

-- <br>Christopher Larson</div></div>

--089e0158b794b2d16904e339d8a5--
