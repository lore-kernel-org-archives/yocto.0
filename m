Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB28E00820
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 11:53:51 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id lx4so6028069iec.33
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 11:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+xtuS+kEJCtzhLRI7E1eqePTAtabkowvyejdXvOQheE=;
	b=P+vu0sCb1nJatnuZqo94jcJwZ/UYXWRQepTR0dLDKgefCdjmArZvA8G1TL5zDvEyTK
	Z8uikQ11dj5V2rcSZNBSbPyRJtbu8/k55ak0tmYHdF0uiA6v9WO2RbSVXW29S/ZcWXl9
	noEWyK6CaDZLw7u8DswZCWH3Be+kWaxcePlTgTQzRJrUhiLZuFCr1wsDMq7jQweS3h5r
	1YYTmt4cOE6dTGkm5Z7MQ4FEqiVjrxGUcHwvDlsmn1S5c1eKaxz57QME/Q0UtiQ1J59u
	ULXChA17qqDUR3UC6oQVtmJN9mbRK5GBY/jrg8fvblbIe7inJfad4viuUHp8BP58rZhL
	/L0g==
X-Received: by 10.43.52.65 with SMTP id vl1mr2486182icb.86.1389988431334; Fri,
	17 Jan 2014 11:53:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.79.167 with HTTP; Fri, 17 Jan 2014 11:53:21 -0800 (PST)
In-Reply-To: <CABhkJRcAAvORSQ0d_bhEi5eX9yJfOLQ32gHiQHN4074ptDJXrQ@mail.gmail.com>
References: <CABhkJRcAAvORSQ0d_bhEi5eX9yJfOLQ32gHiQHN4074ptDJXrQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 17 Jan 2014 11:53:21 -0800
Message-ID: <CAMKF1sqjX1R4M7+HFgHz43WmG+PwEN=8RJpYP1-tO7p4ny4OwA@mail.gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-oracle-java fails
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
X-List-Received-Date: Fri, 17 Jan 2014 19:53:56 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 17, 2014 at 11:46 AM, Ashish Dalela <ashish.dalela@gmail.com> wrote:
>
> Hi,
>
> I'm trying to build JDK and JRE using the meta-oracle-java recipes. The
> recipes build fine, but during do_rootfs (core-image-basic) I see the
> following errors:
>
> FOR JRE:
> | Computing transaction...error: Can't install
> oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides libavcodec.so.52
>
> FOR JDK:
> | Computing transaction...error: Can't install
> oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides
> libavcodec.so.52(LIBAVCODEC_52)
>
> meta/recipes-multimedia/libav/libav_0.7.4.bb builds libavcodec.so.53.
>
> Does anyone know how to fix this issue?

add libav to DEPENDS in recipe which is providing oracle-jse-jdk

>
> I already tried manually copying libavcodec.so.53 to libavcodec.so.52 but it
> does not help.
>
> Thanks
> -Ashish
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

