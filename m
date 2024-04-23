Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F64EC4345F
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 12:27:12 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.17168.1713875230373569879
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Apr 2024 05:27:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=drk+0gTj;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-516d2b9cd69so6829689e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 05:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713875228; x=1714480028; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f92w3Z93iINOWZ83g4uXH0m3f5g7J87Nlj6ZtIuS82U=;
        b=drk+0gTjp/ymNR/q1XdLex1Uz+am0Xrxo3t3ZzTMy0nYuszHDSgpew9R58lZNyulvB
         o8fLF8m7HkC+e8oFIToOvZ+6vca+SLYu/s1/qjoExwVvUS2wyJmjfBgo2iEzuWqnhjP6
         6KV58XcIKeJN5HT53HH8THObbbMy+e3gWJwNL64ot60vqW7oMRhpwN+16k3axSr80k3p
         DP4rbWgPHegORAntUWJck0eI3+Hg9VOxoYeKBUH5pNRu4fSmV8QP5K2eytrGsAbw7jsd
         cXjUkO2cTnrSs2DLmQNSCdg98BtOaHHwmR7Iv/XI9w5VLn9I0Abv5k5k9sVUDtMuz4Ng
         LzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713875228; x=1714480028;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f92w3Z93iINOWZ83g4uXH0m3f5g7J87Nlj6ZtIuS82U=;
        b=DenvdOAxG2SzK2NC1x5HjSWI3mqVkn6WIrYlLs+7etpO/vvdE8GFBrQDzp6/D23A17
         uJVw2fhnIXpKkTWAbygIGJ6lMLfRLK5EdYTocJbalmAGQ0UR4Au/GZ1e3u+laz755RcF
         8S7cjNrt46eaYnG4RaphVXQROnqXGHW32UIj53CwVmNTdLho9/LnP3MV1DC4KytPS0Pd
         65XxyobMoAv0DYBQPmNR4xhsXabXt4Ljev59QdGp8/94A6kwxSZwSm21RQ7JpR4y5R0K
         vf0Tfp0CIyX3wkcEVsrguQg4SJjL5EkzJrnXfPLcRjaw28B7IwIsr9aEfuiy81G3ktr8
         lGaw==
X-Gm-Message-State: AOJu0YzdxTcTwyx6FV+ySIG4m5dNrDaE4UDoAjodqyrPedqM4YE6S+lu
	Xtwea9o1zz2XSGvo+kzEAEtW9PfPvlKvrkKvDruihqVcU5hL2ZtqikruTVX/WpNX+32lD1qZWB/
	HFNXIXSRIPueGdC8O9MthAp/dp6g=
X-Google-Smtp-Source: AGHT+IFQvYhtJtaCZ0RNfuTmXxIISmokdE3CqtyBfvkYvfSOGGIZSNAo/Hvv6gYqb95+iZBwX/HqZ49AL4t9hSZSPPY=
X-Received: by 2002:a05:6512:3e22:b0:51a:f1bf:544c with SMTP id
 i34-20020a0565123e2200b0051af1bf544cmr7381445lfv.52.1713875228465; Tue, 23
 Apr 2024 05:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8KMPiz3kKT-XNwc1pEDDFp85aem6fMbQ_b9S=ZASfwvA@mail.gmail.com>
 <24843.1713874755677867912@lists.yoctoproject.org>
In-Reply-To: <24843.1713874755677867912@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 Apr 2024 14:26:56 +0200
Message-ID: <CANNYZj_o623xZpW+RwS__VAP1Weu=gWnorX38ZghkhEsWm54Qw@mail.gmail.com>
Subject: Re: [yocto] Yocto common place holder for includes which used
 multiple recipe
To: Salahaldeen.Altous@leica-camera.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 12:27:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62988

Yes this should be fine. But don't forget to inherit it in all the
recipes that would use these variables.

Here's an example:
https://git.yoctoproject.org/poky/tree/meta/classes-recipe/gnomebase.bbclass

Alex

On Tue, 23 Apr 2024 at 14:19, Altous, Salahaldeen via
Lists.Yoctoproject.Org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi Alex
>
> thanks for your quick reply.
>
> On Tue, Apr 23, 2024 at 05:02 AM, Alexander Kanavin wrote:
>
> I think you can simply make it a class and put under
> classes/some.bbclass? Plenty of recipes in oe-core do this, see e.g.
> gnomebase.bbclass.
>
> I need something like these these variables
>
> EXTERNAL_PROJECT_XXX_TYPE ?= "lib"
> EXTERNAL_PROJECT_XXX_NAME ?= "lc_xxx"
> EXTERNAL_PROJECT_XXX_GIT_URI ?= "${COMPANY_GIT_REPO}:test/independent-modules/lc_xxx.git"
> EXTERNAL_PROJECT_XXX_GIT_BRANCH ?= "development"
> EXTERNAL_PROJECT_XXX_GIT_TAG ?= "0.4.3-dev"
>
> EXTERNAL_PROJECT_YYY_TYPE ?= "lib"
> EXTERNAL_PROJECT_YYY_NAME ?= "lc-yyy"
> EXTERNAL_PROJECT_XXX_GIT_URI ?= "${COMPANY_GIT_REPO}:test/independent-modules/lc_xxx.git"
> EXTERNAL_PROJECT_YYY_GIT_BRANCH ?= "development"
> EXTERNAL_PROJECT_YYY_GIT_TAG ?= "0.2.1-dev"
>
> is this something possible with bbclass?
>
> Salahaldeen
>
>
> Alex
>
> On Tue, 23 Apr 2024 at 13:57, Altous, Salahaldeen via
> lists.yoctoproject.org
> <Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> I need a common place holder to share one include files which can be used by multiple recipe (this include files includes some variables like SRC_URL, tag, gitbranch, ..., etc).
>
> I can copy it to each recipe but I am looking for the best practice to share a common inc file for all recipes in meta-xxx which can be found by default and this need to be under meta-xxx folder.
>
> thanks in advance.
>
>
>
> Regards,
>
> Salahaldeen Altous
>
>

