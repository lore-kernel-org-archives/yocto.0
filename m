Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.10022.1611328168546047548
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jan 2021 07:09:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=EeU/qLYJ;
 spf=pass (domain: konsulko.com, ip: 209.85.167.170, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f170.google.com with SMTP id r189so6279327oih.4
        for <yocto@lists.yoctoproject.org>; Fri, 22 Jan 2021 07:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QjHVuDC9iMn6Cp4AuhP43hsMY6ZMiQBD3GmW3rPqaOc=;
        b=EeU/qLYJVLOqzsro2HZ6HrT4/K7wJLeGz5BqkKFvL6Krdv44EETD2dPSvWRhwEbcLO
         UsrZdolK12Zm1Y6G/XFKDiZ94XOTGHaj9fEJkzCOkQFFvGz9NbMRfYToQGV5JLq4TYPf
         +2Vxl7iNTvl6d3Mlkq8CcGQ74IplbHzEm/dCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QjHVuDC9iMn6Cp4AuhP43hsMY6ZMiQBD3GmW3rPqaOc=;
        b=Ai6271Z0YjVZfGcWsdFUaoNq774UgOHgC9wV8g0v5/RXZz620wY6ABM1pGGNYAzn1p
         tVkzWqJZegp4W3mP7xUB3aVoPUQObMD81tehj+Zi3kF5xC2R+PQiM0ogVbrq9d4vYRIv
         hO1YRXWzxHmcnTOS74OpsR2LGu2HCz6fB0vL2Zx3jLlszOtdZUwAfbrvQ68wNpDgW/rK
         9OCVnUMFnu0yrLQq54qW9o8eingIpLozPDHzn7N8aZ/kxpw6GDjWG9j9jrYYQmHjN6Db
         2OZ2QpISqZwx4IVF+XsvjW8mvRZmqvBtW0ymuZ2dIntu1z3KZSeaxqG/MptBiACsyhlt
         WHVA==
X-Gm-Message-State: AOAM531k+1ziC9my27Ob6ODgqE1EF/VEQc078rgAEJnSiVBVTO7detgd
	yIwFcYBvXXOL+MfpCXDArenLC93rXDscqsRiWNqQVQ==
X-Google-Smtp-Source: ABdhPJxY9R54Rmw/LoKFOZAMoqtpA8ZIcgd0GBFsvcO0foLXxvVZj22TdU+g46eUjPdhdwSZPoqb9guB2MGF/z80ksI=
X-Received: by 2002:aca:1114:: with SMTP id 20mr3505811oir.152.1611328167812;
 Fri, 22 Jan 2021 07:09:27 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVuEaZLvg4trA-LhNyz8=yMs=cYhRzSR-emzmEGo8BdMhw@mail.gmail.com>
 <f7a9ec47-c74b-1831-d38d-914555898ad9@gmail.com>
In-Reply-To: <f7a9ec47-c74b-1831-d38d-914555898ad9@gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 22 Jan 2021 15:09:17 +0000
Message-ID: <CAM9ZRVuYDZvbUae8in4eYG=Ag2r3z0hFLr_-i8wQfwi656AF2A@mail.gmail.com>
Subject: Re: [yocto] OpenEmbedded Virtual Stand at FOSDEM 2021
To: robert.berger.yocto.user@gmail.com
Cc: openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Jan 2021 at 11:02, Robert Berger@yocto.user
<robert.berger.yocto.user@gmail.com> wrote:
>
> Hi,
>
> On 13/01/2021 23:33, Paul Barker wrote:
> > Hi folks,
> >
> > * Any participants in the project who want to help host the Matrix
> > chat room between 09:00 and 18:00 each day of the event. This will
> > likely involve introducing the project to folks dropping in the chat
> > who aren't familiar with OpenEmbedded, answering basic questions and
> > chatting about example uses of the project. You don't need to be a
> > long-standing expert in the project to help out here! If you can do a
> > couple of hours or a half day please let us know.
>
> Let's try to come up with some schedule when I should be there and just
> let me know how the join the chat.
>
> >
> > * Any contributions of video content to go along with the static web
> > pages. I'm planning to record some short introductory video content
> > but other contributions would also be welcome. Details on how to
> > upload videos is expected in the near future but for now it would be
> > good to just collect folks who are interested so we can discuss this
> > further.
> >
> > If you're interested in any of the above please reply to me and/or the
> > list. I look forward to virtually seeing many of you at FOSDEM 2021!
>
> What kind of video would you like? A small video which explains a
> specific topic?
>
> Something like this?[1]
>
> [1] https://www.youtube.com/watch?v=kmpEN953pzs&feature=youtu.be

I'd say video content for FOSDEM should be around the level of the
things we'd show on the stand, short demos or introductions which can
be understood by people not too familiar with the details of the
project.

I'm going to record a short "Introducing OpenEmbedded" presentation
based around the way I usually pitch the project to folks who turn up
at our FOSDEM stand and ask what the project is about. I may also do a
quick build & boot demo with a Raspberry Pi if I have time to record
that.

Thanks,

-- 
Paul Barker
Konsulko Group
