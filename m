Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0005BE00DA4; Wed, 31 Jan 2018 04:31:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CF3DE00D91
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 04:31:22 -0800 (PST)
Received: by mail-qt0-f172.google.com with SMTP id x27so21519345qtm.12
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 04:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nr8XOXa+obp4a+yywS7gh46/r04+/9I359PUiIBJW9M=;
	b=cIeL2CGucm8jGoeDwKMML0HuzyzLY2nTGbxkTbvN7vU+6I6jQk6K2pulETgYwzOc8u
	lUoOD2R49+L32z1Q12t3O+pSmfb/qklCT366p+j1L5ILZc6JSoOYXl8ga2eXnOyYY3LN
	sHH394+Wa60/RzU2OSPQpwpHBTjqJIOOfk9WKGJiT3EiHgawVZBs85VZsjyN/a5pnUQR
	xQsHqVqZA6howzV6zOmLHk52OeKpE1+uMNc9FIdGxw6gAblixnE6k2qSFxtRQhqJEiFK
	8weCkqyNIPeikeGvb+suwd/gdULbjIub2zTbsXuvVENIPMJs5wWWD8mEqC2UjxOert1y
	/NIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nr8XOXa+obp4a+yywS7gh46/r04+/9I359PUiIBJW9M=;
	b=lK2GAKhdtFrfylIucqf/hVp1DB7mN/HG7QJmyFbXEZUgBfYT6MLkF0so8WOb/EB5P7
	VOLs/pvZHvdivhQ7EzHzMdg02sP8yAbVks4B/6pM/g0JngmcVrBc68mx6j6hCcloxoeR
	iGRRSus2dXzympkrXPItdw5WpELfJ7YbfI3mrlSofG3uO0hWtUaXMMOqtICCXMpIJIYe
	OF6pS4kdkloI8hsR0oOhAfPY2BLHo43o0nBe4bdWHwyQ2DUz5PPqHrQ2bg5HgrSm/du+
	4xk25FlCniN9jaEXBCxjSLfCpX5/2yy56un5/oZaapDGQM0pIM2YTbLlcZd0x3oD51cV
	L8Lw==
X-Gm-Message-State: AKwxytcwpiX31TbNLZ9aB7aaBRgU5t87qFsXsK9mVjgbqmxcVovfTz8L
	eXL9szJodoVP1A8+4eT3FWnhqNg3afiiyeGt6vo=
X-Google-Smtp-Source: AH8x225iGYuSL85QD6HEVp/WNL5HL+AYGI4LyRBf2Rr+edJ8AiPxTUhA6syOuINPDXpYmJThtwDYEnT2wMNfqiXqWXE=
X-Received: by 10.200.44.251 with SMTP id 56mr53834151qtx.55.1517401881444;
	Wed, 31 Jan 2018 04:31:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.66 with HTTP; Wed, 31 Jan 2018 04:31:20 -0800 (PST)
In-Reply-To: <CAE_REAvLSX=QE=8dhf0EeOATfJKJTOn_cB=o71c5VCDhu6R9Gw@mail.gmail.com>
References: <CAE_REAvLSX=QE=8dhf0EeOATfJKJTOn_cB=o71c5VCDhu6R9Gw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 31 Jan 2018 13:31:20 +0100
Message-ID: <CAGAf8LyQJKTyvTEfXjUgHYTz12wBbyozNKLwTnhspFSyneeWew@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, cip-dev@lists.cip-project.org
Subject: Re: Generating Yocto SDK as .deb (Debian) pacakge
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
X-List-Received-Date: Wed, 31 Jan 2018 12:31:24 -0000
Content-Type: text/plain; charset="UTF-8"

I'll add here another list, since these people might be interested in
this thread/topic.

Best Regards,
Zoran
_______

On Wed, Jan 31, 2018 at 9:05 AM, Gaurang Shastri <gmshastri@gmail.com> wrote:
> Hi Team,
>
> How can I generate Yocto generated SDK as .deb package? Currently it is in
> the form of installable shell script but I want to generate it as .deb
> package so that I can directly install it on my Ubuntu VM using "apt-get"
> command.
>
> Is this supported? Any documentation?
>
> Regards,
> Gaurang
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

