Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D164E0090A; Wed, 28 Mar 2018 18:24:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8D51E007F2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 18:24:24 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id p53so3869448wrc.10
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 18:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Js56i8Hrtakpj4dMdT7LXOejiowTA5SXIgAYHJ82MZU=;
	b=BGfM9FWZjJOGDdClHVuiRZHE1tYVXW9sbfHNamJxe6lLxK+ol+uz+0DTm81HlvI0x8
	n1AAEV3h+SyC0cyxdrXJWPjEs3Zl2JHGDaX6qGjgGjfj0+sHLQcFQWLdWLlw2df4uWao
	0YyyuAXfY1bOyLRobOnLkJHZwCaGc1nGe+MVAHe1LGeJsDZ2ceNfvXpT/WWCD7AWLqy3
	FskgR/b3hIeQrega5k+ZVwgLWk2heboHCUbIRX2Rso956RMrNiLudk3OrwGM4iWO4Piz
	/P6BwD4MPyZc15ZHn6/iIPl32tAfldKTs28xRqlQpwu0cj7n4GiXBu+rK51vxH8LyRiJ
	3IMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Js56i8Hrtakpj4dMdT7LXOejiowTA5SXIgAYHJ82MZU=;
	b=NfPBcYzyVjaysw3Vh1oBdaOWtqOxodF89Yv59w4fotbwcc+dCrWqJwZwfwV2tQ6sIo
	IfDAUSs1ljS+1tkcyC6fF5EEhyTBzNTDPeaFELyzm9U4LEBJFnxP7AA36cPzXqiQ2Q2H
	66nICsUhPjW/wvjZqmlfLLpsF5Vqbf9qYFcZNgyH6tNJHmIYBf0pJk4ZAinEFstKbQRD
	YpDldkqgG8VUEgC8/EQtXCZRYrnYkBFX8j4b3FqAxnwUyEPwKjz/FgkI+TMgxRwEOn5D
	AtAovcptPOw9Ct3mMuyo9Pdo2lRmW8aB23DAK56/IVMEckwNtV/w19EfGsgX6/kkXD1o
	ewpw==
X-Gm-Message-State: AElRT7E60CXF9cva8yVc9O2y9vmOuI4janFvWS/tHwtjwP0INhavd6+B
	K9b39bbnhwwyopALQmihZVBTHlpoptF1VMv0/YE=
X-Google-Smtp-Source: AIpwx4/4QxNSihiauprln2Duzuqpu0O194weuuLZQoxHfWaXlKqvlaUMvomzosOBRVQT9K8FY9xXH/j4fQT3RWhK7JQ=
X-Received: by 10.223.175.201 with SMTP id y9mr4627185wrd.107.1522286663413;
	Wed, 28 Mar 2018 18:24:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Wed, 28 Mar 2018 18:24:22 -0700 (PDT)
In-Reply-To: <12dbba60-2346-0020-64c8-db2dac948684@nedap.com>
References: <12dbba60-2346-0020-64c8-db2dac948684@nedap.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 28 Mar 2018 18:24:22 -0700
Message-ID: <CAJ86T=WE6khW6vfL2_z3HdXjB-pxSSaTAb=Fz-NSczhTGxV=HQ@mail.gmail.com>
To: Ryan Meulenkamp <Ryan.Meulenkamp@nedap.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: CPU Load
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
X-List-Received-Date: Thu, 29 Mar 2018 01:24:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 27, 2018 at 4:44 AM, Ryan Meulenkamp
<Ryan.Meulenkamp@nedap.com> wrote:
> Hi y'all,
>
> I have some questions about CPU load and performance, but first some
> background information.
>
> We have small embedded system running an openembedded classic (Angstr=C3=
=B6m)
> distro. Now to get ourselves up-to-date we started working on a new
> iteration of the OS based on openembedded core and Yocto. It is nearly
> finished now, if it weren't for one problem: The CPU load (/proc/loadavg)=
 of
> the core/yocto based OS is more than double that of the classic/Angstr=C3=
=B6m OS.
>
> So the way I see it this could be caused by a number of factors:
>
>  - loadavg's calculation changed
>  - certain newer versions of applications run heavier
>  - The kernel itself is heavier (we upgraded from 2.6.35.14+ to 4.9.28+)
>   - Possibly caused by some configs
>  - ...
>
> My question: is there something that changed since OE-classic that you kn=
ow
> could be the cause of this? If not, how would I go about finding the caus=
e?
> I don't think the top command is sufficient for this, because it's precis=
ion
> is such that many processes' CPU usage just become 0%.

You don't say what the CPU doubled from or too. 1% to 2%, or 50% to
100% ? Unless the absolute increase is very small, you can probably
ignore the processes which top reports as 0%.

Does the new build have any significant processes running which
weren't there in the old build? Or is it the same basic set of apps
running in each?

> Also, both top and
> htop cause huge cpu loads themselves.
>
> Any tips and tricks would be welcome!
>
> Thanks in advance!
>
> Ryan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

