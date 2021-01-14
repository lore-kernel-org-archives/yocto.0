Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web12.137.1610649504155955182
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 10:38:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uqfn4oSK;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id n142so9273126qkn.2
        for <yocto@lists.yoctoproject.org>; Thu, 14 Jan 2021 10:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=WOx9JbXSNQO1FXfGg5DbnPLsdaQ0LgAk5WwU78EFHOc=;
        b=uqfn4oSKi+m+JvgaSsrr9s1/fmVrDM72RLP9soEVkwBhXiEsKwY5dcJbIFlzMd/NhI
         SQCEyo97E5Q3P2zkt9HYI+p7aCadcBhxJTplIymTAdu5sVl3ZmW6w7nbZ2uINsjYQLlm
         NE6BLpkh55fXc0tV2YDMr4pK9OzBJOh+EAsgaAiF7cV7kU31AO3hgEJWCSq+Xo2eHmyd
         AYPQCTdXVQnGZR4UYZzR4v3N+2yO3mqCmz233X3v749D9Ma8JvMxNrgl4GE2UASj0EXO
         VVAmQGjlFadi2bf9CCzfq93UptL2cL0OhM8IKkfISonMY4TtXrTG33BXRUA1y/9+rOdn
         0q0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WOx9JbXSNQO1FXfGg5DbnPLsdaQ0LgAk5WwU78EFHOc=;
        b=T70OMMBDf5fel9qUaqN6hdb3Xibjav343og4oaZ90Mjq/18clR8r712KPAj/AsNXKr
         Rw8hPbubNf1xqmP3KhjFTHTd8z5KmrmvfEiXO0NRAEEMBs6EQLt+1ag5hW2eIwhwVrP1
         xgL63jcJiIhM+cz1Jnwnv9ICvANhxQ4fZ/mrwoDXQAZB8EnMkNzYtiGe9tz3qss2Mzer
         N7DeIYGs2HC71hib+TVD4nOCkoKQFuim0QRIJwHFGioyrtjZn/iibNQqG+hC3XuKPI3a
         f5dze1evpxE1B0denRFpSREkQCJRvyIiAuMc75Iwbj/AtdFvlUGDfwYzYYjo8iPwXB7c
         QPUw==
X-Gm-Message-State: AOAM533DpIyGXpBeOU3UG7H6prcUuKiiX+nd5GpW4pzSaV6hrYKiOpmR
	hn5owWUO2eTdwlULnayXaIjxhSAUReyJQaQY/0g=
X-Google-Smtp-Source: ABdhPJzMzVmeUAu26yrebyJRPa9LarJHPWFq/MZbHVQpEzwB02LFIiqiANsmlV1XHL5y1LBp2WOUd06RMf0gaSsl3rY=
X-Received: by 2002:a37:2f82:: with SMTP id v124mr8281083qkh.212.1610649503309;
 Thu, 14 Jan 2021 10:38:23 -0800 (PST)
MIME-Version: 1.0
References: <60007037.1c69fb81.20ade.fe01SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <60007037.1c69fb81.20ade.fe01SMTPIN_ADDED_MISSING@mx.google.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 14 Jan 2021 10:37:57 -0800
Message-ID: <CAMKF1srB9oYzaU9rbbyk49LTdy_upAdpJdPb7Vzc2dekpp8UvQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #kernel
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

perhaps use netkit-rsh-server and inetutils-rsh

On Thu, Jan 14, 2021 at 8:24 AM Monsees, Steven C (US)
<steven.monsees@baesystems.com> wrote:
>
>
> Khem:
>
> I appear to have a similar issue building in inetutils-rsh and inetutils-=
rshd...
>
> When added to IMAGE_INSTALL, (IMAGE_INSTALL +=3D " inetutils-rsh inetutil=
s-rshd")
>
> I also get an "Error: Nothing PROVIDES ..."
>
> How do you pull in various net utility commands (ex. rlogind) without ine=
tutils-rsh and inetutils-rshd ?
>
> I do not see anything in the migration guides on this...
>
> Any ideas ?
>
> I am using zeus 3.0.4 and building aarch64 Xilinx based image...
>
> Steve
>
> -----Original Message-----
> From: Monsees, Steven C (US)
> Sent: Wednesday, January 13, 2021 2:25 PM
> To: Khem Raj <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: RE: [yocto] #yocto #kernel
>
>
> Khem:
>
> I am having issues attempting to resolve this issue...
> I am seeing it in my bootloader...
>
> Can you possibly point me in the right direction ?
>
> Thanks.
> Steve
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Monsees, Steven C (US) via lists.yoctoproject.org
> Sent: Wednesday, January 13, 2021 8:17 AM
> To: Khem Raj <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #kernel
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
> I am using sysvinit...
>
> -----Original Message-----
> From: Monsees, Steven C (US)
> Sent: Wednesday, January 13, 2021 7:15 AM
> To: 'Khem Raj' <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: RE: [yocto] #yocto #kernel
>
>
> When I do this I am seeing "Nothing PROVIDES 'init-system-helpers',,,
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Tuesday, January 12, 2021 6:13 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #kernel
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
> On Tue, Jan 12, 2021 at 12:09 PM Monsees, Steven C (US) via lists.yoctopr=
oject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > Working on zeus 3.0.4, for aarch64
> >
> >
> >
> > I  have a startup script making use of =E2=80=9Cservice=E2=80=9D How do=
 I properly configure in support for the =E2=80=9Cservice=E2=80=9D command =
?
> >
> > I do not have an error when working under rocko.
> >
> >
> >
> > The error seen is :    /etc/rc5.d/S15mountnfs.sh: line 70: service: com=
mand not found
> >
> >
> >
> > Usage: @ line 70:  =E2=80=9Cservice rpcbind status >/dev/null=E2=80=9D
> >
> >
>
> perhaps just add init-system-helpers to IMAGE_INSTALL
>
> >
> > Thanks,
> >
> > Steve
> >
> >
> >
> >
