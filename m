Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37A6EE00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 07:18:02 -0800 (PST)
Received: by qcsd1 with SMTP id d1so1729502qcs.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 07:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=x57r6DbMDYQ9w+uf8E65kq6eCnOCQ3Sjsya3uW7iHCA=;
	b=Jq6b3TcScjSg6RnXnZIwa4pO6CRB9GthFRHjbxtIB0KzGxlAiJ3+05QguHx91fuhIb
	7QsJ2VwuSnleWxXb1h4E5szvLd+FPK/56DB/m827iarEM8VZWXJL3+rJB31uxsiLYT9A
	9fzGZ3yO6K4TVykmrcLCbMT2mAD0P3YnnpDCw=
Received: by 10.224.200.6 with SMTP id eu6mr4396632qab.93.1328195881543; Thu,
	02 Feb 2012 07:18:01 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.95.207 with HTTP; Thu, 2 Feb 2012 07:17:41 -0800 (PST)
In-Reply-To: <1328159864.2636.13.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
	<1328078233.2628.4.camel@babel.joshhome>
	<1328111395.2628.32.camel@babel.joshhome> <4F296D48.4080807@ti.com>
	<1328159864.2636.13.camel@babel.joshhome>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 2 Feb 2012 08:17:41 -0700
X-Google-Sender-Auth: rZe7FAn7jASy2jG9-wM6Ptvm2CM
Message-ID: <CABcZAN=8FaJNHDpY=rpqpX9m9r0hmV-iBC8xySekfTqDge7OGw@mail.gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: creating global variables in a recipes
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
X-List-Received-Date: Thu, 02 Feb 2012 15:18:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 1, 2012 at 10:17 PM, Joshua Immanuel <josh@hipro.co.in> wrote:
> On Wed, 2012-02-01 at 11:50 -0500, William Mills wrote:
>> I am not sure I can give you a better option that local.conf but I can
>> explain why what your doing does not work.
>>
>> It may feel from your usage that the image recipe is the ancestor of
>> all the recipes but this is really not true. =C2=A0The settings in a ima=
ge
>> recipe effect the assembly of that image and not the packages that
>> they depend on. =C2=A0An image could be assembled from packages that wer=
e
>> built long ago or inherited via shared state.
>>
>> settings in local,conf on the other hand affect all recipes. =C2=A0If yo=
u
>> add something there it will be seen by all recipes. =C2=A0Unfortunately
>> this means that all recipes are dependent on the settings and
>> everything will need to be rebuilt in case the new setting effects
>> them. =C2=A0I believe this also means you will not be able to used share
>> state with someone with a different setting of (or unset)
>> SOME_VARIABLE. =C2=A0(Well you can but you will both be rebuild
>> everything.)
>>
>> Alternatives to the whole approach are to make alternative packages
>> for the various cases (busybox-minimal vs busybox-full) or use an
>> image task to create an asset in the file system that then makes a
>> difference at run time.
>
> My use-case is that I am creating an /etc/fstab file via
> base-files.bbappend recipe. In that fstab, I use uuid (generated via
> uuidgen) to denote different partition filesystems. So, I have to use
> this uuid in the extended image_types.bbclass file to set them to the
> generated partition images appropriately (via tune2fs).
>
> One more approach I can think of is to echo the uuid to some file in the
> deploy images directory (while creating the fstab file) and read them
> back in image_types class. But this process looks messy.

I'd say generate them in the configuration metadata via inline python
or an anonymous python function, then use those variables both in the
base-files recipe and images.
--=20
Christopher Larson

