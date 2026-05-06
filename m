Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C271CD3436
	for <webhook@archiver.kernel.org>; Wed,  6 May 2026 12:43:15 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.17387.1778071393901748030
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2026 05:43:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Py/zCHMJ;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8cb5c9ba82bso905896185a.2
        for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 05:43:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778071393; cv=none;
        d=google.com; s=arc-20240605;
        b=iU2kRNLqmAp68rmOCShDS2IHeDCt0OBmz6zzrzT7n1vy0JAw4S8FX52N/6eSF358+v
         r1wxrqybvepbzRHasAxXTZS6WCrJEGVaFPCR1wZXoIGJhx9w+CgkBIl+4gmw1EhU2MmF
         fmxBe5EwGAg354fKzJ3EzqWJMx5XG5DtLpFYWGiY6s5UorEqzLTFieawIYLg5M8RIPWZ
         5I5y1ZJiZsnf/fNr4Ml5t7CJolmiom1xtXC/oPoiDuNfXDYqatiGD9/3Khhvfj6DdB8i
         OCJk1vWvvYKVynniVaqts4ktvtq/FGh4fa3B0mzJ+lCHAmjbDxRJaNUkXC34SpXW9uEl
         TVJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gsmHvLADdrOj2HTYG/M2vTHD+fP18Lu4yC4vEzwlYac=;
        fh=0gZhgiPXsdkHQiKrKRYEWQyMhoivEyblhUG7PCB3jtI=;
        b=amgKCN/x1GZ1r9R38YO80kJNJR2q6bvWQc8ijB4dqFsjDdbzATP1nxgzNaKEeg6psH
         KeymCC9MLOCNiZnzlXUJI8Ab92zY1K4471KMpWeqGQuzxOV//1vFl8GHlDs/ZqQN27R6
         BA1Va5FJLYJSOShFQ/hNJq+g/re9S0bWNeqrRlJjIMpGFBp3LtzTA3oH9YmVXJnUkAYw
         pcTAeVHW5HagggQWqFJAcoXjY3Hv8Xx2FdP+V1Wuluf1V095uXJ0VoSMY67i+41yd+0g
         jmT9M9BnOadUWd7UIufFutBDMRQURWwdwShCju1kks6iERAJNA3uBM6slXXfL7BCSM3l
         j2XQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778071393; x=1778676193; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gsmHvLADdrOj2HTYG/M2vTHD+fP18Lu4yC4vEzwlYac=;
        b=Py/zCHMJyyq1VwDmkNdRShniqZh0SXrmQryqgnjeSh/I1YFI0SuWOYOTzGIA2BcIQP
         DkXZLaJ5krDd8mnuD48/jCFjLaTcB/5FQJbwUCtM9Mr/TY3Yg77v6jyBkWY7Iau7z5zA
         OS+oHwAwB27R3Vmu76kNOYJyVOkIRk6i0PNGtc9PzfP+tMDOyHG+0vxY2dXUgqsvdise
         2hiqTRN+au9OTq/iJ4y6gyfsugY6PdvYm+L+iLwDlqR+w/aBYt5dHB5O5XXOIlY1ojCB
         rYqI/4ex3sO9mtK21RRWz3IKHc884ZnhnZxPybVf+RkYerNzDBWe2TQ8/B6Li1N89SGe
         ZdyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778071393; x=1778676193;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gsmHvLADdrOj2HTYG/M2vTHD+fP18Lu4yC4vEzwlYac=;
        b=j3sZyWXSSodY5eCg0WS2FdyGd7iB9aAJppzFrnLT+i2+Gklf8Z+LxEW3MOMwclbXUP
         J4SBz6W3PBADUwRUFabquDy4Gphno1aPzfwajhJhdWIvKBpHKaU1gXq0lGf38jtQ/NH7
         2rA8dhImgjtMzy60qLQ+qTE4OCIcvuoM8EBtMmvYD90DV9Lz9LH7/amwEy5X/YYVSZN1
         m/YEJw6YbrF08IV2tkKdkNsIRkEtFieehcjPrkPuIjFegt6xZweSbnU7tz7nwGlq2sft
         KF2oPVQ7HojpqhTwLnxzG47HbuU+r6Q8VTmYxFlzm8SjazTO8/a9XyKP7F2k5U1Jrv6B
         gqLQ==
X-Forwarded-Encrypted: i=1; AFNElJ/mSodiwJFRLhzpy6MP8vXu6QxzZp0P9dVAAvgipUHIsecqI2YjsEAqNTfr+AdfXbonAe1HwQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwcvkLfmI/w6zqBqXzYip1c+qzrOXOblA417MCNZA5bjTpNYow9
	b1E/AYjf+YhrZKmkYEpGS1mQs5pu2T3Qh6ahWebMUBPfkR9Sg7Js9vuwTq7Wm/64mxAZ2Ej9RUl
	LEndoNZNCgAF3eLcA4cjbpZQw0mCyz0w=
X-Gm-Gg: AeBDietzq1ZxGTb7um7in/T3tPUnQluSNKs04EPoomz2cYgBUso1KO4OMeMpPUCvBxB
	DLueiUXJlNzgRs7pj9PuPW6dHL5qHwAAQX5N+EuXqxGyfJNWUpOifeCPLDtHYd87gWWW81Tr8/L
	Nmojicd6o2MCk+vIHxyNYT2PteKcGowytg4PkYkyA4Exem6v0Ih/VwHPDuV1ix7kDfF9bNIZs5Q
	m2QGqqzJHWbuE2/9SNrC9veBFXKHpE1QT34tREAz8dC3VxadCDxg/7LdZHDF/2ZWlq3CsxSLbaY
	rBFTpEn/JEap08JeT0gh12mhmaBNCmPRC4knEhfGwCO4QVILVYLE
X-Received: by 2002:a05:620a:f0c:b0:8f0:7516:da99 with SMTP id
 af79cd13be357-904d70c4701mr456524785a.60.1778071392755; Wed, 06 May 2026
 05:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com> <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
 <CA+HEL7_H1MJe3WGhdP3TMQho8u0M8g5OfUv2oFXxQjefAo6Hnw@mail.gmail.com>
In-Reply-To: <CA+HEL7_H1MJe3WGhdP3TMQho8u0M8g5OfUv2oFXxQjefAo6Hnw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 May 2026 14:43:01 +0200
X-Gm-Features: AVHnY4LICyWcOF1-eZVhHEx-EEHUtZdI6jIUnqeVl84lkemZXGWw2STAyq63z1Q
Message-ID: <CANNYZj9=Qap1AsWfgFgEforE17Gz8ft8fNz4hJcU4Y=zmTKDZA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] proposal: build pipelines in bitbake-setup
To: Daiane Angolini <daiane.angolini@foundries.io>
Cc: Trevor Gamblin <tgamblin@baylibre.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 12:43:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66488

On Wed, 6 May 2026 at 12:23, Daiane Angolini
<daiane.angolini@foundries.io> wrote:
> > 6. Run a pipeline, stopping after a particular step:
> > $ bitbake-setup build <pipeline-name> --stop-after <step-name>
> >
> > Etc. How's this looking?
> >
>
> I like the term `steps`. I would like to add that this should be
> optional, not required. One can still decide to avoid creating a
> pipeline.

Yes of course.

> Regarding a setup tool for builds, why not use `bitbake
> <pipeline-name>` instead of `bitbake-setup build <pipeline-name>`?

bitbake operates on recipes using a well-known command line interface.
We can't bolt on something entirely different.

That said, pipeline functions don't have to be in bitbake-setup, they
can be in a separate tool (Trevor mentioned that 'bitbake-setup' as a
name doesn't fit that functionality very well). I just don't have any
ideas off the top of my head. 'bitbake-pipeline' ?

Alex

