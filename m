Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B867EE00DCA; Mon,  5 Mar 2018 02:35:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 716A1E00823
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 02:35:55 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id t3so14748801wmc.2
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 02:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=O9DL6cvuNBweXcYayX8NTYmnxWl4TXhnO7oX7i3KRog=;
	b=hubPvTvz/hYV/c4Y6E7Tr/cC4cN3yQModMsbjwCS5KZWOvPuBQHrGCeuPDI5i6Je6w
	Y6MKTBt2MTH1ykMXGsgaeLqULIvqf+5aoS4cJgAkmECvS3WirX15QynceVd8t0TpPofa
	LZIPrADptxLsLKUXtlFdf0fBbTYQkIBtatw5YPCDviH2DRZvpEIeRgUXPmBXu99wbMA1
	l+af6qdgJoLq5H8aK81k4uG/aOSkmKfVaBBXVNlnKcFntY7giV3DJ9ScadZ5IodGu69T
	qo1sUeP5gsSZS27fRwVJVnauihe9+azu2PMPKy21GZIH4JFba9PBDIS3WBNy/gpqwiF5
	h2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=O9DL6cvuNBweXcYayX8NTYmnxWl4TXhnO7oX7i3KRog=;
	b=TpDUkfR2GsvhcEGdqxLEJOqCUBYhciN4Miaq4Ktri24+NxaeRAabavb/EAm2oBz02w
	TIdoyOzwBBJmB6dnmmshn6Z6Hbn44dYOLwWIx/ZgbuGTu3SXn3pmCB9/KlNAf4lFFQA0
	ZhjiKS508uf3WFo2/rpU9lmcgZTtGvTLv/+iICKBYnJtAEiZaUOnZIbcnGBazsiV9sx9
	eiv09b5Lz8T9vaXY+cBmq/gYf7lnpelLN5V8dHllvnp+pQlu8AZzRtQjg4fwUyhxL9Zm
	TTdr2uR5cVJai2lWjjOguenNqybR6Up+3Eu7pGEeiTS49wKbKh7u+KNMKGgR9uLj473Y
	DIpg==
X-Gm-Message-State: AElRT7HRcDkpVxg5/6HQZtmYKPgR+mESliUT+C4/FhcVyfScuJ7SWEJB
	v7+ADpBl83HEuSRkk6jKMXuPXfS5ULedsmRakztM2w==
X-Google-Smtp-Source: AG47ELv0FiaGVNFFdDDXt1Wxh3YyISeAuJS/70vpbLHF2hqoVRpe9XzWHdHaZxxIUvOCgBjqMu5jI89DuYc4M0TqTFQ=
X-Received: by 10.28.153.133 with SMTP id b127mr7271939wme.105.1520246154378; 
	Mon, 05 Mar 2018 02:35:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.153.48 with HTTP; Mon, 5 Mar 2018 02:35:53 -0800 (PST)
In-Reply-To: <2a8d4def-e47b-09f6-327e-d97232b23034@dynamicdevices.co.uk>
References: <2a8d4def-e47b-09f6-327e-d97232b23034@dynamicdevices.co.uk>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 5 Mar 2018 10:35:53 +0000
Message-ID: <CAPyrkgw32oNUvVPsFJpvnXSsU5qOA+oZMHd91Zj0NXOqW5tOHQ@mail.gmail.com>
To: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Connecting AutoBuilder output to GitLab for meta-mono CI
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
X-List-Received-Date: Mon, 05 Mar 2018 10:35:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 5, 2018 at 9:52 AM, Alex Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> Hi all,
>
> I've been running an autobuilder locally for a while now to automate test=
ing
> of meta-mono commits.
>
> I see recently saw GitLab seems to support CI workers publishing logs and
> artifacts to the site and this seems a useful thing to me.
>
> Does anybody have any pointers on where to go look for details on how to =
set
> this up, or can offer advice to me as I set it up?
>
> Thanks,
>
> Alex
>

The logs are just the stdio/stderr output of the job so to have those
display properly you'd either need to do everything in GitLab CI or
have some sort of hack where the GitLab CI job reads the build log
from your autobuilder and writes it to stdout.

Build artifacts are a bit easier, you could define a GitLab CI job
that copies the artifacts from your current autobuilder.

You could instead move over to GitLab CI fully but I do find it a bit
limited at times - there's no high level summary across multiple
projects so you can't see how often your workers are busy, how many
builds are queued, etc. I find that ok for a small team but once
you've got more than 4 or 5 people working together you'll probably
need those stats to know how to scale your infrastructure.

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

