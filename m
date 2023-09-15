Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46395EEB59A
	for <webhook@archiver.kernel.org>; Fri, 15 Sep 2023 06:31:20 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.15111.1694759470706325139
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 23:31:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=emC1Erup;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2bf5bf33bcdso29675831fa.0;
        Thu, 14 Sep 2023 23:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694759469; x=1695364269; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=osDnKEtD8rABtGq6iZyMEVFbLNA0vkjbG3+8ZRxxul8=;
        b=emC1ErupNnGa2Kucw21JYRWrbQiD9CIQqza1UkS3hwQHk7ZdyUnucyaqUCpCeQCS2J
         3cUNYJ6ItvjohBUdZgdmpZwJIbSRInFVcyb/J0tOmDSectZdf8k7XJnYdC6OGQKNcEOv
         oU/3j7wPpLdQxwP8SCqE6YnhW+NbMBZ3XnxmHE3UEOaJ01o8RUtMzIBoE0sNauMFr+6A
         v021sFLlwjY3z1xEio3LZJt/oA6b746gX60hAm7cxLzyIrkOmPWwcCr1iOZa4Dcj5nOb
         hl8CaIgPc7MaLAu7e8Dt+uXt7IartDHpntLE19JzNiOjpwzY82Nnt8D0+ZOGyt2uUIRU
         yt7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694759469; x=1695364269;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=osDnKEtD8rABtGq6iZyMEVFbLNA0vkjbG3+8ZRxxul8=;
        b=cnheqCEnL0WpEpUFR7fJstCG1z72Avhd0SyS3McBSYN3TCeiLc4Vk/JdsuSaNox59/
         gpwpy32L5QT46FTZ/sO3efuW54dHZd2aR73MgXHcljGxCMg1m6/rRrNvXaYmu1iiD7ug
         HfCEt1eiYKNVRyclNsWWeDfvsEEdInSgExhtZuiN1D2t202pLerC8sg6xG2/FVrjCx+7
         YlCimkRhIrKXchbMslUIxSoqTlq4vP5aQAGhulI5srnu+9l/nAO35IbQ/e2wZmr/n39y
         4IW9zlorVvrdX8I/4MWM5B6E2e1gMfVGBU2f/c3UkCmsIok5CTKgavs3gi1D1hA7sFqn
         lErw==
X-Gm-Message-State: AOJu0YynRR7cWnvRMCRYXXuGeE1jztzrPCgZaCAMz9uKumNizn1LTTDS
	YYRH2rL6pfVVBbLm3TS4j1AUdAIy3sVqKVQiiLg=
X-Google-Smtp-Source: AGHT+IEofOw/axC97gBx+1mOuzx7Mng4aQHtbo9CmEfGFtWXeRjnU5+5rahUzZ6vdAmz1XQ1S1uKe+TkI5TDALyNR+w=
X-Received: by 2002:a2e:7308:0:b0:2be:5b09:553b with SMTP id
 o8-20020a2e7308000000b002be5b09553bmr730030ljc.8.1694759468354; Thu, 14 Sep
 2023 23:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=SqAzD9zCnAGB+mtZoTnMCzcnocarpTSCQ0weH15j8KhQ@mail.gmail.com>
 <a7bd9391-7800-4de8-82c7-62ae708a5f0c@ni.com>
In-Reply-To: <a7bd9391-7800-4de8-82c7-62ae708a5f0c@ni.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Fri, 15 Sep 2023 08:30:56 +0200
Message-ID: <CAApg2=RMMNyE0FV_0NzyU7SMW-6za0z+zHP78Od9hbicpVS22g@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Security processes: YP needs
To: Alex Stewart <alex.stewart@ni.com>
Cc: OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-architecture@lists.openembedded.org, 
	yocto@lists.yoctoproject.org, yocto-security@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 06:31:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61015

On Wed, Sep 13, 2023 at 6:00=E2=80=AFPM Alex Stewart <alex.stewart@ni.com> =
wrote:
>
> Thanks for driving this Marta. Internally and externally, it feels like
> we're just on the cusp of everyone *suddenly caring* about our security
> response strategy. So it's good to see that we're making moves in that
> direction.
>

Thank you Alex!

>
> More responses inline.
>
> On 9/13/23 07:52, Marta Rybczynska via lists.openembedded.org wrote:
> > * CVEs: Visibility if YP is vulnerable or not
> >
> > People want to be able to check/look up a specific CVE; it might be a
> > CVE unrelated to YP
> > (eg. package not included, Windows issue). The cve-checker result is a
> > part of the solution, but people also want to know which CVEs do not
> > apply.
>
> I'm not sure I understand this usecase. Is there a reason those people
> can't/won't just lookup the CVE on the NIST site?
>

Mark's answer is clarifying that. I'll add that this is a requirement
I have heard
from multiple sources. People might look up CVE/NIST, but that takes time i=
f
you are required to look up all CVEs. If we have common data, we avoid
duplicate work.

> > * CVEs: synchronization of the work on fixes
> >
> > Currently, there is no synchronization; multiple parties might be
> > working on the same fix while nobody is working on another. There
> > might be duplication of work.
> > Ross has https://wiki.yoctoproject.org/wiki/CVE_Status
>
> Has there been any discussion of adopting the OpenVEX document standard
> that the Chainguard guys are putting together? [1] It seems like the VEX
> use-cases align well with our needs around tracking and coordinating CVE
> response between YP member and individual developers.
>

We might decide to use it. However, openVEX a way to output
the data we have/will have (the conclusion), not a way to sync up the work.

>
> > * Triaging of security issues
> >
> > Related to CVE fixes and includes issues reported directly to the YP.
> > Some issues are more likely to be serious for embedded products
> > (attack by network), so not all has the same priority.
>
> I'll note here that some of us are sinners and do actually support
> network-attached (and internet-attached) embedded devices. :)
>
> But the greater point of OS vendors being able to triage and assign
> vendor-specific severities to incoming issues is absolutely important to
> my use-cases.
>

This is an important point. YP is generic and YP assesment of severity migh=
t
be different than the one from a vendor. It means that our process should
be flexible enough that a vendor can take the data and assign their own
severity.

> >
> > * Visibility of the security work of the YP
> >
> > There is much work on security in the YP, but it lacks visibility.
>
> Is there a common nexus for this work? eg. do most of the folks who are
> doing security work tend to congregate on the security sublist?

I'd like to know :) This thread is a big cross-post (and sorry for
that, but I need
to reach the whole audience), for further discussions I'd like to invite al=
l
to a dedicate list.

>
> > * Additional tooling
> >
> > We could add additional tooling: a template on how to add cve-check to
> > the CI (possibly
> > a different one than the autobuilder), analyze the result, and extend
> > our tooling to their layers...
> > It is also related to the "Architecture" topic below.
>
> Can you expand on what you mean here? Is this usecase about extending
> the existing tooling into the generic CI processes that YP members are
> using, or about expanding the tooling in the YP's indigenous CI?

This is a requirement assembling multiple ones. Many people mentioned
that additional
tooling would be needed and/or helpful. A CI template is an example
here. I'm interested
in your list of tooling that would be important or useful to have.
Preferably related to processes
that are currently done in-house and that we can make more generic and
share the work.

>
> > * Presence on pre-notification lists and receiving information before
> > the vulnerability gets public
> >
> > YP currently depends on public data. Principal distributions receive
> > the information before
> > a vulnerability becomes public. It requires (in short) private
> > reporting, a security team, and a track
> > of excellent security record.
> >
> > * Becoming a CNA (be able to assign CVEs)
> >
> > Needed if we want to assign CVEs to the software of the YP, like
> > autobuilder, Toaster etc.
>
> I'm also interested in this, as the maintainer of our opkg fork. So far,
> I haven't had to respond to a CVE against the project, but that won't
> last forever.

CVEs against a fork, this is an interesting use-case... Noted :)

Cheers,
Marta

