Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 713C5E00A86; Mon, 17 Oct 2016 13:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35620E009BF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 13:54:00 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id 83so7484750vkd.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 13:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KgVmzdyXR7UVLdME2i2UkQBNvcABm3WTXhffVWYwuM8=;
	b=y08vIWQ0mexaLR31StjmCMHTjZcbUTHjOS9pyGmaNATZdT/7NlzFFwiiKmvcKOovlB
	lIhqztzRPfZCRjmvpPu5fBt4reNKQntQcICj5XjRczGtidqe/LQAivefvd6L07tq3WNK
	+6E4RybK7F+gcpHmOJmpI0Zt+hqPx3QG90mi0rgnZtfrWIaqHFjAzw3nBG6Wnq8PZWJ2
	FoyjXHI4E6mSkhQGztytvo7y1JhFqn0TZxw/l9tQfbOKl/5y/aY6s90JYZO1ikUG1WiV
	0q5FMlSpEYzbQQYdrCkXgHieR1jMXsflsOtsuVfVRJLR8T6cbXvW94iMchiJL3a9H+tq
	p5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KgVmzdyXR7UVLdME2i2UkQBNvcABm3WTXhffVWYwuM8=;
	b=hKyu17SGpCSXjMYhb1GFuA1oEIafDSV313XJPn0WJu6la7fuQ7tboSMWLZWcxF/Dan
	i2VSCfakOxZkZVPAfOWG6wQKzR+G9fmHXvQwNV47oiX0UmP8biO2yGbqS+o7Vo6hD+Cu
	Zi2yr4xFp2a6z775lhkj6A0bOfzhE3vfCrBwmlsXWxkLWhWY/KVE3mLuEDfJwUIj0D9p
	K7Hhk/ahHSKYqdj5yzoIsATSbRUvkf+ql1qyO9m7fOkADaJiepjXs2LZZweE2reqS75z
	oB8G8a8fm0u0hn1P/MHRdBMlqUOGIVhOjOAvY1sl2qv9rys8M9uQZcoejqlaVdkkDxcE
	e4rA==
X-Gm-Message-State: AA6/9RmZ9DvyH3pvMwX7YrpndKJd+j7IWHCHrxRmq9Y2fnXb7WVPEa/kYHOrbL/ztEjtaciaojCHmQSAPunIJg==
X-Received: by 10.31.138.143 with SMTP id m137mr5696087vkd.148.1476737640071; 
	Mon, 17 Oct 2016 13:54:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 17 Oct 2016 13:53:29 -0700 (PDT)
In-Reply-To: <071401d22871$2a4535c0$7ecfa140$@ln-systems.com>
References: <071401d22871$2a4535c0$7ecfa140$@ln-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Oct 2016 13:53:29 -0700
Message-ID: <CAMKF1sqy_94Vf8MXwq3qT15RozOAw2xqsgY48_qtW3gK5bSh7w@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding a file into the kernel source
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
X-List-Received-Date: Mon, 17 Oct 2016 20:54:04 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 17, 2016 at 5:22 AM,  <colin.helliwell@ln-systems.com> wrote:
> I want to add a new file (a device tree source) into my kernel build. Is
> there a way to get the recipe to specifically copy an existing file in , or
> does it have to be created using a patch?

usual way would be to write it as a patch unless you have own SCM repo
for kernel

>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

