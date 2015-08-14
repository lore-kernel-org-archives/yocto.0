Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A74D5E009B8; Thu, 13 Aug 2015 18:51:47 -0700 (PDT)
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
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11473E00707
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 18:51:44 -0700 (PDT)
Received: by iodv127 with SMTP id v127so55327627iod.3
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 18:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=80WJRTeCvUYuBxGj1JE1zuYPUBcXFWXX7la4t9ZY32U=;
	b=MjMsvrunCVHupDCbP2Iun9VF8dp9Q8lcZMK8bnAYsHH0qwh9EvE5bYriei12EDxBtg
	QbNIfL4b5QBE6pFNa/wZoMQowRhIzO4nRaFNbPxPeJvesyeRrYTjAgFXijxkB77ls8T/
	wHiEViG9MRIl9qn/cVNYaMoVJK7QlTvZWaeF/V0U9+TDDcP87+Ut0j8DbtG8a0Et2pUM
	NJVXhWazxyvCJxj3pN+8REtNV6q7aV3Jv24GPedDkp1WVU0hs1DnZBVYH9Mi3XPxObjr
	47USSh6Bm/U5kwPrCkXyqTg6G7pOVgmGQqI6Eyo0sVRoOWYWuOoyVVPiDulYR2oJFAI2
	q6gQ==
X-Received: by 10.107.14.203 with SMTP id 194mr46840881ioo.195.1439517104096; 
	Thu, 13 Aug 2015 18:51:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 13 Aug 2015 18:51:14 -0700 (PDT)
In-Reply-To: <CAMeZNHRGp89W8p9w9AGGoW9JeFLiNPV2ys_S66Qt5zd4g7YtHA@mail.gmail.com>
References: <CAMeZNHRGp89W8p9w9AGGoW9JeFLiNPV2ys_S66Qt5zd4g7YtHA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Aug 2015 18:51:14 -0700
Message-ID: <CAMKF1sohx3ChdbsVUTan=j7-D5Q0daEJYz_JeW9E9JXC=ZLDzw@mail.gmail.com>
To: Todd Efflam <todd.efflam@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem creating debug build with inlined functions
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
X-List-Received-Date: Fri, 14 Aug 2015 01:51:47 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 13, 2015 at 1:25 PM, Todd Efflam <todd.efflam@gmail.com> wrote:
> Hello,
> We're trying to create a debug build so we can use our image with gdb,
> however we're unable to get it to compile.  We've added the lines
> "DEBUG_BUILD = "1"" and "EXTRA_IMAGE_FEATURES += "tools-sdk dbg-pkgs
> tools-debug debug-tweaks"" to the local.conf file, but it seems to be
> failing on glibc.  The errors we get have to do with inlined functions
> (./tlsdeschtab.h:28:1: error: inlining failed in call to 'hash_tlsdesc':
> indirect function call with a yet undetermined callee [-Werror=inline]
> |  hash_tlsdesc (void *p)).  Are we missing a compile flag?  We tried adding
> -gdwarf-2 to the CFLAGS option in local.conf but still got the same error.
> Any help would be appreciated!

when you choose DEBUG_BUILD = "1" it also changes the default
optimization settings for glibc to -O which is -O1
really. Thats not a common flag used to build glibc so you might have
fallen into less used case

Please test out this patch and let me know if it fixed the problem for you

http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/master&id=16935bb4b6df99c6443dab06c77a9cfd4eb35f5d

>
> Thanks,
> Todd
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

