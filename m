Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AC2E81810
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 12:07:07 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.15571.1695989217515216262
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 05:06:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=byNpxJGy;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c124adf469so228608011fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 05:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695989216; x=1696594016; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N49elXRjRREYI0bLbIH4o3VBRwdLwgKnj9JLTWy+di8=;
        b=byNpxJGyzBNSupOs4cgA4UfkUiVXo68fSJ//0DMMVaK/GDw52UkA7yLyAg2ooOwAYl
         cJbHEHPRMhl5ZGOLM6GSmynVyzZc2F9i6vo+3tOmAUqYrbcjM26JYuGyDf1qLl/mCzl9
         ictymMaHc/QpGF59gEwMgrHTsD6EoeYqfvLZcmZLxJBWsESkhWdIRmy88C+kgQhzottJ
         2wfDWD/J+lcCgR78C8DOM3kRpf7AuE9XrX2ZhpL5kO6jFLwm/v/PsStzXhudvwLshD8b
         rsXVC8eCAP8vNf0ZNrEzfqslDR1+XiptnBcFHicBwZkUkCCJc+TWtTJ9pNcytCWUxqyl
         UneA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695989216; x=1696594016;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N49elXRjRREYI0bLbIH4o3VBRwdLwgKnj9JLTWy+di8=;
        b=ig7VMQnBz0lutsaEEFfexXQWOxrutvEWQisnNTEnfkn6UBvVLMA6qjL7wxJLLr/3T4
         G5RKrADG7iCA4TRkfRr0XolsfsQJbhTCMQFZxykinooxigKpYYOIQUggCf4BWOemUofO
         zYhDOHU/iDvY124Fj7UTtoMrjUbicV3J/C5VR4vU7niYC9kEHNNnc4tflgrY35/lAp4X
         nWb8GJ4AC4lXIVF42cPZoLHDSsjKSsv0vkT/nUFakxxnHSVqTzNQe2BX/zIs1Ss9zF98
         niafNVemDsiE5cTnYSmrRlJvnALvCtJb8gE34bEMBrbQVouRHUyM0XtUAYxs7xvOPIPI
         jxLA==
X-Gm-Message-State: AOJu0YygqDF49OlOS+El76zgxl9zg4P8AjWURBae5cIC0vOsNILVVMMf
	Gfh1/zGiU8+srlNXKI4WjgZ+JIWX4+YjA7d2bT8=
X-Google-Smtp-Source: AGHT+IGfsi5Xx8WDZHHW/bHe9DCVrrAF+sP3MmJg/mckEgWvxg//XrOmNmgYhepj7llc0mAWYuGUQjgc6l30lHqPzcA=
X-Received: by 2002:a2e:9bd2:0:b0:2bc:e46d:f4d0 with SMTP id
 w18-20020a2e9bd2000000b002bce46df4d0mr3738233ljj.2.1695989215497; Fri, 29 Sep
 2023 05:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
 <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com>
 <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
 <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com>
 <24b60007a669d075fa1e4ccd18980ada93714c7a.camel@linuxfoundation.org>
 <CANNYZj-YBTN_yje-fyzp12YDF9XMaZSuMvLh6qA1H+9GEYEmfA@mail.gmail.com> <7564ae2b6c036b10a35e8c9927c0ab2cf533f35c.camel@linuxfoundation.org>
In-Reply-To: <7564ae2b6c036b10a35e8c9927c0ab2cf533f35c.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Sep 2023 14:06:43 +0200
Message-ID: <CANNYZj_16s-JuZAQ3pccnf-8Lb=yMQ1+a9FiU1abLXgORs70rw@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Core workflow: sstate for all,
 bblock/bbunlock, tools for why is sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "chris.laplante@agilent.com" <chris.laplante@agilent.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 12:07:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61162

On Thu, 28 Sept 2023 at 18:49, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> I'm curious to see what you find with analysis of bitbake-whatchanged.

I've taken a look a the script. It obtains the current location of
STAMPS_DIR, then runs this:

        # Generate the new stamps dir
        print("Generating the new stamps ... (need several minutes)")
        cmdline = "STAMPS_DIR=%s bitbake -S none %s" % (new_stampsdir,
args.recipe)

Then it walks both trees, matching up file names with a regex:

# Match the stamp's filename
# group(1): PE_PV (may no PE)
# group(2): PR
# group(3): TASK
# group(4): HASH
stamp_re = re.compile("(?P<pv>.*)-(?P<pr>r\d+)\.(?P<task>do_\w+)\.(?P<hash>[^\.]*)")

Then there's some code that finds out what changed in the above
between the two sets.

I don't see a way to make it work: messing about with STAMPS_DIR like
that isn't supported, and will either do nothing, or remove the
original stamps. Also stamp filenames aren't really a 'public API',
are they?

Should the script simply be removed, or is there some better way to
re-implement answering the 'what has changed' question in a way that
doesn't flood the console with task hashes? I'd be glad to get
suggestions for this.


Alex

