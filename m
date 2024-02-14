Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C85DC4829D
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 06:31:20 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.36226.1707892278594032470
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 22:31:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iQm36kCe;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5114b2b3b73so5979442e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 22:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707892276; x=1708497076; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwDg3LtLhx8D65LSKvsTb5HTlfSl8EOfteQruf2zA38=;
        b=iQm36kCeI7YOXwxPUiurdxn8m7FsHIhbhZ57UPkwQwgjXKjCWLYdhWbFQEK0xAnLKp
         FxixEn9YrZrHmkKIY3+j7F9v56ddMagZHodyqbo2FA8pnSQ3Kl+SAu9H7lAkCXt8R8mG
         Dl3goRudOU9pYxiRaSpHnJ7DlSXzIWEVhwsfUdKDf73fwvZ6grO48/L0/RPAdbf7kPzD
         X4WHI2PzGom9ukl12pjv7LGD8AfmWd51yW0IL0dAKECQO7XeCCpiBhWFzQIbVgRSPJN6
         dqc9nqYCCrmEWmxIpJiRebDcSPtkoVAWByfmgY2qCnD5PjobHV2uo8oYiA8weCBh+jTI
         rR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707892276; x=1708497076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vwDg3LtLhx8D65LSKvsTb5HTlfSl8EOfteQruf2zA38=;
        b=Dvzzy9ST7Ic8pgN81SDzNcuX99Lr2s/6BXRJBPlJtBsmiudPowJZXBxCAA7S+8+foL
         +YTiMxoRHfHrDLeQwNs1QimSy10w5aUdHi+eAaAhCTyStcweAtbdFUVu8iMz0aYMseM0
         aSqFLjIe6UD39pUQiI4p2cMlJUsoOwU2vwCWN20WlxZxZmLymwqgV2yxsaNY23vbGZVO
         9FLDccKdvBC8Gj1RTNvZZzZndu4yH4M+IGtN/ot4N6f6ko/D7zVzZRpf4eFjKjwVanAh
         +mByEU4IuH7HkEDWa8yIh/f7ktU22i9KO/sFBCsh+EvJEwcC5/hGIhyNG/a8LKTb6UxG
         7I7g==
X-Forwarded-Encrypted: i=1; AJvYcCW+mJD6pTJd322/hvu2AYDD8Xq/axoszoD59hfq8eK2mYBcB1Um3D6pHjPsZDskwOpYplLxvdo/gtu4SpuEcqRAgn5YYgRrH+IELQHg
X-Gm-Message-State: AOJu0YywbIx6qyWf+VNdzAuRnITSnaFZXe2tfDPuRkua+M/rmaMYLZWa
	ahT6tK1whNQnUzBqd6M5SgBJgYm2Ll/sD3FsmhXEcEr03ADEHgxFue+c15JyVeamdxnxBKs8ond
	VfQX+MFxk7jrO8koZVPcyEcnLQ18=
X-Google-Smtp-Source: AGHT+IGAi5b9ldhnB8anFvssA/zL/7G5au85uaAP7vq42Gbq4liEP51kZeZzYV3qin6TwxtBWrcf7PCNJiT8RaSCCQY=
X-Received: by 2002:a05:6512:55c:b0:511:830d:c0a7 with SMTP id
 h28-20020a056512055c00b00511830dc0a7mr1248406lfl.45.1707892276321; Tue, 13
 Feb 2024 22:31:16 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <17ACA59E7A7FD97B.16230@lists.openembedded.org> <CANNYZj9X5qRSup7i9S=rtRpwo5nCNHp8VJOZAuvu5JzqhLYD_g@mail.gmail.com>
 <f1c9d0f8cbf8ea1972aafac0c29690ca400178d7.camel@linuxfoundation.org>
 <CANNYZj8tyOy=z3L=uM9L_R8uP6eZSUkYXm9BwvsU+ERpE9QcZw@mail.gmail.com>
 <018185898b86e2fccabf68570a6aec6039a0c6d6.camel@linuxfoundation.org>
 <CANNYZj_UMqZe+hDs2RzOPaLZzRmyg=8X74+HCwytN5616jZgNg@mail.gmail.com>
 <e26e53be93a4f34b75e3e66becbaa4c6ac15133d.camel@linuxfoundation.org>
 <CANNYZj_GFnmvmYRNGBFkivTNY7Xi-Ok3GoDEJ7+wO3A=fW3JQg@mail.gmail.com> <CAJdd5Ga9nd+smcy2426QKTEF1nOPQhqOLpXrFmb0w9bb4Cov4g@mail.gmail.com>
In-Reply-To: <CAJdd5Ga9nd+smcy2426QKTEF1nOPQhqOLpXrFmb0w9bb4Cov4g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Feb 2024 07:31:04 +0100
Message-ID: <CANNYZj8ZD55bwRaZB-cX5SmktFU2Z-3VTVR9dkzoiX9XKv5wjQ@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 06:31:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62485

On Tue, 13 Feb 2024 at 15:29, Joshua Watt <jpewhacker@gmail.com> wrote:
>> Yes, but I'd like to replicate what bitbake does: check configuration,
>> start the local server if needed, and only then do the mass-import
>> from the file.
>
>
> Sorry for chiming in so late; I think you are on the right track though. =
Exporting/importing bb_unihashes.dat is the think to do instead t of the en=
tire database (which you may not even have if it's remote). That should at =
least let you reuse any sstate file that is in that file. Importing the dat=
a as the new cache is (probably) fine and the easy first step, but be aware=
 it means you probably won't be able to find equivalent hashes that are der=
ived from the imported data, so you'll be looking at more rebuilding than y=
ou might expect if you change something. Reporting the hashes to the server=
 might be an option also, but I don't know if the cache file has all the in=
formation to do that correctly... Have to look
>

Let's then pick only the low hanging fruit first: add 'bitbake -S
unihash-cache' which reuses existing api and code behind it (that was
written for esdk). 'Importing' it only requires placing the file in
build/cache/ on the other end. The goal is to get to a working build
replication tool that can be tested.

Alex

