Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64110C433FE
	for <webhook@archiver.kernel.org>; Thu, 13 Oct 2022 13:34:53 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web08.7522.1665668090462099950
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Oct 2022 06:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112 header.b=XkqKrXwK;
 spf=softfail (domain: sidebranch.com, ip: 209.85.208.52, mailfrom: leon@sidebranch.com)
Received: by mail-ed1-f52.google.com with SMTP id b12so2655180edd.6
        for <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 06:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M446N9W5rtLbpuQogIK3Mc/UyLqH6nfxcHtpLK3dMAM=;
        b=XkqKrXwKT3rd9uU9Ok2gXIOvyGP4koq39yyMSAnkj+FuKHWoGj5V06PWhp9/szTkSn
         KNEbGCXuo72rHOO4NemE7Tp2+hr0x2af9v+BVjF5A+1hn5TKcFoPf02K8TltFEYUrS6Z
         GUop9ve4CBadA4cmjAymZJikjlP/YUzMeWke0O+jBjSZxMNkdp7IvRlSj1U4DOs847Xw
         VslGkbxLqq4YSBYzx+ZYP3wSEUDDmNgOAvLnNcg5O0BNMI3h+hbD32D8pklJTtMx3fxW
         KNGDRO5qrRrvJHW2rxvh9Ep+n8h0cBscqMkFbiWK+Xi0UfH7WbfhalBU5OLlUWfHQ5Vg
         YFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M446N9W5rtLbpuQogIK3Mc/UyLqH6nfxcHtpLK3dMAM=;
        b=nEN9cbSnvPZywwhs1DLlQvht7WyAoKfUbjShopfTF0BDbnW2ZDXwXxO0biKRcoZyMK
         CSluO8FyT9F/4L09RSozYakFB9sj4sFlHsnRE0TEoUwFk/S7jEQODRY7d/tDKkEBAYMf
         vLL8pI4DLlaT6qWPT72ptGFsfESiFN9wbKp38hCz4j3EyAnInF8q7rcKQTaf9x/0bMGI
         F8co00z8JhsYdeqtSP3H0+KxqDp3zTw8sZHUaybtVdKqb/YRt7szpTwicaeQNGJblwW5
         TnBlF6lA7Wm2V5zd2AKSmIqP1owH0Fx2fLnSQU10z1kjb0f+Cm9hAYgbDDp1TEz7Lm4k
         0gXw==
X-Gm-Message-State: ACrzQf0wr5H2WsPTtvk6sSHWTzOBq3ij159aNt6ZbBfxrOf2uTxjnlHi
	L7GEgImGAv5xsZ4IDEvXiPjw6Il++pM3R8AWUlx4cg==
X-Google-Smtp-Source: AMsMyM4BWZkHstJ4XZ+IDdHtbmIgNHkeugsmLQboy4CDIfd0pEThYJFlIUatzWvcMlFZDn/bqHNX5XteYcA4RA4BUOE=
X-Received: by 2002:aa7:dbd2:0:b0:45c:97bb:4ae0 with SMTP id
 v18-20020aa7dbd2000000b0045c97bb4ae0mr9760291edt.417.1665668088539; Thu, 13
 Oct 2022 06:34:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAKO9uzo34iJPxD42PkYbBoh_2-=8cd64_pYTMBd7TtPeTnFeRA@mail.gmail.com>
In-Reply-To: <CAKO9uzo34iJPxD42PkYbBoh_2-=8cd64_pYTMBd7TtPeTnFeRA@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Thu, 13 Oct 2022 15:34:37 +0200
Message-ID: <CAMjhiJi+hAWys-n1U34nx_xYncChTSg2UjweDYYBtejepaK6MQ@mail.gmail.com>
Subject: Re: [yocto] Disabling SSH by default (but keeping the service)
To: Maik Vermeulen <maik.vermeulen@lightyear.one>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 13:34:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58331

Hello Maik,

On Thu, Oct 13, 2022 at 3:17 PM Maik Vermeulen
<maik.vermeulen@lightyear.one> wrote:
> We tried two things to disable SSH by default in our image recipe:
> However, both methods don't seem to work.

Hmm, something else might override it elsewhere? I don't know.

Seems like a similar question came up in stackoverflow, where some
potential solutions are given that you might want to give a try:

https://stackoverflow.com/questions/50651371/disable-a-standard-systemd-service-in-yocto-build

Regards,

Leon.

