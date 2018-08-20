Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D92FE0090C; Mon, 20 Aug 2018 04:02:47 -0700 (PDT)
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
	*      [209.85.218.54 listed in list.dnswl.org]
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F89E007C9
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 04:02:45 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id m11-v6so25081149oic.2
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 04:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YVuqFtww7UNvTUjRvpmiTKJon7QAp2wpYCpvz/6Pa18=;
	b=H9BoQclU2tDQVujPSlxyq5ickVAu9XBXBG7cQ8LIzC/I1wwwx38A3MiOE/43rNTaun
	SvIR01wuCUA2Muik/mSD5LE1EYGSlFTEcL0ivyouYvboeGK6HCrKwWnxk2+Mitrr5l7S
	yvKDjkta8FmBBnVvmub6Q/p3090et8CoAZoBGmjR1ToLN4FM5XRZj5us2wvIvAhr6xKH
	1YvNRtOxewGMjFhnzQGCLaV8Lt0lNwivWxr9nRjI11wWUNLdebUK6+gNQrZhcbFKARxD
	BM1RYzT4IC7sOiD4yIQLd/GJ4noyFSIzLvrezQiC7114owrk3UQvahNUKGf4IJg4xi6s
	qjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YVuqFtww7UNvTUjRvpmiTKJon7QAp2wpYCpvz/6Pa18=;
	b=mDMKWJCq32uTXkPHOE2bzr333N1ZhbHXn+SfltgPNfUZoRhcO5cp2ML4jviPNHqFh0
	KI3yj0EBYahvZnsL1i5Bp8Ar7veYb4zSqpaHgdB++EIvzTfI0XIhnDKa5U70zjmjaRNv
	VCgGuWnwXD3gxxl3WaGZKOSAEd/Clirj2n7ybPIHRJojpwRU2Y4QP4F8c1ztLrv7YMlF
	A/OLnCRA3M5Xand5Gkyd5DcW87WDThyBFE/8CmYqCwCxhSvZqhL9t+4m4tR84564ML/l
	UY0l+W6lGkVkjzWPwLZDMP+YHng/tTpTuC/WEFKvewd+SHeKJjFGaVn1reOKAmxjsGqk
	xIZQ==
X-Gm-Message-State: AOUpUlFoFRAT9aa9u31uwgaa/GIZqt4ijnYCUqr7DioOSn1HkmHX+/+A
	g3y/zZA6qMfDDD+kpdx6PBri8WCKOXncgOgZUh5s6kXp
X-Google-Smtp-Source: AA+uWPzySuUMCjd/drzIXcwwi+VJl9EsTlbwD2JvlJQMuoZJVDYt3ERDZ2P2myO73zeNoco6ra0sJxZ7pR5UXarnDg4=
X-Received: by 2002:aca:4455:: with SMTP id
	r82-v6mr13979682oia.260.1534762965358; 
	Mon, 20 Aug 2018 04:02:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 04:02:44
	-0700 (PDT)
In-Reply-To: <CAG3Cyz9axHJ2aho6uOjL9pv1GqVupONedtdAu-aFPrjSv565xA@mail.gmail.com>
References: <CAG3Cyz9axHJ2aho6uOjL9pv1GqVupONedtdAu-aFPrjSv565xA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Aug 2018 13:02:44 +0200
Message-ID: <CANNYZj_cHsJaE_0RmJvLtBD-dq1-fh8R=EE5nC+2MG6ueyVy3g@mail.gmail.com>
To: Sarayu Sivanandam <sarayu@m5nv.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Issue with Doc-utils
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
X-List-Received-Date: Mon, 20 Aug 2018 11:02:47 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-18 11:06 GMT+02:00 Sarayu Sivanandam <sarayu@m5nv.com>:

> | make[2]: *** [docbook2man.html] Segmentation fault (core dumped)
> | make[2]: *** Waiting for unfinished jobs....
> | Makefile:458: recipe for target 'api.html' failed
> | make[2]: *** [api.html] Segmentation fault (core dumped)
> | Makefile:458: recipe for target 'docbook2texi.html' failed
> | make[2]: *** [docbook2texi.html] Segmentation fault (core dumped)
> | Makefile:458: recipe for target 'backend-spec.html' failed
> | make[2]: *** [backend-spec.html] Segmentation fault (core dumped)

You need to find the coredump and inspect it with gdb. That's not a
specific yocto failure.

Alex

