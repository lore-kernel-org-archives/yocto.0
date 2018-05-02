Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60AA7E00AE4; Wed,  2 May 2018 07:22:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9371DE00A28
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 07:22:26 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id h15so9553462uan.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 07:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hbxRKfLHgbf/dimrJINNxXm8Qmrcseax6Wqfpibv+Ws=;
	b=HfcXEPoR+VH6ejpEYM7F5bSOU+F7/CDiVc2Vbs9clPVlUDJDJQpkgW/WeBegctHwgi
	VgvQuICRcWRz5Ios4iLEzvDxpNVoByfIlT5Ox+FV3XVZ/YCFLoIncLsiPGXLbMnATTBg
	8K1pXCMQDzWpvpo+jt+4Qsi4XgJHvY7ImIAyqF5LUw+rW/XqapBTZsPzCZNrjv9C+6dd
	CZCqKZm2Oo67QuiFhaz9p+nFps+QYUmc9pvkA05T4dwec7W6ZPMI93SdBdkJLPZABbC3
	aK/3sRztIjNE77l4nZnalzUqhEzYVb06oXMTT33fX6bmlutYiVu9F/ehWC95sEJhNcpX
	42sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hbxRKfLHgbf/dimrJINNxXm8Qmrcseax6Wqfpibv+Ws=;
	b=KWs/w+y6foyxhq4jnif/mQCZOFT2gVUgWJRSN+B9uZRkFvIDExbeHjtjyL8R0yHrVf
	cbIOE0b5v3oyba2ZHygCLK5tkJrXX2OxHl4asPBxZnAntRtEYJhXzAyAOg99hQwlxpZp
	RluI8rwQAA+y2Sm+RqfYvW5OIAeacB4ooZ7YoeXkvZkzlm+1Md5kI74TzG3suEx3NELi
	JeUZxU/7x5Qgp4ufhOqEqqUUF080L/h1fg7sPY8p0QgDdUzFggALtqJzVGFJIofLwVu+
	qwePKOMH9vCxTxiM0QDNCfqziQYsHSXaMbHQe6j15HxSulvUyozh5x6JzjVcxArjF1Z9
	1G/Q==
X-Gm-Message-State: ALQs6tDjiMUngpTaTk5DKym/AT/6xuetdTD/5Ew7iuXepX6oqEjgJk/S
	oxcJzd7oGpavZPkG51/rXiBRVu+JCcpmG8hqpRs=
X-Google-Smtp-Source: AB8JxZpKPPiYuUeZN7ycj67mWv1/N9s+3SMvms4bDgU+OZORvsre1Byx87BEJivjhZ6dUJIDUl/hQeO1b5p20vAl3SA=
X-Received: by 10.176.93.27 with SMTP id u27mr9104875uaf.59.1525270945013;
	Wed, 02 May 2018 07:22:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.44 with HTTP; Wed, 2 May 2018 07:22:04 -0700 (PDT)
In-Reply-To: <DB6PR0402MB2728A67E8A29394515D90449C4800@DB6PR0402MB2728.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>
	<AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<AM5PR0402MB27213A743A419B0D00E4AD63C4800@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<CAC+thW1U42nj0aoDd56Vzi2-1Bpto0JDmtpSx2p8pmDgV7PB-g@mail.gmail.com>
	<DB6PR0402MB2728A67E8A29394515D90449C4800@DB6PR0402MB2728.eurprd04.prod.outlook.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 2 May 2018 16:22:04 +0200
Message-ID: <CAC+thW0u-qQL5WtiRzNi9d5HZpR8FEQLp_m_uUgs6DqoHa9nDQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 02 May 2018 14:22:28 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 2, 2018 at 2:33 PM, Martin Siegumfeldt <mns@gomspace.com> wrote:
> Hi Andrea,
>
> You are right, the recipe works-as-is, when adding 'cppzmq-dev' to the image rather than just 'cppzmq' - I was not aware of this. From an eSDK perspective it seems to work when the package is installed according to
>
> devtool sdk-install -s cppzmq
>
> and then adding 'IMAGE_INSTALL += "cppzmq-dev"' to local.conf.
>
> On the variables passed in from the shell, can you refer to the location of this whitelist - for future reference?

https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#var-BB_ENV_WHITELIST

>
> Thanks for your support - highly appreciated.
> Martin
>
>
> From: Andrea Galbusera <gizero@gmail.com>
> Sent: Wednesday, May 2, 2018 10:33
> To: Martin Siegumfeldt
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
>
>
> On Wed, May 2, 2018 at 9:52 AM, Martin Siegumfeldt <mns@gomspace.com> wrote:
>> Hi,
>>
>>
>> Hacking the recipe according to:
>>
>>
>> martin@dell:~/work/z7000-distro-zcu102/meta-openembedded$ git diff
>> diff --git a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
>> b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
>> index a64745c94..aba1d6edb 100644
>> --- a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
>> +++ b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
>> @@ -13,9 +13,11 @@ S = "${WORKDIR}/git"
>>
>>  do_install () {
>>          install -d ${D}/usr/include
>> +        install -d ${D}/etc
>>          install -m 0755 ${S}/zmq.hpp ${D}/usr/include/
>> +        install -m 0755 ${S}/zmq.hpp ${D}/etc
>>  }
>>
>> -PACKAGES = "${PN}-dev"
>> +PACKAGES = "${PN}-dev ${PN}"
>
> If you go down the patch-the-recipe way, you can probably leave
> PACKAGES at its default: both ${PN} and ${PN}-dev are there by
> default.
>
>> RDEPENDS_${PN}-dev = "zeromq-dev"
>>
>> triggers both ${PN}-dev and ${PN} variants to be packaged and included by
>> the image. Leaving out the installation into /etc causes ${PN} package not
>> to be generated and the image generation does not pick up the ${PN}-dev
>> variant.
>
> Better would be adding:
>
> ALLOW_EMPTY_${PN} = "1"
>
> This way it's cleaner and should work as well. However, you'll need to
> force your image to depend upon an empty package to be added
> (meaningless for the target), for the sake of the corresponding -dev
> package to be part of the tailored eSDK... Maybe there's a better way
> to achieve this, possibly by adding cppzmq-dev to the SDK explicitly
> with something like TOOLCHAIN_TARGET_TASK_append (never used it in
> practice though). Hopefully someone can further comment on this to add
> some wisdom.
>
>> In essence, it looks like image generation disregards recipes residing
>> exclusively in the ${PN}-dev variant - question is whether this is intended
>> or not?
>
> Yes it is. -dev packages are not intended to be installed into target
> image by design.
>
>>
>>
>> Br,
>>
>> Martin
>>
>>
>> ________________________________
>> From: Martin Siegumfeldt
>> Sent: Tuesday, May 1, 2018 8:49:17 PM
>> To: Andrea Galbusera
>>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
>>
>>
>> Hi Andrea,
>>
>>
>>
>> ________________________________
>> From: Andrea Galbusera <gizero@gmail.com>
>> Sent: Tuesday, May 1, 2018 16:06
>> To: Martin Siegumfeldt
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
>>
>> Hi Martin,
>>
>> On Mon, Apr 30, 2018 at 9:10 PM, Martin Siegumfeldt <mns@gomspace.com>
>> wrote:
>>> Hi,
>>>
>>> I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. The
>>> search function does not return anything, despite the recipe being available
>>> through local recipe:
>>>
>>> martin@dell:~/gomspace_sdk$ ls
>>> layers/meta-openembedded/meta-oe/recipes-connectivity/zeromq/
>>> cppzmq_git.bb  files  zeromq_4.1.6.bb
>>>
>>> I assume this is expected since it does not come prebuilt as part of the
>>> eSDK - is this correct understood?
>>>
>>> Fortunately, 'devtool modify/build/package' generates the package -
>>> unfortunately it is not included in the subsequent image generation:
>>>
>>> martin@dell:~/gomspace_sdk$ devtool package cppzmq
>>> NOTE: Starting bitbake server...
>>> NOTE: Starting bitbake server...
>>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>>> version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> Loading cache: 100%
>>> |########################################################################################################################################################################|
>>> Time: 0:00:03
>>> Loaded 2773 entries from dependency cache.
>>> Parsing recipes: 100%
>>> |######################################################################################################################################################################|
>>> Time: 0:00:01
>>> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets,
>>> 305 skipped, 11 masked, 0 errors.
>>> NOTE: Resolving any missing task queue dependencies
>>> Initialising tasks: 100%
>>> |###################################################################################################################################################################|
>>> Time: 0:00:00
>>> Checking sstate mirror object availability: 100%
>>> |###########################################################################################################################################|
>>> Time: 0:00:00
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to be
>>> rerun and all succeeded.
>>>
>>> Summary: There was 1 WARNING message shown.
>>> NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk
>>>
>>> martin@dell:~/gomspace_sdk$ devtool build-image
>>> NOTE: Starting bitbake server...
>>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>>> version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> Loading cache: 100%
>>> |########################################################################################################################################################################|
>>> Time: 0:00:00
>>> Loaded 2773 entries from dependency cache.
>>> Parsing recipes: 100%
>>> |######################################################################################################################################################################|
>>> Time: 0:00:02
>>> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets,
>>> 305 skipped, 11 masked, 0 errors.
>>>
>>> Summary: There was 1 WARNING message shown.
>>> WARNING: Skipping recipe cppzmq as it doesn't produce a package with the
>>> same name
>>
>> This is the suspicious bit... If you look at the recipe, you'll notice
>> it's re-defining the PACKAGES variable. Then, it's not generating a
>> package called 'cppzmq', but only one named 'cppzmq-dev'. That said,
>> I'm not sure why you'd want to add a package which only provides
>> development headers to your target image...
>>
>> I understand your doubt here. The header file installed is a wrapper around
>> zeromq and thus DEPENDS/RDEPENDS on this library. zeromq is included in the
>> image, for which the SDK is generated, hence I would expect this to be a
>> valid use case?
>>
>> Anyhow, I realized that the recipe does not even work in a BB environment -
>> the following is encountered for an image including the package:
>>
>> ERROR: Nothing RPROVIDES 'cppzmq' (but
>> /home/martin/work/z7000-distro-zcu102/poky/meta/recipes-core/images/core-image-minimal.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'cppzmq' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['cppzmq']
>> ERROR: Required build target 'core-image-minimal' has no buildable
>> providers.
>> Missing or unbuildable dependency chain was: ['core-image-minimal',
>> 'cppzmq']
>>
>> I wonder why this occurs when the recipe is indeed present:
>>
>> martin@dell:~/work/z7000-distro-zcu102/build$ bitbake-layers  show-recipes
>> cppzmq
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |########################################################################################################################################################################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |######################################################################################################################################################################|
>> Time: 0:00:01
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> === Matching recipes: ===
>> cppzmq:
>>   meta-oe              4.1.5+gitAUTOINC+68a7b09cfc
>>
>> Br,
>> Martin
>>
>>>
>>> Inspecting the manifest file confirms that the package is not installed -
>>> any idea why not? I also tried installing though sdk-install:
>>>
>>> martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq
>>> NOTE: Starting bitbake server...
>>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>>> version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> Loading cache: 100%
>>> |########################################################################################################################################################################|
>>> Time: 0:00:00
>>> Loaded 2773 entries from dependency cache.
>>> Parsing recipes: 100%
>>> |######################################################################################################################################################################|
>>> Time: 0:00:02
>>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>>> 305 skipped, 11 masked, 0 errors.
>>>
>>> Summary: There was 1 WARNING message shown.
>>> NOTE: Installing cppzmq...
>>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>>> version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> Loading cache: 100%
>>> |########################################################################################################################################################################|
>>> Time: 0:00:03
>>> Loaded 2773 entries from dependency cache.
>>> Parsing recipes: 100%
>>> |######################################################################################################################################################################|
>>> Time: 0:00:01
>>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>>> 305 skipped, 11 masked, 0 errors.
>>> NOTE: Resolving any missing task queue dependencies
>>> Initialising tasks: 100%
>>> |###################################################################################################################################################################|
>>> Time: 0:00:00
>>> Checking sstate mirror object availability: 100%
>>> |###########################################################################################################################################|
>>> Time: 0:00:00
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to be
>>> rerun and all succeeded.
>>>
>>> Summary: There was 1 WARNING message shown.
>>> NOTE: Successfully installed cppzmq
>>>
>>> Which also does not pick up the package upon image building:
>>>
>>> martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append="cppzmq" devtool
>>> build-image
>>> NOTE: Starting bitbake server...
>>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>>> version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> Loading cache: 100%
>>> |########################################################################################################################################################################|
>>> Time: 0:00:00
>>> Loaded 2773 entries from dependency cache.
>>> Parsing recipes: 100%
>>> |######################################################################################################################################################################|
>>> Time: 0:00:02
>>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>>> 305 skipped, 11 masked, 0 errors.
>>>
>>> Summary: There was 1 WARNING message shown.
>>> WARNING: No packages to add, building image nanocom-sdr-image unmodified
>>>
>>> What am I missing here?
>>>
>>> Thanks,
>>> Martin
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>

