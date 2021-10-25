Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CD5EC433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 13:12:04 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.31753.1635167522232105821
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 06:12:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=B2/5y9BX;
 spf=softfail (domain: sidebranch.com, ip: 209.85.160.171,
 mailfrom: leon@sidebranch.com)
Received: by mail-qt1-f171.google.com with SMTP id n2so10210304qta.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 06:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=TOblgOmX5VPabdGOUOEUgYqMtkJsRTlI3HLCCw9aC2U=;
        b=B2/5y9BXlz/znYrX9KDVbngkY6unriPmGSU/dJAXYZtjO6V+15rk64xKb7GRLI/0Hn
         yUcsXgz1Xv/HJLXijvmRWhfjcvqS3e6pu4pj41s3N7Zat8Qh45VmocNEICOwxiJHQvF/
         zu3TekLjfVrL5BHpW3ShlN5S9pToMKouxoCnCdIyG4obQPVxHXjEt5/zNdSDdS9hBCtw
         QDedFNfmp5GhtjchG72lS8BULoqs6IXKBXsp05DsNw7ENoNLsfEXWHYdGkiSXOY2I0Kz
         QOxb1dUP4TTNjN82PO8cyMoguyKRDkluQMa3EAVYe9/9F8/mCGz6ndKJjnTEDTK7hH6U
         sqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=TOblgOmX5VPabdGOUOEUgYqMtkJsRTlI3HLCCw9aC2U=;
        b=A27mHf5ro4kzXDd4btYatM5PZ3ugXuaCOLtAibzeD1nu6oGE2TGHaTd6YVPyblzgaW
         JYmbBCxn/cy1NkOsmNjc89zzPBdw1Iibim6kJdz5ZS8i2XgOmfJNCuGoE1bZR1v106Dv
         KrLMLzzOss0i8qfVlmnB3tKSejwA6vCep17J1OUDZj2LsZUgjCYjy2RUgX64/ZR7dGTX
         SgVHzeI4ETNDJHRZPMA8EH9aqSj7Qe26unI1THPEpNYIU7gpb9vztmwzjb71oyG4uAsR
         kipFDbmu716cdg/HBZVcJH412hsNTYz29bqm5bLjIrZghgJFGnrzoDdz5kIeYObZCuh6
         fWjw==
X-Gm-Message-State: AOAM531gwFxroAtR++ZHpRh5yecsnpXBvnNd2GkMyrUB8eXwjHAvR/lF
	oE0RRhaPp2PRwRhvCtHf0bmzqSsum1jtVxYLWplDsg==
X-Google-Smtp-Source: 
 ABdhPJxBKp9VLO6LCEXHkclfqgPY2PkZL0AY16r1D1E7+qzcJCg2gQFrM/kJ4+o6TOoiUdswTCzOMCJo92GXPkGh6g0=
X-Received: by 2002:ac8:203:: with SMTP id k3mr17667314qtg.384.1635167517852;
 Mon, 25 Oct 2021 06:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B1474819B9F6FA.19066@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B1474819B9F6FA.19066@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Mon, 25 Oct 2021 15:11:47 +0200
Message-ID: 
 <CAMjhiJiWWKCDmHmoRRA1osZfEW1YSZPx1CyFE8doT1Z1T=mLAg@mail.gmail.com>
Subject: Re: [yocto] bbappend usage
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 13:12:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55138

Hello Steve,

Is the approach where you remove the recipes from the image an option?
Is there a reason why you want to build the recipes that you do not
want to appear in your image?

Regards,

Leon.


--=20
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com



On Mon, Oct 25, 2021 at 2:55 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Hello:
>
>
>
> If I am building an image =E2=80=9Cimage-ABC=E2=80=9D, and it is composed=
 of a number recipes, and for some of these recipes I may NOT want to insta=
ll their final components within my image=E2=80=A6
>
>
>
> Which is the best place to modify the build with bbappend ?
>
>
>
> Would I modify a recipe=E2=80=99s do_install (do_install_append-recipe_xy=
z) ?, or would I modify the image recipe (do_install_append-image_ABC) I am=
 leaning this way to avoid cases where the component recipes might have bba=
ppends in place already ?
>
>
>
> Looking for the proper Yocto way=E2=80=A6
>
>
>
> Thanks,
>
> Steve
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55136): https://lists.yoctoproject.org/g/yocto/messag=
e/55136
> Mute This Topic: https://lists.yoctoproject.org/mt/86576092/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [leon@sidebranc=
h.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

