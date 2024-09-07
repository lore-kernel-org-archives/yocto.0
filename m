Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E997E71080
	for <webhook@archiver.kernel.org>; Sat,  7 Sep 2024 10:41:57 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.5217.1725705708504112860
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Sep 2024 03:41:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NITrRrSr;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2f74e613a10so1984831fa.1
        for <yocto@lists.yoctoproject.org>; Sat, 07 Sep 2024 03:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725705707; x=1726310507; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nDs5LuVw15vF9QC+GK2CS2eEMKhgqc1T1GK1iRWcu5c=;
        b=NITrRrSrybjZCNS1Jofr6QtLOQkJCFytdBOgCIkv+eAz/vCD10hCEzT7BzohR7nZ0+
         I9D4AxH0lH1cHrZaekhuE5X/msZAeW4RjYMQhjSOuWZiBPCcVh+CKox5O3ua8E4phTPZ
         +bbrbHE22xJiKMR2G9AJI3bUyHn7G9T1Hk4SXn7nLKW7qJtBD1njCjV1H/XkwrRCcE3u
         gaaTPh9ZI3T/ul5JBzLr8gCI1J7J1OW1Yfs0siMhBMF+K0BXPWIxc+joAqPoNJyi/CsI
         jIfDnBBAYHhwucW/yyXEqwkVTnQNY+5+1Zjx3CqWREKcVTVTRk8UOJLVmeU7S7Q07Z3D
         C96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725705707; x=1726310507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nDs5LuVw15vF9QC+GK2CS2eEMKhgqc1T1GK1iRWcu5c=;
        b=Am0AEGaaqVC/0+q0sZbJK4a8ovREJOZjBf6/2DR02dLl2nUp10FNwsS2qAYSfntz1A
         bvrJUe0ReoTzECrqjUqr9fu2eUsqFT9KL23f9SYLebBdhrI18QgD+pEOtmkhJ8dJN/ZR
         J0Ec079Y2v12DQ67ieDtQ6OVAjpDpg3eaMwiHFk6yoRdUjvsBDrjiIXaOdGhdACD0sbk
         chfcoqSmoNi7zWErE6wTtDKV1/zqlE5Pf4SzDHezq56avLBF5J5+6JioO4t9eK5cC4cQ
         Q4cy8uq8O/b6p4u1bw+8SSJJ64YKstDt1HRicTvna3VwAWdUGnqDkWWcE2VsoP6wZxcj
         EYaQ==
X-Gm-Message-State: AOJu0YxSGjaqlKMt9JADfidsyUsmGO5CqNxkOtOVacl7PjuY8lPbxxDI
	chD9YiChymJet1krqzqPiXBLG8WPNkOwjG+A3amWAfjoOsXM8Z1HHi7UPmO931r/UR7cIx3Kld/
	akErv7qXaVYDO1WufNPchMdyMJcs=
X-Google-Smtp-Source: AGHT+IFMO1U0zs6APOu6y4mouJUCE8MQlRwEWVZ9EJC/YG+fHXFEwT8B37GSX6/3Cv+H1CvSOzA/K8+9JViPl5lqPrk=
X-Received: by 2002:a2e:750:0:b0:2f6:4a89:9afa with SMTP id
 38308e7fff4ca-2f75a992205mr11879411fa.22.1725705705680; Sat, 07 Sep 2024
 03:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_MOsO3Vu2YRfB3njTS-RZBmnzduCS3QMtcMdnZOoaswg@mail.gmail.com>
 <2927.1725630876196244404@lists.yoctoproject.org>
In-Reply-To: <2927.1725630876196244404@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 7 Sep 2024 12:41:33 +0200
Message-ID: <CANNYZj-7uC6enmSrjuq24A+UBOSuUJF=puW_RBqN8CcP9BN8fw@mail.gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
To: radoslav.pesek@microstep-mis.com
Cc: yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@gmail.com>, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Sep 2024 10:41:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63797

On Fri, 6 Sept 2024 at 15:54, Radoslav Pesek via
Lists.Yoctoproject.Org
<radoslav.pesek=3Dmicrostep-mis.com@lists.yoctoproject.org> wrote:
> thank you for the prompt reply. As for me personally, I am, actually, usi=
ng the yocto environment, as the yocto maintainer within our project, but w=
anted to create esdk for the developers as i hoped it would be easier for t=
hem to work with recipes and for me/us to maintain it all together - as opp=
osed to, for example, each of us having separate yocto environment. My impr=
ession (from all the documentation/howtos i found) was that this is the way=
 to go.

I'd still recommend that you play with the 'direct esdk' workflow. The
challenge for you would be to provide a well functioning sstate
infrastructure, so developers never have to watch never-ending
do_compile on their feeble laptops :)

We're working on a 'single-command' reproducible setup of yocto
(bitbake-setup), but it's currently in review/prototyping. There's
also a prototype for 'oe-replicate-build' which would bundle a 'real
yocto build' into a self-extracting tarball, like the esdk, but
without the 'special' bits that obscure bitbake and make layer
modifications difficult.

Classic esdk bundles will almost certainly not be developed further.

I'm also CCing Adrian as he's in the same boat as you are, and has a
lot more experience with developing real products and giving
developers a VSCode experience that's integrated with yocto. I'm just
living in an open source bubble :)

Alex

