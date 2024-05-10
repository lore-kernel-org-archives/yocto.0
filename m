Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32EBDC25B5F
	for <webhook@archiver.kernel.org>; Fri, 10 May 2024 11:33:33 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.10344.1715340810491941708
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 May 2024 04:33:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=i5H0TYWM;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.175, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-62027fcf9b1so16246377b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 04:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1715340809; x=1715945609; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GITR0eBfbQ4ZkWqP9VqNZduCUmgJtH6Ay0WX5jBwzA8=;
        b=i5H0TYWMA2B69a/fIg4W1+jiKwsipuB2RUmHDYX16K+w8BfesHTrrAX1qdEoIhnqso
         PXDR9YPnTuUOiygx9FtF5GZC+sxu477KzHxWNvNuaadijUiMEssuQFPAzCd/2JqdaflV
         sx81EH6PU2K+/ag8bdAKWWPzmue8Z6FpS93jxxpNfoRKi/m/kN17woWwwjz1pKC6HeSO
         XG+3FPfx2SzGCBZIlNZbuKJ9tVW8+P8z1eeMnKP+e6iidYlYSqOhC32Tn13wJPw8SKQq
         rW/Y/MK3pEXrUHvBriQfEdSio9qKCSJoX81xO9Lg+7cYLdA3tSyXLV8cmBW2TIHvRUyt
         BxVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715340809; x=1715945609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GITR0eBfbQ4ZkWqP9VqNZduCUmgJtH6Ay0WX5jBwzA8=;
        b=dvRoVPGmD2gbhOwnTePe0VsmT0Y+o5iQllqoZg4cF7ddCYQJdAMl1b1gLCfjrW5D3I
         IpNPR8AJfDuzzYp7u3Lo7mI44nQi5BSibLL9a6g/Ji8PAXPwaTV0TVyyx2Zk1ViNgOsC
         MfPQMGvUSqDCw7W5YWh1Zoyqt9ifaL6fELk/NCGYQVc7iF5Uxb+Wz19h2DcAHSD8CgAK
         YVeoaPulv0wgBNdNRrxfwG5DssYvHSXaaj9yA7BF07KKNF4nFxwhXGTfBgAvuTy0iHJe
         eCXjaWY4A/UMWnhl9+SWa0l6M4zoX/LdxRTht4YtomcWF+MneflK66q1h/wqx8fu0Am9
         qmaQ==
X-Gm-Message-State: AOJu0YxF7nmyO+GvFgOZRMl1STz8pAPXBVYDtt/PkKsACiOwktZjxxjw
	pBluarK3FqWs9yiUgmUkWqeVcpMdijwoOVXpz6znJ94WZR0w7zBINdtdeAWlHY21id5OTYL2RNX
	5zUlsAjXQekk4+5emzccyW/YS9NK3aIpcHN4SzA==
X-Google-Smtp-Source: AGHT+IEGvqYC1EHuftkJTaQvRr90VnmP0Sh3ThzO5rx7wPQmjlRdNkLD+N8TTfXWBk63U8uopmH8qJmZjAmTRbfF5qU=
X-Received: by 2002:a81:a247:0:b0:615:2fa1:c55d with SMTP id
 00721157ae682-6209943b9ffmr43420707b3.19.1715340809534; Fri, 10 May 2024
 04:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <0101018f6108f259-da34e71e-edda-4ce5-ae8f-f9a0bfda30fc-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018f6108f259-da34e71e-edda-4ce5-ae8f-f9a0bfda30fc-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 10 May 2024 04:33:18 -0700
Message-ID: <CAOSpxda9YEn2CuJdTo-rMYYhsxarU41EU=kbZcdoHPMCNoz7oA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.1.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 11:33:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63071

This was an "all green" build, so OK to proceed with QA.

Steve

On Thu, May 9, 2024 at 10:45=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.1.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-5.0.1.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6892
>
>     Build hash information:
>
>     bitbake: 8f90d10f9efc9a32e13f6bd031992aece79fe7cc
> meta-agl: 73b088ccfa385f91b8aa56c1d2fbf78d97447dfa
> meta-arm: 6d6fa14744b4e453eedb2c37891259b55557dcbf
> meta-aws: 3265343c2f2b22bd0a2a9a688fd20e6540d0d746
> meta-clang: e7dceb1c92caf7f21ef1d7b49c85328c30cffd90
> meta-intel: 52f5037453e797eca8784a410f7a2a55f40aef57
> meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
> meta-openembedded: 5778e32eae201072c5dc37c9db67dc1848ffb9de
> meta-virtualization: e9bb0a338fdf637f7929e19b21857d4c1d532ce6
> oecore: 294a7dbe44f6b7c8d3a1de8c2cc182af37c4f916
> poky: 4b07a5316ed4b858863dfdb7cab63859d46d1810
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#431): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/431
> Mute This Topic: https://lists.yoctoproject.org/mt/106016167/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

