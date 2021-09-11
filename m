Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web08.3751.1631366370769700974
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Sep 2021 06:19:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CqJmJVF7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id b6so6808003wrh.10
        for <yocto@lists.yoctoproject.org>; Sat, 11 Sep 2021 06:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Qslk+KswhE/2gSB7JfTs76U86E6bRpJMew8X2sxVwGI=;
        b=CqJmJVF7f+mkMGFH8xzqkVF8Qul7VjEUkq6zVsQ7fmyhqBj16HjVZdJmuB1O15Jm7Y
         7Puk30h8HDW9nNKRITL81BHqWTgjumShPuw8FQNfXNtjXWVqSqUb4xwb6HOxepT/fqRU
         sKbmLZY2nnl2A9S6K1xuS221yXDPCbwc4aHc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Qslk+KswhE/2gSB7JfTs76U86E6bRpJMew8X2sxVwGI=;
        b=41uf7rf+M0pDSrZxZoNJiusC40/HJHLQ5HABc0QxMpA7jAFCAHEsqvR7iFkIuGBKRH
         cs5uVRm6wKmfjUPFEFOecFWeKObEIl1Tq63DHVGQms9lnk190z3e7xLF1LAFgyj2koFt
         mqd2DnVlIyDho1Gv8skMCuvaQOjAm6Wmko1yFzIzvigaq5XTk8FC77Q3dHGKxtpzsy1A
         EMlqDzxHo8AzrE/mZxBlX1yQmzdXKW4/BFvNiux6mluREZQmtELpnwNgZnHEZd9Aome7
         UOkm4ssZ+QWn4Y9VYO4K1mKksD6b9UX8QEMD09g4Wh16hQcaACGsD26uM7BMdSXmnQeM
         qZgg==
X-Gm-Message-State: AOAM531tgkDjhbIShY5Eklyc/DqYXL8nNiHERX3Utt4o+0SU1ok6bbEl
	PAKdtfdMij/+sAxy9jlOuX/3mg==
X-Google-Smtp-Source: ABdhPJyB9BwnM6FRGnTP9As7myns6rqjE8o6IRsqRD8G3NnKga9OsZuk+4awJ4DKtLZ5uT3MWibjFg==
X-Received: by 2002:a5d:58ef:: with SMTP id f15mr3198207wrd.160.1631366369299;
        Sat, 11 Sep 2021 06:19:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a1a5:8b9e:48ea:5b97? ([2001:8b0:aba:5f3c:a1a5:8b9e:48ea:5b97])
        by smtp.gmail.com with ESMTPSA id f7sm1578400wmh.20.2021.09.11.06.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 06:19:28 -0700 (PDT)
Message-ID: <186f3ee985744067db2b31f66b2e655fca7bab46.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] add prioritizeBuilders
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <trevor.gamblin@windriver.com>, 
	yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Sat, 11 Sep 2021 14:19:28 +0100
In-Reply-To: <16A3C66D47A24401.21276@lists.yoctoproject.org>
References: <20210909131012.1100416-1-trevor.gamblin@windriver.com>
	 <16A3C66D47A24401.21276@lists.yoctoproject.org>
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2021-09-11 at 14:07 +0100, Richard Purdie via lists.yoctoproject.org
wrote:
> On Thu, 2021-09-09 at 09:10 -0400, Trevor Gamblin wrote:
> > This prioritizeBuilders function sorts builders by the length of their
> > associated worker lists, so that builders that can only be assigned to a
> > small number of workers are assigned to those workers before other
> > builds that don't have specific needs when resources are limited. An
> > example might be when a slot is available on an Ubuntu-based worker, and
> > "oe-selftest-ubuntu" and "genericx86-64" build requests exist in the
> > queue. Since oe-selftest-ubuntu requires an Ubuntu-based worker and
> > genericx86-64 does not, genericx86-64 will be assigned a higher value
> > (lower priority) so that oe-selftest-ubuntu is assigned to that worker
> > first.
> > 
> > Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> > ---
> >  builders.py | 13 +++++++++++++
> >  master.cfg  |  6 ++++++
> >  2 files changed, 19 insertions(+)
> > 
> 
> We did merge and start using this. Unfortunately whilst I thought it would work,
> it has some unfortunate side effects and we'll probably have to disable it.
> 
> If you have two build requests for say "a-full" builds, it will allocate oe-
> selftest-XXX and reproducible-XXX to the XXX workers, starving generic targets.
> You therefore end up with two builds running, both with half their builder
> targets and it will hurt completion.
> 
> I did talk with upstream buildbot a little on irc about this challenge.
> 
> The default prioritizeBuilders function (_defaultSorter in
> buildrequestdistributor.py) sorts by build request time.
> 
> They were suggesting some things which are fairly invasive like adding a
> estimated completion time to the defaultSorter so we could weight slow builds.
> To be honest it's beyond my comfort level with twisted defereds trying to query
> and obtain the right data.
> 
> I have started wondering if we can in fact cheat and tweak the order we trigger
> the builds in the a-full and a-quick targets. I think we could influence the
> order of builderNames in the Triggerable and that would then change the
> buildrequest timestamps so the default sorting method would work better for us
> again.
> 
> I think that translates to adding your sorting method in this patch to
> builderNamesFromConfigQuick and builderNamesFromConfigFull. Probably worth a
> try?

Upstream gave this as an example which I think we can probably do something
with:

from datetime import datetime, timedelta

from dateutil.tz import tzutc

from twisted.internet import defer


# this stores bonuses for builders, which takes in account longer build time
builder_bonuses = {
    'bldr1': timedelta(hours=1)
}

def BuilderSorter(master, builders):
    # perform an asynchronous schwarzian transform, transforming None
    # into a really big date, so that any
    # date set to 'None' will appear at the
    # end of the list during comparisons.
    max_time = datetime.max
    # Need to set the timezone on the date, in order
    # to perform comparisons with other dates which
    # have the time zone set.
    max_time = max_time.replace(tzinfo=tzutc())

    @defer.inlineCallbacks
    def transform(bldr):
        time = yield bldr.getOldestRequestTime()
        if time is None:
            time = max_time
        else:
            if bldr.name in builder_bonuses:
                time = time + builder_bonuses[bldr.name]
        defer.returnValue((time, bldr))

    transformed = yield defer.gatherResults(
        [transform(bldr) for bldr in builders])

    # sort the transformed list synchronously, comparing None to the end of
    # the list
    def transformedKey(a):
        (date, builder) = a
        return (date, builder.name)

    transformed.sort(key=transformedKey)

    # and reverse the transform
    rv = [xf[1] for xf in transformed]
    return rv

  c['prioritizeBuilders'] = BuilderSorter

and then we're not relying on internal bebehaviours with the sorting. It was
pointed out to me that the timestamps are only second accuracy so the global
builders list sorting would probably have more effect.

Cheers,

Richard


