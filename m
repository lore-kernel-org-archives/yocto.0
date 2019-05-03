Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E035E00D54; Fri,  3 May 2019 05:56:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 185C9E00D50
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 05:56:30 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id u17so4350281lfi.3
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 05:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CjsVyYFFRRUz8Ever13gw7BErzHbAzRzYPB+jsqU/NM=;
	b=ocsGWWu7HW5kKYjecA8jncVMjiBWU2O71Pw+VK8JXZuMtWNX78tw/K80LsP8h61aHt
	NNCJXEM9attHvNM484mgoGoqx/JcalJRwAoFiZoxiAPYOG3xDdTy4W62muAufLBYROqT
	ciHlNq7QUP7qEy16cfTJFa1dUByqeYlF3k+iPjCaKpO10/s4OKjh6lBzR1HhzOx2Qv2S
	3y1lJgLQKgtUOqXtHHWdyw2PveXy6CZ3lmMsnU6XyHtrTBWH3TgBMQbjAIGR33NgLlvH
	Fu54MSeZiuOBubj5yYLc1wRJ3FatdmylMaSZo49UPja/5blnASfl8SvQVoOGtsNnE60e
	GCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CjsVyYFFRRUz8Ever13gw7BErzHbAzRzYPB+jsqU/NM=;
	b=cH7/Py1QPA7ekgGf1AJcIXuDmViRVEej5Ew8lnHIMAK1WnifB2Ll087inyUS1fano7
	jj6SfvmhaOWOtbrg0qV3g8SOenp8nmZYeNuvimVo+iS4fybV3V81hoPlusdCkIyUGUhN
	dYgV8ojjVauwfIx/iNBILx2rRnxP3ta/QfaIS9oplpn5Lx0BOMSlQsdTlDkeXgJH1Opn
	8paPwVnuxN35vygQDu4hV3pVIb36Mv7eRPjsvo6ANiai49HI/zNZ6o2JGAPCJPemlS85
	budWr66IVJXaOK9oY+ac3Sy2+Y7rA3Ev7f/6/qzdeDXLehywtq2VQn9NB1dlC6uzO6Ty
	doLA==
X-Gm-Message-State: APjAAAV10lHH9KCSbLr2kMbPfK/zJfb5HES580m6uJmdmkb7kXiB+UYG
	Nud1VnLTpYvRKlxHUN4y9m3JeWc88nkLLjG3EqyXTg==
X-Google-Smtp-Source: APXvYqxthTi1W7FyFpu2S40kuh/b4AdcCAt882Drr1Mg6NA+/4C+zSM0qdkLjXH238FxkT1takI+YGVSsYtFxM8rKuo=
X-Received: by 2002:a19:1987:: with SMTP id 129mr5354109lfz.80.1556888190102; 
	Fri, 03 May 2019 05:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWRVhxDwxX50GSMAHV4YKYE5m80aBMEuVLhNjMQQqffmhw@mail.gmail.com>
In-Reply-To: <CAA=hcWRVhxDwxX50GSMAHV4YKYE5m80aBMEuVLhNjMQQqffmhw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 3 May 2019 14:56:19 +0200
Message-ID: <CAP71Wjytfu1yC9nnhkZxx9DJaU-syzwMo0w74yZZiUYb1z8kPw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to create a cronjob in Yocto recipe?
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
X-List-Received-Date: Fri, 03 May 2019 12:56:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 3, 2019 at 1:32 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I try to figure out how to build cron job in Yocto image, my current
> image does not have /etc/cron.d, is it correct I need to install the
> cronie package (recipe
> https://github.com/openembedded/openembedded-core/blob/master/meta/recipes-extended/cronie/cronie_1.5.4.bb)
> to packagegroup, to create /etc/cron.d, then I just need to install
> mycronjob.sh to the /etc/cron.d just like the desktop cron job, right?

yes, to both questions.

if you need example from other recipes, have a look at
meta-openembedded and run:
git grep ".*install.*cron"


>
> Thank you.
>
> Kind regards,
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

