Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57FB5E00C11; Mon, 19 Aug 2019 04:21:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BB5E00C22
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 04:21:07 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id e27so1384682ljb.7
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 04:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=v+7wbRX0HqERHyOa8DGcTgYhNwdb2T8qDVM8i3GBXsk=;
	b=YD7e3oHQYRE/0+VbVheCLFizbz0RGovjoGMwS+npos0xxFJW+IRpITgvUZ7wK638mv
	ifPAvqe72h0A3KP9Gw0aV4jiPOKdJSM/Cg0m/LJ3buZY4+k47++er3cbXk+pYkYVQGty
	qYMM8Tn3r6CqHblyr2HPnnJhMLhxysp1uLQ43bwgId0WVcCNERXVcWrXbUQuu5/kj+QR
	zYNxPVoBld/TyChiEqkzb4I8JISM3bW8Ulkxz0+6Ay0Tcsrb1R/oPe/lbJl9f5nzcOSj
	/bnW9YuA8OxpXNpjV9ZFzzGI/DWKOYHqvmdgkcKhJD2tbBoKlkiOrR/UCgagt53nqKal
	hLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=v+7wbRX0HqERHyOa8DGcTgYhNwdb2T8qDVM8i3GBXsk=;
	b=oCU9FZwWqX9BbdB+GEQeWnjl2dwinSwxBHFBsQS1G6LuW8qkULhn2cY9XEU7WjXP0y
	+ZveJt4hfxf67EiR5Qr5J93gGD0KXvvZWM8VvrM16+fTw35Dg2LtUsW6GIcdRQyrTVa1
	/NWZHSwt3upoCTxZQO11d4d8sO2WoFOzFTFAM8/UbkA2278MjY7lNrgpRKUQIJAm5qju
	y/SkC3GheXSImVYb3XKO3+jnGwIAFsrJ5lA0f8c3vWUVwkXVAn1XiXesnUZoPmQo+HaP
	tkXqcckIBf0QCeIyj6ItKcW1C3K7nDzTQK38AuqZK15vWE3qGKUtvN+0WUhVP5TWU87/
	naMA==
X-Gm-Message-State: APjAAAUQOKYNZCvfUG3A9+pfFPuyC85sEq1wBL6uYSd84kHxGqpJiLL6
	BCXxBusko9WEkujNn3fKEWFOWo/I/7gxHT7yGn8kNA==
X-Google-Smtp-Source: APXvYqwv+epqjzP+BZ5qgiyAcngmt5axGQ9gBEuYHB6wOIeAevWZyXbUFILF+5pZnt6Y2wMfw0q980N7h/5w24SxbiY=
X-Received: by 2002:a2e:8e87:: with SMTP id z7mr6619512ljk.211.1566213666060; 
	Mon, 19 Aug 2019 04:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <1a542261-a335-db48-e7ce-7c1dda207ff1@balister.org>
In-Reply-To: <1a542261-a335-db48-e7ce-7c1dda207ff1@balister.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 19 Aug 2019 04:20:57 -0700
Message-ID: <CAP71WjxFASX0tvkYA2+Bg9M8yquK4GZCWnoiV8xZ2AT04zr3Wg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Summit at ELCE Call for Particpation
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
X-List-Received-Date: Mon, 19 Aug 2019 11:21:24 -0000
Content-Type: text/plain; charset="UTF-8"

hi Philip,

thanks for sending this out!

On Mon, Aug 19, 2019 at 3:17 AM Philip Balister <philip@balister.org> wrote:
>
> At the past few OopenEmbedded developer meetings, people have been
> asking for more developer and user focused events like a miniconf.
> Partly based on this feedback, there is a two day event sponsored by the
> Yocto Project that provides a chance for people to talk about the Yocto
> Project and OpenEmbedded. The CFP is a bit buried on the page and I like
> to get it more exposure, so here the direct link:

all information about the Summit is also available here now:

https://wiki.yoctoproject.org/wiki/Yocto_Project_Summit_2019

>
> https://events.linuxfoundation.org/wp-content/uploads/2019/08/Yocto-Project-Summit-2019-CFP-1.pdf
>
> We'd like to see new faces talking. We know there are a lot of good
> stories out there, that will help lots of people become better users and
> developers.
>
> The link to the event is here:
>
> https://events.linuxfoundation.org/events/embedded-linux-conference-europe-2019/program/co-located-events/
>
> Follow the path to the Yocto Project Summit. If you are alrady signed up
> for ELCE, you should be able to update your registration to include the
> Summit.
>
> Philip
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

