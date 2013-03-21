Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE33E006D6
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 08:31:49 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id s43so2380968wey.7
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 08:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=JxuVIfb3DBMpg6NDrtIId5ERM9fYU8Lw2592uykrFo0=;
	b=cJ+zW8cwEhXPjPPjCUgUGhQhvLC+5E7CCQhy0B0CnaVuzKNv2SoBp3ut0hacnHJHR3
	nHBdd9rKc4x2zqndN9DiOPUrwuVq19laZqcQ98+ZLsuQXppwkjtsiVHMsCI32rLacg2n
	0hLP2twTMsAMhaFyBtRBXyHr5wWnWrUZgijrT6oXktt9NZDihVKarFz3gLVo8XdAae7l
	pMdqsnJtjZLq9dbbfUv9C4JZEYlmKz7tokpkVHaOCtX8cMj8ppEJxLHlx52eQ4QRTyGJ
	WJEk6xpMxmCv8YkR/x/5HFwnHuBG8ZX+0M7fhUVX+NmepBandHAokr7/4nZnStcJEzOc
	znWQ==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr5771206wiw.16.1363879908460; Thu,
	21 Mar 2013 08:31:48 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 21 Mar 2013 08:31:48 -0700 (PDT)
In-Reply-To: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
References: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
Date: Thu, 21 Mar 2013 11:31:48 -0400
Message-ID: <CAHUNapR+bMqr36jwEzeZk4BEqxZ4+JaPrGJ-4Uo14OHe753s2w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder migration status.
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
X-List-Received-Date: Thu, 21 Mar 2013 15:31:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have looked at the output from a couple builds (nightly-fsl-arm,
nightly-fsl-ppc, nightly-mips) and had a couple questions.

Running "poky/oe-init-build-env" will produce a
"build/conf/local.conf", but the nightly builder prefers to puts its
configurations into "build/conf/auto.conf". Obviously there's nothing
wrong with this, but I'm wondering why use auto.conf instead of
local.conf? I'm guessing there's some nugget of information in this
choice that I'm hoping to discover.

Not all builds, but these three seem to follow similar steps:
1. prepare
2. configure+build core-image-sato core-image-sato-dev
core-image-sato-sdk core-image-minimal core-image-minimal-dev
3. configure+build core-image-sato core-image-sato-dev
core-image-sato-sdk core-image-minimal core-image-minimal-dev
4. configure+build meta-toolchain-gmae
5. configure+build meta-toolchain-gmae
6. finish up
I can't help but wonder why the same builds are (apparently) done more
than once? Also, for me I think it would be better if #2 and #3 split
out each of those build targets individually. Seeing that, say,
meta-fsl-arm failed wouldn't provide me with as much information as
knowing that (for example) core-image-minimal passed, but
core-image-sato failed. With the build the way it is currently, I'd
have to dig through #2's log to see whether core-image-minimal was
okay or not.

Is the choice of build slave random? I've noticed that there seem to
be 3 different slave hosts: debian, fedora, and suse. This is great!
Although rare, sometimes the host does influence whether a build fails
or succeeds, so I'm curious to know if a build's choice of slave will
always be the same or is selected randomly. Also, I've noticed that
the version of the host software on the slaves can vary (e.g. I've
noticed a suse 11.3 and a 12.2). I'm curious to know if this is on
purpose.

Thanks.

