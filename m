Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38A95E00C82; Sat,  7 Oct 2017 16:03:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4F0FE00B1B
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 16:03:06 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id w134so20887122qkb.0
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 16:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=/sDZBKRAgakcKAFYD6EWaFeaHdOjXRLx76Pv/Dnv14s=;
	b=VLzKRXBMM8e679KhYYWZ39VjD4rLnrfFIK4umOlX0TyFUlW6rECbT3nWOK8BLdWQFB
	C68Dr8nnYDvCizxa41lJJeHl6w52p+azhYRSGTq1sfA3zdkt51K8InYLhQGGv9W5MyCi
	BSaF7+YzqUyPfnHP8XWnneUVQfwHqhdKd9niCXO+PEjnQclC6SXUaLhwWRbfQyKUbtB8
	37P/62Uhy9ThjKc30J63+ydTc34QjsSQK19Ctf5pAfYAxBQycmJt7DwziF4M+9VD3riI
	FxVxnYs0NF/8n4byPOB7J/2hABFTBfsbmdGTcaMVjW+8mofR4kAzlcA5IfWQqi6HGJbU
	HJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=/sDZBKRAgakcKAFYD6EWaFeaHdOjXRLx76Pv/Dnv14s=;
	b=k0yqMvp93Nhb9k4g7bMURnlN2DuI11T4amP5mOTpiwUdxzUnibE0XzzZaf1yQ0XuFV
	GIGrThAtgjSe3CbbNKk37v9ydQPsNtqeThnTIZKIWkz/T+2w7UpsAry9yq9d9rW4VQLh
	63cExIRBNmY39P7UbVO7T20GsU4Kfr6jBLI46NB+U/zYUx5+FFoWk01cOt9300Cg0ASQ
	jvOc1xNpLVeIMJ5TVmBMroKMGYkb27tFYaczw6tRb5wK3cmZF9k+KpFGkQ5w9RFRTs9c
	FwRYB1WfzkhUUltKa/y0AlXAKbfuL4CdDv0HN3J95U752uEKMbSZPDAFIRROZQH2etdm
	DJPQ==
X-Gm-Message-State: AMCzsaX6sXhrsL7xctWn1uDJqTISRoy++7jwCwn3jYk25aaFmcf6WSRk
	kvxhO0GI1l1MBVZGqfK+wwXEbscenOw/X59i9a31Sw==
X-Google-Smtp-Source: AOwi7QCfTdwz81AzvVX+TjmVbGqTYJTaSHUiUHWfD2I8xFnIsWmIkAhjJkHhKWLUbDLs1FUUrIJnGYRTyW/ptNizFdM=
X-Received: by 10.55.154.84 with SMTP id c81mr3703034qke.43.1507417385385;
	Sat, 07 Oct 2017 16:03:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.61.250 with HTTP; Sat, 7 Oct 2017 16:03:04 -0700 (PDT)
From: Mirza Krak <mirza.krak@gmail.com>
Date: Sun, 8 Oct 2017 01:03:04 +0200
Message-ID: <CALw8SCVUAGEV9MVN2V21G3kGex5SK=T3CAzwuYxhErtogpyZBQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-rockchip] The various rockchip layers
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
X-List-Received-Date: Sat, 07 Oct 2017 23:03:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all.

I recently started working with Rockchip SoC`s and I currently have a
Tinkerboard and a FireFly-RK3288 board. And as I recently enter the
Yocto Rockchip world I have some comments and questions on the current
setup/workflow which I found a bit confusing when starting out.

As I started digging to check the current state of the different
layers it was quite clear to me that there where two different sets.
One is maintained by Rockchip [1] and the other one by the community
[2].

And it made sense to me initially. I do not know the full background
story with the Rockchip layers (would be nice if someone could tell it
:)) on what the intent was with "community" Rockchip layers.

But as I looked in to it further it was quite clear to me that the
Rockchip maintained layers are more "up to date" then the community
ones. And then I started thinking on why are not these merged and we
could focus effort on maintaining one layer.

There are a couple things that are interesting:

- The Rockchip maintained layers state that they do accept
contributions trough pull-requests on github. So nothing stopping us
there?

- The Rockchip maintained layers supports more "community" boards then
the community layers does. Bit odd? :)

- The community layers are a bit outdated on older Yocto branches,
master branch seems active though.

- Trevor and Romain (maintainers of the community layers) are listed
as maintainers of the Rockchip layers? [4]

What I am really after is better understanding the workflow working
with Rockchip SOC`s and Yocto and that is why I am raising questions
to do so :).

My plan was getting involved in one of the Rockchip layers as I have
some improvements and I have some ideas for further improvements. And
the goal with this email was to figure out where.

[1]. https://github.com/rockchip-linux
[2]. http://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/
[3]. http://freescale.github.io/doc/release-notes/2.2/#the-differences-between-project-name-and-freescale-release-name
[4]. https://github.com/rockchip-linux/meta-rockchip/blob/master/README#L65-L66
-- 
Best Regards
Mirza

