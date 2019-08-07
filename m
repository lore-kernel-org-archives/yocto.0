Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4872E00D90; Wed,  7 Aug 2019 03:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E1ECE00CB9
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 03:32:02 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id r6so102240664oti.3
	for <yocto@yoctoproject.org>; Wed, 07 Aug 2019 03:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5X3DCQH39aCTmUvDiJyTJlxqzyXNeEl6l9T7ZkzwG8U=;
	b=GP/KUbR4TasS6lHqtEdhg9DmS/lW36Mk1+mMh/FL9smCxtihmuLNk86pxQXXze00tt
	zEhzNBhr54PsKODMn7RUQBGW94cMmIAIpZ8hZq2UFf69tf+RzVGwRNEcFzt5V1eQYpVt
	CjcvzmdOGxxkIy9EYXGnC1d+UJXR1GrrC2BYxv0CwtMpHSfDturh9pMJr1lhXBD9eVK/
	TE9OI3xt/nnHGRGd0Y4jn1AJCXtGrVZLpdJ80pDGqKo/YQGQr8ySok4nmHIH3K3Ho7gn
	JHV71/JiX3SZqGSH0vM4NElxkWK0WV5RwGkyfVW9mqEVHIKrwwhUM1VqSfydRMsOqX+m
	oRvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5X3DCQH39aCTmUvDiJyTJlxqzyXNeEl6l9T7ZkzwG8U=;
	b=UJEmVNqywDU4E6gVlYKMrisXoyJUAAsgRGafCdsaLgxjvb9z5ZH4r5vUtY5WliGnhV
	2o0/0TSiKt/roxhP1kzMEb9sDVxB2A3tdwlmD0CaeauO0XrS/RD6r2gcVWE7OgLQ/q6B
	RrnxsbGeM0BN/Ym8GByuvk49X+NGVqkfQ4PPkcZrbryuwv4Yfud7V9Z9n8pJ0e1VxYh2
	FYKD6fYT4cDqYm1Ajq730YCbBi42HjViTuh2tCHh0QD7DTqJH8tuHLZpFOiky2E0lIrd
	j0+aY00mJIVXH2lrXroy3Qb3MRmlgaOVmoqVEHqBZvbCzUzE/mXqCDWl7o8kNYC94ZR6
	wIkA==
X-Gm-Message-State: APjAAAVc5rZSMiCxPifrZ6K8xfgRA7lU8y/0xpdo/VQ9DmAsZtlTXgOI
	75MfKMogaoxABRWGHBF+RVHzMiQbQrP0DqJIfXuuT3cB
X-Google-Smtp-Source: APXvYqw0q++FZzg87c+WhEUzUPczrHBlUcpheYPRkrOVkdolLX3QwlMRs+oLqG3kiT/dksGgp94UCn+LXpiZ1Yr/Yec=
X-Received: by 2002:a6b:dc13:: with SMTP id s19mr8576089ioc.53.1565173921915; 
	Wed, 07 Aug 2019 03:32:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Wed, 7 Aug 2019 03:32:01 -0700 (PDT)
In-Reply-To: <24cfe663-6281-1f71-5f39-ef2b2ebee68a@intel.com>
References: <CAA=hcWQcjmVCQGbQWNjMLCg_x3g0qXEx5XKw3goY0NC7VChZug@mail.gmail.com>
	<24cfe663-6281-1f71-5f39-ef2b2ebee68a@intel.com>
From: JH <jupiter.hce@gmail.com>
Date: Wed, 7 Aug 2019 20:32:01 +1000
Message-ID: <CAA=hcWQMb4CxqkPeZ2BWAdCCwwyKcnwHvUo9WXP9itCBdvtxAg@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Replace busybox by bash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Aug 2019 10:32:04 -0000
Content-Type: text/plain; charset="UTF-8"

Good advice, thanks Ross.

On 8/7/19, Ross Burton <ross.burton@intel.com> wrote:
> On 06/08/2019 13:34, JH wrote:
>> The busybox is too simple, my application heavy based on shell
>> scripts, I have been thinking to dig out the busybox and replace it by
>> bash, has anyone remove the busybox to use bash as default shell? How
>> large size will be increased and what will be any side effect?
>
> Removing busybox is not trivial, but you can just install
> bash/coreutils/etc as required.
>
> Yes it's bigger, but you want the full tools.  No side effects.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

