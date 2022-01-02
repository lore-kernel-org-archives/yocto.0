Return-Path: <staticd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41B33C433F5
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 17:06:04 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.15229.1641143162895948321
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:06:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KuG8VnOE;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: staticd@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id u20so27631991pfi.12
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=uVCDZG7YLQGXYKc2OhzJwG+PLvZDM3+m6+m9RFgK5tQ=;
        b=KuG8VnOEbRAnDT2ZC4XS9nJAcWnyDYsxdDAURduLHDht1PT4pu+2lhWS4Nzgff3Bg4
         otomURoMtTJkcC+9LD54R4p2aUfERFBCBHmjA4Sybe7FiwlLM+68+5ZrTF7LZC2ITbsG
         Nzn/FMzs+B+wQ2tHjEZMWw4b10OZhLiJoK4POYQiAClb8ZFQztEoMZdh5PbhcgMcpSdt
         mNh0ADnf0+N6HZAGFm9gekwHv5OwJj9QCAO1WqZB32LnsIoAUH2ukWoP+dhjhugI0IPH
         qDAfqSGXFLVWJnXDLO822ijRO+oJoeg6FlFOLOnvvlpQgXZIHKwACfPZ+hH0sUjGSb4G
         91WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uVCDZG7YLQGXYKc2OhzJwG+PLvZDM3+m6+m9RFgK5tQ=;
        b=Me2aWhp9NRi8meB03H6H75L4oDUs68A8gvRMHeY7Z/2Y+wkkrxORzmtqJE7VzTbpKe
         eAO1Vz+jRYwoy+Amu95nw8bE3JCiIxfBcvQsu7hCagUFWCKGdV5yr+qWiPmKWO+bAkDs
         cbyGlyc44GHBpAALcqXfh9KwzZSUb0gxb1gao0/8g7M/o8qhMsQJ0GkQ78xRk7EwDjkH
         BYY9p0lqLD8Av5TqNa+wDNQ8KXJiktKoH6OvBRL0rBRDIvrNN3Of3XsRU2sLrfLIpvV8
         edl8HJVptDtyOSTd2w8FLMqia2mVvNUBhmjPzl/yDvczgQEKjDPLjcPb32lhDBoPBOVm
         QBoA==
X-Gm-Message-State: AOAM530BdNWnWdYRHLFZ8uMXyNK9bhKGRdq0LNgE73AeBXaC99JNL02R
	2VpXE7uEreUrplKnU7COvEYHHWQpqyWDlNmxAER5k3KjYvvfyw==
X-Google-Smtp-Source: 
 ABdhPJyqjJz95OWjhv5kSj1Eo019YMXiirNiQ7B4r+6dX+PmHEhslFMq8kPWFxlgERf9UUQ94/oNnAUNHKvBNu4VgHw=
X-Received: by 2002:a63:2bd5:: with SMTP id
 r204mr37778597pgr.434.1641143162188;
 Sun, 02 Jan 2022 09:06:02 -0800 (PST)
MIME-Version: 1.0
From: staticd <staticd@gmail.com>
Date: Sun, 2 Jan 2022 12:05:51 -0500
Message-ID: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
Subject: libquadmath
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003539f305d49c6bc9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 17:06:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55700

--0000000000003539f305d49c6bc9
Content-Type: text/plain; charset="UTF-8"

okay...I think I have a more interesting question now...

In the package I am building I have some Fortran code that requires
`libquadmath`

I see that `gcc-runtime` provides the library but I need the library
present in `recipe-sysroot/lib` when my `do_compile` runs

Is there a way for me to do that?

My current approach is to build my image, copy the libraries/includes to my
recipe and `install` them in `recipe-sysroot` before `do_compile`

This doesn't seem like the correct approach but I am not sure how else to
do it at this point

Any help would be greatly appreciated.

--0000000000003539f305d49c6bc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">okay...I think I have a more interesting question now...<b=
r><br>In the package I am building I have some Fortran code that requires `=
libquadmath`<br><br>I see that `gcc-runtime` provides the library but I nee=
d the library present in `recipe-sysroot/lib` when my `do_compile` runs<br>=
<br>Is there a way for me to do that?<br><br>My current approach is to buil=
d my image, copy the libraries/includes to my recipe and `install` them in =
`recipe-sysroot` before `do_compile`<br><br>This doesn&#39;t seem like the =
correct approach but I am not sure how else to do it at this point<br><br>A=
ny help would be greatly appreciated.<br></div>

--0000000000003539f305d49c6bc9--

