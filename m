Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBB2E64AA9
	for <webhook@archiver.kernel.org>; Tue,  3 Dec 2024 13:45:44 +0000 (UTC)
Received: from amphora2.sui-inter.net (amphora2.sui-inter.net [80.74.147.34])
 by mx.groups.io with SMTP id smtpd.web10.19327.1733232944877471948
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2024 05:35:45 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=none, err=permanent DNS error (domain: hqv.ch, ip: 80.74.147.34, mailfrom: lw@hqv.ch)
Received: from [10.20.1.252] (localhost [127.0.0.1]) by amphora2.sui-inter.net (Postfix) with ESMTPSA id 791CE9681309;
	Tue,  3 Dec 2024 14:35:42 +0100 (CET)
Authentication-Results: amphora.sui-inter.net;
        spf=pass (sender IP is 85.195.220.82) smtp.mailfrom=lw@hqv.ch smtp.helo=[10.20.1.252]
Received-SPF: pass (amphora.sui-inter.net: connection is authenticated)
Message-ID: <a359f806-ab47-4902-b22d-86af71d5f2db@hqv.ch>
Date: Tue, 3 Dec 2024 14:35:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-status] Rust on MIPS for Yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org,
 richard.purdie@linuxfoundation.org
Cc: Randy MacLeod <randy.macleod@windriver.com>, Khem Raj <raj.khem@gmail.com>
References: <8757f1f3-d680-49b1-907b-9b96c6a482be@hqv.ch>
 <ae9140093ed616292002522752109636a9ad0be9.camel@linuxfoundation.org>
 <CANNYZj-oaGjqX=iQHmbUG3rzW+NzjgsqbN+G__aOZO3dKYVmLA@mail.gmail.com>
From: "Lukas Woodtli" <lw@hqv.ch>
In-Reply-To: <CANNYZj-oaGjqX=iQHmbUG3rzW+NzjgsqbN+G__aOZO3dKYVmLA@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 13:45:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64391

Hi Ricard, Hi Alex

Yes I know that MIPS is on "3rd tier" in the Rust compiler. I just 
started investigating if it would be feasible to bring it back to "2nd 
tier" or at least just ensure that it works well.

You are right. It makes more sense to invest in upstream Rust first and 
then to try to bring it back to Yocto.

And I'm not faulting the community for not supporting it. I understand 
the decisions made.

Lukas



On 27.11.24 12:13, Alexander Kanavin wrote:
> On Wed, 27 Nov 2024 at 11:46, Richard Purdie via
> lists.yoctoproject.org
> <richard.purdie=linuxfoundation.org@lists.yoctoproject.org> wrote:
>
>> To explain a bit about the challenges here, rust is now a "3rd tier"
>> platform in rust itself, so the issue goes beyond Yocto Project. At
>> that level they'll take patches to fix it but they don't test it. That
>> will make it hard for us to support if the upstream is not doing
>> testing themselves, which is why we made the decision to stop testing
>> ourselves.
> This is the link where the tiers are set:
> https://doc.rust-lang.org/nightly/rustc/platform-support.html
>
> I'd say if you can't convince rust upstream to move things up from the
> third tier, the only reasonable way out is that you do your own
> private testing after the fact (e.g. after oe-core master gets rust
> updates which may regress on mips). It's standard practice in
> distributions, e.g. https://fedoraproject.org/wiki/Architectures
>
> MIPS is dying out in general, you can't fault the community for not
> having any interest in it. When we volunteer, we want to do it for
> things that have a future.
>
> Alex

