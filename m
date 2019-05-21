Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4EB8E00D5D; Tue, 21 May 2019 12:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54C29E00D32
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 12:54:26 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id a132so13814125oib.2
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 12:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gvEJoPlBqy8CAyPIfCEXHI3Kz7I5MkdaIgYgGe+ueq4=;
	b=X4cFXW3NbPP8gjlbnOJ4gDLiG1G8N1Z6pRd3tfZd3F+jdxj2i1gQbBOAjeyDTe0RQJ
	18KU+iXS/gHZ2xe4LSfq6oB0Ka90v8nR2uf0xuW9CgdlLAka2faWL52Glh84nMb2Yc9x
	DNJ2sKe/Hba2rhCstpMTPyqFBvZByY9YO24aB7SIw0JB6R0PkYoUsKOhw1wz715EWTk/
	GYatOi3r3cz0tQwhfRMAQO82i3lVFS0peqFviN6Mb50KgsNP5qy0OOcdUOyvwuOllew5
	sjKlXZES3wpQFi6enD9FuZnqYgj9Xo0gHCUCOvkuZgeLANNSPKAd442mbN/eWGOa72IG
	m24A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gvEJoPlBqy8CAyPIfCEXHI3Kz7I5MkdaIgYgGe+ueq4=;
	b=GTx5GDLSekXCMCWGQZ48M+DwYQvM3xpvzuthzaBjLmo7YtHZli80EjaigZrz0wnf/I
	k8T83qCOYm6ULk/dcxB+RFkY48xQAIqoJ1SJAq8K4uOoykoTkMZpqX9p4jwAGK/RtDiE
	mKQ07ez3BHnENET5X/Nkemyw9qx2ILr1gEwJaCg8M21rIyqan/Lpp87vrFGYohL/becR
	XQqO73+9/TBGpnVONzc3WKRJBBqZ9wtMDZ7FOKjWPSAf4241rm/0AUNcZlWrqNTXV9K+
	d7E3KrrVgLLP/lUTr8OTBO+sekX9P9wcthOEWA9nbzTMD0Spp6iuHzFn3Bwg7EZELFyy
	70gw==
X-Gm-Message-State: APjAAAV6+9S3QbIBtJf6yVK63dgFOt4wXKqroSv50FDB6hxVSYfh34zR
	DNy4a3tF5kDw5OG4y1z3YmGhn2ONOJCOdQD1JMM=
X-Google-Smtp-Source: APXvYqztcseDZOUyrDjMml4JGicFqvv4nq3DDsAp6sz1l3Ztk77ffdwbCE1xkNn0KmB+izPw8R9NMd3C21MYs8RRvXk=
X-Received: by 2002:aca:6087:: with SMTP id u129mr2683033oib.70.1558468465768; 
	Tue, 21 May 2019 12:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAFNP8OvJX6LZX-LKdaX6y78BUoNSwAvm2dh6Jkw5nKoPhYabzw@mail.gmail.com>
In-Reply-To: <CAFNP8OvJX6LZX-LKdaX6y78BUoNSwAvm2dh6Jkw5nKoPhYabzw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2019 21:54:14 +0200
Message-ID: <CANNYZj82Rg-_OjqfQFR5cvcmu_oHj9skCLLvfH_cD6iWbGqj1A@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>,
	jean-marie.lemetayer@savoirfairelinux.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: NPM Fetcher question
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
X-List-Received-Date: Tue, 21 May 2019 19:54:26 -0000
Content-Type: text/plain; charset="UTF-8"

I think Jean-Marie might be able to help as he recently did a bit of NPM fixing?


Alex

On Tue, 21 May 2019 at 19:52, Scott Rifenbark <srifenbark@gmail.com> wrote:
>
> Hi,
>
> I am trying to determine if the information in https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM is relevant and up-to-date for current YP release.  I am having trouble finding a resource familiar with this topic.
>
> Can anyone point me to the expert for this area?
>
> Thanks,
> Scott Rifenbark (docs)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

