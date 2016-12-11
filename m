Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1EE2E00905; Sun, 11 Dec 2016 11:42:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B231FE00848
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 11:42:24 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id 50so6650904uae.2
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 11:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rp6Szvf8FBetw/T6WHQCc35B9mzQzZcIcglvnsbB5tE=;
	b=YilFQuwSo+p3dUXg+CxdUgL89gWQdhhWU8J9aPoynCm6Dg+NAU8UHyyHSs2VE7wkrX
	ZZllE59XV7jjK7jm1+k0wFPCFPub1of2Zx1lAp8pF9moGa0pV+qLPoke1CIQ3b7uAYVy
	GJ59rrMD8/J3y76wS3eQLwIT3q00S9TqSNHQurYdwFoeiDE81s0mAffIQ27RV2RKXVxy
	Ieti7OvU/sfZ1fmjp8ZjLe6saeasqRFGjxS3fQLTulW7L7McxOtK1e5ZMH5SUuRdz2sa
	YCXWg7wRT4xWMQBI9CaPn4aip/J3Dakol3myjCFHP0yy9zVrkU9uA9C3JGhOvyu7wsJx
	5CcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rp6Szvf8FBetw/T6WHQCc35B9mzQzZcIcglvnsbB5tE=;
	b=FDXfxwuHtOsMbZY88u1LwgPW8WxcBpKtvt+Y/iJJRUEXX8v7FOn2+aBZQn5zF5pHqe
	0HU4x8Y6cdXEpNWxG8gu0vArgsDZnzl5Xivf3rvVL/e4EzhB4NBiLpqJII4iAetEUZKr
	n8+4D00P3xNVsge8TEWKue0FTMWFrU7l2ZU8JxIV7Y39EqRqefCR2PreUtm3Vc66dY5l
	Ib7szrSMXynBTC4R2U+wtoLw9828B5fqg9ZfxSF9OJ3pLIeh0VAEKLX6wiwlKxXbj7jy
	ADgA+br+k04/ZpcRH1AEBZmVUlUQ75jXDXi2bftO6sM9oVjPpAoCU7Fx+YyqyjO98l/f
	chtg==
X-Gm-Message-State: AKaTC00XRECorwWSBuchgovDSW9diTSrIxqB5V7J+GH6gtWUEG1ECNy2TR1Ammj2BgxbaCcFWdUrNDu53A/nOA==
X-Received: by 10.176.82.181 with SMTP id v50mr59144303uav.31.1481485343723;
	Sun, 11 Dec 2016 11:42:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sun, 11 Dec 2016 11:41:53 -0800 (PST)
In-Reply-To: <DB5PR0601MB199284DCC3769AF351189DCAC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<4750708.C3i3MIxDut@peggleto-mobl.ger.corp.intel.com>
	<DB5PR0601MB1992734AEC739F080CCEC06FC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB199284DCC3769AF351189DCAC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 11 Dec 2016 11:41:53 -0800
Message-ID: <CAMKF1spfbHoNA6Bej4kAm8Cqn3YRW-g6hUpVqaPmHTAaVRt3Og@mail.gmail.com>
To: Rafael Gago Castano <RGC@hms.se>
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Sun, 11 Dec 2016 19:42:27 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 9, 2016 at 1:24 AM, Rafael Gago Castano <RGC@hms.se> wrote:
> Hello again.
>
>
> I tried to fix this in my layers by adding a
> "recipes-devtools/gcc_5.3.bbappend" file to containing the additions that
> you did to poky on...
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1c0fc7fcf7772ef8774f623126050972f526fe83
>
>
> ...as I think that adding these dependencies to gcc is the right thing.
>
>
> Running "bitbake gcc -e" shows the next:
>
>
> # $RRECOMMENDS_gcc
> #   rename from RRECOMMENDS_${PN} data.py:169 [expandKeys]
> #     "     libssp     libssp-dev "
> RRECOMMENDS_gcc="     libssp     libssp-dev "
>
> So the recipe is at least processed.
>
>
> The problem is that "libssp_nonshared.a" is still not present on the SDK. It
> may happen that this is still happening in poky.

how do you generate your SDK ? if you are not using -cpopulate_sdk
then it wont come in you might need to add it to TOOLCHAIN_TARGET_TASK

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

