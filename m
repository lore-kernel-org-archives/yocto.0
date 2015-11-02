Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFFAFE006F6; Mon,  2 Nov 2015 13:38:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 370DEE005B3
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 13:38:22 -0800 (PST)
Received: by iody8 with SMTP id y8so385140iod.1
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 13:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mv/I6GxYOtf7QE4PoitvG70+kPUvyRnv0ddJnpAWYtE=;
	b=KjdGwa77CaPLqSmwg/LWXpkxD8dfRIjZQM8SBZgD8ACdaEhW+zObiJ2ELFJarHxU19
	0NqJ6R7UpUWQkZahC2KD7gLOmnaNVGnalIVfA65oYsTrSuGn2op39pQFl39H9533Y0ka
	ZBp9yyKWtjqE14NKDJCZIpTOXayX5GKgi0lsASTXSS7Cap+U8jG3nIN7rP8rUtcUIIfA
	/Mzp8V1gCUCWX4DFPScY+hBt+e1x2rHV/R+sQbzyneWPXuvbXJK9vAdTwxlA5zPjfNmh
	PvLqORCS8N3cLAhtaYNB8u+rDFVLgCUr7sylZQgvZ+0M0QRRbuwva83V4gANj5KZj430
	Ypxw==
X-Received: by 10.107.3.77 with SMTP id 74mr23548582iod.49.1446500301909; Mon,
	02 Nov 2015 13:38:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Mon, 2 Nov 2015 13:37:52 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1511021251410.10363@localhost>
References: <alpine.LFD.2.20.1511021251410.10363@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Nov 2015 13:37:52 -0800
Message-ID: <CAMKF1spGWN8dDzQ5wcE7f_U2JJuk=7VE_onpDORN-SMNqHgf-g@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should layers define BB_DANGLINGAPPENDS_WARNONLY ?= "1"?
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
X-List-Received-Date: Mon, 02 Nov 2015 21:38:27 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 2, 2015 at 9:54 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   perusing the meta-musl layer, and noticed in layer.conf the line:
>
> BB_DANGLINGAPPENDS_WARNONLY ?= "1"

should be avoided although meta-musl is a bit core in nature.
this is so that it can interface with several different compilers
coming from different layers and also different oe-core releases can
work with same branch of meta-musl.
 one may not have same layers attached to it. Ideally, those patches
should now become part
of the original layers as they have been accepted in gcc upstream and
so on. Hopefully as I will take
this into oe-core in coming months this should disappear.

>
> i thought this was a bit odd since (at least to me) it seems like the
> sort of thing a *developer* might set in their local.conf to
> temporarily deal with a dangling .bbappend file -- it never occurred
> to me that it would be appropriate for a layer to define that value
> itself as an inherent part of its own ... layerness.
>
>   a quick grep of the couple dozen layers i have checked out revealed
> two layers that do that:
>
> ./meta-musl/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY ?= "1"
> ./meta-yocto-kernel-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY
> ?= "true"
>
>   i'm curious what others think of this approach.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

