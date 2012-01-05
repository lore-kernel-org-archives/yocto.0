Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 045F8E00303
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 14:36:38 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfa15 with SMTP id fa15so1081231vbb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 14:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=2o2ay5L15bk+pcA4IQXBos3/WStqvBlQ8mTua0CZbr8=;
	b=e6+MeG2kJn1RmQCixqmT5EW9kHiYAbt/x7OS1MC5ZAd+b0dQOnDy+CUn6uBZ1YatIL
	XAKpz14AeCaUF0Nhm1KU382UbZEo9eGmxHlCq0ymYfIeqy/ukpl4CWmBHAJqd02rLbMi
	2+KJ1tfcWdil0HJLWaodcKpEWr/G78H4zJQK4=
MIME-Version: 1.0
Received: by 10.52.88.193 with SMTP id bi1mr1803815vdb.105.1325802997195; Thu,
	05 Jan 2012 14:36:37 -0800 (PST)
Received: by 10.52.159.9 with HTTP; Thu, 5 Jan 2012 14:36:37 -0800 (PST)
In-Reply-To: <4F062177.3010706@windriver.com>
References: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
	<4F062177.3010706@windriver.com>
Date: Thu, 5 Jan 2012 17:36:37 -0500
Message-ID: <CADzUK1+xUNsNpUVy1kEPtLVMO7kecL9bxfnOeNYUyrsDUk2u3g@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Trying to compile mono on target for machine crownbay
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
X-List-Received-Date: Thu, 05 Jan 2012 22:36:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 5, 2012 at 5:17 PM, Mark Hatle <mark.hatle@windriver.com> wrote=
:
> On 1/5/12 3:52 PM, autif khan wrote:
>> libtool: link: cannot find the library `=3D/usr/lib/libglib-2.0.la' or
>> unhandled argument `=3D/usr/lib/libglib-2.0.la'
>
>
> The version of libtool you are currently using is damaged in some way. =
=A0I
> suspect the program is falling back and trying to use either a local vers=
ion
> or the host-system version.


I am using 6.0 Edison release of yocto. Is libtool being broken a
known issue for this version?


> The libtool located within the OE/Poky environment understands that when =
a
> "=3D" is predicating a path, it means locate the item within the sysroot =
at
> the following path. =A0Since the error indicates it doesn't understand th=
at
> concept, it appears that that version of libtool is broken.
>
> Normally the autotools class will deal with this situation for you. =A0Si=
mply
> inheriting autotools class usually does it.

For now, there is no recipe for mono in yocto. There is one for a very
old version of mono on OE that I have looked at. It does not work,
when it is integrated in some layer. It fails with a somewhat
different error (included below). So I am trying to write the recipe
for mono and trying to compile it on native hardware - that would be
the first step - if I can compile it natively, then I will try to
cross compile it, and then I can try to write the recipe.

So, I do not have a sysroot to cross compile ... It is the native root
file system - the compilation happens on the target hardware.

How can I figure out what the issue is with auto tools?

Thanks

Autif

Error form mono recipe from OE:
checking for preceeding underscore in symbols... configure: error: in
`/home/autif/data/dev/yocto/koko/tmp/work/core2-poky-linux/mono-2.6.3-r0.1/=
mono-2.6.3':
configure: error: cannot run test program while cross compiling

