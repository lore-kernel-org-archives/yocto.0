Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BE70C77B73
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 16:33:41 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web11.43053.1681922012653905184
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 09:33:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=hRkYxOHF;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-7606cf9fc63so5349439f.0
        for <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 09:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681922012; x=1684514012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQXanf3x9PDLq6FxUYiGZQRr2N92wfZrb8Q8YSrJmyc=;
        b=hRkYxOHFRON92oJoB+QWdhxmbE+9t1qYwHgqwDlLFDIh5jSvH5rG4FQil3ea5Tbw+0
         3qkMExexocCNyR5LTcBejJY3VUEHsscK+9G0n0FTQM5T4VHb/i3mRdY77X4TYQ8/XNW5
         lsl0ygLXuiWID/A2QAe44rQuiXBf061spC/iOl/T773100AWA342ca+oKNV319kX3HnZ
         KjY5gzyy4Mzjx0bF+YziOt4BmfoQXU/V/JxfkuRwz7cr0JAtZVofDvSOr2RG/4dDOtHh
         1XaR5XSaUKV9ZsgDvg5Tm+s0Ii+nl/NvQvhRYCEgZKn2cKia//KbOImQR4wzz/5gUkHg
         PbNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681922012; x=1684514012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tQXanf3x9PDLq6FxUYiGZQRr2N92wfZrb8Q8YSrJmyc=;
        b=Xo+7CTgDg7ZGr7So4D5rc00RlWn9h0CoD1PucSM5Gp5KMgatqpqDJES5EVDBt+qcey
         Dorg3l8h61i/0+vDY9m4Er2WuNrfXS2lD9wLLRwUCM2fp7imPRFk9spd6Eg4nLDGesbU
         P6a6fD1ebilJtw121gmbxvpmWpRkUrEp6ALLRApxJq9o0S2AnBAQxP44iBBx9ZHESHd2
         agQ51zrVq4F47AhdbTs97Ei+WNuxllIPWU00y6IWNKa9EOsu15mmcDJ26dw4d525hfNp
         iCf3BGuBkaZex8+OoJizHkVjE8/YcuiVYNUw7guatGJxKRaoKAnEZqNVvNGsfzYk40FD
         +vwA==
X-Gm-Message-State: AAQBX9c0J0GRyAhoSqIne35HFpkFCd/pYEK8i/T5sU5/VQ04txfHlcqS
	ua2dp/4naqwZ3DVyv+wyiycZqawn+VuLgb/VNzwlPvVChkmSpw==
X-Google-Smtp-Source: AKy350Z90te/ulbGVFPRb62YT3I05qqUj/zRximsdC4iG4SXH1ON9FiNX47qhHl6mYQi6vuDFeP83V7Cy/J3YeDtfkc=
X-Received: by 2002:a6b:7a49:0:b0:762:920c:4c91 with SMTP id
 k9-20020a6b7a49000000b00762920c4c91mr383804iop.14.1681922011864; Wed, 19 Apr
 2023 09:33:31 -0700 (PDT)
MIME-Version: 1.0
References: <aUiG.1681920505834787285.VbRh@lists.yoctoproject.org>
In-Reply-To: <aUiG.1681920505834787285.VbRh@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 19 Apr 2023 12:33:26 -0400
Message-ID: <CADkTA4Ppe9x8tDTFqkhq+T16SR=rNE0GjPc8h+NmUYD57qe6Qw@mail.gmail.com>
Subject: Re: [yocto] #kernelmodule #kirkstone Kernel configuration fragment
 overriden by netfilter.cfg
To: gary@missionsecure.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 16:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59738

On Wed, Apr 19, 2023 at 12:08=E2=80=AFPM Gary Huband via
lists.yoctoproject.org <gary=3Dmissionsecure.com@lists.yoctoproject.org>
wrote:
>
>
> I'm using kirkstone and meta-intel for a build.  I have a few kernel conf=
iguration fragments but one of the fragment files, modbusbs.cfg, is not app=
lied.
>

It is of course being applied, but as you mentioned at the bottom, it
is being overridden by a later fragment.

netfilter fragments are likely coming from either the core or the
intel KERNEL_EXTRA_FEATURES variable, which feed into KERNEL_FEATURES.

KERNEL_FEATURES are always applied last, as they represent something
that has been flagged as important/critical.

You can either make your fragment a kernel feature itself (documented
in the development manuals), or remove the netfilter fragment from
KERNEL_EXTRA_FEATURES or KERNEL_FEATURES.

Bruce

> I created each fragment with
> bitbake -c menuconfig virtual/kernel
> bitbake -c diffconfig virtual/kernel
> Then copied fragment.cfg to my layer.
>
> The files in my layer:
>
> linux-intel_%.bbappend:
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>
> SRC_URI +=3D "\
>             file://i2c-dev.cfg \
>             file://modbusfw.cfg \
>             file://vlan.cfg \
>            "
>
> i2c-dev.cfg:
> CONFIG_I2C_CHARDEV=3Dy
>
> modbusfw.cfg:
> CONFIG_NETFILTER_XTABLES=3Dy
> CONFIG_IP_NF_IPTABLES=3Dy
>
> vlan.cfg:
> CONFIG_MRP=3Dy
> CONFIG_VLAN_8021Q=3Dy
> CONFIG_VLAN_8021Q_MVRP=3Dy
>
> The i2c-dev.cfg and vlan.cfg are applied, but modbusfw.cfg is not.
>
> Part of merge_config_build.log:
>
> Value of CONFIG_I2C_CHARDEV is redefined by fragment .kernel-meta/configs=
/v5.15/standard/./i2c-dev.cfg:
> Previous value: CONFIG_I2C_CHARDEV=3Dm
> New value: CONFIG_I2C_CHARDEV=3Dy
>
> Merging .kernel-meta/configs/v5.15/standard/./modbusfw.cfg
> Value of CONFIG_IP_NF_IPTABLES is redefined by fragment .kernel-meta/conf=
igs/v5.15/standard/./modbusfw.cfg:
> Previous value: CONFIG_IP_NF_IPTABLES=3Dm
> New value: CONFIG_IP_NF_IPTABLES=3Dy
>
> Merging .kernel-meta/configs/v5.15/standard/./vlan.cfg
> Value of CONFIG_VLAN_8021Q is redefined by fragment .kernel-meta/configs/=
v5.15/standard/./vlan.cfg:
> Previous value: CONFIG_VLAN_8021Q=3Dm
> New value: CONFIG_VLAN_8021Q=3Dy
>
> Merging .kernel-meta/configs/v5.15/standard/cfg/virtio.cfg
> Merging .kernel-meta/configs/v5.15/standard/features/netfilter/netfilter.=
cfg
> Value of CONFIG_NETFILTER_XTABLES is redefined by fragment .kernel-meta/c=
onfigs/v5.15/standard/features/netfilter/netfilter.cfg:
> Previous value: CONFIG_NETFILTER_XTABLES=3Dy
> New value: CONFIG_NETFILTER_XTABLES=3Dm
>
> Value of CONFIG_IP_NF_IPTABLES is redefined by fragment .kernel-meta/conf=
igs/v5.15/standard/features/netfilter/netfilter.cfg:
> Previous value: CONFIG_IP_NF_IPTABLES=3Dy
> New value: CONFIG_IP_NF_IPTABLES=3Dm
>
> So my modbusfw.cfg is being overriden by netfilter.cfg.
>
> Any suggestions to fix this?
>
> Thanks
>
> Gary
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59737): https://lists.yoctoproject.org/g/yocto/messag=
e/59737
> Mute This Topic: https://lists.yoctoproject.org/mt/98370122/1050810
> Mute #kernelmodule:https://lists.yoctoproject.org/g/yocto/mutehashtag/ker=
nelmodule
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

