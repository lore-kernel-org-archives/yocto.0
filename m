Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EF98E80A9E
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 07:18:17 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.12457.1695799088606727204
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 00:18:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CEdjXRm0;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c16757987fso87011801fa.3;
        Wed, 27 Sep 2023 00:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695799087; x=1696403887; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xt4f7nUdxgfVpE9D8Ril82zMsFkWwVVG3HTjqSv0Li0=;
        b=CEdjXRm0s8siNAFef01HJKBZLuO4HUZ55fZhTyuugpBgHmlQ+D5lY+aNj1x0kfeuYe
         jOUDv2DPj7T6dnT/P5SCbh6rAj/Gg08wwd7kfZwSnyWHEFDFyKTky0TkeLJNKeOJuRWZ
         +yzUSvvsNqvuF3AM2UMP3PLeOr7otxAlQSdMhS5wYXIyHa1l+jfTeFWlGPoCdQ3uBc3n
         PJfGhPOltr+ndQMhXniJ+m6jOgD0CJy4LWfjFGawzk0IVl+qRMUcupc4QaVBUNUCF7Fq
         +iptsiJ1fJcimoi+ySK9N2AnZ4iOa84f2x3HrNqZtUW0gikyAdYSPhYF2rH279fnHVsV
         k8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695799087; x=1696403887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xt4f7nUdxgfVpE9D8Ril82zMsFkWwVVG3HTjqSv0Li0=;
        b=F854/g6gARTfiWCnFR4Dbo2ILk9WPAHmvp0FhYzRM/jmCX/PZTvOpu0zDr+r90en1T
         gm+SmQjxKrPSBK0wQRwZzsj2fHon6BK098oXl9iflKkEfvLXp1w0fhyohvl3SbusiG/F
         Ow7GgVqjg/2ADDSj5Gxrowp2YXJP67mexMhqUo7g3GPtMLww6Ti/BUXpFi1vC4nBi7P6
         6+JB9kBRAFT7EGGD4NoJo7LLDAZ6ShKbHA2npct/Ai7RMKD2KM0hHjMXHpzfqu4aW07i
         7PHFYPutm4Owb6IXhuIKG/Kai2rPweRWpJVb7Sb8+2VFeYMvVAB3Q8puYKya1o/vdqNb
         pQMw==
X-Gm-Message-State: AOJu0YziJ6fwjQ+XcpCZJN1FqsgmLW+KRCTHKC19lxLF43fclanNAE4a
	vG1WSjrtFcX7cjwP0S6+mbu2LhysNuOkFrMpJHo=
X-Google-Smtp-Source: AGHT+IGGZz5+fDm1f+oJLTDMzRYwXXAQiRIKH9zBBuOSSpMnHUFae3gmdhp9709NWC/MYC+pCkjdGpv+NfOCH2xY//A=
X-Received: by 2002:a2e:9815:0:b0:2c0:34ed:b5ea with SMTP id
 a21-20020a2e9815000000b002c034edb5eamr1017891ljj.45.1695799086475; Wed, 27
 Sep 2023 00:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=SqAzD9zCnAGB+mtZoTnMCzcnocarpTSCQ0weH15j8KhQ@mail.gmail.com>
 <BY5PR11MB41673328EC01C44668ED8870EAFCA@BY5PR11MB4167.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB41673328EC01C44668ED8870EAFCA@BY5PR11MB4167.namprd11.prod.outlook.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 27 Sep 2023 09:17:54 +0200
Message-ID: <CAApg2=QJpjSQ_z5OXgEoGxOk+Pxq2NgSnRvDY0SJN5eQ8FDtmQ@mail.gmail.com>
Subject: Re: [Openembedded-architecture] [yocto] Security processes: YP needs
To: david.reyna@windriver.com
Cc: "yocto-security@lists.yoctoproject.org" <yocto-security@lists.yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-architecture@lists.openembedded.org" <openembedded-architecture@lists.openembedded.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"MacLeod, Randy" <Randy.MacLeod@windriver.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, Steve Sakoman <steve@sakoman.com>, 
	Khem Raj <raj.khem@gmail.com>, 
	"mark.hatle@kernel.crashing.org" <mark.hatle@kernel.crashing.org>, Ross Burton <ross.burton@arm.com>, 
	Joshua Watt <JPEWhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 07:18:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61136

Hi David,
Thank you very much for the description and the offer to get a demo.
As discussed yesterday in the call, there are some other people who
seem interested.

> PROPOSAL 1: If the full triage is too much to bite off to start with, per=
haps using it to track and coordinate work will bring immediate benefit.

This is the reason I want to test how much time it takes.

> PROPOSAL 2: I am happy to give you a live demo of Wind River's fully oper=
ational SRTool, so you can see all of the bells and whistles in action. I a=
m available pretty much anytime between 10:00 am Pacific to 2:00 am Pacific=
.

That would be nice. What about 11am Pacific on tomorrow (28 Sept or
Oct 3)? I think that you have meant 10am to 2PM, otherwise 1am Pacific
would work very well for me too :P

> PROPOSAL 3: I will start refreshing the YP SRTool repository with my curr=
ent implementation level from Wind River (with the Wind River specific modu=
les left out of course :-)

That would be great. I'm going to add the missing file for the test
next week, the tool needs a script to download 2023 data.

Kind regards,
Marta

On Mon, Sep 25, 2023 at 11:02=E2=80=AFAM Reyna, David via
lists.openembedded.org
<david.reyna=3Dwindriver.com@lists.openembedded.org> wrote:
>
> Hi Marta,
>
> * SRTool: We might decide to use it again. It allows one to do much but r=
equires constant commitment.
>
> There are many ways to use the SRTool.
>   (a)  The original design was to perform 100% triage of incoming CVEs. T=
his was a business requirement of Wind River, and we have used the SRTool s=
uccessfully for 4-5 year now.
>   (b)  The main limitation with the SRTool for Yocto Project was the lack=
 of integration with Bugzilla (Ross ran out of time)
>      * This is the crucial other half of the workflow
>      * There is the automatic creation of appropriate defect records for =
investigation
>      * There is also the automatic tracking of the overall CVE status, bo=
th CVEs in progress and the CVEs completed
>      * Wind River has an extension for full integration with Jira, and th=
at saves weeks of work for the CVE management
>   (c) The guiding rule was that CVE management was in the SRTool, but spe=
cific defect work was also done in Jira/Bugzilla, for a clean separate of d=
omains
>   (d)  The SRTool has a user model
>      * Together with Bugzilla, it is easy to track single people and even=
 multiple people working on CVEs
>   (e) The SRTool also has the built-on ability to look up the CVE status =
from other distributions (Red Hat, Debian, ...) so that one can get a peek =
of existing triages and resolutions
>   (f) The SRTool is build like Toaster on top of Django, so development a=
nd debugging skills for Toaster immediate apply
>   (g) Also with the Django base, it is very simple to add any number of m=
odular extensions to support for example CVE Scanner integration
>   (h) The SRTool also has report generation (in text, CSV, and Excel) in =
addition to email notification support.
>   (i) There is also a "private" model for CVEs under embargo, with strict=
 access control lists.
>
> PROPOSAL 1: If the full triage is too much to bite off to start with, per=
haps using it to track and coordinate work will bring immediate benefit.
>
> PROPOSAL 2: I am happy to give you a live demo of Wind River's fully oper=
ational SRTool, so you can see all of the bells and whistles in action. I a=
m available pretty much anytime between 10:00 am Pacific to 2:00 am Pacific=
.
>
> PROPOSAL 3: I will start refreshing the YP SRTool repository with my curr=
ent implementation level from Wind River (with the Wind River specific modu=
les left out of course :-)
>
> David
>
> BTW, I also support an extension to the SRTool that manages CVE scanning =
of build images, with hooks to a  number existing CVE scanners (e.g. Trivy)=
 in addition to other vulnerability metrics. This is probably out of scope =
to YP at this time, but it is perhaps something to grow in to.
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Marta Rybczynska via lists.yoctoproject.org
> Sent: Wednesday, September 13, 2023 4:52 AM
> To: yocto-security@lists.yoctoproject.org; OE-core <openembedded-core@lis=
ts.openembedded.org>; openembedded-architecture@lists.openembedded.org; yoc=
to@lists.yoctoproject.org
> Cc: Richard Purdie <richard.purdie@linuxfoundation.org>; Steve Sakoman <s=
teve@sakoman.com>; Khem Raj <raj.khem@gmail.com>; mark.hatle@kernel.crashin=
g.org; Ross Burton <ross.burton@arm.com>; Joshua Watt <JPEWhacker@gmail.com=
>
> Subject: [yocto] Security processes: YP needs
>
> Hello,
> I've been working recently on collecting what works and what doesn't
> in YP security processes. The goal is to go forward and define an
> actionable strategy!
>
> Today, I'd like to share with you the summary of what I have heard as
> needs from several people (those in Cc:).
>
> I want the community to comment and tell us what you find important
> and what you'd like to see added or changed from this list.
>
> * CVEs: Visibility if YP is vulnerable or not
>
> People want to be able to check/look up a specific CVE; it might be a
> CVE unrelated to YP
> (eg. package not included, Windows issue). The cve-checker result is a
> part of the solution, but people also want to know which CVEs do not
> apply.
>
> * CVEs: synchronization of the work on fixes
>
> Currently, there is no synchronization; multiple parties might be
> working on the same fix while nobody is working on another. There
> might be duplication of work.
> Ross has https://wiki.yoctoproject.org/wiki/CVE_Status
>
> * Triaging of security issues
>
> Related to CVE fixes and includes issues reported directly to the YP.
> Some issues are more likely to be serious for embedded products
> (attack by network), so not all has the same priority.
>
> * Private security communication
>
> A way to send a notification of a non-public security issue. For
> researchers, other projects etc.
> The security alias exists, but only some people know about its existence.
>
> * Visibility of the security work of the YP
>
> There is much work on security in the YP, but it lacks visibility.
>
> * Documentation
>
> Related to visibility. We need easy-to-find documentation of subjects
> like submitting a CVE fix,
> reporting a private issue, and how our processes work... This
> documentation should address people who are not regular contributors.
>
> * Additional tooling
>
> We could add additional tooling: a template on how to add cve-check to
> the CI (possibly
> a different one than the autobuilder), analyze the result, and extend
> our tooling to their layers...
> It is also related to the "Architecture" topic below.
>
> * Architecture work
>
> Security if more than CVE fixes. We also have what is happening in
> meta-security: hardening, compiler option,
> secure package configuration, use of code coverage tools, and so on
>
> * SRTool
>
> We might decide to use it again. It allows one to do much but requires
> constant commitment.
>
> * Presence on pre-notification lists and receiving information before
> the vulnerability gets public
>
> YP currently depends on public data. Principal distributions receive
> the information before
> a vulnerability becomes public. It requires (in short) private
> reporting, a security team, and a track
> of excellent security record.
>
> * Becoming a CNA (be able to assign CVEs)
>
> Needed if we want to assign CVEs to the software of the YP, like
> autobuilder, Toaster etc.
>
> Kind regards,
> Marta
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#1775): https://lists.openembedded.org/g/openembedded-=
architecture/message/1775
> Mute This Topic: https://lists.openembedded.org/mt/101570670/5827677
> Group Owner: openembedded-architecture+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-architecture/u=
nsub [rybczynska@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

