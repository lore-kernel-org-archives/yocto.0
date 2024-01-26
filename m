Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C39C47422
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 15:28:37 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.429.1706282915714672308
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 07:28:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MciBREXG;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6868f31a555so3403766d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 07:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706282915; x=1706887715; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/JEm1AYGD5cJx0KFcaFh/2q0MInOSVj2s69DlDueVaY=;
        b=MciBREXGKonJ71COGpsoEjclJIMyNIKISG5YZs1N21tHBz6IFHVTghYXztwC6h3lTu
         A6scLDLLRTsF+LCgl75G7ooKHz6eW5SNyfxt7SzuTyP6jE+UuQdjpwJOgjF0a/FFUv/L
         cWHRAdcK3ys0ZbKcymzyBjfgchMS2tfV1T9UCGGWhOTBhCuGfIc6z8HARLbociiMTLTO
         1D2Up3NxyUsM1+1id7f5QQol3x9kN2jipNMZRfs9LQxz5snb+OcfvY0QvDzhRzJ0kL0Z
         tkuddAXd5kELXz+sX0Lnk4UOEJjQKdaebyaL+XBK0z+DC+saJiLoJmmfsnFWeI2q6VvA
         NbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706282915; x=1706887715;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/JEm1AYGD5cJx0KFcaFh/2q0MInOSVj2s69DlDueVaY=;
        b=iE7VwY3nBepOUKrUxNsSnU/KEBnEUaci150I89Eayfnm9+Dvyi8FqkfuH4Ca5PElBP
         vj4LvCcweSOBtz4HLvKfx2+9K5wcaCqZBQST+mGgxfA3oE7bSkd4snmxcoaLhOG7tmBm
         gSl0Dw4HF+y5K1oGl1473tUNuVaxOb2JWyP6VY68+rkJ4+0ZLaqsVb8HlxG1PlVlFOuK
         +QnMB52z540C0Yf0ZWG35D5X4dvCRE6TMzi4Yt8bW2X5Jjd0d7B8u3LhBAeNB7wJTa/t
         gVEghKrxzW/wcBzswsFHilPYCmoxDgz6TAGp7LAe/VR0jLzVwtLWteIvStME5tMcTwCT
         RMXg==
X-Gm-Message-State: AOJu0YwEn48u9OWVnAj1xpYrxKTgoYEHBdhAFoDiiFd43uv2bKrrspCY
	3lpceuJBpC36pYlLk0KkMO5HfUnqdFmcgOtIG58fwog5nb8oy6HY
X-Google-Smtp-Source: AGHT+IG1b/QbpifV2a0LCX8Q2WqMYIrWex+K6RksPZcYfPBHkXziSGmcskOgg/WK21NK2e+rCJBVdw==
X-Received: by 2002:a05:6214:e48:b0:686:acb4:99ec with SMTP id o8-20020a0562140e4800b00686acb499ecmr7944qvc.29.1706282914776;
        Fri, 26 Jan 2024 07:28:34 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id di18-20020ad458f2000000b006816edd1979sm577422qvb.140.2024.01.26.07.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 07:28:33 -0800 (PST)
Date: Fri, 26 Jan 2024 10:28:31 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, philip@balister.org,
	Tim Orling <ticotimo@gmail.com>,
	Michael Halstead <michael@yoctoproject.org>, JPEWhacker@gmail.com,
	dedekind1@gmail.com
Subject: Re: [yocto] bmap-tools repository closes
Message-ID: <20240126152831.GA17169@localhost>
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <20240124175901.GA22635@localhost>
 <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
 <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
 <20240125165853.GA16381@localhost>
 <1426bf2a-b18a-4589-974b-3b5f9c40a904@balister.org>
 <982b471fa48268a0d3c332624859bf8003c7e586.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <982b471fa48268a0d3c332624859bf8003c7e586.camel@linuxfoundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 15:28:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62300

On Fri 2024-01-26 @ 01:33:15 PM, Richard Purdie wrote:
> On Thu, 2024-01-25 at 17:58 -0500, Philip Balister wrote:
> > On 1/25/24 11:58, Trevor Woerner wrote:
> > > On Wed 2024-01-24 @ 03:16:04 PM, Tim Orling wrote:
> > > > On Wed, Jan 24, 2024 at 2:02 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
> > > > 
> > > > > On Wed, Jan 24, 2024 at 10:59 AM Trevor Woerner <twoerner@gmail.com>
> > > > > wrote:
> > > > > > 
> > > > > > Hi Artem,
> > > > > > 
> > > > > > On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> > > > > > > Hello Yocto community,
> > > > > > > 
> > > > > > > some parts of Yocto software (MIC?) use the 'bmap-tools' project to
> > > > > speed up
> > > > > > > image flashing.
> > > > > > > 
> > > > > > > https://github.com/intel/bmap-tools
> > > > > > > 
> > > > > > > I am the original author of the software, and I created it many years
> > > > > ago to
> > > > > > > speed up Tizen image flashing, and it helped a lot back at the time.
> > > > > It was also
> > > > > > > my first python project, so it was a lot of fun learning python while
> > > > > also
> > > > > > > creating something useful.
> > > > > > 
> > > > > > Thank you for your contribution, this tool has been quite useful for me
> > > > > over
> > > > > > the years.
> > > > > > 
> > > > > > > But after that, I stopped working on it and it was mostly Yocto folks
> > > > > who
> > > > > > > contributed changes here and there. I never had time and enough
> > > > > motivation to
> > > > > > > maintain the project further, but other folks helped.
> > > > > > > 
> > > > > > > Simon McVitte was active maintainer, but he said he does not have time
> > > > > for it
> > > > > > > now as well.
> > > > > > > 
> > > > > > > The project is in "github.com/intel" space, and Intel is going to
> > > > > archive the
> > > > > > > git repository soon. This basically means the repository becomes
> > > > > read-only soon.
> > > > > > 
> > > > > > Thank you for this update and letting us know ahead of time.
> > > > > > 
> > > > > > > Would Yocto community have enthusiasts to fork it and maintain the
> > > > > fork?
> > > > > > 
> > > > > > Yes, I'll volunteer to maintain it going forward. My non-stackoverflow
> > > > > python
> > > > > > knowledge is minimal, but I recently dug deeply into bmaptools to solve
> > > > > an
> > > > > > issue I had noticed. So I'm confident enough to take it over if nobody
> > > > > else is
> > > > > > interested.
> > > > > 
> > > > > Ya, it's an awesome tool and a huge time saver for us, so can also
> > > > > help maintain it
> > > > > 
> > > > 
> > > > We can probably move it under the https://github.com/yoctoproject umbrella?
> > > > I can also help maintain this tremendous time saver.
> > > 
> > > https://github.com/yoctoproject and the github workflow is fine with me as
> > > long as I can commit to it from my @gmail identity.
> > > 
> > > @tim do you want to import the current repository from intel? Then we can
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

git.yoctoproject.org and mailing lists are my preferred workflow, especially
now that the oe/yp lists are in lore. But if others wanted it on github I
wasn't feeling strongly about it.

