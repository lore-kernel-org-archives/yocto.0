Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFB80E00D4F; Tue,  6 Aug 2019 04:09:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D74AEE00A75
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 04:09:18 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id x21so25937401otq.12
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 04:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rJeAhMHWKwow8IGzxCrTnQ89R/j9kEF4plKuY39bhQg=;
	b=rAXJ+v1Qm5iNlcJz+vZ0mQl1KkbdfXIp5XcuQ2bd2/dPq8vF4Ygb0uCMh5NM7ULzgz
	iZHJn4PrcBy5EvfV4WHlIWyd6R44aTtXZ1bg3Z+xiDV+MdWjNsz2zBeNt2RYC7dbXCDM
	sCtoKAS3F8RqIt2TCUfibE+ERrfjw490UTTw7Y4upPkMquyRH+w3XRRGVeRnNTrCLTuZ
	of/ZUlJQ6OZSfNXVKX1xIsZ5VOikp70JXrJA1cvgJf17k4GZLGdDF7Z8R33Axa6Iv+E9
	aaoX36f0Amq7bBP6QOjGaP0qkBEund8SYe4aAQZenz3Oi+w+Y4IKylHPnyLiGtcewstB
	7gfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rJeAhMHWKwow8IGzxCrTnQ89R/j9kEF4plKuY39bhQg=;
	b=JJWvEhZC3VjUaLAmDW7Gr54UJfYhuNXjozH5G4vkDSjXwN2Al1Y1svaOPxUUBg/oe2
	qtIeogoKhDkdpB/EEz61VJcGwGT4/Mgs9yPaGas9o82LvK3uNuyCuHBlm27NWEdoUaQK
	fQ6jkS9PjosMoX11OcFvx/rU3or9Ff8kUyHCW/Y1Eoe39Zf6QuymUMhxPqvxmI+IZIDP
	6AT4AOculj3EMS2ew5JyhB5tvnxok+o+KXg5DKWn1ZfAWQqfCPecXbgZrOV/htGDsmL9
	YPqn2JYM9R3Z1gLZwM5uy/UfY1JL4w78H8kEuz6kaNJuCm62wVP7dD9DSR3LjMyhecFI
	kvvg==
X-Gm-Message-State: APjAAAVUWat7JUDxRN39Sf+f1ApjrMm8sE0p7JgdfBcHAmdyZxf9aNWO
	JH/t9u1V/C9jqItxwDJHxZv6leMMeqkSvEgEGQY=
X-Google-Smtp-Source: APXvYqzEdoobzrtm/2S4Xyw/lXoLMvqo2pHkxR/d63RWqe2UH5kwEE9xJWsn5Wi1FZ0QUB0sLKgSHccK5WbUgT4mhWY=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr2842828iop.306.1565089758256; 
	Tue, 06 Aug 2019 04:09:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Tue, 6 Aug 2019 04:09:17 -0700 (PDT)
In-Reply-To: <CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 6 Aug 2019 21:09:17 +1000
Message-ID: <CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Tue, 06 Aug 2019 11:09:20 -0000
Content-Type: text/plain; charset="UTF-8"

On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> You don't; package_qa is reporting real issues with your packaging, so you
> need to address them.

Well, my first issue is I need to build it, the document said it can
be disabled, but did not say how, appreciate anyone helps how to
disable it.

Thank you


> Alex
>
> On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:
>
>> Hi,
>>
>> According to the latest document:
>>
>> "Package QA checks are now performed during a new do_package_qa task
>> rather than being part of the do_package task. This allows more
>> parallel execution. This change is unlikely to be an issue except for
>> highly customized recipes that disable packaging tasks themselves by
>> marking them as noexec. For those packages, you will need to disable
>> the do_package_qa task as well."
>>
>> How can I disable the do_package_qa task?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>
>> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
>> > Hi,
>> >
>> > I was running my Yocto build fine until I had a minor change to move
>> > libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so to
>> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
>> > issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
>> > errors, please consider fixing them.
>> >
>> > Even I reverse the changes back the, it still complained the same
>> > error.
>> >
>> > I don't have do_package_qa in my bb file, where is it from? What is
>> > that error about? How to fix it?
>> >
>> > Thank you.
>> >
>> > Kind regards,
>> >
>> > - jh
>> >
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

