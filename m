Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEF0AE0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 08:52:35 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so684014obh.35
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 08:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0sG1Q9IjEgV0rIXrI2KUJDOaABjJayGgMoND+Hsvts0=;
	b=HUTgFpvrt8stOodFDk622hws0cheq4nHrkEle37fc0C0ccYtsE5cVMe9u8bDWeLB1L
	twE30dN5+h2GHgFdbZRc+xNW4PefnEFRUvoI48+5/2+WqiBP98SqjiUcmHN+YSZmgJ9z
	kidudFwtSY1u7+O59loftgmNfJYMTd7l4lCm+TMD25wcQz5QqcfRA1RAFiNxJPI9ExPU
	Q/PEhmwhC5L8fLCvsdFZlr8/AR4bLWbTPQieWwmVRoIZYyYxwmvgjoY6QsgFGWZMPSJe
	7V5ge5Ijs5O9kRO+jET8V48iUTkW1gmzZnrYX6WzciP7KpAB2zJEHvPWlFPjpnJHiP5g
	PhjA==
MIME-Version: 1.0
Received: by 10.182.145.9 with SMTP id sq9mr13368770obb.42.1351093954960; Wed,
	24 Oct 2012 08:52:34 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Wed, 24 Oct 2012 08:52:34 -0700 (PDT)
Date: Wed, 24 Oct 2012 11:52:34 -0400
Message-ID: <CAMAb8ZN0EA=Pw9ehVF3W0=vdnBHc2Ek_imAk84Z6V-2NqBd4iQ@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto vs LDAT
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
X-List-Received-Date: Wed, 24 Oct 2012 15:52:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've been quietly experimenting with Yocto at work for several weeks
now, flying under everybody's radar; but my bosses have discovered what
I've been doing and I now need to defend my position--not just from the
perspective of my little team, but for the whole company(!)

I work for an automotive supplier whose current big project uses LDAT.
We also have a two-year-old 'proof-of-concept' demo system that was
assembled using LDAT. The guys that sign my checks want to know: why
should they not remain with LDAT for future projects? I've been asked to
put together some kind of cost/benefit analysis to justify switching to
Yocto.

Unfortunately, I'm ill-equipped to do any such thing, as I don't have
much experience with LDAT. My understanding is that the newest version
of Wind River Linux uses Yocto rather than LDAT. And since Intel
(Yocto's primary corporate sponsor) purchased Wind River in 2009, it
doesn't appear that LDAT has a future.  Is using LDAT for new projects
even a viable option?  How difficult is it to 'port' LDAT layers to
Yocto?

Basically, I'm being asked: "Why should we do this, and what will it
cost?" Any suggestions for how to answer these questions?

