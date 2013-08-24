Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E19EE00408
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 06:06:22 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id m6so1909727oag.4
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 06:06:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=k4LVJ5Dq4gMbZhS/bSldm4CESdDTeSnz4VtAwgAPwsQ=;
	b=bU+6dc2fJYBflH/Ky0JDkNKGE/On+38rciTjvn2lp2uFJFDmarxEvFDqVVKHG+AWD3
	xk63tZMNb8q2hNJzEGhRhKCdP6vOCsIPKJJlFLcxN/9cbNjdMadea6HBEKFA3T4/bAM9
	E0P0uDKDvQGF6mxLTVZQMVzeq54n7Aj3WXGl+GfSMA1Er3cf72h9l0aqx+2htLRHFUFW
	tDarEEuIW/osonBCG/t4Xn0bXdpNvt+TuYWWBlJ+fudsRN5lB/Vx3F0D6rN1mwzP/S1T
	PlKsKUeqxdGmtvw9T+KxAgEfT/FvClJCumUjLgDgVlKb5meFfG55XNVzDfsCCpf35M+m
	IikA==
X-Gm-Message-State: ALoCoQnSqUEYksmDK1c3WzCX2dQ3qxUQkrlXxuKTpVfhV3+3AoTc6lZjsjIP+8Dq/0y4xG3goqxz
MIME-Version: 1.0
X-Received: by 10.60.68.135 with SMTP id w7mr1970068oet.9.1377349581847; Sat,
	24 Aug 2013 06:06:21 -0700 (PDT)
Received: by 10.76.174.6 with HTTP; Sat, 24 Aug 2013 06:06:21 -0700 (PDT)
In-Reply-To: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
Date: Sat, 24 Aug 2013 15:06:21 +0200
Message-ID: <CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio.salvador@gmail.com>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Sat, 24 Aug 2013 13:06:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Aug 24, 2013 at 3:36 AM, Trevor Woerner
<trevor.woerner@linaro.org> wrote:
> Hi,
>
> When I try to include "qtwebkit" in my image from the "dylan" branch I end
> up
> with the following QA do_package_qa error [note that this does not happen
> with "master"]:
>
> ERROR: QA Issue: package qtwebkit contains bad RPATH
> /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
> in file
> /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess
>
> And the QA test is correct. When I "objdump -x" this binary I get:
>
> Dynamic Section:
>   NEEDED               libQt5WebKitWidgets.so.5
>   NEEDED               libQt5WebKit.so.5
>   NEEDED               libQt5Widgets.so.5
>   NEEDED               libQt5Core.so.5
>   NEEDED               libstdc++.so.6
>   NEEDED               libc.so.6
>   RPATH
> /home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
>
> Can anyone suggest any fixes or patches? Note I'm using 5.0.2.

Try adding a .bbappend with the following content:

#################
DEPENDS += "chrpath-replacement-native"
EXTRANATIVEPATH += "chrpath-native"

PRINC := "${@int(PRINC) + 1}"

do_install_append() {
        # Remove rpath from the offending binaries
        chrpath -d ${D}${OE_QMAKE_PATH_LIBEXECS}/QtWebProcess
}
#################

That should do it.

Is this something everyone building qtwebkit is seeing? I had just
assumed that it had something to do with other changes I do to
meta-qt5, but if it affect everyone I guess it could be done in
meta-qt5 instead of local bbappends.

Cheers
Erik


>
> Best regards,
>     Trevor
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

