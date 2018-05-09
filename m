Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94F93E00C59; Tue,  8 May 2018 20:32:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 814B2E009AC
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 20:32:48 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id z8so26469941qki.11
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 20:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=5bU6mKDGFsuAdvl2EaGa2/TgR1Uuk9xG1Nnqn47mIXA=;
	b=eQYpj8uQBFy9L5/dzrTcchA5IG6GVrkZ5VQVskw+D7UFRg4/OdPXMBeRJ8vlY/Va6O
	8D5pS8o+3x4b/OR3MrOC/O4MWC+eGEmc1csMrtaF2vzufIYqs3bQR73aMcNjHet5PgIL
	Gw5AYRtgjJgKrQ3/oyAt/6qUyQBrG+DhfuhcEtOhJPL2d/bH3BgPirDeYs5HrP+0qU6B
	+j27d2cwj196N2kYpK/D1ckj8Itp4b2pIGSJdwEmPtIJsS6Ec9+UmVNehyDsjNsCyov9
	zeUDdw7XHh+PTp/MB+OJXnLjVCgkMUc6CfGifKvKF0fPRROlWsy2kTEdFEGHamd9GjSn
	s9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=5bU6mKDGFsuAdvl2EaGa2/TgR1Uuk9xG1Nnqn47mIXA=;
	b=hkph8EyKcgwZahmYvd2ZPvohIRytWZOLYuFsJc7GKf26Vmb0mOy9LllIYdXbLOI1P0
	CS1ZeFWoAHweMqqlxB+AF6s5iyiWnQKBBJDuNEOFobav4dW5Uma7MPRwtTqNgad7EbB6
	UVnJ5E99FAVsprAuqfOa4RvEl1kF/UwrJc3POA0sCwXSI9yCz6+OXUb2XbQSpajGA0wX
	rhrey60Qrnh+4KWr4GC9fSkjllmmXAAyqdmF2gxSNqiFw4vX2sRUtYjzNAtNz/MSrBRn
	LvrtCFqRe8Uv0jO7PwGqo9paPHwhB4bJIUK+26/T60eYYhJBr+Fy0xhXQj36kwYM+yLU
	JvBQ==
X-Gm-Message-State: ALKqPwfMpeoQiy6/H6Gn3pVqFG2p40P9D1uKdxRvzJmjrDqEY+5OelCF
	ia63xWDmARneeahc6cUxBGi6d7uKedQH2pmifLc=
X-Google-Smtp-Source: AB8JxZq7suoR9odn8ZW+pwuimLu4R0ARzLM4/WRAVrqamarTiP39yYj33xCTcVyfHMU6z83EUS6AeAPM6Wcy0SF5cQQ=
X-Received: by 10.55.165.66 with SMTP id o63mr5203730qke.57.1525836767117;
	Tue, 08 May 2018 20:32:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Tue, 8 May 2018 20:32:46 -0700 (PDT)
In-Reply-To: <CA+YB3raaF45piohqCHwuxPXBsVYp54g3invvbUcPr29TUMdiuQ@mail.gmail.com>
References: <CA+YB3rba5-xUdzRg2jE8oaY6+ZLhu3ROV0O6_=w7Dc+qPVSqpQ@mail.gmail.com>
	<CAGAf8LwBWH7DQPRyTDgzuuJYCYZxHvjrzva3a03DzksYd66shQ@mail.gmail.com>
	<CA+YB3raaF45piohqCHwuxPXBsVYp54g3invvbUcPr29TUMdiuQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 9 May 2018 05:32:46 +0200
Message-ID: <CAGAf8LwA4BKgpfP-n+t+oW-bFcesTH0vN3cRwVnRxxoDehu4xg@mail.gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-members@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: Yocto Project changes in progress
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
X-List-Received-Date: Wed, 09 May 2018 03:32:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Once I (at least I can speak for myself) embarked on this YOCTO ship,
voluntarily, I do not consider leaving it. I like the concept,
although there are problems with it.

I could not commit too much time to it (since I have another
commitments), but I keep one eye on it, primarily trying to learn,
and, as abilities allow, to help.

Big IT players' politics is driven primarily by interest. And interest
is changing over Time, due to Global Policies and Economy shifting...
Well!

Zoran
_______

On Tue, May 8, 2018 at 11:20 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> Many projects function this way. It is one of the strengths of the open
> source process.
>
> I'd be happy to answer any questions.
>
>
> On Mon, May 7, 2018 at 9:53 PM, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>>
>> Very interesting, indeed! Newer knew that Richard (Purdie) is/was
>> INTEL employee!?
>>
>> This announcement gives several (conspiracy?) theories... Some
>> official, some unofficial. ;-)
>>
>> As independent thinker... IMHO.
>>
>> Time Will Tell!
>>
>> Zoran Stojsavljevic
>> _______
>>
>> On Mon, May 7, 2018 at 11:53 PM, Jeff Osier-Mixon <jefro@jefro.net> wrot=
e:
>> > Hello everyone. I'd like to briefly address rumors around Richard
>> > Purdie's
>> > transition from Intel to a more neutral position, and Intel's reductio=
n
>> > in
>> > resources for the project.
>> >
>> > We set up the Yocto Project in 2010 through Linux Foundation, with ove=
r
>> > 20
>> > member organizations, so it would function as a true open source proje=
ct
>> > -
>> > neutral, unbiased, and well distributed. Those things are what make op=
en
>> > source projects less vulnerable to any one person or company. This is
>> > actually a very exciting transitional time for the project, and all
>> > existing
>> > member organizations are fully behind the project. We will let people
>> > know
>> > details as they are available.
>> >
>> > Meanwhile, the 2.5 "Sumo" release is on the way and should be released
>> > soon,
>> > the 2.6 planning process has started in earnest (please participate!),
>> > and
>> > we are excited to see what the future has in store for the project.
>> >
>> > --
>> > Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation
>> > Open Source Community Ecosystem Strategist
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>
>
>
> --
> Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation
> Open Source Community Ecosystem Strategist
>

