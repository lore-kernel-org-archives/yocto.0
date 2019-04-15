Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB58E00CBC; Mon, 15 Apr 2019 08:34:13 -0700 (PDT)
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
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E135FE00C1B
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 08:34:11 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id v14so21052313wmf.2
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 08:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=Yhpm3WriPwyEFjtlHqgwfnN0138iY0PnZnAWJ5Nv3RY=;
	b=OBL65QOKBG4z7MUavzlzGQtt7xPELr/ncUBIjT0uo8v8ZRtQHcqXc3IStrvLOhJ1pp
	vwq5hxbiodsaGnsFvIx1gnpPxOl2TNss887ZCdQlliN7U5B2pod4GP72tZS+KXS3tv6z
	RyKp0e+y60TZ+6ZRNSLS0ztzzPi5ZRYA8oR5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=Yhpm3WriPwyEFjtlHqgwfnN0138iY0PnZnAWJ5Nv3RY=;
	b=ZZQgu6yfUX6xNOh6sW5CnpGTAknpz6RhpnCrP+q7LfJ1OqkOa3ewkCT7C0lnsClR1i
	gGh24/L+Z7zdz4xIgHEesM85swJC+6s6DLWtSEUu6HfXRbo8GBj2u+XdX2exaX5CTZpC
	C3ChaLjCP6qT4zJNSVpvXxQUfg9CkkTiBjAehvkoIuz1mK3ixraBAGp3MjpzXAwNRQZY
	nkAD02KkFVBxIYYvBPriu9l1avo90jd3zyRdvJKr1aEcUfk5jaFl7g6t+yk0seC8v4Qp
	CpTgClq2V38nXDbKHjvZP3l3jFZsUgS1V07N3e+eIah1m7yyth7EfMCZespInTvoy8Oq
	cHHA==
X-Gm-Message-State: APjAAAW6HjixRPmcFSVauzIg3U0miiXK+rk9PzQvOFd4Zh6hqnlOCBJ2
	kLwamsgrIcj1BD1ltowrQ94IWA==
X-Google-Smtp-Source: APXvYqymefubEy8wf1dXmesFiJFCm4sriMgGOJAgZ0PVkxNjJhDdy4gd+ejufCtvz+jvTHUiHdxRbQ==
X-Received: by 2002:a05:600c:2294:: with SMTP id
	20mr20840844wmf.56.1555342450905; 
	Mon, 15 Apr 2019 08:34:10 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	z84sm22404794wmg.24.2019.04.15.08.34.09
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 15 Apr 2019 08:34:09 -0700 (PDT)
Message-ID: <bcc6b9e58a9148d3fa8d3d64732e6cbeba5ca88a.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Eric Grunt <gruntblue@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Date: Mon, 15 Apr 2019 16:34:09 +0100
In-Reply-To: <CADB9fJFY+MJsRPYgWzDxqH6LoxrDY9KVEbn92PrJ_KvXY=LPBg@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
	<CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
	<ddddfc4db6df73aa86ea934140c6795d1d912c0e.camel@linuxfoundation.org>
	<CADB9fJFY+MJsRPYgWzDxqH6LoxrDY9KVEbn92PrJ_KvXY=LPBg@mail.gmail.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Mon, 15 Apr 2019 15:34:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-04-15 at 21:43 +0700, Eric Grunt wrote:
> > Notice how the function names for squashfs are:
> > 
> > do_image_squashfs_xz
> > 
> > not
> > 
> > do_image_squashfs-xz
> > 
> > This is because shell functions/variables can't have "-" in their
> > name.
> > You need to change to us IMAGE_CMD_squashfs_xz_ubi.
> 
> I tried to basically change all "-" in the fs and variable names into
> "_",
> but this didn't change the behaviour.
> What I do not understand:
> The filesystem type squashfs-xz (included in poky) uses "-",
> among others also for the IMAGE_CMD name ("IMAGE_CMD_squashfs-xz").
> Only the dependencies to squashfs tools are using "_":
> do_image_squashfs_xz[depends] += "squashfs-tools-
> native:do_populate_sysroot"
> 
> In the case of squashfs_xz_ubi the IMAGE_TYPEDEP_ dependency
> to sqashfs-xz is ignored.
> (experimentally trying to change that dependency to squashfs
> (a name without "-")  does not help)

I think there is some translation code somewhere which probably
confuses things more as some bits have - and some have _. Does the
squashfs_xz image type actually work? 

Cheers,

Richard



