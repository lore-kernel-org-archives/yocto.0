Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2769C47422
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 13:33:21 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.15908.1706275998394701629
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 05:33:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YOVqmiH1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e72a567eeso12309235e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 05:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1706275996; x=1706880796; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=adkRN2nJQIp2TEmP9+KQgQI9ElqGoaP6n/Fn9vKlaq8=;
        b=YOVqmiH1Z2ZYrsJmWbMHvqxl3zLutFQ4CCO/Ga7sQiWn8/XAvcq01h0YMAmBfVDObK
         ChCL9CzZQh5IWWscMPbDxsk+RZ5di5Qt2XzdT28jUgfNbB+aAfgCuNWtr9IGUdbDTFqO
         Qu62UJ+t5yvS7uhOFftKY7tp3WyT2VWAPiNKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706275996; x=1706880796;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adkRN2nJQIp2TEmP9+KQgQI9ElqGoaP6n/Fn9vKlaq8=;
        b=vKA59kQVHBhZhSjjVNB9EEqqLA1QxNVb8ejwzEH9cNxcMmUnZ5mAVmDg5DjcqUBhLG
         4lVuHNP5LbkYmFv0WePYQaUEw/79epcQG+n3NrLXNOvvoIgALI2rUhSORVRzh+FnjoQP
         kAUS0cM44aUgTcqG+p2aE0EaPKNHRj1tBwR/CBzZVv4Rkmgh8kcY/jb7+dpsRsOAv7gn
         tYfQ+G97TUkGvLLc/z5h/cYoebFlQ865IucOtPXKCvCact5jIjEiQBWWZlnx+0stnnHn
         jxDMpsh9FmmmViagLtAevWK8jCXcUXSFnMFZdF1jETWpliW9j6uNCC2WgYT8rFKANz1T
         RfqA==
X-Gm-Message-State: AOJu0YwqfBDHpirjltBcXSdXGvgVJ47NlQbUBnJa1o8EGpt4rbN8vHQM
	taJB8i4OC2RJCDbQHG/eBrJFCzd3XPIBckxYqCPj7whbEcEeMvZz7HGAUdv2VLt4NkGAotUQKqz
	q
X-Google-Smtp-Source: AGHT+IEpxWGjWNqq1AKWSU8hcpkdfzUhpl0kGoGvtqgWhcSgg6X9zhIYMnY+D2wPP0bHKzibWXPbAA==
X-Received: by 2002:a05:600c:1554:b0:40e:b908:30f4 with SMTP id f20-20020a05600c155400b0040eb90830f4mr562367wmg.88.1706275996397;
        Fri, 26 Jan 2024 05:33:16 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:eef:5a49:b13d:a655? ([2001:8b0:aba:5f3c:eef:5a49:b13d:a655])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600c4fc700b0040ea94d2250sm1946278wmq.8.2024.01.26.05.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 05:33:16 -0800 (PST)
Message-ID: <982b471fa48268a0d3c332624859bf8003c7e586.camel@linuxfoundation.org>
Subject: Re: [yocto] bmap-tools repository closes
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, philip@balister.org, twoerner@gmail.com,
 Tim Orling <ticotimo@gmail.com>, Michael Halstead <michael@yoctoproject.org>
Cc: JPEWhacker@gmail.com, dedekind1@gmail.com
Date: Fri, 26 Jan 2024 13:33:15 +0000
In-Reply-To: <1426bf2a-b18a-4589-974b-3b5f9c40a904@balister.org>
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
	 <20240124175901.GA22635@localhost>
	 <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
	 <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
	 <20240125165853.GA16381@localhost>
	 <1426bf2a-b18a-4589-974b-3b5f9c40a904@balister.org>
Autocrypt: addr=richard.purdie@linuxfoundation.org; prefer-encrypt=mutual; keydata=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
 YNvg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 13:33:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62298

On Thu, 2024-01-25 at 17:58 -0500, Philip Balister wrote:
> On 1/25/24 11:58, Trevor Woerner wrote:
> > On Wed 2024-01-24 @ 03:16:04 PM, Tim Orling wrote:
> > > On Wed, Jan 24, 2024 at 2:02=E2=80=AFPM Joshua Watt <JPEWhacker@gmail=
.com> wrote:
> > >=20
> > > > On Wed, Jan 24, 2024 at 10:59=E2=80=AFAM Trevor Woerner <twoerner@g=
mail.com>
> > > > wrote:
> > > > >=20
> > > > > Hi Artem,
> > > > >=20
> > > > > On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> > > > > > Hello Yocto community,
> > > > > >=20
> > > > > > some parts of Yocto software (MIC?) use the 'bmap-tools' projec=
t to
> > > > speed up
> > > > > > image flashing.
> > > > > >=20
> > > > > > https://github.com/intel/bmap-tools
> > > > > >=20
> > > > > > I am the original author of the software, and I created it many=
 years
> > > > ago to
> > > > > > speed up Tizen image flashing, and it helped a lot back at the =
time.
> > > > It was also
> > > > > > my first python project, so it was a lot of fun learning python=
 while
> > > > also
> > > > > > creating something useful.
> > > > >=20
> > > > > Thank you for your contribution, this tool has been quite useful =
for me
> > > > over
> > > > > the years.
> > > > >=20
> > > > > > But after that, I stopped working on it and it was mostly Yocto=
 folks
> > > > who
> > > > > > contributed changes here and there. I never had time and enough
> > > > motivation to
> > > > > > maintain the project further, but other folks helped.
> > > > > >=20
> > > > > > Simon McVitte was active maintainer, but he said he does not ha=
ve time
> > > > for it
> > > > > > now as well.
> > > > > >=20
> > > > > > The project is in "github.com/intel" space, and Intel is going =
to
> > > > archive the
> > > > > > git repository soon. This basically means the repository become=
s
> > > > read-only soon.
> > > > >=20
> > > > > Thank you for this update and letting us know ahead of time.
> > > > >=20
> > > > > > Would Yocto community have enthusiasts to fork it and maintain =
the
> > > > fork?
> > > > >=20
> > > > > Yes, I'll volunteer to maintain it going forward. My non-stackove=
rflow
> > > > python
> > > > > knowledge is minimal, but I recently dug deeply into bmaptools to=
 solve
> > > > an
> > > > > issue I had noticed. So I'm confident enough to take it over if n=
obody
> > > > else is
> > > > > interested.
> > > >=20
> > > > Ya, it's an awesome tool and a huge time saver for us, so can also
> > > > help maintain it
> > > >=20
> > >=20
> > > We can probably move it under the https://github.com/yoctoproject umb=
rella?
> > > I can also help maintain this tremendous time saver.
> >=20
> > https://github.com/yoctoproject and the github workflow is fine with me=
 as
> > long as I can commit to it from my @gmail identity.
> >=20
> > @tim do you want to import the current repository from intel? Then we c=
an
> > update the recipe in oe-core and go from there.
> >=20
>=20
> Michael, if you need any support from the Yocto Project advisory board=
=20
> to move bmaptool to the yoctoproject github, I can help with that.

This falls to the YP TSC, not the board.

I have no problem with the project hosting that git repo and
maintaining it. I do worry quite a bit about moving it to github. Would
moiving it to git.yoctoproject.org be ok?

The reason I say this is that I already get a lot of comments/randon
questions against commits in github repos. I feel quite sad that people
are effectively talking into a void. If we start supporting different
workflows for different repos under yoctoproject, we're going to really
confuse people.

You might argue that we should host issues for bmap-tools. The
challenge is that we have bugzilla, we have a triage team and we have a
load of processes. Telling those people to just cover both would likely
result in a flat refusal.

Cheers,

Richard




