Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A436E00D75; Tue, 17 Sep 2019 21:31:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.boto[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8192DE00D6A
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 21:31:10 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id a2so3496373pfo.10
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 21:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=kz4L7nlZXS7AdwY91PquCUvn5EPiRnSsD3eqnqL9KuQ=;
	b=ER31V6F1tl6THgPmUn1qJk0A3jnAGVtq9poVr62MtCoAGAUHz54n78LHgEy1tiNnoq
	bBbxf2hOFzeBnszJuKWnnQ+h7cdmk5B/qT/5mKNhDyMN0VjOERzQrdezPec/hWyyTtoM
	JblcJ4B2pKzovZTOkw1unJDip4Vk2wAzqm23q3pJCE2FaEyTbHQjX9lE9Y22KF5sZ0/S
	WOSQQA5l3NNQIp7T6v2OJ3M9aPBejBJsOaUyhr5QfgRBALp+FMcCijKb+i9DVRqQxDWt
	3/RhtnU5j+CuZLmV9/QoVEZlWTIhsaBXtn/YlZCl4sWBlMj86lz83faSUjD31IEbLAOp
	+2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=kz4L7nlZXS7AdwY91PquCUvn5EPiRnSsD3eqnqL9KuQ=;
	b=gGbpGVF6VquCpF5KizKdwT3uKC1MeA/bxG7DlAopdceLyMK3YoYE1qOSC+28e0js3w
	Qfq3gEzdVw7dyIK5G/4Y5cMC8mscCbc196ys4psemeLQMA3cmvMuRS9sTq4aHfLjxxck
	3D4iKJi2MrnaTiNtGkdWmcftKcpVCtDd/OVpFigM5EI77195rKTPU/8p7wIGKw0cKT//
	KsQ5VlObOQRdZUFx32UVHcK0XwakZbLdR5hLi7jrbHIF9BE/eYxSqPsIBwlQdaEQthEI
	Q6IJXnaCljfHbxujUFLD3RvoaKcP5bkhg5wJDAUZ+cju4SQRKKgNn1aP8sObVNWaNxWQ
	oRoA==
X-Gm-Message-State: APjAAAVaXByeKZ4eifcMwvqhhjFbprUXALgpKN7Kp9NaaP3JPHyu1hfi
	JSCrWAr4r4Bz8UgxdlUaQDb9hcfz9M/18RCMMaU=
X-Google-Smtp-Source: APXvYqwzGHL7ZAQ4uixfw+n5OfbxPxxpnPZqCXQpKL0dTqRAvMYfbn/v+mgRyVf6pGls58QEUxhdXBxKiPPhSjW5HnI=
X-Received: by 2002:a62:7597:: with SMTP id q145mr1933996pfc.181.1568781069657;
	Tue, 17 Sep 2019 21:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <c875b530-6d7e-96c8-f93a-fb6cf801b338@linuxfoundation.org>
	<CANbFEgR9wSP8ncDp26bUPzio506PDQhCXVR4C3JX-LupF743tw@mail.gmail.com>
In-Reply-To: <CANbFEgR9wSP8ncDp26bUPzio506PDQhCXVR4C3JX-LupF743tw@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Wed, 18 Sep 2019 06:30:58 +0200
Message-ID: <CALNvYWPgexqJE5_uM7X9iXd-px8RDmmtnpUWS-UKczX07gOQ+g@mail.gmail.com>
To: Ari-Pekka Sihvonen <asihvo@iki.fi>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Hi, I migrated from sumo to thud an I am having serious difficulties.
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
X-List-Received-Date: Wed, 18 Sep 2019 04:31:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Sep 14, 2019 at 4:48 AM Ari-Pekka Sihvonen <asihvo@iki.fi> wrote:
>
> i have raspbertyoi3 and I had working sumo build environment. When I chan=
ged to thud all fell apart. I have custom config.txt and cmdline.txt and at=
 thud I have no possibility to make them custom the baking stops whining th=
at the file is already there. What evere I do Yocto complains.
>
> Any ideas.

If you could post a bit more info on the actual errors, and how the
bbappends you use for adding the custom files look like, people here
will have a better chance to understand what's wrong.

Cheers,
Erik

>
> BR AP
>
> On Sat, 14 Sep 2019, 02:12 Michael Halstead, <mhalstead@linuxfoundation.o=
rg> wrote:
>>
>> This Sunday I will take the Mailman mailing lists offline for updates in
>> preparation for the platform change. As part of the update I plan to
>> change the list addresses to their new dedicated domain
>> @lists.yoctoproject.org so we can start changing addresses in the
>> MAINTAINERS files and elsewhere.
>>
>> Moderators, thanks for helping by clearing out the queues in advance. If
>> you have outstanding moderation or trouble clearing your queue please
>> reach out to me.
>>
>> I will send a follow up e-mail with a new time line for the platform
>> change after these updates are in place.
>>
>> --
>> Michael Halstead
>> Linux Foundation / Yocto Project
>> Systems Operations Engineer
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

