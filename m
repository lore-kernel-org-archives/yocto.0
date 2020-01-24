Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.13392.1579875976151965071
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 06:26:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=opXUpI9/;
 spf=pass (domain: gmail.com, ip: 209.85.221.68, mailfrom: peron.clem@gmail.com)
Received: by mail-wr1-f68.google.com with SMTP id y17so2210978wrh.5
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2020 06:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=JPb6HGGCWGAasp5oRoxPqQ37/y8y56D+JqM8dWuU/WI=;
        b=opXUpI9/vyODVg1pdw87sk549Sh/5WUCE446JKXzgGsc6DZRAvRiK//o1wHdf0x4I4
         Un1s55P9FosyBjBoLXObt6+jzKdWAx3oHtypCo+aAF1WLQD5ksxw1KO6lDFszMsayINN
         ux7kl/dxrXA3RCobP9c2zBZgBdwYZckCHg6xYA7rL9XmZp4/D6SQ2TWUq9GkmrmOX5tm
         OUynha/C6mlfx3qVVr7AGPNy+aeDuscaQQe5p31lKGkMoyOuFQM/TvkaZE0bSYeVLU+W
         UcPa3da7lYMpt2GRai2vJiFvpWrFGcmrn0OOnMSaG1iSbMfJHJd9i8qmnShDTWcR9Jb+
         Okxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=JPb6HGGCWGAasp5oRoxPqQ37/y8y56D+JqM8dWuU/WI=;
        b=FYgl8X7/ncwXEXEBBpgTeaRBPxMYlgXpFJkP93S2uEydhe+WL3BBr0+EWJtKPiIWOr
         3Paq2cvawmPgwOZgviqSsqcTBoa+PeSDYZSNZhCSDU2BsPYRXHBBj5hfWPmK3xQ8rm2J
         dKMJ4He36H6kA7oTrlpgiHSKbwhP1sfNeRdehtYebRYe5iRfG9TGDaGDgIV25OTxQjkw
         j+PWPlcChcw8Oumeycb4c5SSOlFQSEq+OqXf3b6WUxaN/EoNMMvBTVc8N6KfPAkn0RXh
         +bRp7Vs4HTsrJtOq+iCfXTFphsYjwN9WXDml9e/7Z82ycAleBavUgcWt+W6BipsLKzA5
         Z79Q==
X-Gm-Message-State: APjAAAUSXkHIOei4VDZ6eDIC4e3nrBiU6olBbcM3q+is4OyNfzfH/b0L
	eDQZwxopeb77lIKphyEoy4vB1ybq9cRg6Mn+cOI=
X-Google-Smtp-Source: APXvYqyF7Mk0gTwSPBf8IIX8GKe1/Lfa8UY/bFAzS8V3dzLc30NY2xsBQniHw1VVoSht6zSUEzb8uzw0i1cABd61+1k=
X-Received: by 2002:adf:f54d:: with SMTP id j13mr4605682wrp.19.1579875974649;
 Fri, 24 Jan 2020 06:26:14 -0800 (PST)
MIME-Version: 1.0
References: <CAJiuCcd1S_ZZMp-3o65ZKJXrFRAyey9_bsxNkoUpqg5d2997iA@mail.gmail.com>
In-Reply-To: <CAJiuCcd1S_ZZMp-3o65ZKJXrFRAyey9_bsxNkoUpqg5d2997iA@mail.gmail.com>
From: peron.clem@gmail.com
Date: Fri, 24 Jan 2020 15:26:03 +0100
Message-ID: <CAJiuCce-xO8ZF2GC_LF6S6wGRm+Q=aO0+QafKuzbMdfdLMAMfg@mail.gmail.com>
Subject: gRPC: grpc_cpp_plugin is not included in host sysroot for standard sdk
To: jkaddoura@sbimagingsystems.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I got kind of same issue as the posted here:
https://www.yoctoproject.org/pipermail/yocto/2018-May/041025.html

But didn't find any solution to it.

The gRPC is added like this to the SDK in my local.conf.
echo "TOOLCHAIN_HOST_TASK_append += \"nativesdk-grpc\"" >> conf/local.conf

The grpc_cpp_plugin is actually built by nativesdk-grpc but not
included in the final tarball :(

In my build folder i have it:
./build/tmp/work/arm-poky-linux/core-image-base/1.0-r0/sdk/image/..../sysroots/aarch64-poky-linux/usr/bin/grpc_cpp_plugin

Unfortunately when I install the .sh generated
the grpc_plugin_cpp is only available in the target sysroot not int
the nativesdk.

I can't install the protobuf-compiler on the sdk machine as the
version are not the same...

Regards,
Clement
