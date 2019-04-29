Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2515CE00CAA; Mon, 29 Apr 2019 12:10:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73DC5E00927
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 12:10:41 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id h4so17629047wre.7
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 12:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4iiE7XWnPfm7AePNG7tSzWAvON3DiWX/hsWDmqL0DIs=;
	b=gXq8s9fAQiyFOumnFfmdrmEime9D/KxiZU5reRkWCQm0+ju3Q5uTys/x/huUSkH+WF
	3AqBlB1oUMiLjrr/ek1bTaAiO+jDKRitBlDuP67fi2d111XyS01aQmRGuaNHNIasI5+r
	DLV+LLHBpD4TBAwU1Lm+Embz/j50Y6xqwEA/rS/Sm8Xoc3tktu9Ei0bffwcaAJwPjF/O
	In+eoFdkyeZ+S4sXRESObnBsTl3WKXKRTHXt6YrdyaLf7urEr8vqKX+brckpDapzVZrC
	h7kqn/ow/d5wL7aN+kfqSQCL+849B5VjXg4wOWFmFkwSvy3d4SZr63GpAMwbnP6A3jdD
	UjOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4iiE7XWnPfm7AePNG7tSzWAvON3DiWX/hsWDmqL0DIs=;
	b=mbG3Iip7/K8hr51Tw1ULZyTiEMJnVhgsgPJJtM1sO3ByudEiI9e4rpk1mDZT3HRVBK
	IyHq2drKnXjvH8dgXxXKEz8cIB3DZ/PLdYgM7B3OOAe3QBchRsIKuuRFd+WwfVk9RuOB
	lmC2nWZ5yYV+S8F8fAWkx4z6vH8aJYEVJacuftOQHNssC/hMMFppkygIbJ2zBP1RIpvD
	H5OGV8ID8ErI+PwjTNmJFMqikhlAWgx+fnlwxXepZ0SQMdD7P0Ta9Sb9KwkM91gMhHoT
	MgAPGU46ILVimM5AOfmay+iy7sQklFqNgxEv3UTuJjJOF/wUcemEgDXH2f6rQDJxs6ef
	uWUw==
X-Gm-Message-State: APjAAAWNW4r6cth8SkQ/u375TwPR+CYJMvjfnAGfo3+Fn6TWMujP5I2I
	8PYpbqmq+ef35348OC76V2PEks+lxlcaykPhVqeITQ==
X-Google-Smtp-Source: APXvYqwRPEE1NQkV0xxe7921Gz9rNvWSZAZNHQtg6KC2JFB2v8p8nwrs5ijQn7PEXp7XqIZ1g8NDb3l4sPrHb9p7swA=
X-Received: by 2002:a5d:5343:: with SMTP id t3mr5251929wrv.262.1556565040541; 
	Mon, 29 Apr 2019 12:10:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFLxGvxbeZvadxguGoGHZSzeF2EnZ9EkR0aLVOh4FnyNi6VGmw@mail.gmail.com>
	<df7617cf-b6cd-dbf4-c3b7-7d283ab950d6@windriver.com>
In-Reply-To: <df7617cf-b6cd-dbf4-c3b7-7d283ab950d6@windriver.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 29 Apr 2019 21:10:29 +0200
Message-ID: <CAFLxGvwKfA2OSmFz-+gNSbke5DUwRHu5v5mE80VtcyAnbpV9Bw@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Disabling sshd is harder than it should be
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
X-List-Received-Date: Mon, 29 Apr 2019 19:10:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 29, 2019 at 9:23 AM ChenQi <Qi.Chen@windriver.com> wrote:
> When selecting systemd as the init manager, the following line is
> recommended.
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> Then you should only need: SYSTEMD_AUTO_ENABLE = "disable"

Thanks a lot for your suggestion!
But doesn't this line imply that recipes which don't supply systemd servies
files won't work since the init.d scipt fallback will be disabled?

-- 
Thanks,
//richard

