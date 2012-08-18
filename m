Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CF6EE01370
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 14:36:29 -0700 (PDT)
Received: by lboi15 with SMTP id i15so3106635lbo.35
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 14:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=X4kJY4OOyNkqsFDAvUAOjXAhCj/YoIqjNgUtdjDm3YE=;
	b=geTsX79bjV6plYpZSVAxdEpLN0dsRSjSuBscIekoq46t15KeVveUq/JaasDK4JgimG
	z0wPaxgagg4sCmtCwsTUv0gzdFz0hD3vVopmlA9w7cVwD7hgg63PYy8cwIqvhsS66kOe
	cboagy4rtybwP9dP9fUJaO7ubMnxmnnRoqfRVMzvbHfYwJhdCayUlZSd5mKt8aChS0C5
	Ulsl/9TInR9OxbqLKd8qgGa8mPVqKckMqeM5fRpETmMdMWrPhPdNgDhU6o9m/MYUdgyQ
	TGB2pCg/F7cXqGfW9L01MfETkzC30Y847crIA6gXE7YC9LoQoh3x/3Yy/O7TWJfG98bH
	PSXA==
Received: by 10.112.85.225 with SMTP id k1mr4069890lbz.38.1345325788210; Sat,
	18 Aug 2012 14:36:28 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Sat, 18 Aug 2012 14:36:07 -0700 (PDT)
In-Reply-To: <CAHUNapTnb_Q2z0+23OVayw8uETMjcMpSYJ1umUa6qnQPfF88TA@mail.gmail.com>
References: <CAHUNapTnb_Q2z0+23OVayw8uETMjcMpSYJ1umUa6qnQPfF88TA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 18 Aug 2012 14:36:07 -0700
X-Google-Sender-Auth: LwpIE9G0Gk1O8hFV-eFVnQu-zSY
Message-ID: <CABcZANnTzLZAVYdXDOjbRx93pPA0aEdyY_g-bUpCQ64rAhuxrA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: knotty2
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
X-List-Received-Date: Sat, 18 Aug 2012 21:36:29 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 18, 2012 at 4:09 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> Wow! The new cmdline interface (which I assume is knotty2?) is
> _really_ impressive!

It was knotty2, yeah, but that functionality was merged into the
default UI, so it's just knotty now :) Agreed, Richard did a good job
on it. It's a simple change, really, but one with great impact on
usability. It makes it much easier to spot real warnings/errors, since
you don't have to dig through the spam.
-- 
Christopher Larson

