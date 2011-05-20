Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF7004C80334
	for <yocto@yoctoproject.org>; Fri, 20 May 2011 10:07:04 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so2497175pve.35
	for <yocto@yoctoproject.org>; Fri, 20 May 2011 08:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=isAO5ADys8eQe5N8DOy69w8kkoPNJmMdAiSXvOyLvfo=;
	b=fFPlSMnpqfp9JV5Xq757g4Lrlci5Fjgg3SQRPzdopxxP0tDyxv/BgXxK6eegMlpEDd
	Fqq0t8o7ci25zKnaVtNJ5WatbC5m/JaXz0r3/P+48WQiiu8ZscFqPjwP0KBC+bDy4Pp6
	PENxKL8lsodsamPI0unIYxIr0uVqdM/BY8Njw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=j73XkLvBhswLbnA5C3WGMd3x7SUcPsSLpnR9F/OU07Pc4dItIlRIf4ooQsFBJNYHYf
	IaVPf84mxDnO8MEVCsYqP+bPs1rfpw22YNa8pe7l+fxnZOhPPjLnlbttDPOIepGznMZq
	ZAlVCD0ad/TMvs/oHPD8oJU/AlMozJokJtRBM=
MIME-Version: 1.0
Received: by 10.68.63.99 with SMTP id f3mr6938086pbs.471.1305904024221; Fri,
	20 May 2011 08:07:04 -0700 (PDT)
Received: by 10.68.59.9 with HTTP; Fri, 20 May 2011 08:07:03 -0700 (PDT)
In-Reply-To: <20101129200549.GA25679@windriver.com>
References: <1290974426-24618-1-git-send-email-fransmeulenbroeks@gmail.com>
	<20101129200549.GA25679@windriver.com>
Date: Fri, 20 May 2011 17:07:03 +0200
Message-ID: <BANLkTi=7KeMRTkQ7hsp0jXVJNTGfDCAYqQ@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
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
X-List-Received-Date: Fri, 20 May 2011 15:07:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

On Mon, Nov 29, 2010 at 9:05 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> In message: [yocto] [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
> on 28/11/2010 Frans Meulenbroeks wrote:
>
>> This layer is a first attempt to create a layer for kirkwoord.
>
> On this topic. Is there any reason to not use linux-yocto
> for the kernel ? Whenever possible, I'd like to get everyone
> pulling in the same direction for these platforms. We have
> ...
> It also helps us review and push for platforms to be merged
> upstrea if things go into a common kernel repository.
> ...
> It would also mean that the BSP would be kept up to date with
> bug/security fixes and be considered for updating to
> ...
> at these patches in a 2.6.37 context (but obviously I don't
> have the hardware to use for boot testing).
>
These are good points, but we have experienced *lots* of (old) vendor
kernel patch dumps when I new machine is released.

Surely most patches would not be accepted upstream, or have become
obsolete (need only much forward porting work in the most ideal case).

In OpenEmbedded, the linux/ directory is wildly populated for this
practical reason.

How are we going to shove every machine from OpenEmbedded linux/ into
linux-yocto?

Or, better: who decides when it matches linux-yocto or should be
linux-something else?

It's mainly a problem originated by vendors working for years on their
port and then dumping their 2.6.32 kernel in 2.6.39 times, not blaming
anyone else here :)

Regards,
-- 
Leon

