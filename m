Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A587C27C47
	for <webhook@archiver.kernel.org>; Sat, 28 Oct 2023 08:27:46 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.14791.1698481657845294506
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Oct 2023 01:27:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WYSSmcUy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-32d849cc152so1915774f8f.1
        for <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 01:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698481656; x=1699086456; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+4Nja+9HFPNc+B6mM7/chZ9RPFBzWYq7kkHqSUzsRGo=;
        b=WYSSmcUy4RBRWFt/o1jnewVkuLW9xgM97Lo/vHKjnI5OFsM8zHHhj+VBLVdxqD/yU/
         Hn+CYL6YGe0eHHUfOqk1l4/bT4vf1gxKM3xsthfygsio0KQoBG+PPPlSP3z/3pEYFurd
         IqRKxo85wqgor3f5H8SmujGFsUL8J2nAoc7WE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698481656; x=1699086456;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+4Nja+9HFPNc+B6mM7/chZ9RPFBzWYq7kkHqSUzsRGo=;
        b=tlTr57vOZ1lkIlnYplYgVjHqhsAJs/4abZ0kY5L5M6HZ4ykvHr8pv55kWJ6JTs3Ja/
         yVwTasaDfssXoTQg3b5XH1Mz8/7dh9k3sfgB0mpnnY8DO2dOd0nAO1Wc3Zxo0DHXwQud
         71H1AuF+P+1h2ETjUkp/UNG4bPsAH/k0QQb7GKgpKO9Wfq6JX2UsffN4twKM5vDKHBS5
         O9fRu01xswl8Xh9EoxKe1xIEomUG+y8GF+iuOMzRr03xCaXDKKX+Q0G1HWbgOSUIj44O
         XEN5ZplsAq1A5lx8dUYl3aJUKCYa95q7kNuCdMHzqUCRtdMHpccPpTRyhtJ7SGHLzsGX
         aXLw==
X-Gm-Message-State: AOJu0Yywx0nGJQ1Y6jUEmiw+Snx39Za+d3eu85ZUq/JZMxJs0zW6S2ky
	EnEqoo30vvW3dlZPyMUXZi4xPw==
X-Google-Smtp-Source: AGHT+IE4+QBxAr2fCuVHCupwWnVBYvZBR9C/nW5LIMCCEmXhUCVnaTQ83m27HDe1xgAhuYk9L/Zomg==
X-Received: by 2002:a05:6000:1209:b0:32d:9d3a:d8c0 with SMTP id e9-20020a056000120900b0032d9d3ad8c0mr3212076wrx.60.1698481655890;
        Sat, 28 Oct 2023 01:27:35 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8d0f:be40:40a9:c121? ([2001:8b0:aba:5f3c:8d0f:be40:40a9:c121])
        by smtp.gmail.com with ESMTPSA id h11-20020a5d4fcb000000b00317a04131c5sm3389314wrw.57.2023.10.28.01.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 01:27:35 -0700 (PDT)
Message-ID: <9a9ccb04bcccbbb2718f1c09504d2c500f78f367.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 28 Oct 2023 09:27:34 +0100
In-Reply-To: <20231026130340.2070302-1-david.pierret@smile.fr>
References: <20231026130340.2070302-1-david.pierret@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 08:27:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61507

Hi David,

On Thu, 2023-10-26 at 15:03 +0200, David Pierret wrote:
> - Modify the setup-auh to use repositories cloned by the auto-builder.
>   Manage the case where meta-openembedded is not used.
>=20
> - Modify the run-auh to manage the optional additional layer.
>   Only 1 layer can be provided.
>=20
> - Add auh-meta-openembedded job with 1 step per layer.
>=20
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> ---
>  config.json       | 102 ++++++++++++++++++++++++++++++++++++++++++++--
>  scripts/run-auh   |  39 ++++++++++++------
>  scripts/setup-auh |  34 ++++++++++------
>  3 files changed, 146 insertions(+), 29 deletions(-)

This took a while to review. Firstly, this really should be written as
a set of commits with incremental changes.

For example, changing the script to use poky from the autobuilder
checkout instead of the local clone is one logical change. We could
take and review/merge that independently of the other changes.

Another logical independent change is using auto-upgrade-helper from
the checkout of the autobuilder. That did highlight an issue that the
autobuilder does not provide a checkout of that repository.

With that and this work in mind I added auh-meta-oe here:

https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D47c0119b6e87f9=
20566d2176793ef8d982cf31e2

and then added the auto-upgrade-helper repo here:

https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D854a60ce8bf8ce=
0feec370bc6782cc12aa1e29a5

which then means this patch is closer to working.

I had to make some tweaks on top of the patch to make it work:

https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?h=3Dmaster-ne=
xt&id=3D673745f473024020ed9efece26462e8c884dc819

where I found that:

* poky in the AB context is $1/.. since it is the top level=C2=A0
  container=C2=A0of the layers
* meta-openembedded is located at ${HELPERBUILDDIR}/../meta-openembedded
* we still need to source the build env script. The AB could be=C2=A0
  configured to do that for us but currently isn't.
* we need to trim the machine_list down as mentioned
* the naming we're using is auh-meta-oe, not auh-meta-openembedded
* I've temporarily configured to use the test-list so we don't=C2=A0
  send=C2=A0lots of mail to all users
* layer dependencies were missing in ADDLAYER. I hate having to do =20
  that=C2=A0but it is is what it is right now.

With that, we get this "successful" build:

https://autobuilder.yoctoproject.org/typhoon/#/builders/159/builds/5

which shows the exit code handling isn't great but probably deliberate
to avoid autobuilder errors.

This gets us to the point where the code in the upgrade helper itself
needs the layer support changing.

Since I've now had to look into that code, it seems the layer options
are entirely missing from the commandline options parser. I'd strongly
suggest dropping layer_machines variable and just use the machines
value in all cases.

"layer-mode" seems pointless as you can determine if we're in "layer
mode" if a layer is specified on the commandline (which needs adding).

I'm hoping you could use the layer overrides to be able to identify
which recipes to upgrade.

Cheers,

Richard




