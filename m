Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91137EB64D9
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 11:45:08 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.56722.1688471102791796471
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jul 2023 04:45:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=AmL8UlzI;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4fba86f069bso5355803e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 04:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688471101; x=1691063101;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K1sWiuuR0E95ovJCTxXXaJlf2AnNemJkCYBKKmohF6Q=;
        b=AmL8UlzIVJ7KgJLicyMEar4n9tt84Iz3f6ZIwVE4vjqzcuxKbIjC+omYHpJV+8jE6Q
         qlg+2nZR1yF6YWLNqBVDgqCFe4zyFptTMgwfMAcayn/a2RibDvbm3jDm9Y5S8Mw3b5WV
         lk50p0tZersSKXuWUb3X0u8lAyVr7KvaUSLf2j/AuqucUdHUIjpxZ0KDjANrS9fPXqbi
         h28t60d/xuiysg7/LDHFjuTuNIXREWnruKyQ5oXexw5PTJ1agRcMoHFB3BtowuLPxnwX
         wOuObPFx4NrSjCd9Ay+zoswlQQsVwCwjy3sB81zAouj8WCcNa8use6bJdWJllneh1xwy
         QNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688471101; x=1691063101;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K1sWiuuR0E95ovJCTxXXaJlf2AnNemJkCYBKKmohF6Q=;
        b=R6yAcS0lJvUjFNRuQasdFl4pijeRjvmqVLQpNx0G3GfFT9ncPza6xlVieojMmBA9qS
         pdfPObx2QF112DdB2uRE/NXwgc3xOLeDovyBGS2kTCxwregri/yEugIuQWtdYot5/3iP
         lH4a9R6mH7V336zeJRSnKo7jbs3ofzzecrw292I8AaKeRPw3QNX5ioLFmrWU3GuibBgB
         4fHGtwq9z1I45LYOCpEQTI88zCebTwdyx1ApITCcKFpn+cY8cnSFAj2lZU0h9okizzAd
         WSzwBImSj1VGhTDRALVfstPyUJBOwdaLWrcwvhy1MhzAflOQgOGKtbvnz+Mrj+sEoGn0
         3Gxw==
X-Gm-Message-State: ABy/qLYq/P8AacGRURSeuuSOFKouAwcEnq91912FsIw1CN9SbsV/lMb1
	hBUKTWHDLeg7Oh6IDYK4J6FLHfmwYjzxDqKA3jg=
X-Google-Smtp-Source: APBJJlFKU22dl2U8ET7Yg5gOWXREJhkuSEYHr3YWmCfBzG3QGeildTwTccaK69eCk3nqSuwZX7O/7viWfd9k15nn9sE=
X-Received: by 2002:a05:6512:2250:b0:4fb:81f2:422b with SMTP id
 i16-20020a056512225000b004fb81f2422bmr9805941lfu.54.1688471100741; Tue, 04
 Jul 2023 04:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_afvzRhqwtS5axmkffaBKRvaOZKYSdCgO76F6G8jKX1A@mail.gmail.com>
 <13866.1688470885605260345@lists.yoctoproject.org>
In-Reply-To: <13866.1688470885605260345@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Jul 2023 13:44:49 +0200
Message-ID: <CANNYZj-o3jqKQcLaTpGjdZfAqdUaDbP07dtfQrQjGM7oN1iqOQ@mail.gmail.com>
Subject: Re: [yocto] File magic/sdk relocation
To: oobitots@cisco.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 11:45:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60512

It's fine to have both, you just need to write a good commit message
explaining the issue. Also you need to explain why you need file
binaries from oe-core in the sdk/tarball, instead of relying on file
the host system.

Alex

On Tue, 4 Jul 2023 at 13:41, Oleksiy Obitotskyy via
lists.yoctoproject.org <oobitots=cisco.com@lists.yoctoproject.org>
wrote:
>
> Hi Alexander.
>
> We already use temporary fix, like:
>
>
> diff --git a/meta/recipes-devtools/file/file_5.44.bb b/meta/recipes-devtools/file/file_5.44.bb
> index 3090d346ed..3a23e7721d 100644
> --- a/meta/recipes-devtools/file/file_5.44.bb
> +++ b/meta/recipes-devtools/file/file_5.44.bb
> @@ -45,10 +45,8 @@ do_install:append:class-native() {
>  }
>
>  do_install:append:class-nativesdk() {
> -       mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
> -       cat <<- EOF > ${D}${SDKPATHNATIVE}/environment-setup.d/file.sh
> -               export MAGIC="$OECORE_NATIVE_SYSROOT${datadir}/misc/magic.mgc"
> -       EOF
> +       create_cmdline_wrapper ${D}/${bindir}/file \
> +               --magic-file ${datadir}/misc/magic.mgc
>  }
>
> I would like to ask if it possible to have in upstream both MAGIC variable exported and wrapper for file.
> If another binaries use MAGIC it's ok, but if we have to use file in sub-shell it must work too.
>
> Regards,
> Oleksiy
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60511): https://lists.yoctoproject.org/g/yocto/message/60511
> Mute This Topic: https://lists.yoctoproject.org/mt/99626082/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

