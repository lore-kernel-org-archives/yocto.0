Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623A6CA0EEB
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 22:41:46 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.6964.1755643301192311085
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 15:41:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Bdf73Mc/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.175, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-333f91526bcso42878091fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 15:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1755643299; x=1756248099; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87m2YA+4c3f72IorOrM3xF7YBc77DKJTwvQi1BrAyoA=;
        b=Bdf73Mc/8zp89/PqdYoFQADq/TN6tprH3H2TF1+Oi9BuvpBYfA5EfueCqMnrZwvtNx
         dN7NaPOnVwkPmJgh6OFpvgvgNJWv9vwD0W89ofjiA2Yo+xg/tYY2OtDBRYoaD9upJ9pH
         pI/CHbDj6FMT/qaxqDQJV6rkbTFy7Z0/pjOLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755643299; x=1756248099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=87m2YA+4c3f72IorOrM3xF7YBc77DKJTwvQi1BrAyoA=;
        b=wHuuE0rdVi/AT3NK8FSzRkBmvyD6SF+lF0LW2F5p2nCdaE/eZIEZSow3wNCw6L9E1z
         ogn41c7OmO0NfYurpvGDrCpiqAU72K+OB893OPYJbR5ruxy7hokIZCii83S815fDz/Zf
         5jL/tZLi9nDWUpqZFktX8V1vC2t8WUOalEIt0ABVyGKfNKN/iRwfAlmsI7amMwUYZR0o
         YuLWFwEdD46bJ9Kywl7I8YkSigv6dRxTOlTqP8eaunZ/vRnoDIvfDJ2TGRV6E26jsTj+
         i9Zh4w3sBAwbfw0InsIVsITSmnEIYcOG2TSNFQ340O9p7Gjr4g+L2PdcMDLcxJzGvp/g
         0Hng==
X-Gm-Message-State: AOJu0Yyns5NJobGBDDil19sZ/+swqhNOhDhVPFpjRQQzoxjOBritHPMJ
	+2k5AQaCCUz0RhgitQRJCQMQKLxPGZNlK7bJ7Oa0PqDaIC7Pyos1x/nCGY2evaOkyQWjdU7Qsmq
	PJYlX1LFqvGqAPVMcKh7/pADJMZUZQL5h3gxRWIciOQ==
X-Gm-Gg: ASbGncs6wIMLzEVABKRENSlNHRL9433mV7O9G9SEsyZ9LCfJpFU8o1/D47K7YzR0kiG
	scx2fsvdWkxiZ3QNJySoqMSCsNBys0DnK0rNjWmlMtfmAEB2H7pyTGzI1VbdVHRyyQUP45J///+
	oNRxnRDDIeNnj0+FsXqb7Yzx6T35hAIwtSX0zmlmAbebMBi0UAzvyH969IazztLDtck2v3I0CxF
	BR3MHnHVKIHSmM=
X-Google-Smtp-Source: AGHT+IHjXOh/HA2XgWg5gi6ixbY6nPfOfCSscGyRFQA2gru1c2i2BiofU5+pP8BDxZDMiStac5C7PdHuOuAPEZSQajg=
X-Received: by 2002:a05:651c:4015:b0:333:ad0c:a44e with SMTP id
 38308e7fff4ca-3353bc27687mr1379911fa.7.1755643298597; Tue, 19 Aug 2025
 15:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=TZnJGDvBN8LBEoVbRcTJ6k1fGdOXVzss3bQmjZH4WknA@mail.gmail.com>
 <63a28aea-58c9-453b-9b03-3df29118044b@ibeeto.com>
In-Reply-To: <63a28aea-58c9-453b-9b03-3df29118044b@ibeeto.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 19 Aug 2025 15:41:26 -0700
X-Gm-Features: Ac12FXxv2GRQBTiYVn0Y83l1OHx9vd9vvAj_g7kiu-BHl-CHJ0mQY1GKAbmuGPg
Message-ID: <CADfgfoZKuU2uMcPZFO3nMrXYJQMA66qL_b3O-1LJhWVdq13sQA@mail.gmail.com>
Subject: Re: [yocto] Renaming the yocto-security mailing list
To: rybczynska@gmail.com
Cc: yocto@lists.yoctoproject.org, rudolf.streif@ibeeto.com, 
	yocto-security@yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 22:41:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65772

I've updated yocto-security@lists.yoctoproject.org to require
moderator approval for new topics. This should prevent private
security reports from being posted publicly by mistake.
security@yoctoproject.org is not a private list but instead forwards
email received to members of the security team.

I believe this solves the issue without requiring changes to the list
name or documentation.

On Tue, Aug 19, 2025 at 2:50=E2=80=AFPM Rudolf J Streif via
lists.yoctoproject.org
<rudolf.streif=3Dibeeto.com@lists.yoctoproject.org> wrote:
>
> I don't any specifics about the incident. I suppose security-relevant
> information was submitted to a public mailing list. A private mailing
> list may help but in the end it's security-by-obfuscation. A mailing
> list for submitting CVEs is not the best choice imho. A secure web form
> should be better. We have a CVE Status page
> (https://wiki.yoctoproject.org/wiki/CVE_Status) that lists the current
> acknowledged CVEs but of course reported CVEs should go through an
> investigative filter and potentially sanitizing first before put on that
> page.
>
> :rjs
>
> On 8/19/25 8:08 AM, Marta Rybczynska via lists.yoctoproject.org wrote:
> > Hello all,
> > yesterday's incident confirms that yocto-security has a confusing name
> > that might cause confidential reports to arrive there.
> >
> > What about renaming the list to yocto-security-discussion or similar?
> > And eventually redirect yocto-security to the private security list.
> >
> > My reasoning: we shouldn't rename the private list as people might use
> > old versions of documentation and we want them to address the correct
> > private list when needed. It is less critical if a message expected
> > for the public list reaches the private one, than otherwise.
> >
> > What do you think? What is the process to do the change?
> >
> > Kind regards,
> > Marta
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65771): https://lists.yoctoproject.org/g/yocto/messag=
e/65771
> Mute This Topic: https://lists.yoctoproject.org/mt/114782606/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mhalstead@linu=
xfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

