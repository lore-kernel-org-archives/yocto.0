Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71F28E00BB5; Mon, 23 Jul 2018 05:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F713E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 05:32:56 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id n84-v6so757321oib.9
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 05:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=n1nAN+tM8C5iUs/7KnuBMK/x+D1iMZPGfgBo/Sq4tBs=;
	b=ds741TJcb+QegF1LfQiBg82nBSCJH7+At35pWQlz10GAsR5m9TCTrcr702KGiHWKlr
	nsiQdLXgCWwyfqNXKrDVmdyHpaz3Y0TZ3AAxrGbaozmZ9n+RQEYC0qTHUPIz1oXeBdY6
	TGf05+WWtUR9MT9ePylKHFL9+6PZRMOQ1FiOPYR7zC3bmZtuJIj5KbZyKf24h48X3l6Z
	fVScX+/3YegcgRRfkckO99v5q27COIlJTw1wnsV81pnRTfudWdESwVkRPlAvCXRy6dge
	To3texhqI5QG6FulO5ztzC0JxiPFgSXAPzRCtsWwMAWGIbPnh2mwjFPxXzosl1vI7qSw
	IP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=n1nAN+tM8C5iUs/7KnuBMK/x+D1iMZPGfgBo/Sq4tBs=;
	b=WbNqmgQhxRe3tvhMGgAXSRtJVYzSB4DbW5VX8X69MUbmvIeW4fsoslNE+pRVaSXgwo
	faCNW9XZtboq5DroFXZI8Cfi9RWDz3KaeYib+jdjPpGptfdxEl5+ukkgM4BbLoyNX52N
	J7N1+pPSP0cqIGx8Enjn8DbKOuamNhnSnbcZ+cOdQqeGV7vEN4vr5ypAS3S6RzQH7bNM
	jee3Uu5G7k5f/dcAf71eqbLybgRYkJqRWfrOO8gBgaOXn/KFV+A8AUNRMlJ3rwoZr7Fh
	PyOmtwlUVGiV+8zq35dTy3kPsr+bhZttmq0TzjqANBgxCiV2c/7om1sUHceRkoAEeBK2
	fU5w==
X-Gm-Message-State: AOUpUlHdIzpoepTvdUgnAFKw/i8K2U0IL72LXvqrDLK4If9igA3h/HIF
	hAQsGAmyAN8KyrpAseVJdORMhmEszjaqXKmgxzUUsg==
X-Google-Smtp-Source: AAOMgpdw5qKNTU8FDLLao3QUTn+I76CBOyCZul+Op+3r5ab1ynEWLwfv1kOwgZeWImKxDUxobc3GIDfqQR84xHzY49o=
X-Received: by 2002:aca:efd7:: with SMTP id
	n206-v6mr9086351oih.70.1532349176375; 
	Mon, 23 Jul 2018 05:32:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 05:32:35
	-0700 (PDT)
In-Reply-To: <651763aa.c913.164c7054669.Coremail.13824125580@163.com>
References: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
	<CAJTo0LYL1eMn_-UceCKC9iKXw55DHAtW-QXQe6_3mTxEOHitWg@mail.gmail.com>
	<3c97b7e9.c148.164c6c42e67.Coremail.13824125580@163.com>
	<CAJTo0LayFeK4Vx4VJqqVVKXuBsvxJhtq1NQhq3wG4jm7-ojjxw@mail.gmail.com>
	<7c2d86c9.c4ae.164c6df4642.Coremail.13824125580@163.com>
	<CAJTo0LbvWjx-H84LSoecJwRxpNuPU-TaWd5YcLa+p4=UtjJw3A@mail.gmail.com>
	<651763aa.c913.164c7054669.Coremail.13824125580@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 13:32:35 +0100
Message-ID: <CAJTo0LbJ7d68-2-5atpak-x+P3JK-47rfXSZy9Uw8_8ZeknfTg@mail.gmail.com>
To: tugouxp <13824125580@163.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "Unable to find header curl/curlbuild.h" error on porting
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
X-List-Received-Date: Mon, 23 Jul 2018 12:32:58 -0000
Content-Type: text/plain; charset="UTF-8"

Doesn't matter as the file doesn't exist anymore.

Ross

On 23 July 2018 at 13:02, tugouxp <13824125580@163.com> wrote:
> hi burton:
>
>    thank you, just as you say, i remove it.
>
> but, did this operation affect the function of the curl? or it does not
> matter?
>
> thanks !
>
>
>
>
>
>
> At 2018-07-23 19:37:43, "Burton, Ross" <ross.burton@intel.com> wrote:
>>On 23 July 2018 at 12:21, tugouxp <13824125580@163.com> wrote:
>>> hi burton:
>>>   sorry for that. :-|
>>>
>>> i still cant get what you said, forgive me for my foolish on that,  can
>>> you
>>> show me how to do this?  thanks for your kindly help.
>>
>>Find the curl recipe, open it in an editor.  They'll be a block of
>>code which calls oe_multilib_header, delete it all.
>>
>>At the end of the day this is a broken upgrade and is either something
>>you, a colleague, or a supplier did.  If a supplier did it then they
>>broke it, and you should tell them.
>>
>>Ross
>
>
>
>
>

