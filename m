Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE92E009E7; Tue, 14 Aug 2018 03:14:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71226E009C2
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 03:14:50 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id j143-v6so13345081lfj.12
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 03:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VVYrUaLFmj2FR8wR2yq6I5ZQJ8UQTHeuGOFSIvNDqX4=;
	b=l/rux56pclbOkv73hbeFDrPQDhkLvUaMgMLfzC0pGBwZT8MTg8aQqloEHNhi8Hsxcq
	6u+042R+ZG1S/XJlqUi7Ve8sZ1rsJEHf0mQApYIYr7YtGt1VhpdgpUTYjTn+SVoHMkww
	z6f8QkurkeVERpICucV+oaUI782o9AR0bk2uIpu7XYrFYPherp6N+6WjpNJcxchIofvd
	v/5WLFjnVqVe7xNcz7yZqO9n+wW4D79hYy0b47UcXLnKyUhTnGFoP6hJZGd6bkD3Y/c6
	3e1GE8oXP2EqKd6i99PNlMHRk6sD4Luz5Ck1YCLUl7QMc/4pf4nT0+6fao7ltVjR1d5a
	RZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VVYrUaLFmj2FR8wR2yq6I5ZQJ8UQTHeuGOFSIvNDqX4=;
	b=ePZ7FaNugTzUoZTqaBOiRmwhF6evpO5kA0bNHObjM4xX9rzZzTh5XrnhlVkrsmHo7p
	doxnnWoZWyetfn8l0pLJnSBBLoM8BfUsqNnp7YkiLWmXfghheS7jr6mthfZBr3a4IOad
	ZIJxCavkFpMsgKzbiwZnaOlCcnyNp5ngztWsoAk6iplW/gHpkpOtCesEO7h0S0JRZMch
	EH2B9YNmBhAJ87tRZMvi9bO+FKLVG+9cIgumvsy4Xri1iQADGuMP+JUj0TzxBBozXjnC
	jFzBGEqaHb+VHoizos7fdRWjfv9gu8LFC2/70ytEDAek69L/7XGm2axkbR0z9o1WFLDK
	KzLg==
X-Gm-Message-State: AOUpUlGizVMQYWRc/QdA0+eLVjZE8jJz2wlqNW7QTNXuHUWLDg2QfLkw
	w1KZ4PdLFvtt2yF13HnIKcngIXE4erPxi3Xz/Q0=
X-Google-Smtp-Source: AA+uWPyja74DmzGWuy5V8Xf7adBLbrCCql1cFw5jJCCSQBIaIJQwQm07AR2fKUBRW1MtsWhLAvzSy5Fn7zCQj2x/NYU=
X-Received: by 2002:a19:12df:: with SMTP id 92-v6mr3978307lfs.80.1534241689251;
	Tue, 14 Aug 2018 03:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
	<CAJTo0LZdRG+McpEEvmwxdsQRtX-UF7V3DySuOCyH+15SzsEDew@mail.gmail.com>
	<CAPybu_2rqfLYQFN33tnytvaiUz-UCnw-x4u5Z+4wUgjtRDJ2Hg@mail.gmail.com>
	<77d0ac5b-d5ec-4a7e-2b4c-f1880ffcd4c8@iseg-hv.de>
In-Reply-To: <77d0ac5b-d5ec-4a7e-2b4c-f1880ffcd4c8@iseg-hv.de>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Tue, 14 Aug 2018 12:14:32 +0200
Message-ID: <CAPybu_0Buce9dVoFCMMtauM+Q1Vv8zS7raEN0eG6iQ9a7oFS6w@mail.gmail.com>
To: yv@iseg-hv.de
Cc: yocto@yoctoproject.org
Subject: Re: custom splash screen using psplash
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
X-List-Received-Date: Tue, 14 Aug 2018 10:14:51 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Rajesh

On Tue, Aug 14, 2018 at 11:01 AM Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
>
> Hi Ricardo,
>
> We already use systemd, but didn't use psplash before (so you had the
> pure console messages on screen).
>
> We didn't think about progress bar so far, but maybe it would be nice.
>
> Can you think about a way to use a progress bar with a custom picture?

In our case systemd boots so fast that there is no point for a progress bar.
And image on grub is enough to satisfy the impatient clients ;)

If you find out a good solution with systemd and progressbar please share it

Regards!

