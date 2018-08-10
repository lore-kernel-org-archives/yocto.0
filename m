Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1B27E0086B; Fri, 10 Aug 2018 07:28:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A3FFE006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 07:28:53 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id v8-v6so16102002oie.5
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 07:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Agk109mxwBwi4mQF3bEyLUaf5zbDyrwqQwmUOSpuSYI=;
	b=Kqi7/XuuEPZX8Z4hSS+WzvAswpJ5svZiLtDeL/NAY8Nbkp8x7TrMWw4dHj66MehDkX
	pDz8E6PYLCNXLTA9EMe5JD+1pKUAZQYcKblgU/t6mnoZ2Es8ziQsacKjcNJz7vqxcqi8
	jeSeZ2i/OATz5gT0XSWXR6AmD6YSyGgATH05amqQbcgVCAbSt+fJaj0cYfxfmBmXbMDS
	AGyul9kEnh1Dfi+bbl9vt3EuxYLjeAAMFKolr5lNW3r5wyE2ybJ1qT3gq0t8nURPtyCk
	A+Rp1rVq+H4RdN4fRCwBMsQBwuqpEJLiOFLdBtsJaFcy3MhqwpaHBGBqssCiunzwA1ck
	OzbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Agk109mxwBwi4mQF3bEyLUaf5zbDyrwqQwmUOSpuSYI=;
	b=PjIqgSuOdt/63IxzjrB2AfJ8TkEtCHNLmGQWJgsfKLqw+B95E/AUZ8C/nFDefCDMGn
	b4fiJEUi4R5oM9Wwb570/J0CVs1Izv+53Gm6dUvko7IPhOaEAnFvIdL9MqlNwX6z5sJB
	zCe601QCjb1XVlHK2wBtordU2ZZ051hJF+t3PI/6V2/MAOH5UGRaTlHAha9x71At1S7s
	PJOcYvY5GCDgD5/07CtK3uk5Sox3GL22wZXFx8sRkAnkz6HPIFJ4I90OIZMui8TOu6L5
	Ew5q1Vdq9EQPF20xfSkyzVd7yzSKQqdqPH0jcq4+LMGNuUPzEqGfSYvU9op7XSwWBbJU
	f8WA==
X-Gm-Message-State: AOUpUlEz7WyexyAGXIAYsP9PF5lcn8Ca37OZvsXQdAAFWvSEg2JRqR6G
	xTtkoz9wgTKybeAQLtGDPQyi66s68KYTOeSclUw=
X-Google-Smtp-Source: AA+uWPzq0uZAr4gftSU7bF2a9eoNT/Ndhj9OdWO5FSLqFG9en3W5rpObShubZAk5tayNhX5zIQm/MWOOxXYJW6u5l2E=
X-Received: by 2002:aca:5754:: with SMTP id
	l81-v6mr7492016oib.100.1533911332923; 
	Fri, 10 Aug 2018 07:28:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Fri, 10 Aug 2018 07:28:52
	-0700 (PDT)
In-Reply-To: <d807b1e4-6d66-39bb-2896-026a259a0fba@faresoftware.it>
References: <d807b1e4-6d66-39bb-2896-026a259a0fba@faresoftware.it>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 10 Aug 2018 16:28:52 +0200
Message-ID: <CANNYZj9pu+Q_dvE_L-2XwOk8m_xLHGuHGO6oLfYUwUxyxEK_4w@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Image with the right version inside
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
X-List-Received-Date: Fri, 10 Aug 2018 14:28:55 -0000
Content-Type: text/plain; charset="UTF-8"

Give the two recipes different names - app-release_1.0.bb and app-latest_git.bb

Alex

2018-08-10 15:36 GMT+02:00 Mauro Ziliani <mauro@faresoftware.it>:
> Hi all
>
> I need to do this scenario.
>
> I have 2 image recipes:
>
> - final.bb
>
> - testing.bb
>
> final.bb and testing.bb install the same application name app.
>
> For the app I build the recipe app_1.0.bb which downloads the source code
> from git with tag=1.0, app_git.bb which downloads the latest commit.
>
> - in final.bb I'd like to put the production version of the application:
> that is app_1.0.bb
>
> - in testing.bb I'd like to put the testing verstion of the application:
> that is app_git.bb
>
> Now, when I bitbake final, tha app_git is installed. This is not I want.
>
> How can I force final.bb to install app_1.0.bb?
>
> I tryed PREFERRED_VERSION_app="1.0" in final.bb recipe but it seems not
> work.
>
>
> Thansk all
>
>    Mauro
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

