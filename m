Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3ECBE01640
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:14:48 -0700 (PDT)
Received: by mail-oa0-f49.google.com with SMTP id i4so422667oah.22
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=sHgeIRj3IiQ7peW6ct8t3AqlPWywYCwLV2axOzwzSx4=;
	b=wWkr6Sahjckd15noUepCIWzLqfP+up9IhxasgpnWYI0BsMIzJVfPlc4+cCyiduL5Ux
	pAprseHoaeKpJ64dkiKUPfYTIFeI/Ujjl1/w7sU/mRZ7xwhfugwWTm814byvI5R2p9dr
	L6edomYfxnYRxEwSmI4oKO7b3Xh5yGW9GLZ3G1Qe9Sqi9f9tblP74VlfU/Tii9N3EVVO
	L18b/AK1bpd+UCt3L3erDH/vrp1ABq8S3gVHwrZdXFFqQYcrNE4q/fHASBfO76pzJsl+
	wDPgSBIhvk+Iu+USAYGVzFIreJbc4dVbvzQf4E0hj7zyRO0pUZoy+WPrRjcwycp9GZD2
	oLLw==
MIME-Version: 1.0
X-Received: by 10.60.115.226 with SMTP id jr2mr7423oeb.95.1380190487338; Thu,
	26 Sep 2013 03:14:47 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 03:14:47 -0700 (PDT)
In-Reply-To: <CAFyqS9qkBO+NOEOYH7O5-XY1kM5qdLPEHEb-W_y-1eKmqKsc3A@mail.gmail.com>
References: <CAFyqS9qkBO+NOEOYH7O5-XY1kM5qdLPEHEb-W_y-1eKmqKsc3A@mail.gmail.com>
Date: Thu, 26 Sep 2013 12:14:47 +0200
Message-ID: <CAFyqS9pA3JRuFAO2F74cGVm0g3F8E9OuhXe+Wat7PG46JRgbLQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem with perl and locale support in SDK
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
X-List-Received-Date: Thu, 26 Sep 2013 10:14:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2013 at 10:37 AM, Hans Beck=E9rus <hans.beckerus@gmail.com>=
 wrote:
> Hi. We get following problem when trying to execute any perl programs
> in the SDK environment.
> This is an example of running 'perl -v'
>
> perl: warning: Setting locale failed.
> perl: warning: Please check that your locale settings:
> LANGUAGE =3D (unset),
> LC_ALL =3D (unset),
> LC_MESSAGES =3D "C",
> LC_COLLATE =3D "C",
> LC_TIME =3D "C",
> LANG =3D "en_US"
>     are supported and installed on your system.
> perl: warning: Falling back to the standard locale ("C").
>
> This is perl 5, version 14, subversion 3 (v5.14.3) built for x86_64-linux
>
>>which perl
> /opt/poky/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/perl
>
> Running this from inside the Yocto sysroot does not render the same probl=
em.
>>/home/poky/build/tmp/sysroots/x86_64-linux/usr/bin/perl-native/perl -v
>
> This is perl 5, version 14, subversion 3 (v5.14.3) built for
> x86_64-linux-thread-multi
>
> Why is perl built differently for native and nativesdk? Is this
> something that we can control?
>
Ok, things are getting a bit more clear now. But still there are some
things that do not add up.
The perl base recipe BBCLASSEXTEND nativesdk. But there is an explicit
recipe for perl-native.
That explains why the result is so different. The base recipe includes
a patch for Debian systems to squelch the locale warning messages, but
only if DPKG_RUNNING_VERSION is set in the environment (and it is not
set by the SDK initialization script). But why was it not possible to
use the same build of perl both for native and nativesdk? The native
version of perl does not include this patch and it does not output any
locale warning either! So obviously perl is ok on the current running
host, but was not good enough for the SDK? What am I missing here?

> Thanks.
> Hans

