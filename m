Return-Path: <persaur@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FA8510F9309
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 22:59:50 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.820.1774997986102347958
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 15:59:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=ARjaVXHi;
 spf=pass (domain: gmail.com, ip: 209.85.210.42, mailfrom: persaur@gmail.com)
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7d75371d873so5942399a34.3
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 15:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774997985; x=1775602785; darn=lists.yoctoproject.org;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jONGXve2O0GWwTQfE9XNWTQ8rlcFCtkRNfNC2MW9gnM=;
        b=ARjaVXHiem2B0qdOBAndnRQh2ogI7QkYbtS4yhMVVzuJW5krAAurutDIRchY0ehyqN
         aYpltXAy94bOrPtSXIMLtMcWHlB39EeYFRh3lYlRnjxQd/Tjqf8DWj2Serx6PnjCJPrZ
         HZmVf57000F/ygztLGYsv7VP5LywE1BLW0dWK1qrI/dv+kMMhKnBvtU7J2qIdH1sEauU
         YRV/GGxV4O3EOj2wC2DgpX3z+Kn0F0ZsCJyh7LXHN8Ns7iHQ2L5EzdI+LJqlRZZPh1Ze
         7DdA3uceV2aEzyM4/49rH7VuM05OggCGcRn3410slKKBm4EueE42OEcd8cgHZka/L2CR
         +Y5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774997985; x=1775602785;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jONGXve2O0GWwTQfE9XNWTQ8rlcFCtkRNfNC2MW9gnM=;
        b=QEy2ccAY5qByaLFA768j8CSnD/qlUQHuVJLBwmgsgBJmt8ZCapt8GZcqMqEggXQX4y
         Yrr70OdUVkVcHA1KR/PQ+W8n0bsslhqv9JUNbY0H8l8BB1Ih+AWRrCla8ZrPBZvpzt5O
         7u0IxxH90XnIRkbE8aFhCCNPfVOp9vuXmGUvIZMLreSX9GSx7mNAfH/X+JNto0iKcHxC
         znR9HyJYdOrN9fdOzroT5ZEvPp6jlldn0C4nE8H4fce720k6ihlDtiXMKevzTT0A524U
         2nL1WeG6zGc/XlOL4KuEzZ9OGL85gSJuxo+miD+F6b2B2MIj5pGoSMn8Du2G+/Gay/kn
         XtoA==
X-Forwarded-Encrypted: i=1; AJvYcCVVQ2geYOiq1sciRtNS/vxqUKybDVUQDFBDL7S9/LaxIcSSVm2b8j/4C23q3RcAinvtkQ3/+g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx06FmJhQpcy+QjuxFb7p+P9EbZlsBVQdIjl93kIjqiQrNWjx2J
	eCLAu+84caQ56ynktqRExVlRpeCvyfz6SusGzRaypg36/VVVk5ZV7m5U
X-Gm-Gg: ATEYQzyzcU7/LDMkwuqSEnx0HdaK9kmOQAV5MPVxiOueFVshucqbwYMRpqPXmes4VhT
	WSTZ+JU+TnMLkeOtuC7BtqZ1fzQpSFo4GBAV/NeR2Jyd8AcU2x20ey1/Mn24cN2hkB742dysn0/
	0rzMB8IREDFOCD4/mYvIl0Rl42/5/wdSBTlrxUuhkslnIobVP1bd1BLYbkAujmeJ3J0J/1fItuG
	1cpqg2V7xZl+TuDzO1ffuN4Mh8AaTHn5Oy8I0gjzppn2mgNEwzUvQwyUPYhi3RtNb9ML3mrrcC9
	IMhvzCkCR47ItD8ySVvwxDbHj5a+5EHnrO8mo/d49Zdj1nAlmHkbrvGI+LYXGmv+MsfmwfOwfI9
	5Z12cNldVB9OKqkcWVmjoOEJOUxDXSHJ7m4WC5QumuPnGKJSLL6+3vxE2f3wm+BIWSNbmQwxFqv
	OfhAXipAnhx8t2vvCOBVsw16QORLHDWTyCJkIPgV5eZ09XxdZ51G+9/IR7gLJ5cy6SiOYEvpwyu
	A==
X-Received: by 2002:a05:6830:83bb:b0:7d7:57c4:367b with SMTP id 46e09a7af769-7db993bf247mr936762a34.28.1774997985197;
        Tue, 31 Mar 2026 15:59:45 -0700 (PDT)
Received: from smtpclient.apple (216-131-76-237.ord.as62651.net. [216.131.76.237])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7da0a82760esm9016713a34.23.2026.03.31.15.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 15:59:44 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
From: Rich Persaud <persaur@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [Openembedded-architecture] Yocto Project Release Tagging Changes
Date: Tue, 31 Mar 2026 18:59:33 -0400
Message-Id: <63A05D94-F40F-4CA2-BBBA-E0BB18E1DA5A@gmail.com>
References: <39e36ec0a761e6ecf1de0b336e3fe045f898e283.camel@linuxfoundation.org>
Cc: peter.kjellerstedt@axis.com, mhalstead@linuxfoundation.org,
 openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Chee Yang Lee <chee.yang.lee@intel.com>
In-Reply-To: <39e36ec0a761e6ecf1de0b336e3fe045f898e283.camel@linuxfoundation.org>
To: richard.purdie@linuxfoundation.org
X-Mailer: iPad Mail (23E246)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 22:59:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66376

On Mar 29, 2026, at 08:05, Richard Purdie via lists.openembedded.org=20
>>> Branch-Specific Tags: Tags that include the branch name (e.g.,
>>> kirkstone-4.0.34) that duplicate the official yocto-* tags will be
>>> removed from all repositories.
>>=20
>> NO! ABSOLUTELY NOT! Removing official release tags is a way, way
>> worse  idea than, e.g., removing the master branch when starting to
>> use main.
>=20
> We have too much legacy around in general and we're effectively
> drowning in it. If you already have checkouts the tags will remain,
> this will just remove them from the repos and give people a good hint
> which ones to use going forward. Only duplicate and hence confusing
> tags will be removed where a given commit is referenced by multiple
> tags. I think we want clear repos rather than trying to keep
> archaeology at this point.
>=20
> If we did switch from master to main, we would need to remove the older
> one otherwise people would get confused.

Since global deletion is physically impossible from decentralized git, upstr=
eam-only history deletion could _increase_ conflict and confusion in the glo=
bal historical record. This has been one motivation for immutable (e.g. bloc=
kchain) supply chain records.

If decentralized git history is append-only, ambiguous history could be addr=
essed by appending docs to guide developers who are reviewing global history=
, where confusion and discrepancy may arise from historical quirk, data loss=
, adversary or error.

Rich=

