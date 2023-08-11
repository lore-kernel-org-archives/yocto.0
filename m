Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C842EB64DD
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 06:56:21 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.37666.1691736971817374139
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 23:56:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Hi8mQORT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-317c3ac7339so1458844f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 23:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1691736970; x=1692341770;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqcOXR9DfZNkzW/kVBjnPMKDnXo6dDP75t2VdOjvav0=;
        b=Hi8mQORTUlvVJpYV6QIqzJJvskGEMWP2l1MzuiFaODfXWPwyHoSHVtS59Tggsgk9Uc
         GYwVoTJxrpcjaTWkUPsRcL2OAKn+0izaVOHUxUxQftVSL+q9SCDux7tVgKgj1qaCCnsJ
         M81ZDUeHKzY4EQaMig7d7RoLTK/lw3nnQq63A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691736970; x=1692341770;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rqcOXR9DfZNkzW/kVBjnPMKDnXo6dDP75t2VdOjvav0=;
        b=eKh1584HInq9uuiW4wHe2v6UeBSuzF2GfHhMyZpei9ct5GtBo4LogzWusclWZ2Gm/u
         Xc1sz6KvgTJUUj3tSo8V9I7NaKohIBlssVAVwfdRI1pn2yX1xeh9fOsfw0uKuR3gMqlm
         B16CogKsvGBbNQ/nyLb5a1aWS+yfT+aAiw7WH6TFngLai22Rt1g67sN065RV/vycGihq
         +sU/ci4aHTyav3epOHYEfjDf3hZB7rfHBIObz71TjhRiPlB+WA5Z5y/XNY7+ZPlD8TQY
         MN/OycqjlGtMfW1FdKw1A9CsdL7RTHOqTEeVQiQdXfgIcLrxYP5g6fBslG5Hr9H7rS2e
         pkYA==
X-Gm-Message-State: AOJu0YwTHykN+5OzRjS3j00xQl23oxNTmb9SnQGpIvfjv8zZmF1sX1dz
	3uMz7xOpIv1+BhuBNjcCw7TIfA==
X-Google-Smtp-Source: AGHT+IGYTwe9MFxZUunQuUCZDeZmSe/0U13YdeYRcCyH2LD49GXh0nkIEsppi5oTUdH1htRYNy2cNw==
X-Received: by 2002:adf:e0ce:0:b0:317:64f4:5536 with SMTP id m14-20020adfe0ce000000b0031764f45536mr673213wri.44.1691736970264;
        Thu, 10 Aug 2023 23:56:10 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1e7:9ff1:d8f3:9443? ([2001:8b0:aba:5f3c:1e7:9ff1:d8f3:9443])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d6610000000b003179d5aee67sm4413851wru.94.2023.08.10.23.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 23:56:09 -0700 (PDT)
Message-ID: <fd9c2bb67198be27092ed786908f100ab8393d38.camel@linuxfoundation.org>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't
 exist
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Isaacson <tom.isaacson@teknique.com>, 
	"<yocto@lists.yoctoproject.org>"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 11 Aug 2023 07:56:08 +0100
In-Reply-To: <CA+EiEZLbtCfDGyxA8kjwQkPjeJJ9vzwpKMKGSW6ABGq2uogg2Q@mail.gmail.com>
References: 
	<CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
	 <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
	 <CA+EiEZLbtCfDGyxA8kjwQkPjeJJ9vzwpKMKGSW6ABGq2uogg2Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 06:56:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60778

On Fri, 2023-08-11 at 09:22 +1200, Tom Isaacson wrote:
> DEBUG: Checking
> /home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86=
_64-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/B=
itbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles=
-native/1.0-r0/recipe-sysroot-native/usr/libexec
> for binaries to process
> DEBUG: Python function relocatable_binaries_preprocess finished
>=20
> This seems totally wrong - two full paths are being combined to make a
> path that can't possibly exist. Is this something to do with my setup?

No, those paths look correct. When it builds native sstate objects,
you'd expect to see path duplication like that.

https://docs.yoctoproject.org/ref-manual/faq.html#why-do-bindir-and-libdir-=
have-strange-values-for-native-recipes

Cheers,

Richard

