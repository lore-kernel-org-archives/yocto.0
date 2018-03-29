Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DC22E00994; Thu, 29 Mar 2018 09:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A1AE008E4
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 09:41:21 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id u15so2144942ywg.8
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 09:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qZ6JlV55XNELhiX3vBvbR94sYyZap4b69tIVHAL8r0U=;
	b=s0zdVg81dGboLDkButic3EwFtWlOETYeztvfmvjQgk1A1y9Qc19lEk2w2EqsuHVy6G
	epIe/zXeLd0ZE9bSdQphXqOFHM74I0B6GPQzasUqQg85jwz3IBtZAkXey10vpu1jgcdR
	9fjCQ0jUIKGKbX4/zIUOPoKAHMVCNeT2iE5r2cR9nsa+WjpCbH91+E/MUcYmaFeqAxGd
	BGSnkka+L+00R3RCgbwLGlxIWsZzL6AvPGdcrcenSlFVQkObn5D0XBs9RRUefbh8wFQU
	q+IUjFPtg4hszVBcaReurPNvfu2GxGvIIT3DtmF7Vk3sH4UquF+zXPn8irHAzmoTz2+B
	wf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qZ6JlV55XNELhiX3vBvbR94sYyZap4b69tIVHAL8r0U=;
	b=sdpbtaZnfnwIhL4jegGiwIjK2gIGFTQXwhEco/aeel9HQbn1yh0fhvo/e+2wKOF4vB
	SoML5md+dCgkQui67d2MS5KgpWey6tboPDWXWwaGOxaOomy45Ly5aGHR1m8DPNwrwHAn
	so2MnSxzEvzdmV9hBjKxiIr1CHc9vYH5jp7RnoMHvWaOlgyKEKJgKSRvsSvIU26BAbkb
	dXzfOgiVQmHRdP/6GhkGIItiYq+Gq7nUss/2ucJIY9KDbqV3BxcX3ln/tRcIzybgboXz
	R8nEobMo2ozRtvS/q7dO9kjq0ridxkfiJA0nVJUeHAKc7LLUHPtAKQsT7huuCDs9KdeM
	O6pA==
X-Gm-Message-State: AElRT7G6jbeqLNQa5zso3fQpfzX27ZTnV5Z6C7hJRvzqSrptMN4/l3pi
	0NYGfD7tWtY+ur8daYDRIGdJ3oqz46HMqHLCbfiXfQ==
X-Google-Smtp-Source: AIpwx49vxiQMMb7ysKV0gdiUT79eeciJLSIx4oqIVNzfeH9gZHJZ2ET0B+FqHtYsZaacOS12eXpOg503eJy0ogxPOP4=
X-Received: by 10.13.249.197 with SMTP id j188mr5428746ywf.318.1522341680494; 
	Thu, 29 Mar 2018 09:41:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 09:41:19
	-0700 (PDT)
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 29 Mar 2018 18:41:19 +0200
Message-ID: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 16:41:22 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

To prepare for sumo I updated all my oe-metas from more or less rocko
to recent masters. Since then I am in trouble with VC4/GL/GLES on
Raspi:

* On X start glmark2-es: complains with 'Modifier 0x0 vs. tiling
(0x7000000000000001) mismatch and window remains black
* On Wayland (weston) glmark2-es-wayland works without issues

OK - I am still sitting on my  meta-raspi-light fork (and am still
promising to come back here with patches :) but I checked: Both layers
are close regarding X and mesa so I'd expect similar results.

To check if mesa might need a later kernel I tried with 4.14 -> same
behaviour. Anybody else with similar issues?

Andreas

