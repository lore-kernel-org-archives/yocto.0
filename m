Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D389AE00D20; Fri,  5 Apr 2019 14:54:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8C3E00872
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 14:54:33 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id t28so9182854qte.6
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 14:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EeDVQbUJ5Y+0dzFrWL4y101u79r2ikEbWiXyPNPMCnI=;
	b=XA8Lv0H4W3zSoHFHezeSGO5vmoe/9feJgeVWIsLSTS9Eb25rjbrDwmKnyBFFqPgkfh
	V9XJLwbTSMbaUNHvJl3S3t4TjWUR/g9Gfj5u/ICNcuo3apoqSLQ8jk9HkEJ+1Qf0QQmb
	5P25YAUhpJgpTvM9QHozyGywncqDtDpdeE47fkODGawdQ24uu6pnVuwTk4orZ2ZwKLbg
	Inu42IcxsNcM+T+o0arF38SNbcL2yKFDTyEa4AzOjkgtpG8LvP5KLmpcY+VvXpDUSqxp
	XvGzxzQOlVP8acA69zVEtrOlm9DhcsvOPmd3zxEiBp7GNfT2+QZVQGxzSncK8o4niXNO
	fPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EeDVQbUJ5Y+0dzFrWL4y101u79r2ikEbWiXyPNPMCnI=;
	b=Ln3TK51hgLZHd7STxG/etlmoxcZG5xKYl0FnoGHuoJIIFxObXT8aCYZzuBQvVcfrgF
	oFwMxWPyQ8dQTRbDklE/fekV1DenIxMzVkUr8utszZvJ4fx5Kfs7uND5+YHLDMw7HOW7
	7UnWTzk6x+Q/Lpy4eG01PWrzmX8xnjmuNPQylk0EqT/aCBhxpn8LVIS/tykjiqe5rdiD
	bHYGeKvYKxV8ZAdcyPJJRq7LAvQdQQWLdt8B3Ia0/aUdgsD2thsbwuLgy9WtSBBq+Vcd
	SWYSL6byRL4BRUSKsLnsxJ54F/zXpV9mXrjnCAiLWr0UD4PSjvqDZ3VdwGrLAfPDz8O/
	bReg==
X-Gm-Message-State: APjAAAVHjIGWRf6ua9ONCRZh5x1O8QF/51FUoCYBQSX25JeF4JBh4/N4
	51ZwPHVkmfQhuGsc5wmvXKlyRwQffKXIVsW7e/4=
X-Google-Smtp-Source: APXvYqzHcknPV9zwgT8gL/Z9QF7u0MR0Z/QIvAN7BTv11ZPclnezBeRIwsjxvsMwH28dVqNuHhJkKpH/DUbL3NLDza0=
X-Received: by 2002:a0c:d1a7:: with SMTP id e36mr12626819qvh.127.1554501272443;
	Fri, 05 Apr 2019 14:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <cfd56541-43c4-5128-3d41-cddc356a3cb8@gmail.com>
In-Reply-To: <cfd56541-43c4-5128-3d41-cddc356a3cb8@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Apr 2019 14:54:06 -0700
Message-ID: <CAMKF1sqftJeFBGrCyxdQQfNjGA3P16Uu2t+=W-gz-VJK4zUB5w@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Worries kernels supported
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
X-List-Received-Date: Fri, 05 Apr 2019 21:54:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 4, 2019 at 2:29 PM akuster808 <akuster808@gmail.com> wrote:
>
> Hello,
>
> I noticed there are 3 kernels in Warrior. 4.18, 4.19 an 5.0. Do we
> really need 4.18?
> I see its the default version for poky-tiny. 4.18 is EOL but maintained
> by Windriver.

I would prefer it to be 4.19 since thats at least LTS

>
> regards,
> Armin
>
>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

