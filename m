Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB884E00769
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 12:15:43 -0700 (PDT)
Received: by lboi15 with SMTP id i15so1212766lbo.35
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 12:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=o8zbYJpCeycQcDLH183azT2cEtCDnme4She47POZbl4=;
	b=E7iuOhBwD148+YawdtbxaxP0bswGiXWFTZLlFQLq4Y56YumZQeJk9clmt+P33DJqie
	L2PSV9pdcjQfTNDpBvs1Xf/KcGb7EbF36G5Owtcx3St07aNizGQ5Pyn3/22rI3DnBvQP
	0lVpDKuuSZPA1ZQgsChn2xFJkxtJ/6OvPVdoC3Yp10TajezHR2LYYBDM7qgJSUtLBIEZ
	nNWinmqeGjhOefOG5dRyG6spcLJFsEaNHI3MEqaEps28lJ5qMjaBpJAndwEpmPnc/X9a
	nITQJTPzzD6nXaaUBH85gAAlzfR10iCa2Yv6p0EsA6J0XnhtYtr0/6vsLPcih8kkg2nh
	UOWQ==
Received: by 10.112.28.226 with SMTP id e2mr9904811lbh.96.1345058142277; Wed,
	15 Aug 2012 12:15:42 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Wed, 15 Aug 2012 12:15:22 -0700 (PDT)
In-Reply-To: <502BE40A.5060303@windriver.com>
References: <2404459.dJBf5OQotX@helios> <502BE40A.5060303@windriver.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 15 Aug 2012 12:15:22 -0700
X-Google-Sender-Auth: jCEIZgnIih0LSykM3bMvG04W_N0
Message-ID: <CABcZAN=A6VFvRfPY7gc4ZLjW9FiKJtrrh1+oeacryyuAy58=rw@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org, openembedded-devel@www.linuxtogo.org,
	openembedded-core@www.linuxtogo.org
Subject: Re: RFC: OE-Core task rework
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Aug 2012 19:15:44 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 15, 2012 at 11:01 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>> if we rename tasks to package groups, and there's a question as to how
>> IMAGE_FEATURES scales - should every task be represented in there or only
>> a
>> select list? Would we be better off not trying to bring any tasks in via
>> IMAGE_FEATURES at all and mostly leave that to control post-processing
>> (e.g.
>> package-management, debug-tweaks, etc.)?
>
>
> I'd certainly prefer that images were limited to selecting software from
> task (group) recipes only, and not providing their own.  An image should be
> able to change the selection based on an "image feature" or similar
> configuration, but the underlying tasks/groups, recipes, etc should all be
> 'generic' to a given distribution configuration.

The package groups which can be added in IMAGE_FEATURES don't have to
be (and I'd argue against it anyway) defined in the image. For Mentor,
we define them in our distro configuration.

That said, what we use them for is basically the same thing the tasks
in oe-core/meta-oe already provide, so we're looking to transition
away from that method to what upstream is using (tasks, or whatever we
end up using at the end of this discussion).
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

