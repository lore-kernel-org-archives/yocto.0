Return-Path: <csanchezdll@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17851C5AD49
	for <webhook@archiver.kernel.org>; Mon, 26 May 2025 07:49:40 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web10.24230.1748245772807065246
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 May 2025 00:49:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=No4rKDcY;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: csanchezdll@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2d0920ce388so837780fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 00:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748245771; x=1748850571; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UrS+i15i9+FO4uy8Dgb0uNWteQbjOJhaZFXC0HmMOYM=;
        b=No4rKDcYe4CBeiv4oeESxHiQvHmxv5Ee5uM/fZ4+S28CeTUmTBzNlEKeb/W/hO38CA
         m/Yt/XOdIyeWFcsG4WiKO279G1fRC1hwUqOeB1PLcqcS2clj+nERBk/NhlYdkYj+GX/7
         vDeoftHlzGXP+FIAYzo2rY69pTz5M+aQmPBhALCFiAAtjykIxrNrvGChC1FOzzHHv/cj
         pi+YzEDoIMrDTruwpd4N4+tJp0q+6KEOauh0J2/Sa6KwTZMheXkFWAdj5ApRZX29XEpL
         fgAJSzVSciQVGpg+ZCAgtka0zwSm3+AuvBQZzxJJyIF8GV5MML/+UJh6wYLxKqP7BX2r
         h8tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748245771; x=1748850571;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UrS+i15i9+FO4uy8Dgb0uNWteQbjOJhaZFXC0HmMOYM=;
        b=KMDvJjlX4yHpNKAUuOh8ydM38hKuoojRUiytycftz3akcqQnIM3gdZygownb9nwqmC
         1ENNOQN8ICU3hq7wRs4OZ+GX53GB4uCtqOqW6LGT57MZGXwR8v7b33fPrgdT4pd8VDmy
         LlT1qGDYine+VtClffJGkt3RVZKgjN9xPrVsh82rFwN/j6MDNCDzlS1YTJvSOXzPf3S8
         tENM29CYBACjdmUiY85b3h6HM71ZtUZ3qigfr1IKTkphGhZe2SEtRvclzQ0IRonbw9uB
         rh2kW0xCiQeu09mAg/3v1yb998mSIa2h7ZA0BYtoX7m/IrXT2McTHycA3vyYoO/jMgWI
         +yXA==
X-Gm-Message-State: AOJu0Yxerh4kmhYk1XNKm/XoQyqKiZMdI1nmxnep7QzsIW0yggD8QyZG
	JicezleSoQ88KHGhtqM6msJ/l4dl5mUewlgReq+yZDZF8u2tCnfqgsciQszCGmj5nUPBrAwIxjQ
	zBODw4YCc7krxaDKt4PrLCc7A4Qxn+VkH0Dvb
X-Gm-Gg: ASbGncvtbzrEsGi02fN0ggBQN4Hp1bVaxk+Ur4paKzwXHMIUpacgJHYyaU/Yee956Uq
	2zBzOlqmoenolIghQJdZgUP1BsZG5jBMAyZKNmCo4884LKoiWJRSxU7hrCBEj1zmBbW1OlKnGqm
	Tu7uixzFBnH+FBlyJeLEZglIUhjPJH8rWU
X-Google-Smtp-Source: AGHT+IExwA79LbVN28N6syHYj5qfR+Odq3Hpc5SJ9BYkjhEP/ctuUuF7LOqBphhE3CDJ/4fC4FsgXCNYmyZkDqxQde0=
X-Received: by 2002:a05:6870:e410:b0:2d5:1894:8c29 with SMTP id
 586e51a60fabf-2e861eb5f72mr3659177fac.23.1748245771508; Mon, 26 May 2025
 00:49:31 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Carlos_S=C3=A1nchez_de_La_Lama?= <csanchezdll@gmail.com>
Date: Mon, 26 May 2025 09:49:20 +0200
X-Gm-Features: AX0GCFsl9PnNqdu81Oqw0vWydpz7r605l61DzaqLLwZ8GG2lKq5PXGn7kvtPpAU
Message-ID: <CA+KcR8ARBUj8PTcvA=rx-yob=WHYcS2gUnGX2aROOjy6bZGqWw@mail.gmail.com>
Subject: Default KCONFIG_MODE for in-tree defconfig
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 07:49:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65421

Hi all,

According to the documentation
(https://docs.yoctoproject.org/ref-manual/variables.html#term-KCONFIG_MODE),
KCONFIG_MODE defaults to "alldefconfig"  when KBUILD_DEFCONFIG is
given, pointing to an in-tree defconfig.

However, I am creating a custom recipe (inheriting
kernel-yocto.bbclass trough linux-yocto.inc) and I was getting a build
with an unexpected config.I have tracked it down to "allnoconfig"
being used, and I have managed to get a correct build by adding an
explicit "KCONFIG_MODE = alldefconfig" to my recipe.

I think the problem comes from the combination of the logic in
do_kernel_configme() (which selects the config_flags to "-n" when
${UNPACKDIR}/defconfig is used, theoretically meaning a custom
defconfig coming from meta-data was placed there) with that of
do_kernel_metadata() (which copies an in-tree defconfig given in
KBUILD_DEFCONFIG into ${UNPACKDIR}/defconfig, so that is going to be
present *always*, even if an in-tree defconfig is being used).

Is this something I am misunderstanding? Otherwise, I think the
documentation should be adjusted. I can send a patch, I just want to
check I am not missing anything before doing.

Thanks,

Carlos

