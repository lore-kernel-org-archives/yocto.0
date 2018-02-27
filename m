Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E04E00DE0; Tue, 27 Feb 2018 09:47:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C71E00DAE
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 09:47:35 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id q8so13549725uae.4
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 09:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HBOvYwSGQQL/WNVoYc5YOUlxiKbMFlp0xYFLN3kHYpM=;
	b=Xckpdm3LR/gHsSEPXpCn1ac6ii5pLQvSl0jS/WK0qxpkd/ZMqsv/AuegvFhEEmjsjh
	g6ki9h0ADIzcbxvGRhR0QCbiGi1zcxNLPyZab7YZDkIQhOOhdG36SjPe6MmzRv8YHqVH
	CWSaCRL7aXjtooCpDVZkIne3ZkC+DQbQrFqIkNN5j8RKNlA1pscp0I9dwp4aZAhLbNKo
	BHlUbKZbJ1ZdfSlGBmFrPao2OFkBjuwoQxAwo2J9w5gR4LqPgb8OCaXMFK6t18nE4/3h
	V5JCuzsWcaUSAu29MGPZRJvbA3Rm68g13YLdm2sh3pbWT18SxNLYRB2RWfawSZFjcpoh
	BoWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HBOvYwSGQQL/WNVoYc5YOUlxiKbMFlp0xYFLN3kHYpM=;
	b=h4VsfA8kUltLQbgeWH026QPGTKTBvyrIpxVA7Blps9+/GHyBQB4gILkUjXj1yxA/j5
	BkxFvC+OVKytYlWFcIncGUr4P5Dnqu/gL8MgxJMplH0Q0+RVVsAFSxD8bld9Ca+agR9T
	px2AeirbAWdsPTbz2ZLjvzVemAMxCgdvP4uYDlBwb0IY+0Tey64EzGI/mmWvLRs8AcFw
	1J2VrbQzEbVLD5VIlaWhB3PkgS7n7ClWpJwlF8qFOtEFKelzmHS8d7+QZGiosPwfz98A
	8KthnJ1iyE8CG/ywbeRUdjjT84I2kGxZjcgZ2HPoWyRx3IM5JG3ng/NhBtNbMd39luuO
	e5Vw==
X-Gm-Message-State: APf1xPCs+ncvpC0fJvcKfH2DIWFy0lNfWExgI0Num+qgdVqhvDiD/zvj
	oNOSoKkFaiAdST9bYnyXIxH8HHKdhQ0SccwyAbk0HQ==
X-Google-Smtp-Source: AG47ELs6OblUtYlg7xfuyWp54Umo21xIbmqeq3rh6EyPc15EbfrW0CP08o2Oe4dnYwkJ1gCDLDOSyxtw8vRHZEVYONg=
X-Received: by 10.176.95.81 with SMTP id z17mr11573778uah.29.1519753654297;
	Tue, 27 Feb 2018 09:47:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.50.36 with HTTP; Tue, 27 Feb 2018 09:47:33 -0800 (PST)
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 27 Feb 2018 18:47:33 +0100
Message-ID: <CAC+thW2jxwgiamTOXRaYDnwoy39m4GkYY7Jp+k9pK40z+cbJBA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: crops/poky workflow and git
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
X-List-Received-Date: Tue, 27 Feb 2018 17:47:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hi!

Anyone here regularly doing yocto builds from crops/poky [1] containers?
If I got it right, the idea behind using containers derived from
crops/poky image for builds is to keep the entire development workflow
outside the container and use the container for build related commands
only (ideally setting up the env and running bitbake).

Then, a very annoying issue I face in trying to enforce this idea as
my regular workflow is that interacting with git repositories created
while the build runs is becoming almost impossible from outside the
container, where regular git work is expected to be more conveniently
done.

The point is that repos get created when bitbake fetches sources from
within the container and git itself hardcodes absolute paths in some
of its control files. What I see is while running git from within the
repo but outside the contained scope, is git itself complaining with
messages like this:

error: object directory /workdir/blah/blah/blah does not exist; check
.git/objects/info/alternates. fatal: bad object HEAD docker

I'm using crops/poky as suggested in [1] hence bind mounting a volume
with the entire project rootdir under /workdir within the container.

Any suggestion how to make this more friendly, other than moving the
entire git workflow inside the same or another container that bind
mounts the volume at the same location? I'm curious to know if/how
people try to leverage the isolation of containers and how they do
mitigate sharp edges I found in migrating builds to them.

[1] https://github.com/crops/poky-container

