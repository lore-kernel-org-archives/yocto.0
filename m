Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC72C433EF
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 13:25:25 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.8778.1637328324324582896
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 05:25:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WsSl6UcV;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: jandryuk@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id bu18so43675941lfb.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 05:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qyzewiZE1gIXlgz+PebLunEhadfqbnwLtJ7xWrw/qTk=;
        b=WsSl6UcVCxAhaaWRNlQ3Ll95jbOK+ZJlkVJzKANwkcWQ6BQf7qXFvg/i3OToPdCqal
         dnqz1w7A9g4gEyRdVXMIEoylbyCFAjjhrgYuQnt15KkkBY4TjTArhw+1JbHE2uXnqfIH
         wAQkFAvx4uamIkleN7GdFwVccPiJXoBJletLL3HrYfK/ScNbbyV/nxpYD+S7UAjC56TQ
         80jd/rfQEFUCOYUivTBv4a1BB5AEKMo+SUgVVFZW1JLsmccVn8zsD+Umc6a2qZmW8OVl
         0hYVcbGefcvw6vYSpwIXqrwA8je94/2mOI8fDXtKiMikK0zRjN1JUCD9ZrMoIzO3mo3X
         ZQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qyzewiZE1gIXlgz+PebLunEhadfqbnwLtJ7xWrw/qTk=;
        b=M67uXLeJkZii6ANCEg2NNtkq9+GS4eQlgVRaSp/kRR+tvSn8WNKOC1da7CCkXpwWY0
         1FSzeXxoPUSJXYUAW8pWj1WhrHGqV3iMNu7dVegJkozz7qnYpUTevlBfkEKCNniNLRfF
         VvWJyV7uw4F2VWYDBaLIh3GUPtOXFMsYoGFMIbaYllk/S7W1ZGvBn1sWQnyi3oHu+vL/
         /XtU4lNU1ZyUXhZH0Ty8fu7cIuuN/ecGcPrU3vxSJHVBORyHpKKLvRMA5cAXEL4QHLWY
         SmNDXmpgOZZrk1xOHtbq/uXUOuKcUWQlLwmp4/GxWCtxIYARk4M64AcqluRd+CtXoFmL
         qgeA==
X-Gm-Message-State: AOAM533ee6IUSDYLM/mGXnua1bR8hirhhnUwZa0c9kDIU1m0WqnYZNSV
	fWyR6/KQE2tfCSIVaWWKqIFffT3FCe8AL2oXquU=
X-Google-Smtp-Source: 
 ABdhPJz4zPjM6g80n3fFd8Z4yF/uOP4Xx9jBRZfZ3OV/9MRjZWXmBY7H6wWrb009TWdTa+gPzHZXRSeY4FzFANw0XAY=
X-Received: by 2002:ac2:4e0d:: with SMTP id
 e13mr32106859lfr.388.1637328322469;
 Fri, 19 Nov 2021 05:25:22 -0800 (PST)
MIME-Version: 1.0
References: <e6e4d436-cdbc-6d45-1cf3-4c0587e162a8@theyoctojester.info>
 <30193.1637313072098009007@lists.yoctoproject.org>
 <480703b8-3ec2-1fba-a38b-5eac9504d3c5@theyoctojester.info>
In-Reply-To: <480703b8-3ec2-1fba-a38b-5eac9504d3c5@theyoctojester.info>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Fri, 19 Nov 2021 08:25:11 -0500
Message-ID: 
 <CAKf6xps0j+bAVJ-Lg6w3wJLh6Em5LhG+xi_TGPrSTmGsnDLoEw@mail.gmail.com>
Subject: Re: Private: Re: [yocto] #yocto Remove hexdump from image
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: lucapirozzi@protonmail.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 13:25:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55376

On Fri, Nov 19, 2021 at 4:14 AM Josef Holzmayr
<jester@theyoctojester.info> wrote:
>
> (re-adding list)
>
> Am 19.11.2021 um 10:11 schrieb lucapirozzi via lists.yoctoproject.org:
> > Hi Joseph,
> >
> > thank you for replying.
> >
> > Shall I use oe-pkgdata-util find-patch this way?
> >
> > oe-pkgdata-util  find-path /usr/bin/hexdump
> >
> > Because it gives me an error
> > ERROR: Unable to find any package producing path /usr/bin/hexdump
>
> You have to use the path you found hexdump at. Check in your running
> target by using "which", or inspect the image contents.

You may not be getting any result because /usr/bin/hexdump is an
alternatives symlink to
/usr/bin/hexdump.util-linux for example (util-linux-hexdump).

Regards,
Jason

