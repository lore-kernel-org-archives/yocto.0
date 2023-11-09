Return-Path: <cprater@gmx.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3444DC4332F
	for <webhook@archiver.kernel.org>; Thu,  9 Nov 2023 12:02:05 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web11.119930.1699531322293781960
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Nov 2023 04:02:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=cprater@gmx.net header.s=s31663417 header.b=GNnRs3rO;
 spf=pass (domain: gmx.net, ip: 212.227.15.15, mailfrom: cprater@gmx.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=s31663417; t=1699531320; x=1700136120; i=cprater@gmx.net;
	bh=A7hMdGViJLv4PhF9TckTjvKS8Mbi/tuoeZLqJNLQ8/g=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=GNnRs3rOqUrKIQjxx1JLm7gPKDDBLcDcAdy/s99AHyJDfbWpu1yRKbnA93Xq4hpM
	 vC/++PnPUbk77IY82xNI5F9pg4mOf4MUiMN/x6hYsB4gfKy7dSypXi9YgA7pn4IcJ
	 PtcUMgpGwiOduxRKeB4Mk/qWvub3gxrTjtVWm/0C4kbggBjXcNeSSRjwSCpC7cEZs
	 cqSMhmlip2+kAK+gjKp4kNrpFaSKJmMj6Za3kpURxE82UZ1d6iKeJNLI4Ytor4e8k
	 wZpbL2MniIxg3+xfG2jenoFypzP4VtEZtdf87J3bLjkDSrthXgOM4/Oo/kGIrOnG6
	 VQ8+nyXcxdTlLYoItQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [89.247.172.66] ([89.247.172.66]) by web-mail.gmx.net
 (3c-app-gmx-bs12.server.lan [172.19.170.63]) (via HTTP); Thu, 9 Nov 2023
 13:02:00 +0100
MIME-Version: 1.0
Message-ID: <trinity-12beb69e-08ce-4b5c-84f3-db761240302f-1699531320600@3c-app-gmx-bs12>
From: Christoph Prater <cprater@gmx.net>
To: yocto@lists.yoctoproject.org
Subject: AUTOREV fetcher not using MIRRORS settings
Content-Type: text/plain; charset=UTF-8
Date: Thu, 9 Nov 2023 13:02:00 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:9UFOdBWVPp4i47fq9daH9STQGkWurWWMcLCvib7hpUOQSbxnwWK7WNfXSC4lCm3iFQjLZ
 ZZ4SGCIhFrkZtBLLtHo/PknwZOEaZWjGBFH06cuU8U6CdhNw836tzqnmWSU+FnpRhFBbMWyiGdkl
 RHQyjZfGLevNTVStggL3KBNdAVprf356t4Lvm6MH6rqTjJIJMl1K0coKPFiiyqLaQDGRjQ1u3wSQ
 6ZHuoqhJQ+4LRIZUr65A0VK3POfwQ605QCTchyA7PBiFpQG65SjeaATgQb6amB/eD3jODVh2ZJfr
 Eg=
UI-OutboundReport: notjunk:1;M01:P0:j25pTh36b+0=;iiQBPg1Wom1yF9HwIRbPP2BXMSr
 ua2Zwb2JLARHflQQciTlikQty2C5rgcot8fkMNIn8D/s4wjkFZpPYNcvLRZanPRUIXxgyYj4U
 4m2s38Xp/cbAn56vWjnYxinXekLrizzYJl+87QxILQuokt+z6FH5YDgTrnG9+ElblEdGIbmG2
 4DE2MgbF9fbw4xUDcBxWCCk7X7p0/Xiuc9QPmiSD+yI5DRmmjCX45JTyRg+O0JxyPk9htVWfo
 z5QkmxNISHMPApRDeJ3zZi0jToRWzY3+sZi7HPyNNv/Mrd+ku5Kfrleysj4q0HptUDm1xqIcn
 TheYDWp4xqk5MDuV3Z/X+koqg1lmsD9OLfdRVf52hD4/0VVJ18SR/Rl6eEv+61bjhHIzNcW/u
 b7hcu2GxrkOXkq3gnFH568cCUpfRKHnnIdjLsG8grq3ZgWsA8nio/KABQxKjMZAwB7/bSVksi
 VvJrq2+zanIIYBO+0auZDvodlQ3A/xjhAYLy4OFxkhr/h8IXcx438+cR6xpGrXr1yEuv32749
 CrOE4e3ciU/fr5aLfckgjPCF/Qya6wvmu7n4GeOz+LWuPbJogmsfgiRDNSnADPmDQ2C+rWw1H
 8cx4i+wp7V9v+2vDpQ300qI1EHRilHydu0kKPcfhpcb/cXJNZX0lbhCSzTG9aoxdWt6YqiUUq
 h8ZRx1Op2dPVcDSTwNkqs16coVOkQKtSxTvMafgGERj6+wl4UjHaVq/i6DBA8YP5pwwGm3qOo
 Dfd1NOTe4S9eD+pBfk+jpiZOAKnucAgeRn17JDYs1OKDkwUPt0mx41EFqmXrSQb8E8WvbrMkk
 /FoyRdkyqKL+736/47zWlI7w==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 12:02:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61644

Hi everyone,

I'm using the MIRRORS variable to provide a local mirror (that gets synced every then and now) for a git repository, I
don't have access to. The repository contains sources of an application, that is used in a Yocto recipe (Yocto version
4.0.4). This works fine when a fixed SRCREV is used. Now I want to add a "floating" version of the recipe using
${AUTOREV}, but in this case the fetcher fails while bitbake is parsing all recipes, as it tries to access the
"original" repo (that's in the SRC_URI of the recipe) I don't have access to and not the local mirror.

Is there any way to convince bitbake to check the mirror for the latest version instead of the one specified in the SRC_URI?

Greetins,

