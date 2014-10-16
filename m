Return-Path: <cliff.brake@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE4CE0087C; Thu, 16 Oct 2014 13:44:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cliff.brake[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF45E00790
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 13:44:41 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id o8so3534859qcw.14
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 13:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6VeYWDNrO4lRIDwiXeS41nMiclbS11rCuED5HNTA3Zo=;
	b=eKquispZHzoB7Wm8mjZXm25/EVP8vyitQ+dRaXHyzkaT0BFxtlIXH45EezquXzLJO+
	C2LpP8mGd2UybFI5Ly6dLC7WofM2dP7Jeb9rv7mD6aw8MtmRXtxbXCMuwNDm7qIaQz8I
	jps8rX/aByFJd1w06zzYc/vsSwfelljvknQIW0rj2KWFWF/Fi+gNxH9bnbmrfsMWap6I
	McKFDgBaV3EQ8g4p3dORR/CNnewQGbye9uEBQFpedYKdkSVnzQcW/fGpqAouE38Oiq+a
	HvIrrM8DDf2oAftngeqIgcmAwKoqBqkvC+pkuL6AxRcTVXHkd2EcVmfWK1mQjs8KEGC1
	7WkA==
MIME-Version: 1.0
X-Received: by 10.224.151.80 with SMTP id b16mr6024166qaw.102.1413492281016;
	Thu, 16 Oct 2014 13:44:41 -0700 (PDT)
Received: by 10.140.89.227 with HTTP; Thu, 16 Oct 2014 13:44:40 -0700 (PDT)
In-Reply-To: <CAAPegz0mkfnopK_s8PATfn5G6-ym365g3xwpR7szS98-4YR2_Q@mail.gmail.com>
References: <CAAPegz0mkfnopK_s8PATfn5G6-ym365g3xwpR7szS98-4YR2_Q@mail.gmail.com>
Date: Thu, 16 Oct 2014 16:44:40 -0400
Message-ID: <CAOd_LFwg_TBgDqzGLNpVTC2aY7YySzXKRtSbGsGK39i75VPf9g@mail.gmail.com>
From: Cliff Brake <cliff.brake@gmail.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gitsm recursive submodules
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
X-List-Received-Date: Thu, 16 Oct 2014 20:44:46 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 15, 2014 at 9:22 PM, Chris Morgan <chmorgan@gmail.com> wrote:
> Hello all.
>
> I posted some time ago about git with submodules and was pointed to
> gitsm. I've been using gitsm for sometime but ran into another issue.
>
> It looks like gitsm is not performing a recursive submodule update. I
> have a repository that is comprised of submodules, one of those
> submodules has a couple of other submodules. Should gitsm be handling
> this today?
>
> Starting from a clean build directory I can bitbake until the recipe
> fails, then go into the working directory and do a 'git submodule
> update --init' I can get the recipe to finish building.

It seems the gitsm fetcher should be modified to do a recursive update:

http://cgit.openembedded.org/bitbake/tree/lib/bb/fetch2/gitsm.py

replace:

        runfetchcmd(ud.basecmd + " submodule init", d)
        runfetchcmd(ud.basecmd + " submodule update", d)

with

        runfetchcmd(ud.basecmd + " submodule update --init --recursive", d)

Alternatively, you might be able to add a task in your recipe to do
the submodule stuff.

Cliff

-- 
=================
http://bec-systems.com

