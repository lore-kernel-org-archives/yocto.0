Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 503DBE00A54; Sat, 24 Nov 2018 06:40:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9563CE00A6B
	for <yocto@yoctoproject.org>; Sat, 24 Nov 2018 06:40:22 -0800 (PST)
Received: by mail-pg1-f196.google.com with SMTP id t13so4177926pgr.11
	for <yocto@yoctoproject.org>; Sat, 24 Nov 2018 06:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=T6xsxMgBMsdtTZnlBRer4rPWXaXpCVEtgAstuTroOP0=;
	b=CzeTlW7TF/ZvT6gICJmx6nzQlvme1u4WnSGU7r+0iXux88j8UcLF9vc3Euhfj9PkCw
	iAwFxRArNPlBTdqxijrSQ+HJZsnbmIdJHSD6DCQ3SCDQsKnmgTXGyFQ+K6S4YL2AQonu
	5DP9QnFfa7rHFZbsK3l1uJWMKeNUOAkIHOeGYEtv/FJStOWVNlpJ5LWIyTH6K0ZjfAlC
	k/asP7cB09LM71uAD5HhvFU8XX6BKJ0dzdrsVVnA9/xUYD+rizuPx6V1rDOXDWTNwo4v
	uR4BdwAiidu92pNkGQYYq6cZBgdeDsnJvoktDa5afE+hbSPiTTVUJqgnQxbdkzgiG6Uw
	vfzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=T6xsxMgBMsdtTZnlBRer4rPWXaXpCVEtgAstuTroOP0=;
	b=apSvXWBEE/Ozuv87LepmKquiVCSBxWETNFHJ5u84LniycTxWm6px5sc9ilhEMDF5cw
	zsz/IEqoKwAK0cKPazv5AOq1fzkSqAR5zCjrR8s5W1dYzoFF7MZ1CZ9hpwZeAkhXSLVA
	OTCVrBSB2G/fl3beCKx7zE++re/yE4y5IFg0BEW0jb8BYITUg5yAc2rg80TVTjOXy7sP
	JkZsK0Gwh99dJiq9Yst+UD7sE3+ciuTWvkMY3WR9qNS4dVzGSzUG6KiHK5Z+UUP47ijk
	TaxM3pDkKs7RLk3AALx2h3H0LLOaKjeIT6BRp1buEVmlF/QiHc893Sq/oIPBMqmei4tN
	cbNg==
X-Gm-Message-State: AA+aEWYTOw3C/xjKno5mSBD87mVtqJPi2koscc0OFwHv0AYa4Fi19Pks
	QvzhmIOZJzC++pGupmdjmGOG8w==
X-Google-Smtp-Source: AFSGD/UgSrs+Ul/0KEZNId5ZAyI3bETOY59eLFqUyXQ9gYlyS8DZGsKMStdMJcqNKU/EzuVkn5D0uQ==
X-Received: by 2002:a63:160d:: with SMTP id w13mr18475434pgl.43.1543070422151; 
	Sat, 24 Nov 2018 06:40:22 -0800 (PST)
Received: from [192.168.0.33] (97-121-174-158.clsp.qwest.net. [97.121.174.158])
	by smtp.gmail.com with ESMTPSA id
	u78sm86643834pfi.2.2018.11.24.06.40.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Nov 2018 06:40:20 -0800 (PST)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <b96afa3704ab3844fb69bfd7218fc381c368403c.camel@linuxfoundation.org>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <630ef788-ccac-7ff5-edbb-6695ed621276@mvista.com>
Date: Sat, 24 Nov 2018 07:40:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <b96afa3704ab3844fb69bfd7218fc381c368403c.camel@linuxfoundation.org>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: Re: Autobuilder changes
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
X-List-Received-Date: Sat, 24 Nov 2018 14:40:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 11/23/18 10:02 AM, Richard Purdie wrote:
> I've take this quiet period as an opportunity to make some significant
> autobuilder changes:
>
> The targets have all been renamed and split up. "nightly-arm" became=20
> "qemuarm" and "beaglebone". The "nightly-" prefixes were dropped.
>
> The nightly target was dropped and replaced by "a-quick" and "a-full".
> The difference are a number of targets which don't often find problems.=

> We're also ramping down on the amount of testing qemumips-lsb/qemuppc-
> lsb get for example as they're more minor architectures as things
> stand. The "a-" prefix is for sorting in the UI and to separate them
> out from the mass of other builds.
>
> There are now selftest targets per "distro" which can replace the
> testing that Intel QA have been doing. This is only done for "a-full"
> and the selftest on a distro at random is done by "a-quick".
>
> Buildhistory is only being generated for the qemu* targets.
>
> The "template" used for testing qemu or "real-hardware" targets was
> standardised as there were weird differences for now good reason.
>
> The structure of "non-release" builds on=20
> https://autobuilder.yocto.io/pub/ was cleaned up and now appears under
> a single date+number under the non-release directory which was how it
> was meant to work. All the other spurious output that was there has
> been cleaned up.
>
> XML test results are now being published for all builds, e.g.:
> https://autobuilder.yocto.io/pub/non-release/20181122-11/qemuarm64/
>
> Ptest was added to "a-full" builds for arm and x86 although the arm
> builds currently time out. The plan will be to enable arm when we have
> an arm build server with KVM support in our rack (next week?). ptest
> execution for x86 takes around 3 hours and some sample result output
> is:
>
> https://autobuilder.yocto.io/pub/non-release/20181122-11/qemux86-64-pte=
st/
>
> "meta-oe" and "meta-virt" test targets were added for experimentation,
> testing meta-openembedded and meta-virtualization respectively. These
> are work in progress currently just doing a "world -k" build for
> qemux86-64 which fails (they take around 2.5 hours).
>
> We now run "a-quick" on master at 1am every day which will make
What Time zone for 1am?
> buildhistory more up to date and useful for the master branch and give
> us better comparison data for -next and mut.
>
> wine is installed onto the ubuntu1804 workers and the mingw testing was=

> split into a meta-mingw target, now with 32 and 64 bit build tests and
> 64 bit runtime tests. With master-next of meta-mingw this appears to
> run the test. Huge kudos to Joshua Watt for putting that testing
> together. If we install more onto the workers we could probably test 32=

> bit as well, I'm torn on that right now as its a lot more dependencies
> on the workers.
>
> Building older releases is now broken until I sort out the
> corresponding helper changes for those branches but one thing at a
> time!

Does that include Thud ? I expect sumo and below to be problems.

Do the changes need to roll from newest to oldest=C2=A0 or are they
independent? I was hoping to get Sumo tested using the original QA
process to buy us time to get the automation working on it. Does this
changes that ?

- armin

>
> If anyone would like to help with xml results file analysis tooling,
> that is where we need work next to be able to summarise the ptest
> results and do results comparison. I know Ee Peng has some work in this=

> area which I will be looking at next.
>
> Cheers,
>
> Richard
>
>
>



