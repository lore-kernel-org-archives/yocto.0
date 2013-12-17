Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 180B5E007BA
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:15:14 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 93B06F811EA; Tue, 17 Dec 2013 09:15:13 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	WEIRD_PORT autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A9221F811D8;
	Tue, 17 Dec 2013 09:15:12 -0700 (MST)
Message-ID: <52B07899.7090601@mlbassoc.com>
Date: Tue, 17 Dec 2013 09:15:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1387221202-1702-1-git-send-email-gary@mlbassoc.com>
	<CAK18fxHXN4UdfeTHkpQOptzvddexJfDmj6Q0A+gQLA7WEfeL4A@mail.gmail.com>
In-Reply-To: <CAK18fxHXN4UdfeTHkpQOptzvddexJfDmj6Q0A+gQLA7WEfeL4A@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.12.4+
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
X-List-Received-Date: Tue, 17 Dec 2013 16:15:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-17 09:09, Andrei Gherzan wrote:
> On Mon, Dec 16, 2013 at 9:13 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     This kernel enables camera video via the new 'bcm2835-v4l2' module.
>     Just add 'start_x=1' to your boot config.txt
>
>
> Would you please add this info in README? I think it would make sense to centralize these kind of knowledge there.

I already have a patchset which explains this in the README,
along with automatic updating of the config.txt file, similar
to other settings.  I'll send that shortly.

>
> FYI: https://review.gherzan.ro:8443/#/c/34/
> --
> *ag*

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

