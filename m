Return-Path: <b.hutchman@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C2CE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:48:12 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaaa14 with SMTP id a14so339913eaa.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=uXbJIBni8J1Fk2RdbtHDnjxO9iYFrbUBxZW7SoTWUOk=;
	b=Xnjfw9vfXc+8ANVGTESsC4OUQhePxE1w17ZWnG4FkXUT8/7x2A3UQdxwniYVQ6illp
	lHr69QHCNUbmg/fA7RViXDtx5x2xuJVN7AHvULIbA2DeZrZKKh9wmvHz3YkNbKG8CA/b
	JzjmbaphhZLd93NTNo6+EeNMor6wTv4kg2w18=
MIME-Version: 1.0
Received: by 10.204.136.215 with SMTP id s23mr1473476bkt.31.1326386891444;
	Thu, 12 Jan 2012 08:48:11 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 12 Jan 2012 08:48:11 -0800 (PST)
In-Reply-To: <4F0F093B.7000408@windriver.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
	<4F0F03AB.1010808@windriver.com>
	<CAFZh4h8Z3GW8mrsgpHVQCQgHpg1CpmwmP=xMXcitA=h4A1L52A@mail.gmail.com>
	<4F0F093B.7000408@windriver.com>
Date: Thu, 12 Jan 2012 11:48:11 -0500
Message-ID: <CAFZh4h-DRM-4zrBdiBwPH7T0bo+Ba5NGgPi5ppek33XmWtfJsw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Thu, 12 Jan 2012 16:48:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 12, 2012 at 11:24 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> I prefer to work this way, since managing patches in a source git
> repository is much easier for me. If you only have a few patches,
> then they can just be pushed on top and added to the SRC_URI, but
> you'd be doing more development under tmp/work/ in that case .. and
> I'm paranoid about losing things :)

I know it probably isn't the best way (did it mostly because I was in
a hurry and never took the time to think about the "right" way to do
it) but I've made changes to the kernel & u-boot before in the tmp
directories (with Angstrom and Arago) and build images manually (make
uImage etc.) and that was OK for quick/dirty things but I've gotten
burned before by forgetting my changes and doing a bitbake build and
wiping out my changes.   I like the method of pointing yocto to local
git repos and think that is better for long term development as it
will contain history and would be easy to determine what changed etc.
I'd like to do something similar with u-boot and thought you guys had
worked out a defacto standard way but in looking through all the docs
it doesn't look that way.

Regards,

Brian

