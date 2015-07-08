Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F5F5E00998; Wed,  8 Jul 2015 13:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BD79E0096A
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 13:08:00 -0700 (PDT)
Received: by igoe12 with SMTP id e12so9178345igo.1
	for <yocto@yoctoproject.org>; Wed, 08 Jul 2015 13:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tbkUz58VeLEnR/v9NLicaf6OXG613hjTe1Hoppdpo+Q=;
	b=nqTJazltGss7s575Q+msIYThWwMym3/6uEBlS6P8Xp4d5W4nZfv56/fwlEU+HH1jdV
	F6qr/imwHtis0bP5+XZjr7JUd4ELixktL2Ex0lKRUqShFFwKrbcozRmAvPRzTBzIBvFt
	afb8d4XQ8+v6CtmxxCdar0Qdew7M75wHdu6e6SRs7QR77j9a+pV1Dmg0thW9pS+shfqv
	VNrMgzIFWg3nAdfe25nm7axDG26jItBNZfNW3hAj4/CDsUiUyKDYqcRpiXyUU4DpEPdI
	L9OrnRprVb4zU1ouu+USdP3MV+MGZq6dN7/NSWkq/nS6RMlMBFS06EgdX+lb170t6a80
	ezaA==
X-Received: by 10.50.141.164 with SMTP id rp4mr92535960igb.2.1436386079993;
	Wed, 08 Jul 2015 13:07:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.109.196 with HTTP; Wed, 8 Jul 2015 13:07:40 -0700 (PDT)
In-Reply-To: <559D0035.6070803@dynamicdevices.co.uk>
References: <CAAPegz31c_b7hfi9YDbZ3uPz0iiDNMpT3=P0=SsZDYjCMGcOHg@mail.gmail.com>
	<1436300222-15947-1-git-send-email-rich.tollerton@ni.com>
	<559D0035.6070803@dynamicdevices.co.uk>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 8 Jul 2015 16:07:40 -0400
Message-ID: <CAAPegz2NX65g9bE6an3wg0X9qPnRGZsfgZs2r45HNvGtm9yUFw@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] mono-4.xx.inc: disable parallel make
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
X-List-Received-Date: Wed, 08 Jul 2015 20:08:04 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 8, 2015 at 6:49 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
>
> On 07/07/2015 21:17, Richard Tollerton wrote:
>> A race was observed during `make install` of mono-native under
>> PARALLEL_MAKE=-j6:
>
> Thanks Richard - patch applied
>
> Chris - I wasn't able to replicate the failure you see under Fedora F22
> with PARALLEL_MAKE="-j 6". The build works for me here.
> Can you confirm Richard's patch fixes the issue you see on your system?
>
> Thanks,
>
> Alex
>

Hi Alex.

I can confirm that it fixes the build for me here under F22 on an 8
core machine, although it takes a long time to fail.

Seems like something that should be reported upstream to mono. I
copied them on Richard's email but haven't seen any response yet.

Chris

