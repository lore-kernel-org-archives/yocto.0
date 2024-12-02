Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D004D10DD7
	for <webhook@archiver.kernel.org>; Mon,  2 Dec 2024 09:11:28 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.169527.1733130679109140489
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2024 01:11:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F7/pjBU3;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6d3e9e854b8so44461416d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2024 01:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733130678; x=1733735478; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IGAq9+32kUI2KjRt24sYXm6J+AN6JLbD+J4fOfO3LrI=;
        b=F7/pjBU3To/XE2ZLto8dSC1kBCOIjNGCHTnTYewbXYZ95yS3t15xT4UzrE5dIh6eL8
         PmHuDuiorYlvq2SA87xFIiL8P0DaAjj3xdBP0mPCGqZCZwC0/m0tNbNnWoif8gkIMMz6
         W4wWkSEVl6pn/J3aUT8FDVaO88FKgvBQXHU88kBp0oQvVSH6fRYc+j3rqieCDqZnohGC
         C3x1rXexMvWAohKgMdBnmuglflpfAWFH42zTNtnXx3rDqzS5pYWEJhLCQ9tqcZvhLrzV
         V7ZHMe62l4z4qvDgHGSIuUh9uhXgnHZGtmwKqtUwwXEautGPR7sXWbn+kSTncN+TjaJE
         5svA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733130678; x=1733735478;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IGAq9+32kUI2KjRt24sYXm6J+AN6JLbD+J4fOfO3LrI=;
        b=CCDD1ED5WEwezIyzqB4BrVOvqRNe4I3HwE+PrBtsIrzxej6xTmW9HrBxfyWma3GMnV
         YkvGV3ssSbyhybOv9fF5B0v3votE5eSBFQStqtGABIvbP/TQO8PbVZocBiNO4M32jFNQ
         A0pbFCbIO5bJ0LK9ue+6zpRb871F9CqtX44kroGiHSVVLtezkCKJPYNTGCKGx0o5ocrk
         oFZVJ0FhfzwNrBFmPjeohYDxQA14uW30gSUgruUGDXziZHFXutBdvIFMsIYbY73nCXQz
         gfk8rBnsOPHnOZs4nLmoqBXwPOYrbeuQqmNp98IuphYIIiSyxziJr5QNNNrnkWBL2wcM
         ZPvQ==
X-Gm-Message-State: AOJu0YzfnOnNPCpEIlWh2pVRiRnE6b+kL9IWFJyTftHIcSgk5yVM3kJI
	yR2YgebrAtSqBHpZaieJc0Ll+V6TXelLxtPp99csLUeZoWfCXhWOYttBKteurWwcUz/JLCrsq1c
	hhQKFXAoDKXagol/fPPXOezoxC3SWtA==
X-Gm-Gg: ASbGncs1E+1UuYiTxfGhPgLIQr5iBMs08x1tqpzdS/AwO50bbiA/wXcmimoBwC74KaW
	QFRE4dYGbX2LfBuZSsLwCMOWMPY1iubPw2gyiWaesXBTfdLG73fC9FikqmJTfXXIF+g==
X-Google-Smtp-Source: AGHT+IEug8SHElHMKpNXoH7o+EcvphiVE/qy2tOdy/kP6IClr86Gy7m+uY6Wm/ssSiDuUK/nLMYPSlpWBsTpLrHxQ9U=
X-Received: by 2002:a0c:f11b:0:b0:6d8:982e:b1b4 with SMTP id
 6a1803df08f44-6d8982ec93emr124918626d6.24.1733130678053; Mon, 02 Dec 2024
 01:11:18 -0800 (PST)
MIME-Version: 1.0
References: <mOPF.1733108139996592674.JmLm@lists.yoctoproject.org>
In-Reply-To: <mOPF.1733108139996592674.JmLm@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 2 Dec 2024 10:11:06 +0100
Message-ID: <CANNYZj_x9GZndGs-QcwbKPaTx=FLpFOG06wg3Dkv1A4ddRCS3w@mail.gmail.com>
Subject: Re: [yocto] Function of devtool parameters -w & -O #devtool
To: yocto@lists.yoctoproject.org, cccc1680tw@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2024 09:11:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64383

On Mon, 2 Dec 2024 at 03:55, cccc1680tw via lists.yoctoproject.org
<cccc1680tw=gmail.com@lists.yoctoproject.org> wrote:
>
> Hello everyone, I am currently not sure what the difference will be when adding the following parameters when using "devtool modify":
>
> --wildcard, -w Use wildcard for unversioned bbappend
> --no-overrides, -O Do not create branches for other override configurations
>
> https://docs.yoctoproject.org/ref-manual/devtool-reference.html#modifying-an-existing-recipe
>
> I checked the relevant reference manual, but there is no more detailed explanation.

In this case you need to study devtool's source code to find out what
happens. Probably the git history for the lines that add the options
also clarifies things. Documentation improvements would be most
welcome then.

Alex

