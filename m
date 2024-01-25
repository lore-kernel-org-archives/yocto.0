Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F45AC47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 16:59:06 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.23542.1706201938481718712
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 08:58:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dkLHKnSK;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6818d263cb3so48310556d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 08:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706201937; x=1706806737; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NfhLQZ/E8o4LPQaOxifW+nII4qz4m7hfrTUit9CMKZg=;
        b=dkLHKnSKzQU6OKU/vZHvZc9LWGmCE8qD+xAfWcQMTgAqBN03l+nQM7OwioOdrf6NhL
         luZzahv/qJ9eMlaXmmZn9V1WKxmjOzgYw8mCAlcSHg90Sxppzi8pGeLIhJb7/LjkTXdA
         xcwOn/R0NPxfei29Sf8rIFD80uFVP/VFIHtkwXTQ8l5/EyH+NH+lcrAgBttOCbCztzIK
         LNOK+hAenQTUd9e78znOajSaCvP8WBIFOiOTpJ6iFA/taLQFxG51cfaWspbf984pNmWQ
         JU1DiSDaQICHPgMmaJf9CqDPihGJaDkLoe9ISrxlWsyRArHKTHMn3S1epznmizprBEzQ
         ZWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706201937; x=1706806737;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NfhLQZ/E8o4LPQaOxifW+nII4qz4m7hfrTUit9CMKZg=;
        b=lJ6D8P35blLbvUnRLRSJMhPg3Sdfy7BL/id3hh3/FzfbrK5dBEQPUCQO8Tj2yNOIMl
         nEzyzScQv0H4aN4PKHwHk5Rlnqy983wjpV7YBWZLaPKhe+Al9beG27ndLWZ4aDqvH/6V
         DrMXjl1y3skBDVL5PR5GGpG44qJ1N1bsIJqqgOVpmDlyUVP/wuRFbGDZX+uuJfiO30Gk
         e87DAg0m+RZ6xBMSjZjUlZ/zPvabyhqkqQbyoNH8nRuNax48bLL/SokFWymKBRXPNLM/
         XGdS7c6rW8r5orcitAZC5t7gChDo0dgs+ObPspUVDHk5YGg1Ux1oPQK5gbmzHrHoK64C
         xIpg==
X-Gm-Message-State: AOJu0YxV9e6puZQjPfacY5MPDy0Gud41n3bC1hNnht0OfsQEPf4vP544
	Red3/ckBhcCnKZZw+iraRZXe++NnMjo7S51oig0LtW0XS7mKx/yF
X-Google-Smtp-Source: AGHT+IFrgBoK7G5vhQLtHkXVSOfIkSy+goYKpy415rYW8JDUFE0AFSaNHjVwnNGNJCF+hXqjhoCnRg==
X-Received: by 2002:a05:6214:e62:b0:686:aaae:ceef with SMTP id jz2-20020a0562140e6200b00686aaaeceefmr1720339qvb.35.1706201936500;
        Thu, 25 Jan 2024 08:58:56 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id dw7-20020a0562140a0700b0068384d86347sm5621364qvb.96.2024.01.25.08.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 08:58:55 -0800 (PST)
Date: Thu, 25 Jan 2024 11:58:53 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Tim Orling <ticotimo@gmail.com>
Cc: JPEWhacker@gmail.com, yocto@lists.yoctoproject.org, dedekind1@gmail.com
Subject: Re: [yocto] bmap-tools repository closes
Message-ID: <20240125165853.GA16381@localhost>
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <20240124175901.GA22635@localhost>
 <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
 <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 16:59:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62295

On Wed 2024-01-24 @ 03:16:04 PM, Tim Orling wrote:
> On Wed, Jan 24, 2024 at 2:02 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
> 
> > On Wed, Jan 24, 2024 at 10:59 AM Trevor Woerner <twoerner@gmail.com>
> > wrote:
> > >
> > > Hi Artem,
> > >
> > > On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> > > > Hello Yocto community,
> > > >
> > > > some parts of Yocto software (MIC?) use the 'bmap-tools' project to
> > speed up
> > > > image flashing.
> > > >
> > > > https://github.com/intel/bmap-tools
> > > >
> > > > I am the original author of the software, and I created it many years
> > ago to
> > > > speed up Tizen image flashing, and it helped a lot back at the time.
> > It was also
> > > > my first python project, so it was a lot of fun learning python while
> > also
> > > > creating something useful.
> > >
> > > Thank you for your contribution, this tool has been quite useful for me
> > over
> > > the years.
> > >
> > > > But after that, I stopped working on it and it was mostly Yocto folks
> > who
> > > > contributed changes here and there. I never had time and enough
> > motivation to
> > > > maintain the project further, but other folks helped.
> > > >
> > > > Simon McVitte was active maintainer, but he said he does not have time
> > for it
> > > > now as well.
> > > >
> > > > The project is in "github.com/intel" space, and Intel is going to
> > archive the
> > > > git repository soon. This basically means the repository becomes
> > read-only soon.
> > >
> > > Thank you for this update and letting us know ahead of time.
> > >
> > > > Would Yocto community have enthusiasts to fork it and maintain the
> > fork?
> > >
> > > Yes, I'll volunteer to maintain it going forward. My non-stackoverflow
> > python
> > > knowledge is minimal, but I recently dug deeply into bmaptools to solve
> > an
> > > issue I had noticed. So I'm confident enough to take it over if nobody
> > else is
> > > interested.
> >
> > Ya, it's an awesome tool and a huge time saver for us, so can also
> > help maintain it
> >
> 
> We can probably move it under the https://github.com/yoctoproject umbrella?
> I can also help maintain this tremendous time saver.

https://github.com/yoctoproject and the github workflow is fine with me as
long as I can commit to it from my @gmail identity.

@tim do you want to import the current repository from intel? Then we can
update the recipe in oe-core and go from there.

