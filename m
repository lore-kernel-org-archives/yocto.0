Return-Path: <mhubig@imko.de>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 535C6E0070B
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 08:08:41 -0700 (PDT)
Received: by were53 with SMTP id e53so67515wer.35
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=m6IwP1zxKyVM4opgQN6p+IxHLMRCgcl5KJBkl5VaSSQ=;
	b=ZQheliU0A/nzx3rSZeoWRzPz/D2+xBfbgwhL3FAMKfFA4Xbs6UBzve7F4YdX0MNp0U
	4dn0BquKvQM1WBRV3OGh8V5g8Qfn3/E3zHlDLicO6OjYwXdUG4xLWYOtuSazMU/kwXaa
	Em4IwwpGKJ+tTyONmhWSJVWv8lUzDxO3TZs8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=m6IwP1zxKyVM4opgQN6p+IxHLMRCgcl5KJBkl5VaSSQ=;
	b=ia+UrA9lHwkx7Rwej77gq5F7jgOAFlKU1NX/Mo56aFxNtEkr+47d5zElj9Dvv8XPD9
	9ioG/5jIsFPuiVGmBUN2ORCfUC4L2t98eP79/qHrOWsIFyCRiUxvlEgxiQCcWN1FwXTl
	VmHTnBFPwiJdjYFYZQDjkP/tE6uQWEgbUkJ+nV0N1HDVaDnGZtGWfRl/jzAmew8sH1+C
	e1kV/exfF1C+xJKifMcp7m6Z14sRUHjcuLf1jF1fatxTXFPMGWjI8kzsJtXYz6zqfmsn
	LOIb4kGN4GbJ3YsmJylOglRo8CeVwksu7QzfHP1Kyr79ItPhcpPapJNcZu/ap5akrBci
	UgWg==
MIME-Version: 1.0
Received: by 10.180.106.97 with SMTP id gt1mr5397679wib.5.1340982520485; Fri,
	29 Jun 2012 08:08:40 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Fri, 29 Jun 2012 08:08:40 -0700 (PDT)
In-Reply-To: <4FEDB1DA.1040504@windriver.com>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
	<4FE9D6CB.1080800@windriver.com>
	<CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
	<4FEDB1DA.1040504@windriver.com>
Date: Fri, 29 Jun 2012 17:08:40 +0200
Message-ID: <CAGws1TtREZg6Fa2+KKcshRHP-XJz372NkYMZ2jWM5m7vxoVrfg@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkSCgj5dRycPRz/gDbrP4v6tKxa8JkIcyRzSPMjbky+8BktQZ2joDqOb8LWi9nle0f3yjKp
Subject: Re: BSP for taskit stamp9g20
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
X-List-Received-Date: Fri, 29 Jun 2012 15:08:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 29, 2012 at 3:47 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> On 12-06-29 09:34 AM, Markus Hubig wrote:
>>
>> I guess the config variables inside features_not_found.txt are the one
>> I need to include into
>> the stamp9g20.cfg, stamp9g20-non_hardware.cfg files? (Ok except the
>> ones that get enabled
>
> I wouldn't say that, was your input .config a minimal defconfig ?

Hmm yes (or no) it's the .config file that gets created with
make ARCH=3Darm stamp9g20_defconfig. I doubt this is minimal,
but that's the only reference I have.

Uhh, I found something more minimal:

linux-yocto-3.2-work/arch/arm/configs/stamp9g20_defconfig

maybe this is what I need? (just 129 lines ;-)

> You really don't need to list option in your BSPs configuration that
> are not already defined, are not hardware and are the default
> selection of the kernel already.

Hmm ok ... I'll put my BSP repo online later today and maybe you can
take a quick look if it's ok? This would be really helpfull! ;-)

> There are also the on-target scripts and techniques for streamling
> your configuration that can result in a smaller input .config that you'd
> feed to any process for streamlining a board's configuration.
>
>> by some kernel dependency stuff ... but how to figure out this?)
>>
>> Is there a better way to go? Maybe one where you don't have to have
>> magical powers? ;-)
>
> There are few things that can help here:
>
> =A0- I've just revived a script that takes a defconfig that has been
> =A0 =A0fed to the kernel auditing subsystem and breaks it apart into the
> =A0 =A0options that you really do or don't need in your BSP config

Oh I would really like to try this! This would be really helpful for me,
and I think there are a lot of people out there who have a working
kernel .config file (like I do) and are looking for an easy way to
include this into a BSP. And the most relevant information one needs
to do so are (IMHO):

1. What config options can I ignore because there are handled by yocto.
2. What config options can I ignore because there are set by dependencies.
3. What config options do I absolutely have to set.

> =A0- A lot of work on kernel configuration updating and policy has
> =A0 =A0happened in the 3.4 kernel, and will be part of yocto 1.3. As part
> =A0 =A0of that, the policy options (what you inherit), will be clear, or
> =A0 =A0discoverable by script, as will optional and hardware configuratio=
n
> =A0 =A0items.

I wish I could have this now ... looking forward to it!

> =A0- there is a kernel-features.rc file that is part of the meta branch
> =A0 =A0that will be further exposed. It lists all of the configuration
> =A0 =A0fragments, with a description and whether or not they can be
> =A0 =A0optionally included.
>
> The end goal is that a developer / BSP that wants a quick bootstrap on
> top of the existing configuration can just focus on the options that
> make their board work and initially not be concerned with those software/
> policy option .. until you get into a tuning phase on a BSP. Having
> visibility and some scripts around this is part of the implementation
> of that goal.

Thank you for this explanation!

- Markus

