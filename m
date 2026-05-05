Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87ECFFF8855
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 18:42:46 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.955.1778006563575833267
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2026 11:42:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=m8UbmmNT;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8ee62a19730so613891185a.3
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 11:42:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778006562; cv=none;
        d=google.com; s=arc-20240605;
        b=ehFNuLXVfX2rP+sopYKoDTJnqOMbs4zpe7HsbPe65SoBjmT0ZdbyAZUEpfcc54RpZP
         NvhFYK7HusjXUBal+EuGTY/540yVLF3MQkCF66NLXY6s1ge9yZRQ3mfBiNzE7RLq+KuM
         AXegy4g76G4NLuOBF2/1VH7Hzxyyq3aXBviU8UgMq+L2uYi2DW2HX4XPRblWi/jlhpLQ
         SgFRN0tbkwJQ/V481c6T5symwP+EQRPDlGs/BFu3rq2ieG/UgohxC2UzmNabSFquZXrP
         JQRUY6OzYnTK5kS0bDny4XCN0SG2+FfFL+2eFTJTLAvnYH639MqE8ZekhgFP1V6Wq0VB
         AteQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3rq3u6OmiejPmPOcR1S7QtfFh+XkfWCIhJO7bp+sQZY=;
        fh=/MpYXytds6lQN8PSGkWpZ/RseA4uMF5jju9n9sBOsdo=;
        b=Dq0x1VaEZ7QXntfhP6PK2ScdbtO5EfgUwEqmHZz+z9GoKUsUh0MBqFO9RkHXzXhDG7
         2G68EG0VRkr4J10im0T1Z2glwqEhpO6Mxe2wc82BJJ6G28pGqpPZoDwrHC1ar5Dl7YEM
         UotbneXcTUE9FqU2yUMNZHf8qs9shiN0tejECScJQuKnbh40JPTz/lyp6b04I/oFjN3f
         SMwQ6rfL7KWrweDgIkq0SVzdTCM32s6f7Ql+tqGkZGmY1bo07ZrosNN4Z31F0EvAXam9
         druWP4wMoolWezdIcwOVA8Nhlldwajr7Sk2hLGcKHB0bmQrdh/LTlBwMHAKErz1BZWKv
         Ekgw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778006562; x=1778611362; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3rq3u6OmiejPmPOcR1S7QtfFh+XkfWCIhJO7bp+sQZY=;
        b=m8UbmmNTLxZiZ/bF0S/a0zk95PSfr5qiGaenPz7ycuau3et2CC+UYPSn0/GFdd4c23
         aPmPTuhu1n5JvfYt3asvaLyGNhMhfreEdDbnoTDNSY4NAPS+Rx8TXn7/QiiLt8qxKS0u
         Jt6BbYACJ3ObrDDhMXrTYKcZ7TsSYx1HkV1QjxtM8chwKXgveVSUxdquQucEhiUFr4pg
         GqWfc2c7vtSlxX1AVpE74MWJLmj7q3xP4/gURDP5lP4tj907oJnvN6NyUtOf/2sXxxM6
         2mKtjMZk7TZyxfORt0ADWPutHRvOunQpoDFVehR24G4BN3lnrTdU/2x75usyOavGr+1m
         prIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778006562; x=1778611362;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3rq3u6OmiejPmPOcR1S7QtfFh+XkfWCIhJO7bp+sQZY=;
        b=XG9VLLHs0hkRcXirb37Pt9nlc6oVOmqLJe4UipzJ5jg4G1mJmZ/ydZOCHAAR8Rf2ey
         i/upVVuwTJ3tGmrx2QAfcKAQ8jY3T+qiy/v6IlzHb3b7cmhCAkPAXMAh7IO1QYexYp2j
         O35S0Mc2g4hKWbH6G8MA93Bze0rSTmMP7wm5b2cvkYcwU/7FoX+CierR2iDam2NcgafP
         h2GtgXQr4dRGm0E/eR7as7zG9vl7xl2antdBgP9jalGY6k8eTaaTDQe2T1wztYc0wfrJ
         XiNK65d6j7i0212p8Klp941imTy2z9meMBls1d3hBvVq0DB7z2LdVBvf9jNLu/z+FDuc
         s9LQ==
X-Forwarded-Encrypted: i=1; AFNElJ/f7OFSXh5VO/RlkJYZM108X7W+6NHufzbHWu0wfhX5rBcN+fMRIA7rPOGljMZDDaoJw00NEw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx0FcLSSbV231Qf10sEj7LwqV2IB6CWCuoRpl9Ji/Ud/pIJ6Ooc
	W28SzaAeBUjxizX0lIcocYWj+EtBmSxGXMqBfDtTARBx5vmIC2N15EichlkpHAxlotDRRttVJEK
	yfmwK/pNEdtyCwi033NbQGTeKBKYVNZg=
X-Gm-Gg: AeBDievgxQGq46/q0T9cQ4vc4/uxk13mIk5lLCIjimMRuO2atTQLekCBtWyLfF9MGL6
	4P5bCrELhr5sJQoQF7zYMAXPIfvczYuPpOUxgxcxtI31rUR+EsHUCrBJ6pK290XFFPUx3CVO7IW
	sT+6d0jSWgXH9cT+4b5Q4HY03KDIhx8k5IgUrXoa3BFUrRd0SrCNuZd+aVCk2ghbbr5yzD08Uzd
	pC3fggRFiKFOQ32spvnfB/heuINzgYLFs5PDQNeEzGtzcQH/bmiAsIVMOvVWCvs+W0d5INuaTqD
	HJqVWx+qjS3AEIPjzFrgC/SnZCvNGAQ8rUFuBNydJhgwj9ev+p6R
X-Received: by 2002:a05:622a:6111:b0:50f:be8b:f803 with SMTP id
 d75a77b69052e-51461f73c89mr3589521cf.29.1778006562270; Tue, 05 May 2026
 11:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com>
In-Reply-To: <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 May 2026 20:42:30 +0200
X-Gm-Features: AVHnY4JWu_pyaNEg1IPxR6nVaP2hNAMV3z9AiuvkxIjHp_m9FWQSxowWV8EchZQ
Message-ID: <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
Subject: Re: [Openembedded-architecture] proposal: build pipelines in bitbake-setup
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 18:42:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66485

On Tue, 5 May 2026 at 18:17, Trevor Gamblin <tgamblin@baylibre.com> wrote:
> > 2. Nomenclature:
> >
> > - "step" is a single command that is also given a short name and a
> > longer description. Steps are building blocks for pipelines and can't
> > be individually executed.
> Why not? Why not have the ability to run something like 'bitbake-setup
> run-step <step_name'? That would actually be an advantage this feature
> could provide over many other CI systems, as it's usually difficult or
> impossible to rerun individual steps (you have to re-run a whole job or
> pipeline). I can see this being very useful for example when you need to
> run 'bitbake -c testimage' in a loop many times to try and catch
> intermittent failures.

The reason I suggested that steps can't be run individually is that I
wanted to keep the UI simple, and couldn't think of use cases for
individual steps. One has to start somewhere, my starting point is
baffled yocto newcomers, and poorly written custom build scripts :)

Anyway! This was very useful to read, and I agree with what you say.
Here's how the UI could look like:

1. Interactively choose a pipeline and run it:
$ bitbake-setup build

2. Run a pipeline given on command line:
$ bitbake-setup build <pipeline-name>

3. List pipeline steps
$ bitbake-setup build --list-steps <pipeline-name>
(this can be used to avoid hardcoding step names and their sequence
into CI-specific definitions, e.g. CI would first list the steps, then
iterate over them, avoiding the 'giant single step' problem - this of
course requires support for creating steps 'on the fly', which I think
at least buildbot can do)

4. Run a single step:
$ bitbake-setup build <pipeline-name> <step-name>

5. Run a pipeline, starting at a particular step:
$ bitbake-setup build <pipeline-name> --start-at <step-name>

6. Run a pipeline, stopping after a particular step:
$ bitbake-setup build <pipeline-name> --stop-after <step-name>

Etc. How's this looking?

Alex

