Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9443E01544
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 04:37:57 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id gf12so369975vcb.29
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 04:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=Yr0sDFr9NfCuX5JJpak+P7mUqggaHw+uoz5krxwPYhU=;
	b=a4GQWSjTA2ZjhqSSpKiVPzXV/Ka7zkUW9uHYQwP5hENKiightwZtKW0gnLfapBtr8a
	a5I/dO/UunxjkPRbPXtiTV9OXEonV8ukw+P7Myq7gLrUllMikAqGfFvZ+DDghQiSFsJe
	FS8HI2QgZjZdAZzjbDhH/QHqwHBHGQJfHARWcaM20+OX3VX2Gdvze+oMtntFZsoEqhRQ
	TtQOy5UsbA5MEa3XmTRgZlKCgCwat5LLRl4Y+KezHPAzyOnjtvcFCugfyD3m85PjbFAc
	uePrURsy6S2jU2abFed8XL37eAnyT+zbBXJTuUGD8u0aM+LOrk3B/9EaGh7WaDFTX49f
	Yitw==
X-Received: by 10.220.172.2 with SMTP id j2mr2021596vcz.17.1367494677073; Thu,
	02 May 2013 04:37:57 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Thu, 2 May 2013 04:37:37 -0700 (PDT)
In-Reply-To: <CAK18fxE99emJoMTwL4mGoMNsHiToAJwEeVf7mWHTE87i9Td-Vg@mail.gmail.com>
References: <51788033.9010908@gmail.com>
	<CANyK_8fpnN8C6-vZPyFmGx5U3_ySRQp7twsXcKO4utz+WWc2EQ@mail.gmail.com>
	<CA+JN8xOs5YL+vdtJz8ZtqCvUNVi7UO=++grHtx26n2iEpGXbGg@mail.gmail.com>
	<CANyK_8efmMZwTde9tivSDcnUmo2XtZiQ6JTv6oFDbFJTmhp3tw@mail.gmail.com>
	<CAK18fxE99emJoMTwL4mGoMNsHiToAJwEeVf7mWHTE87i9Td-Vg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 2 May 2013 12:37:37 +0100
X-Google-Sender-Auth: mxGiZGf1qHHzlIMuknf9Z06tBjM
Message-ID: <CANyK_8dPT1i63xAvWGzy56SsgVfhTyLVpDjFAFxxgZT7nsAYCg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: Copy startup files required for 16MB GPU operation.
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
X-List-Received-Date: Thu, 02 May 2013 11:37:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 1 May 2013 20:19, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> Aaaaaa... I just can't make it work. My advice is to use git send-email too.
>

You can cherry-pick it from my repository at the moment
(https://bitbucket.org/betafive/meta-raspberrypi), but yes, git
send-email is the way forward.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

