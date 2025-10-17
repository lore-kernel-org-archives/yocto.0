Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5003CCCD195
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 06:29:38 +0000 (UTC)
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
 by mx.groups.io with SMTP id smtpd.web11.9583.1760682568508773423
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 23:29:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YdFXjz+I;
 spf=pass (domain: gmail.com, ip: 74.125.224.54, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-63bbf5f77daso1636636d50.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 23:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760682567; x=1761287367; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KA/14WeMnfK64CCp2ZNk2B7QzDLGmgAnLDvzx2fvJsg=;
        b=YdFXjz+IyZPGdusOZjOvlp3GZe5e6jBUR1Te7sz8frGGpcAz/tjY+6U/ItOB27eTjx
         bxjkASeeXRWFDInkF3IRTmxyWyFc7m/4adhTttmg8fvWEXuV23rW2NORcpvAwELL/S0v
         XjlBdZkyi37qSUyH5hndfP4BIuqb9NdswxkPbkFLubQAsGs7v1335o1T+Nt/TKxEYuOB
         0L6QpO0/K3IfU/iDtML3rskwOIvunq4z/jXNTomy+CQHNmB7h6mwSA3q35/VNIjc00As
         Q1mgopY5tuf2W5dD/jsHCluUtJhdtv7oTXtlq0i1RkA7Am+pAExp7rrERPjdaJcfHbLh
         vmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760682567; x=1761287367;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KA/14WeMnfK64CCp2ZNk2B7QzDLGmgAnLDvzx2fvJsg=;
        b=fbfiMe66IqmIasBh66TdhGWds5wa9xJ9rn7hvHKKjrKAO0ND8NGNWEidhbRnrIS+0D
         3goM0WPre9wYNElvd6bNJ96DYv/LbZlDuTMcXFVC9TzpFI018G/B5zkwwk/TpvwCYNPK
         qnYjZunabkD7lHWBtVGxlqFsM6WHqdhV7v+tHyCxflb17i310N0e/eI/RaU68MWUTlep
         vGGE32JDl0s70mlziOPNPF56LpRAZCCA0xBEpmcPZTdUxBqITXfufy+SX0zQ79hEAs2r
         QYZNxcOleSv+m2JXnE1pOPAFAdw8vuviR+aH0Oug6VApDCD5+K9li8mEQzLorIGcXtmz
         xTvg==
X-Gm-Message-State: AOJu0YwoIGFcBJTMna7nfGzj5ebUOHIg770zjxwl5RoyibDQw7h4m8oB
	FXznZxhpHaLnQOt2XGwzCo+hDwunb49y6VKtny75iaw0S3HCZcWs+iSo+xkPrlfBSAzwx2n+WgR
	S2oXIEhHc2oAlgWwixVLY6qr5O8OB2pZE5lC6aj0=
X-Gm-Gg: ASbGncvgfaarEC1zzUJjOH+eImcYBV+0E/xymhVZaxxUPhhOVQsTQo4UZ7Ax/Do/FHe
	9m9u7ldCBG89SCSXkTxTDnVC/uiC3WRv9rf4S/p/ahaFzKeYtaNkl2TgZnPZzmX0CKGLLVHUY/u
	pBOw0OgdH1G9QJfjzcyQCZaKvfjYT4+Nt0QMkWFasrcRN768glhKwSbcqXeQnFoxjKGirOkiEb2
	veOBIbd7V2OpLs3l9mobvaFk9nB4RFpD2+n4PMyy7c0qmliBDmY7SaTScUnDYEcesEC3r8CEsqp
	Vd1ndkU1OfFdlsY/XQbRyqpIFuHZs0MhWub4tRNrc//UNIhHiAFMwu3iwRvi
X-Google-Smtp-Source: AGHT+IGDkXk7J+rjo0GlH0dmhp/q14RDaNjZ0b/+4Rtk4OQul+71ado7GkyO871Q9D/lm+CPHap442HXPs2nCbQli2M=
X-Received: by 2002:a53:8383:0:b0:63e:8e4:4771 with SMTP id
 956f58d0204a3-63e1618db2dmr1602106d50.33.1760682567217; Thu, 16 Oct 2025
 23:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <26514.1760678611269066030@lists.yoctoproject.org> <26514.1760678828103297527@lists.yoctoproject.org>
In-Reply-To: <26514.1760678828103297527@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Oct 2025 23:29:00 -0700
X-Gm-Features: AS18NWB8-rY0fbqcrs5WRCJBVU6I_P6thPJ8mjwIpfLeqEmzkIh2hTegJrOEd0U
Message-ID: <CAMKF1sq37psZafTN8Sv9u_nvZ6WML838NWgxy7tnuAn22ZGdKg@mail.gmail.com>
Subject: Re: [yocto] Building u-boot with clang
To: yocto@lists.yoctoproject.org, anirudh@astranis.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 06:29:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65948

On Thu, Oct 16, 2025 at 10:27=E2=80=AFPM Anirudh Mathukumilli via
lists.yoctoproject.org <anirudh=3Dastranis.com@lists.yoctoproject.org>
wrote:
>
> Also, is there any desire to eventually support a full clang build of Lin=
ux? The mainline kernel appears to support it with clang versions 15.0 and =
above, so it seems like it must be doable.

I would like this to work. there are some patches in meta-clang which
avoids dependency on gcc-runtime. Perhaps that can help to remove
these dependencies
https://github.com/kraj/meta-clang/issues/1132

ppc might add some challenges there though, clang support is spotty for ppc=
 too.

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65946): https://lists.yoctoproject.org/g/yocto/messag=
e/65946
> Unfollow This Topic: https://lists.yoctoproject.org/unft/115800062/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

