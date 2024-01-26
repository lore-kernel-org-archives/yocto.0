Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7DAC47DDF
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 15:26:57 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.404.1706282813106887427
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 07:26:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NJOtPXYw;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5100cb238bcso904169e87.3
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 07:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706282811; x=1706887611; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WwiSMxClkSUeN5/fZUzg/y/Vi1tDDMyUKeejbJ9jw3o=;
        b=NJOtPXYwqjO+dHGOZG8b6BBX3PhO/sey3VLfjEIf1e4cY27BfjugeCrstHzVtZLHhE
         i1U5d4umb4tEw/ff7YhMDf0lJmRAHQp880Uo3I0TzWE1RG8mv/btXzqsvvKpuqQPVIET
         k3BuqYiqP+J0Mb89w73a4W4Xx8LiwG4g2AvF+p+Ezy9CnOXIUijw6xEc8rJS2ClJnh5l
         2UBIcNS1DdpJZQ++tp4cCWrRT1S2vJbGueRxu5YkvRNAieVNeM0jCXnzxLHSjtWcTOfR
         1ZjoAsfVStgqpBSMN2WWiCqyO9DNIxmw/Yu32sE6WRE+/WWhYjb0eNTIGsfJVHHqheoj
         d60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706282811; x=1706887611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WwiSMxClkSUeN5/fZUzg/y/Vi1tDDMyUKeejbJ9jw3o=;
        b=vdoX1p3IL+VC6dU8poT/9sS5MWwFc9PLENJCF2fnhDHVNQe+i1XPy6ffmmdtNY8DS8
         6uInD11tUHSO63lwaPNlPuC4Y7OTpSWcB943yXNVBy3HwzGGxE6SfhreHLp1NQ2nBo+Z
         gulR0UoP77DTSVZLELhz0bIySoY0lONswXfS7jgCST8PVJpKMtg500CW6fE9O6H8lM9m
         TptD21hy8fMRrzdDkxvIWZcyihFehfhaQ4TuSXkj8ODdFenPzHHhPvAIeaw/U0ISwuMF
         jNN70ZlOyGvpMhCgsAWs6w/T/c3Ccqkose7XK5daBT8OYxN1MZf2fAp6KRUeN4uVd7NB
         hY2w==
X-Gm-Message-State: AOJu0YyfZVjcc15G4J/D9C3MDHarv9Py4vVd64ZtLkYlHYemi69w+Lgy
	ztl8etZKInqEAxZhLyYcoAlbtlNiMs+O8zZvtH6by0MTgQjcndpaSUGjnzFfk6kx4WogwRFRTVX
	ayddggW6NOH/M8NlIY71JrjT5Occ=
X-Google-Smtp-Source: AGHT+IF8EtyG7eBGu4hnYQYbhAGwGwhUQObHYwmeVZjItMaDbDt1XuX43v/vFZP/+yTM2r8DkIoC+6bp9xjRC3MoxXM=
X-Received: by 2002:a19:5206:0:b0:510:b92:2bd6 with SMTP id
 m6-20020a195206000000b005100b922bd6mr618294lfb.63.1706282810832; Fri, 26 Jan
 2024 07:26:50 -0800 (PST)
MIME-Version: 1.0
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <20240124175901.GA22635@localhost> <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
 <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
 <20240125165853.GA16381@localhost> <1426bf2a-b18a-4589-974b-3b5f9c40a904@balister.org>
 <982b471fa48268a0d3c332624859bf8003c7e586.camel@linuxfoundation.org>
In-Reply-To: <982b471fa48268a0d3c332624859bf8003c7e586.camel@linuxfoundation.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 26 Jan 2024 08:26:38 -0700
Message-ID: <CAJdd5GZvPZDZmL5WS53j=hAp_hJAUAK4qT+ykPTMc_eLfj-bHA@mail.gmail.com>
Subject: Re: [yocto] bmap-tools repository closes
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, philip@balister.org, twoerner@gmail.com, 
	Tim Orling <ticotimo@gmail.com>, Michael Halstead <michael@yoctoproject.org>, dedekind1@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 15:26:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62299

I'd rather it stay on GitHub; I think it makes more sense _for this
project_. First of all, it already is on GitHub, so moving it is
likely more disruptive to the workflow

Secondly, it already has CI setup through GitHub actions, which we
would need to spend effort to replicate elsewhere.

Thirdly, I've always wanted this to be published as a python module on
PyPi to make it easier for users to keep up to date; GitHub and PyPi
have streamlined this process to the point that it's surprisingly
trivial.

Finally, if we are worried about the maintenance, it's pretty easy to
delegate the maintenance of the repo to the people who are
volunteering to maintain it here, which is likely what would happen if
it went somewhere other than the Yocto GitHub account anyway.

On Fri, Jan 26, 2024 at 6:33=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2024-01-25 at 17:58 -0500, Philip Balister wrote:
> > On 1/25/24 11:58, Trevor Woerner wrote:
> > > On Wed 2024-01-24 @ 03:16:04 PM, Tim Orling wrote:
> > > > On Wed, Jan 24, 2024 at 2:02=E2=80=AFPM Joshua Watt <JPEWhacker@gma=
il.com> wrote:
> > > >
> > > > > On Wed, Jan 24, 2024 at 10:59=E2=80=AFAM Trevor Woerner <twoerner=
@gmail.com>
> > > > > wrote:
> > > > > >
> > > > > > Hi Artem,
> > > > > >
> > > > > > On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> > > > > > > Hello Yocto community,
> > > > > > >
> > > > > > > some parts of Yocto software (MIC?) use the 'bmap-tools' proj=
ect to
> > > > > speed up
> > > > > > > image flashing.
> > > > > > >
> > > > > > > https://github.com/intel/bmap-tools
> > > > > > >
> > > > > > > I am the original author of the software, and I created it ma=
ny years
> > > > > ago to
> > > > > > > speed up Tizen image flashing, and it helped a lot back at th=
e time.
> > > > > It was also
> > > > > > > my first python project, so it was a lot of fun learning pyth=
on while
> > > > > also
> > > > > > > creating something useful.
> > > > > >
> > > > > > Thank you for your contribution, this tool has been quite usefu=
l for me
> > > > > over
> > > > > > the years.
> > > > > >
> > > > > > > But after that, I stopped working on it and it was mostly Yoc=
to folks
> > > > > who
> > > > > > > contributed changes here and there. I never had time and enou=
gh
> > > > > motivation to
> > > > > > > maintain the project further, but other folks helped.
> > > > > > >
> > > > > > > Simon McVitte was active maintainer, but he said he does not =
have time
> > > > > for it
> > > > > > > now as well.
> > > > > > >
> > > > > > > The project is in "github.com/intel" space, and Intel is goin=
g to
> > > > > archive the
> > > > > > > git repository soon. This basically means the repository beco=
mes
> > > > > read-only soon.
> > > > > >
> > > > > > Thank you for this update and letting us know ahead of time.
> > > > > >
> > > > > > > Would Yocto community have enthusiasts to fork it and maintai=
n the
> > > > > fork?
> > > > > >
> > > > > > Yes, I'll volunteer to maintain it going forward. My non-stacko=
verflow
> > > > > python
> > > > > > knowledge is minimal, but I recently dug deeply into bmaptools =
to solve
> > > > > an
> > > > > > issue I had noticed. So I'm confident enough to take it over if=
 nobody
> > > > > else is
> > > > > > interested.
> > > > >
> > > > > Ya, it's an awesome tool and a huge time saver for us, so can als=
o
> > > > > help maintain it
> > > > >
> > > >
> > > > We can probably move it under the https://github.com/yoctoproject u=
mbrella?
> > > > I can also help maintain this tremendous time saver.
> > >
> > > https://github.com/yoctoproject and the github workflow is fine with =
me as
> > > long as I can commit to it from my @gmail identity.
> > >
> > > @tim do you want to import the current repository from intel? Then we=
 can
> > > update the recipe in oe-core and go from there.
> > >
> >
> > Michael, if you need any support from the Yocto Project advisory board
> > to move bmaptool to the yoctoproject github, I can help with that.
>
> This falls to the YP TSC, not the board.
>
> I have no problem with the project hosting that git repo and
> maintaining it. I do worry quite a bit about moving it to github. Would
> moiving it to git.yoctoproject.org be ok?
>
> The reason I say this is that I already get a lot of comments/randon
> questions against commits in github repos. I feel quite sad that people
> are effectively talking into a void. If we start supporting different
> workflows for different repos under yoctoproject, we're going to really
> confuse people.
>
> You might argue that we should host issues for bmap-tools. The
> challenge is that we have bugzilla, we have a triage team and we have a
> load of processes. Telling those people to just cover both would likely
> result in a flat refusal.
>
> Cheers,
>
> Richard
>
>
>

