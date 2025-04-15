Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AA70C369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 14:43:59 +0000 (UTC)
Received: from mail-24429.protonmail.ch (mail-24429.protonmail.ch [109.224.244.29])
 by mx.groups.io with SMTP id smtpd.web11.21975.1744728233751101640
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 07:43:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=D/kj0Nm1;
 spf=pass (domain: protonmail.com, ip: 109.224.244.29, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1744728231; x=1744987431;
	bh=BuRxUA5u+DLfcgiXJKHDm6OvcgAqFgKt3bS7ZjU0PPc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=D/kj0Nm1BiFncWym3lMJY7+dNZyTZweN8Nxbuu0gvDghX+rzdpObDDlBrFpkdI+Uy
	 R0TmxI3nqVlKFSQK9OGuBRcjPKY8FKyb3jcYIt+ucyXyq2kru1C/taSY0hDbIjxG+n
	 2hjsh2MjW0+lOk94SjW/Hfd44gxTh1739I8hemecT5bI6SPRv0SvYAVGKmGlG9AJdo
	 VCBJcd9bpW3kMAd53e7JGMZS7WA0oJ+eeEAUGjKiy+TR6TQTk9FHw7EYd4zLpzFAaY
	 turTSx5oQ8FOLpLnG1xz8FTx69N4VITgzfRWA+ZZUvnnKLqNnD0jrxq2Iniay0Tfkq
	 FQ9bSjT9ZmSQQ==
Date: Tue, 15 Apr 2025 14:43:47 +0000
To: Gyorgy Sarvari <skandigraun@gmail.com>
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Recipe fetches always the latest kernel while building
Message-ID: <9BneOrzm9SKaeYWYFSxdV9L_W9dZ4KIbJN8Z5s_EuSER2NdBN14Q23A2O4udE_qEx-GT5VNOpjjw7Rvc_ERUSsgVi1WO693Z2xaFdB6aYpQ=@protonmail.com>
In-Reply-To: <f646cd7f-cb85-4da9-b346-a7d4ca0e9614@gmail.com>
References: <tKIHWnniqyKbGr3pmpXnMAtt19UwC1FoWVQjYEoP_OaMYYUju5C10Z2duqK18grooGwMrqGw0xeJdFRcHMBuftdCp84cApraC13a1TL7uYU=@protonmail.com> <f646cd7f-cb85-4da9-b346-a7d4ca0e9614@gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: fc253d2dee6001aa1eb168d152ecb47556a23515
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 14:43:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65174

> > Secondly, the `do_beaglev_img_deploy()` task in the recipe doesn't run
> > automatically. I have to manually trigger it by running `bitbake linux-=
beaglev-dev`. This task is used to build the boot partition for
> > the board. How to rectify this issue?
>=20
>=20
> This task seems to be an extension of do_deploy. To make it behave like
> do_deploy, it should be configured similarly to do_deploy[1].
> Personally, however, instead of having a custom task for this, I would
> just rename it to do_deploy:append(), and add 'do_deploy[depends] +=3D
> "opensbi:do_deploy"' to the recipe.
>=20
> [1]:
> https://web.git.yoctoproject.org/poky/tree/meta/classes-recipe/deploy.bbc=
lass

I tried your suggestion and I keep on getting stuck at the following error:

```
| cp: cannot stat '/home/rapey/Documents/yocto-projects/poky/beaglev-ahead/=
tmp/deploy/images/beaglev-ahead/th1520-beaglev-ahead.dtb': No such file or =
directory
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/rapey/Documents/yocto-projects/poky/meta-riscv/recipes-k=
ernel/linux/linux-beaglev-dev.bb:do_deploy) failed with exit code '1'
```
the similar one follows for the linux kernel Image as well.

I investigated further, the DTB and kernel Image gets added after the do_de=
ploy() task is finished. Just having do_deploy:append() is causing the
"no such file or directory" errors. Is there any workaround for this issue?
Having the custom function doesn't build the boot partition automatically, =
I have to trigger it manually or atleast run the recipe again.

Thanks and Regards,
Kanak Shilledar


