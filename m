Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 822FDCAC58E
	for <webhook@archiver.kernel.org>; Thu, 11 Sep 2025 17:03:53 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.2836.1757610228476201740
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Sep 2025 10:03:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X4Zkk5EI;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-723c971b63bso7331476d6.1
        for <yocto@lists.yoctoproject.org>; Thu, 11 Sep 2025 10:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757610227; x=1758215027; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T5mw0+xHJ9mD8xGzNUDf66SPqGvFYXKDThNGsUZHg2M=;
        b=X4Zkk5EI06NyTgGlPcG/8Wb2O/aPy40slTmsH4AwMNvwiOfX7RlMDg4ee1wmWe5tXe
         BqjJsx2nl2tdiaWMwt9dffpZHOqBlsX1nL4lF1K7UZqXtsqT6wJxSZGeNeye3fNEqNWy
         BQCFpPOR+aHpoznBwQqWY/NtD+N83GdbNNY3PvBkySQIT934TtrC0GcJhyIcoz3iVPIQ
         2AhAcx5Q2YA6tiLZQnNITfe2SRQV5hfVdhPrNnS5zAyHpUER5mgLWXkHe7smig4KnHEN
         dsjnzataRzkWif8S6DyDJ0ClHOO9srhkOQt4hnl/XQV4nzrYV4PHVU+SvMpCRNUykSkK
         pd1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757610227; x=1758215027;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T5mw0+xHJ9mD8xGzNUDf66SPqGvFYXKDThNGsUZHg2M=;
        b=ShbOXQudjhng6cGFn9hb72xfkAgFlbwMU+zdwxFTOlIHKIepAzRiDw/z+7dvbHq50F
         hLVS5DtJqPeHT3X+N/aSYXnbjR2FwvtoheAN6MqgnZ+Qq6PlJaYmZFZU75m9TkqilvB6
         mYNjxzUKT0ZgNVyCJM0mlZkibz75LpOdYmxnquiRumNpIfeXw+6jMoMNmZZy/O9BVD7N
         bBqCPbgmTHJ/N/ymcUWGVTNr5b+YqUe/GnnekOT6lBBIOzPkSypNYYE3cr6TdAY4PEOc
         gGeIVQt8kQvfOZ72v3ywR+gCwLzk8Q4L0ZzdKnbO1ErgfHnw5aJh2UD14yWHObcDbU8e
         CY1g==
X-Forwarded-Encrypted: i=1; AJvYcCWjXZfv3DeWj1Whs1pPqxgV2uJ5jXKDbY8oQBFihdfzMRDHx6Icp20hQXjkZCvlIsM14ZBndg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyHYSGB3CBHzWd3aw4RRgKnDFeF1WcpiEthdW7Dj1+DrA3EmmxC
	EFxfKMQTyxnhn7ggvMv1+5IM5d0/LFR93NY7gXPJeUA24bJWqOrcu546bvkOpv9WJgSu7fM6/Ga
	bu2jXlU0rJijoEjaYw4V8zP/UBzNCKqQ=
X-Gm-Gg: ASbGnct5DPjTShl+RhPTMLl5XlPlVitpg78q1YucWebJ7Uv6CtBGnsyxfvZnxps6a5/
	JtlGz8cRD0qe2L/J/I8s1C+0GcboeSP0QM9ZTcGu3ylU405NAUtkSFNZIu1VcLNB5y4HuwcgoiJ
	pe8dWJXBBgwS7cW214B+krpmWdU5cnlPG6a9ay94cRI2gBfxtQUtfWjb/rKq/NKjcbb3wsxhiRf
	UMig1K/QBMDNcXp14URzQ6iMmdBhpWv9zBwX9Ww31TUxPbqiHz/mp5p4DPu73jbvXdgSbXfIzHp
	H2GW8XSgqkW7gR8NmaeEW53XisV0MXFOEKmaegpW
X-Google-Smtp-Source: AGHT+IGx0Ulj/GXuXi96W2eenYBJACIM7ZWoL73hrVqEVyE1LtfL7KTLqGJtVA3B1z9UKRkSoWMmX3iA6cQVpixQTR4=
X-Received: by 2002:a05:6214:19c6:b0:720:8825:f1b7 with SMTP id
 6a1803df08f44-767ba279a16mr1297336d6.9.1757610227241; Thu, 11 Sep 2025
 10:03:47 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 11 Sep 2025 19:03:36 +0200
X-Gm-Features: AS18NWBHTdf_MLP_V9C8CBvQZoFlBxsMMbn2CMgYztIj54RaP34nJsZGlLhpO0Q
Message-ID: <CANNYZj8nqMP_riFmfOeaig0XA1MkArTcL48g9iYVdZHdjrsXvQ@mail.gmail.com>
Subject: bitbake-setup configurations for existing LTS releases
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Sep 2025 17:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65828

Hello,

I've been asked to look into adding bitbake-setup configurations for
existing LTS releases (e.g. scarthgap).

TLDR: this is not impossible, but bitbake-setup relies on a few
important features in oe-core and bitbake, and so such configurations
would be limited, and awkward and not really showcase bitbake-setup
well - basically reducing it to an equivalent of "clone poky;
oe-init-built-env", with more steps and hurdles.

Specifically:

- any bitbake environment produced will not have bitbake-setup in it
(as opposed to master and future yocto releases). So one would have to
continue to refer to bitbake-setup from a separate bitbake master
checkout, instead of just using one in PATH.

- fragment support is available only in walnascar. Built-in fragment
support (for setting machine and distro!) is only available in master.
Bitbake-setup relies on both, or it can use openembedded templates as
a fallback.

- openembedded templates have issues too: we have only one default
template in poky (which assumes integrated poky repo and can't be used
with separate oe/bitbake/meta-yocto clones), and one default template
in openembedded.

- the poky template hardcodes qemux86-64 for MACHINE and poky for
DISTRO. Openembedded template similarly hardcodes qemux86-64. It's not
possible to select something else, compared to built-in fragments that
make it trivial.

- for best first-time experience it's also good to enable yocto sstate
mirror. In master, this is done with a fragment. In scarthgap, this
would have to be enabled some other way, and I really can't think of
which way that would be.

So given the above, I'm leaning towards not trying to retrofit
bitbake-setup to the past. But what do you think?

Alex

