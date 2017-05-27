Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A2C4E009A0; Fri, 26 May 2017 20:52:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.86.89.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D37C9E0082A
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 20:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1495857151; bh=HCSaiWuWJXxwFG3s8cKnoc+2iv/3vdd3eyx9
	L9bUiHU=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=I
	etlKr0HLEgDivUJGmFdCcb6yk29H/1IPxpFeILCo9gm3Vyk0u4qCXdgiomYhM2ELk9L
	ELqYN/HCNQ40NN0KtgAgdqJqgrgWd+66T3Cyl6iRW2SGfOw2GKE6LK0PWvEA+W+7gZC
	fklqtjoDv0NcOGhfbpPM4vG4xQBGgBuXt857Of3jpbG2N+Z20T2yiXCZ2zXYMQakqss
	suSSYkME1kPJFypWpPUXfGDaXKdDAZiFpm+g1tGT9pzebe09POce1va59NW2t/Ii2xg
	BCcKuH7Ewcn0kd5wMTj4gZZsmVFZ8aA5HZxGTehfRxE0JE3imQsVkqunUcfJu4kvtex
	FeGKXA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=CNsT7rXOAl9bj04c75gDf3Th3RBd/gAUDT8wtl3zTmLA4gtpLfu/EJYUmOpg3kHspLmPYjfJilwnhe0yoSzf68yI54ZT60tz8fwySbUEVIJTRrWhLgWaCdM6+J8lqxT8tkAbY8who4nOzekrMFe7W9TWoLrEvWSnPXWOmWTnzjC1V/XCzPHZqSF/KnIZr1uGP3vKmUa3W87TUGfg7q95rRKEAorkyzWcnvy3iyZCflbueY01gOJfdUipMfi7uFaai1PtMV41O7tojqjKGmHp16vCyKxlRYtBzWsoju2NX5IzkyjGqb9EW8XLiSkvl1zV6ZjBrgmdjqIPiY6cuCTXtQ==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dESmE-0001xj-6K; Fri, 26 May 2017 23:52:30 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Andrei Gherzan'" <andrei@gherzan.ro>,
	<yocto@yoctoproject.org>
References: <2F9B07C5AA344ED6AA5B799671B76F5A@PAULD>
	<CAK18fxExd7+Sv6HHq+pU2tH4TWcSS37hhju7BDAVwGGHrd+B2Q@mail.gmail.com>
In-Reply-To: <CAK18fxExd7+Sv6HHq+pU2tH4TWcSS37hhju7BDAVwGGHrd+B2Q@mail.gmail.com>
Date: Fri, 26 May 2017 20:52:36 -0700
Message-ID: <C0920525ECD042C49E1C57E1B134148C@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLWjBVmoLS7jO7hS+GccPi8BJBi1QAD7Ffw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688bb8f414c2be5b06a02acfbf90c493165350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: How to replace an arch*.inc file?
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
X-List-Received-Date: Sat, 27 May 2017 03:52:34 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> > On Sat, May 27, 2017 at 2:34 AM, Paul D. DeRocco=20
> > <pderocco@ix.netcom.com> wrote:
> >=20
> > I'd like to try the Linaro version of arch-armv8.inc in=20
> > an RPi3 project,
> > because it has an ilp32 tune option. What's the correct=20
> > way to incorporate this?

> From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
>=20
> Probably the easiest way would be to create a new machine=20
> configuration. Where is this linaro version of arch-armv8?

It's here:

<http://git.linaro.org/openembedded/meta-linaro.git/tree/meta-ilp32/conf/=
machine/include/arm64/arch-armv8.inc>

I'm not clear about how the system finds these include files. Is there a =
way to store this file, or the same file under a different name, =
somewhere in my own layer? I normally treat the rest of the metadata as =
read-only.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


