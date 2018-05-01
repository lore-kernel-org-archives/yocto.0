Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F34B5E00C6F; Tue,  1 May 2018 07:06:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24637E007C2
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 07:06:46 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id a2so6982949uak.2
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 07:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3iT1kmrcK1C87JkUMREV500OdjoPgD8zOom4fCalMwg=;
	b=IvFBsAESp1jMvi4EVJsFglow1F65qsKc0rKdbf7UvOquurKd8Qipg9/DMxHcOzXZWQ
	7KhB+3T3AgPW6FsGnDIEzan86O4lesNSBVrGjQXn5sXo/h92reHTMD+NdUKRZNWI+xfy
	ep2QlNuI8mcw7PXXVwDBap8rpOta0YttCBu10KPnT9vFBa9rg+Ggo4pI8DOMGiigNnQY
	RRltzlMSAdKumq77cNuBQwsF+JZ7GRJkZxO2FXL9O46yA6xBadLopJH3FWDwEEsMCI2y
	bgWUF6dXx/KFPdfVbgcivR7wm9xCxNcQdi5ZBg46pr1UopP8gfrm9g+9UCh4Mq0qJLLb
	41MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3iT1kmrcK1C87JkUMREV500OdjoPgD8zOom4fCalMwg=;
	b=erGTbFckxx124cj8CDU3nB+8jDHgvwR1siqdpleu1LIX6zRWmYK2Lly0RGJv4ptuW4
	VpuBzVxOU4h/XLGHeh/HJXMqiEr6DTFNmo/e5uH8IQKrbkarsVnxWQedYUC+mj+9qycj
	hwSFofViPmLUVmE2m1ffyEeIsK1sZGGnNtgh1HUocZngPHv0CJ/SGtQ3aTgzLN5WhxQJ
	T2FCvoPw189mYHKTgBQuYpAK9OPI4s3aCif6UXe2TwjKgVxzaHfi4yXzVJSeqcqkrpw2
	yO6vTxGKt8x0uiJH+UEWaoYRdZ+5kaVO/6TnVquanP0x0iG38EMuodjNWLytlHk4R9te
	zBvA==
X-Gm-Message-State: ALQs6tDIk5saf1Sg2EuNp/qo5vELPWGmPaHnxAlN1815bzKq+RpMAvWp
	NL0mNrGw9PiOSKzEqUjJfdmDlhR2P95BGUrQNJg2Ug==
X-Google-Smtp-Source: AB8JxZqxuOi5iAuZNavFv8811pmjee63Ai+aUbt2XI9g7b/oz9AtOCo2vHXDuPL3s/B2hH00GSdFF3yWPAU8bW2VHC0=
X-Received: by 10.176.10.129 with SMTP id d1mr13791431uak.39.1525183605424;
	Tue, 01 May 2018 07:06:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.44 with HTTP; Tue, 1 May 2018 07:06:24 -0700 (PDT)
In-Reply-To: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 1 May 2018 16:06:24 +0200
Message-ID: <CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Tue, 01 May 2018 14:06:49 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

On Mon, Apr 30, 2018 at 9:10 PM, Martin Siegumfeldt <mns@gomspace.com> wrote:
> Hi,
>
> I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. The search function does not return anything, despite the recipe being available through local recipe:
>
> martin@dell:~/gomspace_sdk$ ls layers/meta-openembedded/meta-oe/recipes-connectivity/zeromq/
> cppzmq_git.bb  files  zeromq_4.1.6.bb
>
> I assume this is expected since it does not come prebuilt as part of the eSDK - is this correct understood?
>
> Fortunately, 'devtool modify/build/package' generates the package - unfortunately it is not included in the subsequent image generation:
>
> martin@dell:~/gomspace_sdk$ devtool package cppzmq
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:03
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |######################################################################################################################################################################| Time: 0:00:01
> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets, 305 skipped, 11 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> Initialising tasks: 100% |###################################################################################################################################################################| Time: 0:00:00
> Checking sstate mirror object availability: 100% |###########################################################################################################################################| Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to be rerun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
> NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk
>
> martin@dell:~/gomspace_sdk$ devtool build-image
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |######################################################################################################################################################################| Time: 0:00:02
> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets, 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> WARNING: Skipping recipe cppzmq as it doesn't produce a package with the same name

This is the suspicious bit... If you look at the recipe, you'll notice
it's re-defining the PACKAGES variable. Then, it's not generating a
package called 'cppzmq', but only one named 'cppzmq-dev'. That said,
I'm not sure why you'd want to add a package which only provides
development headers to your target image...

>
> Inspecting the manifest file confirms that the package is not installed - any idea why not? I also tried installing though sdk-install:
>
> martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |######################################################################################################################################################################| Time: 0:00:02
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> NOTE: Installing cppzmq...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:03
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |######################################################################################################################################################################| Time: 0:00:01
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 305 skipped, 11 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> Initialising tasks: 100% |###################################################################################################################################################################| Time: 0:00:00
> Checking sstate mirror object availability: 100% |###########################################################################################################################################| Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to be rerun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
> NOTE: Successfully installed cppzmq
>
> Which also does not pick up the package upon image building:
>
> martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append="cppzmq" devtool build-image
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |######################################################################################################################################################################| Time: 0:00:02
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> WARNING: No packages to add, building image nanocom-sdr-image unmodified
>
> What am I missing here?
>
> Thanks,
> Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

