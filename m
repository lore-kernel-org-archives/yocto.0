Return-Path: <raj.khem@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 253F9E0155B
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 08:35:25 -0800 (PST)
Received: by mail-ia0-f176.google.com with SMTP id i18so7508851iac.35
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 08:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=WZnpn+bdOLgK4YfLHk9Itu4Nn5xeRmFm71L2/b7YYuE=;
	b=Vo47kFwUM943vHnKvlpl5F2XlpmYrv3CiRIPr+xv3tWaPLpxQedH2G1SpuO/9wmpdr
	c6dVJeTefuKoCZC+cEp/i28LwmgQ0UIQhb38WKk8WuP7cZ6/+Ed/ioHvLVQ0j/GaMnJs
	1fD1+gxgOYCEYK4uoFmsom8aid3yae28pVZ08vdQzQ3lPPsUKwPEQ8p4MpW/TOLDAxaa
	a//voWXSq/Md1au2AfLq8r8ayEAbhwCwijLots+Gqabg27lPkxKKUm7ehwmhBVvxRpPk
	WS9kSWPp4H1U5V0i1jn0LgCpXtvuFpqjOMS1xaBqDWy9VDl8tCztef1NgwN6ezSBUMUv
	5Euw==
X-Received: by 10.50.45.136 with SMTP id n8mr11509268igm.34.1362587724392;
	Wed, 06 Mar 2013 08:35:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.163 with HTTP; Wed, 6 Mar 2013 08:34:54 -0800 (PST)
In-Reply-To: <CAHUNapToOXjYXmxe7WpABdTub-P5nivAEkbxZyDAyZp7Lwo0kQ@mail.gmail.com>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
	<CAHUNapToOXjYXmxe7WpABdTub-P5nivAEkbxZyDAyZp7Lwo0kQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Mar 2013 08:34:54 -0800
Message-ID: <CAMKF1soN2p1GYXw5yxzGvAOrq18TKnuR7-dz566yDrQVpg3_Cg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Paul D. DeRocco" <pderocco@ix.netcom.com>
Subject: Re: Newbie trying to get started
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
X-List-Received-Date: Wed, 06 Mar 2013 16:35:25 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 1, 2013 at 9:04 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> Working with a gumstix is sort of like having to work with a vendor
> branch: for best results you have to use their stuff, but their stuff
> isn't really upstream or tracking upstream very closely. So it's best
> not to confuse the "real" Yocto, for gumstix's Yocto-based build. For
> example their instructions have you use the "repo" utility (instead of
> just using git) and start your project with:

https://github.com/adam-lee/Gumstix-YoctoProject-Repo/blob/danny/default.xml
shows that its using danny branch. The detached head is an artifact
of repo it does not mean its using a random revision. You should
start a topic branch with repo and the detached head state should disappear.

