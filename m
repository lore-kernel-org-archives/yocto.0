Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABF76E00BA1; Mon,  2 Apr 2018 16:18:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2E9E008A2
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 16:17:59 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id d17so610948wre.1
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 16:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZOIJsIRSQjDqM9CWlbUHl0hKHlxvdQa7Kamr0J9U8qM=;
	b=iwRzzGWf82pXCTB2olnEAOkpY5nPlw0GtaaR85UMIuDojSDrbTQnft/6SK0yVyLZH9
	gdiljAl6VIiGcgYYcSHzafWKgMh4QyjBaNGTCHP8kkNz5+YKt5/CxXTkPoRJ9FLpRwMk
	cGzg+8Se5G9LVKQBwzMLcAoULCFJft6sdY6afeRZzJ8XrDdwUjoAThnXt5MqHh9fK+Z9
	5J6FLLaGHfF5/IVHZn29Uo70SSuD+LfB3BcPAUQDOhBsgGGGHqOb9lEMX6+ZiR+Twgga
	k/dynQhIUNcRX1BGc2jc7QZCnmZVlISoSdHpbGjf8YOR8BviQ73JGLauOajVA91+oOSR
	O6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZOIJsIRSQjDqM9CWlbUHl0hKHlxvdQa7Kamr0J9U8qM=;
	b=pfFDBsnyiDzIuRF0I+UsMeTVlBa8WXXzUgeM6KHZeAgTrNl+Y6KY/mFSTZfwlNOSg3
	NzvgxT+mPEXaKsyUReIPWIbK4zOv4zcc1xWDZAFVmqOYZjMOkZjtGq2hg5VHJUYgdq+i
	wD7RaS7bS5OQbgO4dWATvqp2JOh1Fsv2A7D8yM/qoYCckT+JHifgaGW4wlNUxJHSCuhw
	4M1UqQRN8dH0eO+V/TiQ6M0pihrEoNZrMYfZzwUDwgTiJu5W3OCxWomJ/ZNJrl/eiNBd
	MFKx1wQFH1IhBMy+qtxksjMNxz4cLrCwzPRUAIc9rPWBLCeXFHjGCuby2Du5m3O4l/wU
	E0eQ==
X-Gm-Message-State: AElRT7FhVGyCuFmXuDfaIJczHeq8FUIu62gp6vC0mtaaqcDnl+TUqd1F
	t3ElSUgeFZ3m0d7i1lQPUKEWtgdQfQVYoiBZETU=
X-Google-Smtp-Source: AIpwx496693yfU/FWNvu2iicKWURzqhDGoVg4n7G6NhzFOS0D6SyvjT07srN6VEtoKyrXnpVbMj2T6fMluudMC+hFD0=
X-Received: by 10.223.134.47 with SMTP id 44mr7582274wrv.114.1522711078892;
	Mon, 02 Apr 2018 16:17:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Mon, 2 Apr 2018 16:17:58 -0700 (PDT)
In-Reply-To: <8e16692f-6654-60b2-0079-b2006eaeb219@gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<8e16692f-6654-60b2-0079-b2006eaeb219@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 2 Apr 2018 16:17:58 -0700
Message-ID: <CAJ86T=VQzk++gtEKh4c2-yqHBkPi4jfsweWvrCfTziM-Wxd0OQ@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Mon, 02 Apr 2018 23:18:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 2, 2018 at 3:49 PM, akuster808 <akuster808@gmail.com> wrote:
> On 04/02/2018 01:15 PM, Chris Elledge wrote:
>
> I recently upgraded my Yocto based project to Yocto 2.4.2, and I encountered
> a problem when building my custom kernel for an AT91 SAMA5D3X platform. I've
> been using an ARM Thumb2 kernel for a while successfully until this release.
> It appears that the issue stems from the change to binutils version 2.29.1.
>
> Here's a good description of the problem:
> https://patchwork.kernel.org/patch/10072695/
>
> I will take a look. Can you provide a reproducer? ie qemuarm tweak??

Reproducing with qemuarm would require both changing qemuarm to use a
CPU with supports Thumb2 and then changing the kernel config to build
a Thumb2 kernel. It's not going to be a trivial tweak.

