Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5157E00C1B; Sun, 24 Jun 2018 14:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A43EE00C2B
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2018 14:05:19 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id e8-v6so10651466oii.2
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2018 14:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=07ct7U7kBPvh1yOPr9KVkbd3MRpa97dMrdMFAPT0C4s=;
	b=pcDiPUj08y5BqnYc6kpAigI0CF5ZSDnH34E1pzXvko6WVqI2ULxFplbVCoY4gMPFnS
	CthBb3v1URnnOGMZRdXr3Tf6OVjuMAczWK1JibjqgtQnarQ0VGxNGSFrZmshWd2QRpcx
	oUjmNb2BjXvNE8zoP//Z6i2rzrRaFX7EXTMDHHFV1H2oO1T+kbCHAoVYO7NCCFZhltV7
	2RRC/B1jaaWkUSEzCBu8J7NvYU0tO16SnEoRQ5WZqhTy9LhjMbiGLtCoRscBMGCOyEB3
	RMYdiIybP5GjJfwP7KQb8NpRlaXeTcKtQp1HYCJRLlR3zOmUc12oFIJMA+wVWKqx7EoC
	1LLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=07ct7U7kBPvh1yOPr9KVkbd3MRpa97dMrdMFAPT0C4s=;
	b=SyeKlXT1oO1v0xVQAE1x1/Wxn6rgWtuPfSOOdWVXRQ4BFQvJflpq3EkMqAnPCqvD4Y
	0QK+zMalAeeGYNHz+nbmRsAr0GD2QEP4z0E+37vLwQ7q5tpy3e0ePQK2D44nmgVYpRui
	nvCMJ1/fsDejw5Pb51dEzk9iHPjDTUWe/4DJ60hnGY2JIhBo2bEpBct7Nj84n9SvCzOB
	Vf3LY9x0gVBUVz0NUFum1JJLZmig8e3DfA7OpY1CuU+YGKMMeXRCABvABEa53H8BTmiL
	Vule7ZPI8b8uZlTW9JNr2ugWc0fq4RImmQXszAijxye25H1V0PqIluE4T38X9WZJvBUk
	9mCg==
X-Gm-Message-State: APt69E2ZNTQS7ioLW6/lTQwrGyL4aeNwW0uZsLu5UZDzFFuFlRv491/J
	jVqx+HCDgH1t4GPsc9P1RD86yYgkA/Xvha7hpdc=
X-Google-Smtp-Source: ADUXVKIjhdrJBaITRywgRxp6XkKz87GspiGq9g/U1blx9zi60+1grtq5t2CSQox2M91GLAqKFlecLRO0fhmZcrTc1Vw=
X-Received: by 2002:aca:47cb:: with SMTP id
	u194-v6mr5758682oia.45.1529874319301; 
	Sun, 24 Jun 2018 14:05:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Sun, 24 Jun 2018 14:05:18
	-0700 (PDT)
In-Reply-To: <CAJK=4YaPrqPzU778e3shLKZuFsdNFiF4dhCYd_EA6LYsce8J4g@mail.gmail.com>
References: <CAJK=4YaPrqPzU778e3shLKZuFsdNFiF4dhCYd_EA6LYsce8J4g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 24 Jun 2018 23:05:18 +0200
Message-ID: <CANNYZj8gbL2Mj5jGeZZVcM-nsjXL+-hyQu-YNHoW4B6YROy3dQ@mail.gmail.com>
To: Selvaraj V <selvabe99@gmail.com>, derek@asterius.io
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python 3.6 recipes
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
X-List-Received-Date: Sun, 24 Jun 2018 21:05:21 -0000
Content-Type: text/plain; charset="UTF-8"

2018-06-24 20:44 GMT+02:00 Selvaraj V <selvabe99@gmail.com>:
> I had looked at the Python 3.5 recipe for using it as a template but adding
> to my troubles there are patches mentioned in the recipe. How do I find
> which patches to include if I am starting to write the recipes for python
> 3.6 ?. Can I know the procedure to create Python 3.6 recipe ?. If there have
> any been any effort made to create the recipe for python 3.6 can anyone
> share me that link?

We've had an open bug for it for a while, and I think Derek has done a
bit of work, but it was half-done:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12375

So the python recipe in oe-core still needs to be updated. No need to
create a new one, update the existing recipe, and rebase/remove
patches as needed.

Any help here would be appreciated, but this is not a trivial task,
and if you are new to Yocto, it might be too much for you to handle.

Alex

