Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D24CCD183
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 02:39:35 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.6166.1760409569690857175
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 19:39:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=RXr5f+2G;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.177, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-780fe73e339so44576467b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Oct 2025 19:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1760409569; x=1761014369; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPfYnYqaU52EsQNB4UL9OF53hFjCoNaEUPPRC40qwXs=;
        b=RXr5f+2GYVdmmC8uri/7ibHynEhUHdLfusPj5GzybsjD9SZhVKpZNMHWamA0UOKHFJ
         M5gC1ycUExQmaOE4MWGZqAYUZfyMWItsWJCtaTm3L1r2t2/vKnit5Kb9tQtLEGk+tY+3
         xTF45TKmkM0ulGhdfUGL6Cv/KOOr1n/MTfWm4O0BrZFkeNjz5sWpmgnB1RjNTReV22+l
         tUCAl1zsPcbhZ0GMqqrNiEW7VWv2TKveBigPbcNGVLWrMpBUrXHVE3EoUzOi0DETdCfq
         Z9mFyPLAUNQX1+kLaSy4ccreI9M+lzfgXepinW3w8jliLvPrN7q0KS7RYakZ67BUASmS
         Px5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760409569; x=1761014369;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPfYnYqaU52EsQNB4UL9OF53hFjCoNaEUPPRC40qwXs=;
        b=jk+lKktTuwN10TuhwewHgTx9LBbCKOeusy2oDKz3mG0r+WkVOmRN1NQHctxfymw3tH
         L8mzzER3v2+L4gdl/ipNEAagthDI/biPyQ48+DiCc5QhIyop6vAekiJ5tpedord3QBgL
         KiGPJhtrB4LOX7Qy6HKbnVp6NBR9AfTTBaXtLSqwpqF073Bn6gnshvaXNxRDUVj00JV0
         7ARHYLsstNcensFistwxPxZrYQqkULXdUhp0TfOOHCv/l9GnHuWqC7+4aO2yBAhQ070c
         cHZoxZxVdYydp1y7I7BAjSXXRJ3Xu4+O39FI3JHxE8xFlmfhApyDoxK+za+1mNiif+Dw
         7LxA==
X-Gm-Message-State: AOJu0Yx32U35eie9HAeVPyMgFse4eZpLWS2wM/KQ+4G1vXYWg1h2Ff4Z
	cO5f/Tcw4JrDBBsiuoi5Y2OGIoBIDzwCgZfOxNu+yBbLZ4lbX4oHetWbvB3qzY5T0zbdACKUdlm
	T6QBqPbczpevdE/j0htaXPJsTPBGdhYlrEBqSVog50A==
X-Gm-Gg: ASbGncvy7ghhculkAGx/ZdDIkMmhMF3bJ1PE4ihtVCR692toInLdLgI9Prvml8OwA6H
	bzFh+guVOhfhaQutFJQeu/1/V3VJ0AacwA3h3Yg4CYo7AvwPShYF2F7+7ldYu3Y7+JoQpyC4V6A
	NAVZG+Irp/x9QKgOLpNfPoK7UuC5at9J2/9K+WqX1s0yYjSOm2t90ZUZFdQ97nnskO5hVH+1O9z
	ZUIuz6tKeMAd4sP43Eijotf6cQSjnABFwYIA8NqTFQkptrabE8PeXFdOa2iWeqnBGSK
X-Google-Smtp-Source: AGHT+IGPaSicsEp5ADXK7wlLBLpQ2uFAQ3ZRveXHXB0FpgAFjik0cTTl8ILL1piX3/+kobDnVUZVPlYLjddDJ+TFCdM=
X-Received: by 2002:a05:690e:2409:b0:636:20c2:8eaf with SMTP id
 956f58d0204a3-63cbe126624mr22457730d50.20.1760409568631; Mon, 13 Oct 2025
 19:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <01010199e0103c28-07425f6d-9aa5-4b81-91b4-e75a01ecb62e-000000@us-west-2.amazonses.com>
In-Reply-To: <01010199e0103c28-07425f6d-9aa5-4b81-91b4-e75a01ecb62e-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 13 Oct 2025 19:39:17 -0700
X-Gm-Features: AS18NWBZFL9GFnNOEPcc7hMDmmnVApGEzNgfn4tc0guee3VKWcjs_K-T6HbFJcI
Message-ID: <CAOSpxdb3dAvtdS94GHg0c9xEZfUWt8i0AH5-PNtCGoec-81f2A@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.13.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 02:39:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65923

One test failed with ERROR: HTTP Error 400: Bad Request

I reran the failing test successfully.

Don't proceed with QA, I'll try an rc2 build.

Steve

On Mon, Oct 13, 2025 at 5:13=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.13.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.13.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2576
>
>     Build hash information:
>
>     bitbake: 1c9ec1ffde75809de34c10d3ec2b40d84d258cb4
> meta-agl: 07a44280ecb27c3cc794a79cd46c53caf7da925d
> meta-arm: 0f1e7bf92c89759f0ab74cfa5be4ee47b092ad46
> meta-aws: 446379f6892ce2145e68d9b95dbc7a208e9558d2
> meta-clang: 731488911f55ebfe746068512b426351192f82f2
> meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: e621da947048842109db1b4fd3917a02e0501aa2
> meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
> meta-yocto: 3ff7ca786732390cd56ae92ff4a43aba46a1bf2e
> oecore: 7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b
> poky: f16cffd030d21d12dd57bb95cfc310bda41f8a1f
> yocto-docs: 6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a
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
> View/Reply Online (#604): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/604
> Mute This Topic: https://lists.yoctoproject.org/mt/115745510/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

