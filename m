Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDC0CE00C1C; Sun, 18 Dec 2016 06:46:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 711D1E00B71
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 06:46:21 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id w33so126952260qtc.3
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 06:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tVhHW+6F3QOdZ/8bm50/zMxdhK8U1mqLsXbaFemOn/s=;
	b=dJN3lgQUYqHtozoCIwv2h4P0WRHIlR8/VQqnXRq9DGaViFSbNBw7umZe2uBVHkKPxH
	YYwnTi5i/nypwOtpSUKXNwGGNfI9XvW9SVU9FRFoTVu66hjOfpD8hQGUkfz1P9+JZxFY
	wlUjfimOzmglbpy6TR8KkOBrXZksrcsgGLbkczYy46clCENNu7hbjjO8GektjkwV1eBX
	GJtsYsjcJ9px4RCExXqqFrvM6YZLZ+2pG61lYziHgrWZlBtYp2be5THSJMx/zDDnq1GV
	ePGqG13mzORZM3lziRRjqrocgPDzuWujSRpBP+wzsjMaq8E27X4ZPZD5m5M7uli4J1op
	D6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tVhHW+6F3QOdZ/8bm50/zMxdhK8U1mqLsXbaFemOn/s=;
	b=G7USWE5z8yJVs7R9Mg3wc1H/6iNzv2uQ7M+TdwuguQGztBPA2InFV0H9el1KecQgux
	VQKur3G4GdcjPDJls7U482/Jx+Gg3Q1KSyw7QTDYb9obywJ9fsK6OkCe/PzrXorGCuWF
	8wKImGXtKlAzTtb7KcDLk5gUkUFpxYGRtzi28Rmbb37qgpiWojjKgLv+LpRM6b0AuqNi
	it0tAhvwknr7ZV8TLq2Sk9rD1wM5f6id057HV6Apw9A5NM4ADfAZy7U2WJ7XhAedj7S/
	O70GTYDb9PkNhWr2vDdTslfIzoIof0M4HYEYpmDHQh4ctA90nh19ixV6KUxb8fraVZtR
	w3EQ==
X-Gm-Message-State: AIkVDXKF86E1KJ/vHBxEiOjLhWta+B9KnhjGsbmV7+NFc2/VyQz3KH7knMJyzASi3VqyTdl1dIPpO6ihubbq4g==
X-Received: by 10.237.36.12 with SMTP id r12mr11643819qtc.97.1482072380336;
	Sun, 18 Dec 2016 06:46:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Sun, 18 Dec 2016 06:46:19 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
Date: Sun, 18 Dec 2016 15:46:19 +0100
Message-ID: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: setting up autobuilder on local machine
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
X-List-Received-Date: Sun, 18 Dec 2016 14:46:25 -0000
Content-Type: text/plain; charset=UTF-8

Hi.

I have been looking in to the possibility to utilize yocto autobuilder
for one of my own projects.

But I am having some problems setting this up and hopefully someone
here can provide some pointers.

I did the "quickstart part":

git clone git://git.yoctoproject.org/yocto-autobuilder
cd yocto-autobuilder
. ./yocto-autobuilder-setup
yocto-start-autobuilder both

Above succeeds without any issues. But now what? :)

I went to https://localhost:8010. I tried to login using the
information that is in the .htpasswd file but that did not work. Where
are the credentials to login setup?

I also made an attempt to remove all un-wanted buildsets and now
buildset-config contains (all other directories are removed)

nightly-mender-rpi.conf  yoctoAB.conf

Above is parsed correctly on start-up but build is never triggered. I
probably removed to much :). Looking in to nigthly.conf it seem that
is the one that trigger all other nightly builds?

My fork can be found at [1].

[1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi

Best Regards
Mirza

