Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC546E92FD0
	for <webhook@archiver.kernel.org>; Mon, 29 Dec 2025 19:51:04 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.50221.1767037858057815865
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Dec 2025 11:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fpdBG5Ra;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4ee328b8e38so107849611cf.0
        for <yocto@lists.yoctoproject.org>; Mon, 29 Dec 2025 11:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767037857; x=1767642657; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KUt1pDeWLHWQtPt6e68mIQFnYlRg6p8i8zTyEfbkNXY=;
        b=fpdBG5RaxuFNxxKncxPocKF9AKzLTgfeR+/leNHY3b93CAdavz2/zLzw4QtnC7prmO
         OZ4RqvOnwu9f+gsE9wCAC4xHl6ga8k255dOeVhSu3a9Zu6DCINBj+yEBj1mAwH/CVCBb
         IoDBesOo4MY3CArNt23KVoXXThBX2ObqZnFsMksx4eojWmDrw0YGqiCIYyDm0slGeGFw
         ZYW1mmpI2KeUgLFHrOFhaYqgfMiAZgtZdTec8f/sAO5X98CMQtzw8gmUzCUBWXPBcA2U
         haAcFUoFVPxf19NlJ8nscnXOwDKmFOzrrp2vrscsB2N60MQmzG9XcY+A/2nEKwgJJvDL
         J4iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767037857; x=1767642657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUt1pDeWLHWQtPt6e68mIQFnYlRg6p8i8zTyEfbkNXY=;
        b=kHhvVX4HUr21emQixl4XK9DDRH6JGtcFAXCTcLX1jX5mS+5yc05mdicYuxHvY1oTL3
         CpgFpmI1PVfkxJNEuRf3N2Y5CP+08W0tqzyYT4J52wz5JAtxw+oWSFAS7aauvT6pjL4j
         0by06+mFrwb8cIpY6XUK3lMeTAej2bXdsdiRvY5qvwNEaCgULQ0VPHu+qPw5Tjzlk596
         /lYNMkzNTHZb/WkTzbPWdxu+J6+B3hb+CNA74KD5g+BYhSX3I32tp4+g2VA2EH//Z/a+
         WFrHbvghikV6PPn5iZDNIiAOpWJ6DxhhfVND9UW9jpw7KnQY/UW3FudMO7PwXo6IP0Eg
         6lhw==
X-Gm-Message-State: AOJu0Yyz/kPjpavfYDQ1ZOiunBV2geFzQokRapnRWewf6Xtr2aersyRQ
	aJn0wcosEjVahHJfw+ORxkLmMvp29p6j1Oo0tBJJTwI4xANuGEwcLzIXxOE4fsesbcsCERPEwBp
	fzVrJUS0/F4W2jrlsf9iWosgnTgBrALLdww==
X-Gm-Gg: AY/fxX5KSuOE2XZucrMtndyy2TkqloBWjSCaa3FxNI9rCpjTnLpW8vl6jIu9Sf+vbCd
	2A7LE3KJbX82S8zyqmMgUHAz1z/HiBfttPq0/HeUnQuEm2G9iLYqh4HWX97Obu4bPkbbnRijWjd
	YYu9Q6xjLWt35eEZGZZ+a/0IL4CMZPytLe4zSwu8MZufmz1Fm+hk3W77oX59CxSU6Q57HMh03df
	z0UF+NBcTF8AiAb9skLcsVqtlQ/86ENuNy2mBdQQ31CM7qx6v5DzJ4s67a40dGEo9HdTcjP25bA
	+S5CZ4tFyNbz6eEATJnUoK2CHr4g04eEFz/E8wkp
X-Google-Smtp-Source: AGHT+IE3WhytN7yOZhU5C8ySKLc1mDfpQ4RgGgBb8jMxoq4f5TC5veBsuHHowdXv4YoTQQI8sqjSBJ+XS8xwE+Q50DE=
X-Received: by 2002:a05:622a:4a84:b0:4ee:197a:e809 with SMTP id
 d75a77b69052e-4f4abdb52b2mr467559531cf.75.1767037856845; Mon, 29 Dec 2025
 11:50:56 -0800 (PST)
MIME-Version: 1.0
References: <ec947ba6-a232-4ee2-ae6f-17e51fdd6d30@3mdeb.com>
In-Reply-To: <ec947ba6-a232-4ee2-ae6f-17e51fdd6d30@3mdeb.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 29 Dec 2025 20:50:46 +0100
X-Gm-Features: AQt7F2oO7IFSSmXu0_L4nPLroCVSi6Ex4gMN9qYsUue0UeJsClrOD4uJt0_Mx0w
Message-ID: <CANNYZj_T6SeZTkh=fgY4g3MWNmoHKY0tg4m=eoB77ZcSGuq+MA@mail.gmail.com>
Subject: Re: [yocto] Dynamically load patch series from fetched repositories.
To: yocto@lists.yoctoproject.org, daniil.klimuk@3mdeb.com
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>, 
	"piotr.krol@3mdeb.com" <piotr.krol@3mdeb.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Dec 2025 19:51:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66128

On Mon, 29 Dec 2025 at 16:16, Danik via lists.yoctoproject.org
<daniil.klimuk=3mdeb.com@lists.yoctoproject.org> wrote:
> Let me know if you have a better proposition for the implementation flow
> I have presented, or if I have missed some already existing technology
> in the Yocto Project. Either my colleagues or I would be eager to
> contribute such a feature to the project.

I'd say any patch-related effort should encourage and support a strict
'upstream first' culture for making patches, and this feels like a
step in the opposite direction, or at best, something that can be
badly misused.

We've all seen the monstrous vendor kernels from hell, and other
private vendor forks which are modified in ways that are poorly
written, not documented and basically unsustainable. Even in the
example above the patches contain basically no documentation or commit
history of why any given patch was added (e.g. a link to an issue in a
ticket system or even a commit message), whether it should be sent
upstream or anything else that might help some poor developer (or
consultant) to understand anything about it.

That said, you probably want a 'pragmatic', 'practical' answer :) If
so, then one approach is to list both the original component and the
repo with patches one after another in SRC_URI, so they're both
unpacked into ${UNPACKDIR}. Then sandwich a bitbake task between patch
and configure that can apply patch files from the second component
into the first. Appending to SRC_URI and implementing the task can be
done in a class, and parametrized as needed with variables. Then
inherit the class and set the variables from a bbappend, or just write
the recipe directly that way.

Alex

