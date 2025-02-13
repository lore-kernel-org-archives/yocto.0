Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9332AC021A4
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 10:09:40 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.7739.1739441373727287853
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 02:09:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CCpTTRZo;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6e46269d2c2so9743686d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 02:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739441373; x=1740046173; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1FfHJW33S6EMsIpaCsjU3DVDsQ/59Eut27FoN+xeRU4=;
        b=CCpTTRZoDIQJTyI5PP3EFxtCdZpyPRsMSRDD6/LRKF/YSzteaAZyDanqHRmqGK0ZvU
         vDYEtFdHCIquh5ZWQx1MCopyusEO3fqgu56ZNylQNlJd+hTLnhiyihCwlt0CJDILwyvY
         WOis1c7hpH351Uewb0FJNupHt7qF3kNWcgOa3wcITHMY4sSWjyZ3eymARkDuOBkHA7lq
         YPltnG6NQsPijAjFEH1rBK4yJG8cZQaTnEpTrzZjeplu2ft789aW9oPXJGquQZrgtK68
         SkGJp659tUvhAfoWDjuDNEsoHV6h2GyzWbhOr2xCXqp3D9RdPWjtGicaHGPu9aUMpNbG
         gyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739441373; x=1740046173;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1FfHJW33S6EMsIpaCsjU3DVDsQ/59Eut27FoN+xeRU4=;
        b=R56/veF2mblPvVLeXt3MSOkzxCMeoEerSoMKSHOuYDqyJYeYb1wtIshHcB/n7rdLij
         9hUHHZsO1CxNO6sysootujAtgn5Xy1WcTvB+Cw76TApkAIyQmBV9wbPrnWWZKOE0s2Yc
         sg4U6q3hKNpiCMOmtHumKL6ClfCDGPGYQEZUw+KKZWcomWiCOOQb90zULDCMbxo2wRF2
         JXGUJs9NS/ZR8R76DJR/n9sVGD9fpmnOzgiieCOUF8cFD+ZRcGY2kxMPOgMRiLm8gwGp
         iVs5dBQ1lhf5UmSzgJueReE11n+uafdAy5m8/IHV6R5ePjmik7tOBj9G2RUrjpp9mM/Q
         ev1A==
X-Forwarded-Encrypted: i=1; AJvYcCWurp0OOZ4PYJtzWRiCuW1RxrdjhOUAnQ84K3mXeECk2P827HltxclXebA1HQZl8rbPHAq+4A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yzp+Ld41Ii9pwOnLSVJA+brs2XrdJGo4QnfQUm4Lqxnkv1C5YZt
	Js82z9/NqYynyNAeE9roDuaZq40syKa2jaA0oYrUboltGmzzOLfDi3G5KuZhqYG08DKpK7myimS
	Nw65ATDGjUS75xQPJHMcOq0nFZKw=
X-Gm-Gg: ASbGncuqpaqX7TLFmaDjIZ7bhAekJmAc/PbIZtd4hLt6KeDumDD3FkEJ0yihukEEj+Q
	ZoM35gV5kh9JbvrqkVqBzkss+1zUHB1emLpduq5slwsZwqGYZqKbBCVenc7AQfiaZCSN+hkk9yA
	A84u4ZlPyGOlYvWHXy+ZjqmpPylBSKcHo=
X-Google-Smtp-Source: AGHT+IHKLGznaByVA3zsK6AleSsQvKW5dRlQjl8FYNbzjPZcUxLO5fzFkQE4YRlGttRh22WaIbwDDafsm9SyECzQmNY=
X-Received: by 2002:a05:6214:2464:b0:6e4:2f4c:f2d2 with SMTP id
 6a1803df08f44-6e65c1832edmr46709516d6.31.1739441372667; Thu, 13 Feb 2025
 02:09:32 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
 <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
 <CAMSfU+44qwScnoDP4As37TNHYvwx5mBmTdGEQgq_VVz7woh6sQ@mail.gmail.com>
 <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
 <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com>
 <2c1bcbb1d5b75b925d9af2bd300d376a973e314e.camel@linuxfoundation.org>
 <CANNYZj88RSkyChK6NwJU2OVxmGXzD2W8UcGyYe92ii8v8hdFqQ@mail.gmail.com>
 <CAMSfU+5Af0=w0N_kK1HLx4nNnQqGOv54C2qC-e7Q0Lm5NQ0Vrw@mail.gmail.com>
 <CANNYZj_8qPoOjhR=uR_7WRZu0V0YdhbcN43fA6mbnQBU5198fw@mail.gmail.com> <14a350e52c4e567fa995b08978b418fe1e43831e.camel@linuxfoundation.org>
In-Reply-To: <14a350e52c4e567fa995b08978b418fe1e43831e.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2025 11:09:21 +0100
X-Gm-Features: AWEUYZnMZUyPIZqYQiIYrKRL2YGO5UtdoDrwtMO8yotn5fN4Kj_TPxeEsllz1_I
Message-ID: <CANNYZj9hU1g+uyGAgy=02jtX9a-QdO=b6t3zG1OgshJkfdyhCQ@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Khem Raj <raj.khem@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>, 
	Yocto Mailing list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 10:09:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64797

On Thu, 13 Feb 2025 at 11:03, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I'm wondering if we should set up that default repo saying "no pull
> requests" then ask repos that do accept them to override the message
> with their own pull request file? The default repo is only used as a
> fallback. Does an empty file do the right thing just to remove the
> default message?

I think the only repo under openembedded we need to carefully
coordinate with is https://github.com/openembedded/meta-openembedded
so let's add Khem and ensure this doesn't step on his workflows.

Alex

