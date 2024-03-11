Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C196EC54E58
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 09:27:19 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.58602.1710149237425485981
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 02:27:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hJvtinpd;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5131a9b3d5bso3477277e87.0;
        Mon, 11 Mar 2024 02:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710149235; x=1710754035; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jcuZcA4TKAz1xj2vD0BWBTMx/aZmlbmTACT1OJ5ZcLI=;
        b=hJvtinpdxAw7G/aIs570tfC93SeB9immsfs5SjwplfIumojV+2HD/pSiZufCE8AEpS
         MfQ6K1vVZPLt4e+ea53BUldrNwNp+Uiv3trD/UZc/KcniNPcK/iNTQPTiaV2Pm1teIho
         ac+Xmfi0BP0wKNBMu8/jjXESiWPAwRfovkwppyg/DevRLUVwGMRBn7F0r3KK1sJVzv3R
         HmGeFSGZlBklnmVHnQQV9cGuSkCYN8Cuv+k581gVas18oHcrjlb8IHE59SEULJwXowgF
         oIlip4t/drNlPIuPR/VVSA2W/pWP397NnvBpViuEcLTINlgOVpuZPTVS3OMDKghuiIAz
         5U6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710149235; x=1710754035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jcuZcA4TKAz1xj2vD0BWBTMx/aZmlbmTACT1OJ5ZcLI=;
        b=P709RmoOfOu/bVdupnqNNZ3GuBHimrJBEYqxKJbYaMEKiHf7pumESzltHBNseO4pFE
         7XlZMaP37RBLvyZ7/CKyUbbN6n/FvLwdew7DbSP6ts8yvkt4Fwk2eQQ1/kxrMBGl50GB
         GIGsDiRLmcVQ4EPKpN0/wQtk+paYM/KwgWxVgijA1aZGTcjWLblzP2Tt4AGMx1MKizld
         7OI2fTZtwNQQcwGfrRDiwvzU4uu7XK5nxTRalStEhIQ417ZIijJZfIFUo66soG6pBYBk
         KUCcjB6GNVNvL0hmAAV8ku8ETNruY1rqzYSuLbkPRQjJh8FPJAmFHOFWgpI2Kl8QQXpE
         uTUg==
X-Gm-Message-State: AOJu0YxzAtvdtEW/v3yn+owJ0Nj///GGrOBqpO2C2AQBbUay8S4mbHhH
	QYJN8h0ESXhZgFkEF0NmANpaxFQrwGCytpKhUDSQbIzAIQztrMVuES+oEg47nd8uKS+pv0q1hVy
	5MnDM9Et8vzFP5FOBsEg3j+ptAEb7Zukq
X-Google-Smtp-Source: AGHT+IHhx41qfvae2fjn40H+OGiqYfR0UDiCrmdoE8tGbVqLySFc96xtm4Hfsif5ybgbAOkXvWdiEKbksOFCnJrfq/M=
X-Received: by 2002:a19:e00f:0:b0:513:8318:c6ea with SMTP id
 x15-20020a19e00f000000b005138318c6eamr3382269lfg.39.1710149235147; Mon, 11
 Mar 2024 02:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY4JM8w-Cd94zkE77-YmpoSHySEa3OsnsF22DRfjrTjpcw@mail.gmail.com>
 <CALSmAY7-ZPs1X-pRDKpkhFoyz2RGU_qSAgFmxtE5ZDkBXpO-mg@mail.gmail.com>
In-Reply-To: <CALSmAY7-ZPs1X-pRDKpkhFoyz2RGU_qSAgFmxtE5ZDkBXpO-mg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 11 Mar 2024 10:27:03 +0100
Message-ID: <CANNYZj-zasbu2t1pqeJBMuFumRtOiMfwVddzFKkGwd8erUN3Yw@mail.gmail.com>
Subject: Re: [yocto] Task dependencies
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com
Cc: yocto+owner@lists.yoctoproject.org, yocto+subscribe@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:27:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62723

Can you publish the layer somewhere? It's hard to tell what is going
on, but perhaps you could check which task creates which artefacts in
deploy directory, and consult the bitbake manual about task
dependencies so they can be run in correct order.

Alex

On Thu, 7 Mar 2024 at 11:13, Bratiranjan Acharya
<bratiranjan12@gmail.com> wrote:
>
> Okay, In details
> There are base-initramfs.bb, image-ext4.inc, image-ext4-debug.bb files an=
d dm-verity file which depends upon the base-initramfs as we know that base=
-initramfs loads the actual rootfs so in  image-ext4.inc i wrote a custom-t=
ask "do_simlink_ext4" inside which i just wrote
> ----------------< image-ext4.inc>----------------------------------------=
------------
> do_image_complete[postfuncs] +=3D "do_simlink_ext4"
> do_simlink_ext4(){
> pushd ${DEPLOY_DIR_IMAGE}
>  ln -snf ${IMAGE_EXT4_NAME} azma-image-${MACHINE}.ext4
> popd
> }
> -------------------------------------------------------------------------=
-----------------------
> so as per this after do_image_complete task of image-ext4-debug.bb this s=
ymlink function must work but after do_image_complete task of image-ext4-de=
bug.bb the rootfs which is ${IMAGE_EXT4_NAME} (it is also a softlink which =
points to the actual rootfs with the timestamp) is in the deploy dir but th=
is command " ln -snf ${IMAGE_EXT4_NAME} azma-image-${MACHINE}.ext4" is crea=
ting the softlink whether the rootfs is present or not so i have fiven if-e=
lse condition too that if the rootfs is there then only create the softlink=
 but then this simlink funtion didnot worked and one more thing in this bas=
e-initramfs.bb file this dependency is there
> ----------------< base-initramfs.bb  >-----------------------------------=
------------
> "do_rootfs[depends] +=3D image-ext4-debug:do_image_complete"
> -------------------------------------------------------------------------=
---------------------
> And i want that as we know that the  ${IMAGE_EXT4_NAME} (it is also a sof=
tlink which points to the actual rootfs with the timestamp) rootfs is gener=
ating and getting deployed to deploy dir after do_image_complete task of th=
e image-ext4-debug.bb file then why the softlink is not behaving properly p=
lease help.
>
> REGARDS
> Brati
>
> On Mon, 4 Mar 2024 at 22:08, Bratiranjan Acharya <bratiranjan12@gmail.com=
> wrote:
>>
>> Hi,
>>
>> I hope this email finds you well. I have a question regarding a specific=
 issue that I'd like to discuss. Allow me to provide some context:
>>
>> In the final image bb files, there's a custom task designed to generate =
a softlink for the rootfs.ext4. Unfortunately, I've had to resort to using =
the "ln -snf" command, as I'm unsure after which recipe's task the rootfs i=
s generated and deployed to the deploy directory. Therefore, I'm forcefully=
 creating the softlink. Despite attempting various debugging methods, I hav=
en't been able to find a solution yet.As the source is vast and complex.
>>
>> For example, if the rootfs is generated and deployed by a task from anot=
her recipe where my custom task isn't present, even using inter-task depend=
encies flags hasn't yielded results. Could you please provide assistance wi=
th this matter? If i can know which recipes task is creating and deploying =
OR which recipe is deploying the rootfs to ${DEPLOY_DIR} i can solve that.
>>
>> Thank you for your help.
>>
>> Best regards, Brati
>> Yocto Developer
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62692): https://lists.yoctoproject.org/g/yocto/messag=
e/62692
> Mute This Topic: https://lists.yoctoproject.org/mt/104725909/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

