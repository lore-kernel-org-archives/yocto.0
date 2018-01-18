Return-Path: <darknighte@darknighte.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70EFEE00DA4; Thu, 18 Jan 2018 10:16:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44396E00CF1
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 10:16:47 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id s3so32492993qtb.10
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 10:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=darknighte.com; s=darknighte;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=B2gzYosHFWNlEGcLtMlZhiVa109obO/2AaogLl7QclQ=;
	b=JJOMYc3e+pKJkZKd6EqhoHqiQ1n9KTzBrupyPNGyhaOKyLdQD3nS0L5m9MKLGOmZLs
	Y8QlrqSeTRo6aeXnA/TomiSmBx5sSoCyB70jZzB6B0rOAyNb4hLChBkDkPmYAtOBKOQ1
	zDMraQbFxfqnt/KAYEskdVHWfsEZCsdyx+9ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=B2gzYosHFWNlEGcLtMlZhiVa109obO/2AaogLl7QclQ=;
	b=C3/fp57QhWU9TXssGZ7Qti03TRr6B7efVThfv1CQDxxp5emz6ko3DpuagfTv1CQZ03
	6TwYB7NKTg3a6F4gQjR6GyjGTmLJlbOoXJ1g3Uvd6HONHc3g3X0x5nBZs7KE7P8dewb4
	iNACl/2GHh3t5qH+uxazJFLKmCag3WmNVvM6Y8XraLJRfmWgUwGwUgVSFU+Xh6X71eEF
	hzMzLP1ZFELOmljx8wScHsBsZYfT3oleZKzcT05qOLChLMiADO7mpFuzVkUhgnnTF7wq
	wQXyHadiphTAOPPbW2YxxTIupTqw4BnCt74yIfb7o+BlYlNJDKRQHAWv8yQwpgn8xul1
	zvdw==
X-Gm-Message-State: AKwxytcu0iuRNG+OFWsPKytusnNjS1RYM4QzJwlMLaOt3mEJ+uvt/9/C
	jqf9txlgiWDuJE91Ub5gran0EJ+AqouYqgyz/HGlMQ==
X-Google-Smtp-Source: ACJfBos66JoJm6cC4PqbPq6OuGHNN4+m9A9vgyON4npp6oFpaodDDUeznbqgfYY2ksJErzU9F5xJodgRW8F4iH0Ex8g=
X-Received: by 10.200.7.133 with SMTP id l5mr8216487qth.91.1516299407307; Thu,
	18 Jan 2018 10:16:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.190.142 with HTTP; Thu, 18 Jan 2018 10:16:46 -0800 (PST)
X-Originating-IP: [47.220.159.208]
In-Reply-To: <CA+YB3rZ2ZthR+bV0RZR-Af4q4X1OhEWo4oy9YhizVbHDnw+=ug@mail.gmail.com>
References: <137d31ae-329e-53ff-f495-259168b787d5@balister.org>
	<CAGAf8Lws8HfvDvMvdpgXyTvKaVpmf5a1UUTbBc2OrTpw=mgPNA@mail.gmail.com>
	<CAHQecY5FEt0jMY97Cfq7tR4KAETqied0t3zfFgXw=J5YBSz53A@mail.gmail.com>
	<f94fc2c7-032a-651a-a0d2-d5860f133b6c@balister.org>
	<CA+YB3rZ2ZthR+bV0RZR-Af4q4X1OhEWo4oy9YhizVbHDnw+=ug@mail.gmail.com>
From: darknighte <darknighte@darknighte.com>
Date: Thu, 18 Jan 2018 12:16:46 -0600
Message-ID: <CAKM2CVKDwg3-kTRaY87+0v5=n0MCaA34bLE4=roKwvfFGUe0Pg@mail.gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
X-Mailman-Approved-At: Mon, 22 Jan 2018 02:21:21 -0800
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [oe] OpenEmbedded developer meeting Sunday before ELC in Portland
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
X-List-Received-Date: Thu, 18 Jan 2018 18:16:49 -0000
Content-Type: text/plain; charset="UTF-8"

Jefro, That sounds like a reasonable approach to me.  +1

On Thu, Jan 18, 2018 at 12:04 AM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
>
>> We know. It is painful. YP Dev Day is the Thursday after, and I suspect
>> we would lose people waiting until Friday.
>
>
> SCaLE doesn't usually coincide the week before ELC, so this year was just
> bad timing from the universe.
>
> I propose we start with the board meeting at 9:30 and plan OEDAM to start at
> 10:30 to enable people to get there. We can have lunch late and go until 6
> if needed.
>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

