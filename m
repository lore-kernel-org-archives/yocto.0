Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 096E6C54E41
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 09:48:32 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.20758.1709200104474658181
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 01:48:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D+UhoBGc;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51325c38d10so287298e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 29 Feb 2024 01:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709200102; x=1709804902; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUgy1w8mM5YTM6LhyyMIGTPszscqaEHn5sb9aNUPpCI=;
        b=D+UhoBGcL9Vi0SJWPi3DPY+hV5MAdfweenA2+UdHSbNGVjr9QgOOoIroUKUQMSqrXZ
         KGJBfnCnvY8IIX+hAXzukmsSkX1xhxbTBqZ+hpSNTVVGepT66h8omM3MBXwT+zeqaQgH
         zQPbrkkIYcmhqEdLeP948VSoeAGFLlFJWJjnOsiRpCwTBPXmeUCkpHx4Dc9Jbw2ucfm9
         hg4Hms8kcFmDEtPceUbCqr0Pmz/QQ89wL6Qs59boL1fbIhXgg2QCO6u2WwCReWI4HOAX
         w/T5eKDGabhZ5ZjlQO2RatEk0SFCQHTuS5Ki+xs0++dRVnFLk9zNC76BRqxc9ZL/rzW3
         kZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709200102; x=1709804902;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUgy1w8mM5YTM6LhyyMIGTPszscqaEHn5sb9aNUPpCI=;
        b=VFRKao1jfkT6VpmXmp4KIC+FNWPxIZwHt2or58ZuL3lGOCjrSSoWoukFdGQpICiCGa
         btNrrzayASGrWrHCcupCHwZJJTblepZs5PKphwhTpO1oEJRNpazO8HegkDjfbrMA8tgb
         hz5uEOgkzx7D68bRfAZEpXTm/XJzM1KEq98O3SIrxYKwmk3h5ydy5YS6X/AwytPd0w/u
         iuDpljmJgKjT5nf1PMHltvLfBDOhMebqBU0sCOWQ9z79eA/dbtTzMznkDx4Zu2eDnHoe
         QBumRzJ5T85RUHJMYb2cdFoJ/eRKk6vu7BV6vnoMTW+psl+e3iO4GXf9pKRX7CDfXjZz
         8GSw==
X-Gm-Message-State: AOJu0YxaAUmAKg8KsGq+62qvuDEpY1OkZB2RJjtq4Q5mYlLfmRs4wTgg
	9/h1eRUg7/79FwtH8jYwxoffviUPAcjcebTEQmgUdWbp4wXFr/ftJG+xd5Jmdi/FwOPQUH5TiMe
	1DJJvgfcfg3SORoPLKG//4vOZhRw=
X-Google-Smtp-Source: AGHT+IEQFTWgyYpcf1cyvJy+If9ZL7KdNZ7enpm2GsvH7p+UndoY7U7YJHIDlgTMBbubTVS4jz5u2xCNgkaHdZGPrYY=
X-Received: by 2002:ac2:58e9:0:b0:512:eb14:2ada with SMTP id
 v9-20020ac258e9000000b00512eb142adamr554692lfo.0.1709200102110; Thu, 29 Feb
 2024 01:48:22 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-i+0+ErYB60D_bV6=QQ1B5EBG7V8867EjEW-V4nw6vvA@mail.gmail.com>
 <23930.1709198778245848116@lists.yoctoproject.org>
In-Reply-To: <23930.1709198778245848116@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Feb 2024 10:48:10 +0100
Message-ID: <CANNYZj8fGE=pCNSTLD8VP+xsXBZA=MYtGM5jDdnn4eG1fSHrRw@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: Patrick Huesmann <patrick.huesmann@desy.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Feb 2024 09:48:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62647

On Thu, 29 Feb 2024 at 10:26, Patrick Huesmann <patrick.huesmann@desy.de> w=
rote:
> Your suggestion will probably get rid of a lot of complexity in our recip=
e that tried to work around bitbake's limitations. But I'm still not sure h=
ow to tackle the original problem (AUTOINC from PRSERV for file:// and http=
:// resources), even if I have SRCREV as static data before running bitbake=
.
>
> If I understand correctly, bb.fetch2.get_srcrev() requires that the fetch=
er's supports_srcrev() is set, so it wouldn't support file and http fetcher=
s.
>
> So what would be the recommended way to implement this functionality? Sho=
uld I write and somehow inject my own fetcher module, or reimplement packag=
e_get_auto_pr() for my recipe (talking to PRSERV directly)?

I know as much about this as you do. I don't have time to run
experiments, and it's hard to tell from reading the code if there's a
possible code path that would inject a value from pr server into PKGV
for non-git resources.

Maybe the easiest is to have self-contained logic in the script that
ensures PV always increases before it's set, and not try to involve pr
server in that. Writing a new fetcher is... far-fetched :)

Alex

