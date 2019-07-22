Return-Path: <mubinicyer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61CF0E00D00; Mon, 22 Jul 2019 02:38:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mubinicyer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30C22E00BE6
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 02:38:46 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id x19so34095850eda.12
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 02:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lWBfLTnJfFW+l8msL8WrF59aWb+upKJ2X5wfVxHZU2Y=;
	b=GTcrZwDrKw3ANUn6L5TNc67/OE2IwS/FH2qz1/hteXXPU7y8TuSx1/Rd4hss0L6T6A
	9DixzXFUCC4UPgIBu8tM80Ad5FJbyx8b35f57GCe75tNjPvdXh0XeHkeoqj1lU1me9Q3
	ripPS28GYsHIUnmCyQxRkeDnXYOcqPKObHKA8rwfCH3cxvSdtWsPuHk/8hWrpyC929a1
	YC7GWihHjJAJ8k3ipCiYK8W+hQYauK6xk6CO24HNH+ybB3F+j9AvSssI8KoNvlxXjvaK
	1hqLiqiscP8eUw59H45oFTM/Ij/+9kfbkuFCWCoC5WDrhRJRhmgl8L8RTFr1EctHUKkT
	VphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lWBfLTnJfFW+l8msL8WrF59aWb+upKJ2X5wfVxHZU2Y=;
	b=T6jZotZwIAJkE10597v8LpyaLNAZqGSh5SuiQ5t4QHkhqgrMQ31/q5xTLIwwuUAe7F
	uOF1qNy4Nj/WIWaWb9JNbWGOIHbY8RGSpqgUDeKUSnBsNJpP+h4Y0OdW1DAcWOV4pDgq
	pXxn9nHK+plcSfXpIyKSheYXc3P1pLMY/Xi3iA0F5KvWa+cnmnPLZtadwqxi8OFdOVjk
	qtWExp2YCt6PcR/gxzZS/3YDu7wxsCqdx1wVJ2XoE+1CgNvCrmbOeQGLjSvhg1HG0dOh
	WPxHWJVDnJljJHzlaYQHUAbqqSBR3wmgvnw7MQ+NP/cA+FMADqFdaZBL/XpEHHTsAAUW
	n9Kg==
X-Gm-Message-State: APjAAAVvfIob9DYuRhkwPwcxgsuy4aYFHsOIX5mWgbs4eKqP+6ljrW61
	Ig30YfJl6kGc0/eh5rSCChoEEftY2aTDvjw3uVIZDw==
X-Google-Smtp-Source: APXvYqwppfIezzcpMFIRXgQEXGaHVPLXPgGvoIqPlHmK4rb6SizMGy/RQMmhacg//TH5UTqWjNtPp10KbeeXwhrIxag=
X-Received: by 2002:a17:907:20ed:: with SMTP id
	rh13mr52459430ejb.34.1563788325556; 
	Mon, 22 Jul 2019 02:38:45 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcO8YmluIMSww6d5ZXI=?= <mubinicyer@gmail.com>
Date: Mon, 22 Jul 2019 11:38:34 +0200
Message-ID: <CAA9KBAAjdL_daW98_u9ypuwi28Ev7NXBafodF=SMb-M696DTig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to build and deploy with devtool without running it again
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
X-List-Received-Date: Mon, 22 Jul 2019 09:38:48 -0000
Content-Type: multipart/alternative; boundary="000000000000a616f5058e41d75d"

--000000000000a616f5058e41d75d
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to build a recipe and then deploy it on target immediately after
that.
Each time devtool is loading cache parsing all recipes and builds or
deploys.

Can I make these two steps in only one step?

Thanks.

--000000000000a616f5058e41d75d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I want to build a recipe and then d=
eploy it on target immediately after that.</div><div>Each time devtool is l=
oading cache parsing all recipes and builds or deploys.</div><div><br></div=
><div>Can I make these two steps in only one step?</div><div><br></div><div=
>Thanks.</div></div>

--000000000000a616f5058e41d75d--
