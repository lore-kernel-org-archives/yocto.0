Return-Path: <bhupesh.sharma@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B968EC433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 06:25:27 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web12.21883.1633415126279166985
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 23:25:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=y/Z6t4bh;
 spf=pass (domain: linaro.org, ip: 209.85.167.172,
 mailfrom: bhupesh.sharma@linaro.org)
Received: by mail-oi1-f172.google.com with SMTP id y201so24862267oie.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 23:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8Pg59kfvdav9JSF9muvJmPyX5UjGT2tc8bBZgv6b+L8=;
        b=y/Z6t4bh4dthXDyEZBKGa26jDJzYrDHtHP+AryQwKwMbRsJmEAY/xM8cBd5ARuKFrW
         i8RKBT//D+ea+HviYHKV42FjkCYQuaadyDPI4n0hNLuoRHI9ROq63NNg+g8uKvidyvDJ
         3liZjtuemIoXjhqXoCBJFx/IY8EeoTn1/2Q99iLBMLEIg0HnXCgjbm/4Pl/wNRgaJ8th
         BUIEbmKe04yieBSxZI7EhvA0v+xLSm4k7QtddinPK6Nv4pXVHxBEE4/eHm8cYHfalXzf
         uHFhyLncE7olKuD9w212s3SH3LXilljG0i74I9jVDd7FhePtYfBw0tbKzaokdHQoUOpL
         DyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8Pg59kfvdav9JSF9muvJmPyX5UjGT2tc8bBZgv6b+L8=;
        b=WGN6VI83a6X9pCuaPzbw1yNrIEti/Ti4vKQWx7hmgOzWY1wdSxJv3IbpxCPI44e/kp
         +F37cpTIoLBpLT7zlEptqaR+RoBEhIIK88tsEH6SkCX8C7EhI2mR76ex2JDlKBNlXUZ9
         CPZTSpU4deInWMQPEjPTLW8fPrN8UfcxnAhPtJIv5Ql6eh4qKmxEFQKauu3GFUMpKUa8
         nSqZCdrG34x7/3A7ANeY6BDxf8Ps6tvXzjIr03mRALBAPqAgXxVyD0yU9Yh42skZY9Io
         9PLIYU/aM5uRfYVoxrdWL5nu3voc0GTP2g08HFb9eH/MBlDztf9Z9zJzgQDLBEvzJOKu
         SH4w==
X-Gm-Message-State: AOAM531lUdkUV9rezQDPLBQ1HhRP8JLILKkSbQsemSBfR30CjVGT8mit
	1hkTCCC9D1PO4mqAfiEo5/uOcnUkoCar3HnHb+J5aw==
X-Google-Smtp-Source: 
 ABdhPJyNkikUpsi8mBsyHgBI2NjScs3Z/rHDr4k+/fu0TAgBkUTupnFWFwySZ7w7SnPfa0/+0m6LOyn0+vZngH3PZW8=
X-Received: by 2002:a05:6808:1686:: with SMTP id
 bb6mr1123119oib.40.1633415125437;
 Mon, 04 Oct 2021 23:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210919191928.3963092-1-bhupesh.sharma@linaro.org>
 <e5eaf119-402f-8f02-f161-2d195dfda941@gmail.com>
In-Reply-To: <e5eaf119-402f-8f02-f161-2d195dfda941@gmail.com>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Tue, 5 Oct 2021 11:55:14 +0530
Message-ID: 
 <CAH=2NtzAQwA6kdVWUAGe0fSKrm3ykbLb=h5s2MbLvoTA7DQ2NQ@mail.gmail.com>
Subject: Re: [meta-security,dunfell][PATCH] recipes-security/fscrypt: Add
 fscrypt .bb file
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org, bhupesh.linux@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 06:25:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54953

Hello Armin,

Many thanks for your review.

On Sun, 26 Sept 2021 at 03:01, akuster808 <akuster808@gmail.com> wrote:
>
>
>
> On 9/19/21 12:19 PM, Bhupesh Sharma wrote:
> > fscrypt is a high-level tool for the management of Linux
> > filesystem encryption. fscrypt manages metadata, key generation,
> > key wrapping, PAM integration, and provides a uniform interface
> > for creating and modifying encrypted directories.
> >
> > Add recipe for the same in 'recipes-security'.
>
> Was this a double post? or a V2?

Sorry for the double post, but since I had some issues subscribing to
the OE-list, my first attempt to post was not accepted by the mailing
list server.

> I follow the OE/YP Stable process and this appears to be adding a new
> package to a stable release which is not allowed..  I have no issue
> taking it for Master.

Sure. I realized my mistake later-on. I should have sent it for the
'master' branch and not stable / dunfell. Can you please consider
taking this into the 'master' branch, or should I send the patch
separately.

Thanks and sorry for the late reply,
Bhupesh

> -armin
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  recipes-security/fscrypt/fscrypt_1.0.0.bb | 49 +++++++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 recipes-security/fscrypt/fscrypt_1.0.0.bb
> >
> > diff --git a/recipes-security/fscrypt/fscrypt_1.0.0.bb b/recipes-security/fscrypt/fscrypt_1.0.0.bb
> > new file mode 100644
> > index 0000000..a70d310
> > --- /dev/null
> > +++ b/recipes-security/fscrypt/fscrypt_1.0.0.bb
> > @@ -0,0 +1,49 @@
> > +SUMMARY = "fscrypt is a high-level tool for the management of Linux filesystem encryption"
> > +DESCIPTION = "fscrypt manages metadata, key generation, key wrapping, PAM integration, \
> > +and provides a uniform interface for creating and modifying encrypted directories. For \
> > +a small, low-level tool that directly sets policies, see fscryptctl \
> > +(https://github.com/google/fscryptcl)."
> > +HOMEPAGE = "https://github.com/google/fscrypt"
> > +SECTION = "base"
> > +LICENSE = "Apache-2.0"
> > +LIC_FILES_CHKSUM = "file://src/${GO_IMPORT}/LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> > +
> > +BBCLASSEXTEND = "native nativesdk"
> > +
> > +# fscrypt depends on go and libpam
> > +DEPENDS += "go-dep-native libpam"
> > +
> > +SRCREV = "92b1e9a8670ccd3916a7d24a06cab1e4c9815bc4"
> > +SRC_URI = "git://github.com/google/fscrypt.git"
> > +GO_IMPORT = "import"
> > +
> > +S = "${WORKDIR}/git"
> > +
> > +inherit go
> > +inherit goarch
> > +
> > +do_compile() {
> > +     export GOARCH=${TARGET_GOARCH}
> > +     export GOROOT="${STAGING_LIBDIR_NATIVE}/${TARGET_SYS}/go"
> > +     export GOPATH="${WORKDIR}/git"
> > +
> > +     # Pass the needed cflags/ldflags so that cgo
> > +     # can find the needed headers files and libraries
> > +     export CGO_ENABLED="1"
> > +     export CGO_CFLAGS="${CFLAGS} --sysroot=${STAGING_DIR_TARGET}"
> > +     export CGO_LDFLAGS="${LDFLAGS} --sysroot=${STAGING_DIR_TARGET}"
> > +
> > +     cd ${S}/src/${GO_IMPORT}
> > +     oe_runmake
> > +
> > +     # Golang forces permissions to 0500 on directories and 0400 on files in
> > +     # the module cache which prevents us from easily cleaning up the build
> > +     # directory. Let's just fix the permissions here so we don't have to
> > +     # hack the clean tasks.
> > +     chmod -R u+w ${S}/pkg/mod
> > +}
> > +
> > +do_install() {
> > +     install -d ${D}/${bindir}
> > +     install ${S}/src/${GO_IMPORT}/bin/fscrypt ${D}/${bindir}/fscrypt
> > +}
>

