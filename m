Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD7E6C44529
	for <webhook@archiver.kernel.org>; Tue, 21 Jul 2026 07:55:29 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.17573.1784620526785387699
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2026 00:55:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=ZL1+Qwo+;
 spf=pass (domain: smile.fr, ip: 209.85.208.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-698bf053053so12632481a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2026 00:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1784620525; x=1785225325; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xGfzl48FezRHCm/ClzmuGKYVSY5Q1wVJM/0Pd3LsBbQ=;
        b=ZL1+Qwo+aTJ/EuAdCsrokZM0B1fNcD6I+oxsyQmwirIDMJQOEAdvfezGBXq8I/nmRp
         6teZ9ftJQD/5+z1uxritMmyw4yCqqbntFy7I00819ztHWC4k/M/o44oPGCBtaMrM0AoR
         a7EBBLD76XZ4aiCGouitjzVJLcx+TYiIQ+jPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784620525; x=1785225325;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=xGfzl48FezRHCm/ClzmuGKYVSY5Q1wVJM/0Pd3LsBbQ=;
        b=h9E60jJ6GJwSmB6oUKM6FGoDMzj1LrvZ9/FpWV/7ymg5p1Nj010u4oaIngTb0JoQAs
         zLSCBGGOb5VR7o916HKfQA+pLIvs/9RSRuWNF/++mjxx1yb4yiQs3TKxIfD2NGvZi/nv
         wC12NJmrW/WiG2cTmJq5VuM6qBENzhixWb3cNOu3HamqStvuD3HWKeRI2G0llGNsEyqo
         pVMYbkQrkrjXUl47LIW5/DG1K7/AZUXFKM4PHMFRKp0WjYQ2n44AyO9ASgoAUWmdUIiW
         1AZu8KiJ5oha23qtnoh1uhM/wzR5WwR+7jxFnqtgbcQKmkZ4jhv8dGYphnGv1hDXKYQm
         /Bmg==
X-Forwarded-Encrypted: i=1; AHgh+RrYZE0jPEfUfmksu8PqkluTc9cNS5oQxQ24hCZ0wGonIBBzzsJiSxzOWL1RR4O8t+0gwpxYOw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzmbOy9MDW1kbb965p8XzbBULk6hmvpvXF4qA62XfBAGL7cd/bE
	gxUy7w1JHvKw2TiIimPG0Vz56hM29vA21ow6Bid/DVWnxteikcGH9FkP6aHqDmPCzjVLag6VP+W
	AHvfabD8=
X-Gm-Gg: AR+sD12GO4JYNPit++j2jEa5wjmi78q9QEcgXn4dC1sXeUJGH+7B/nipqSsBCCaA/yJ
	UsTpToxQvN9w+aYmd5zp5HBvRj7YXlrQc1AHOdBIie7O5l4YjNGjfshaKwUZFz1552U3OjdZWxD
	xf8wIR/swaq3dwbF8JEfuF/W9ORzDNms7pSARB8ZUbxIgVJBMkI+hNdbqGOM0/WPbl9jUbUO5gZ
	ag3oFSW+Gw0qX3BpYiQHhGimHMDeNw+KUMqdt4lS9YCQx9iHJ+uxW4/Eypitih79FI4Es+Qjb3V
	JisCsMMCwHebTOe3zqPYH254GN1kRR3BM8qUQWE5zo8NnnvnFtpibC0N8MdBmmBNufEXwy1C3na
	EnbymEeqmK41t4nkis7iECNx34n6XvyHehYlbzfyUMJrHxCaOgWJLzgC3jyr97qVJQkXx+GRG4d
	cKVvIFPn1q4L3ECturoA1wPS07SSbbYLrf0zbqmUS+oEvZ/H+7Ez7lF33UOeIdtDxZvSOze73u
X-Received: by 2002:a05:6402:a50b:10b0:69e:9755:eceb with SMTP id 4fb4d7f45d1cf-69e9755f166mr2801049a12.18.1784620524852;
        Tue, 21 Jul 2026 00:55:24 -0700 (PDT)
Received: from localhost (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e6ff017c3sm5418468a12.13.2026.07.21.00.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 00:55:24 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 21 Jul 2026 09:55:24 +0200
Message-Id: <DK436EQ9V6D7.35H1AH9B4J0U6@smile.fr>
Subject: Re: [security-discussions] yocto-security-tools: helper scripts for
 CVE backporting work
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <security-discussions@lists.openembedded.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <2aa6cbc429f279571f460291435abbd6d3dfdd83.camel@ericsson.com>
In-Reply-To: <2aa6cbc429f279571f460291435abbd6d3dfdd83.camel@ericsson.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2026 07:55:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66647

On Tue Jul 21, 2026 at 9:23 AM CEST, Daniel Turull via lists.openembedded.o=
rg wrote:
> Hello,

Hello Daniel,

> I would like to share a set of scripts that I wrote to enable faster
> and more systematic CVE backporting work.=20
>
> https://github.com/Ericsson/yocto-security-tools

That's interesting. Reviewing stable patches, I think there are similar
tools used. Thanks for publishing yours :)

>
> It consists of 3 parts.
>
> * cve-metadata-extractor: Find fix commits for CVEs from multiple
> public sources (Debian, OSV, CVEList V5, Ubuntu, NVD). For the list of
> CVEs uses as input the cve report from sbom-cve-check or a cve id.
>
> * cve-corrector: Automate backporting CVE fixes to Yocto recipes using
> devtool. It mimics how it is done manually and creates a patch ready
> for review. If there are ptest for the package, it will run them before
> and after to check for regressions.
>
> * cve-agent: if there are issues with cve-corrector, like a merge
> conflict or build error, it can trigger an AI-assisted resolution and
> then continue with the cve-corrector. Currently works with Kiro and
> Claude.

I observed some "weirdness" when a patch is passed through a LLM. I
don't if that is the case for your tool but some things to be aware of:
* The LLM tools tend to rewrite the commit message (changing author,
  paraphrasing message, ...) and that should be avoided.
* When then the backport is AI-assisted, it must to be marked as such:
  https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#a=
cceptance-of-ai-generated-code

I recommend running interdiff between the upstream patches and the
output of the tool to help the human author spot backporting mistake
(unnecessary/unexplained changes, paraphrased commit message, ...)

> The license is MIT. Please fill free to take a look, give it a try and
> if you find anything that could be improved, for example, what could be
> included in the commit messages or more sources for cve information,
> please let me known or contribute back.
>
> It is designed in an modular way, so it is easy to extend.
>
> My idea the more people is using it, the more people can work faster on
> backporting CVEs, share the load, and then focusing on features or
> other maintenance. And I know that in an ideal world, we should upgrade
> to the latest versions, but due to stability and testing is difficult,
> even for the latest yocto release.
>
> I have tested it with Scarthgap, Wrynose and master
>
> Best regards,
> Daniel

Regards,
--=20
Yoann Congal
Smile ECS


