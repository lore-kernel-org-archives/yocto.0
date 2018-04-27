Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89726E009E2; Fri, 27 Apr 2018 07:47:35 -0700 (PDT)
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
	*      [209.85.213.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600D8E0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 07:47:32 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id v134-v6so1225991vkd.10
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 07:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XGTpv4lGYiZnqXm+z8vz5GhedNXu+bJY7QyGO7pGe/Q=;
	b=oTafZ+d2EKjAP12f5ghhU28iTkUeDoarnQj2QhaM3uSdc0quMBMfOS5HAiR04G9XMk
	D0comcUw+ldVbOZfQh8IWI4ArTFoJBXem1476Ocb8TFBpqhJux1nQ5km9dtRltaQSl6b
	hTNWNn1JdrcC4bYEamq3RmuWC9X/BoVIHHFJzx5xvtDSxj+fDtT3BdoQDGnJvoqlz7l/
	2/UH2ifQLl9T3kvzUdbzUR4GaUJht/5LWmiG/LXcDsF6bmoDBxeAM71EC8Y2BgFAkXDl
	qXGhGNkmOdokSeJl61t3YMKGHryBRT1JCq5VbUJkVfXBrYoJPQ3JV0T+56JEPsAIh5Kg
	uINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XGTpv4lGYiZnqXm+z8vz5GhedNXu+bJY7QyGO7pGe/Q=;
	b=OjqhVN4b2vTxI1FdJ2CDcNGV+Klm4mtQmP3CM3N97vk9/CIYhrS6gif1vl2WbhY9F3
	CVB5qSJcm/zb/+W8PHbpfj/5rmY3+60vJ2QPtV1CL9u87ReU6s4OdRiTXGZM2xEjPDKs
	aGIeuD/aWhBh+rnowa3wo89FjDrZwdDVUCHlS227djPEwZCMSKDq04ZKsl/Rz5Uexzrc
	EirxL/JBMpHbZ+tKbliyxxqKeac8PHqJbz04MnHAf8jkXfP+qBQq7iYkWXvPCJxAMiHc
	8X+Fxg8ZEU8bfXSxnnRX6Ko3iW27QA4raYTgI+J1eDR1t+2PK6dydMIjPMQ8vIaYL+ar
	9eEw==
X-Gm-Message-State: ALQs6tDqVhWYWoQ/zHF8hf8Lbcsm+OUM3WxHyWXWCh6DghNwfZquxjSn
	2Yuo7eEo9xhWDnMPrNTwyvBYYxLKj7sA/mbM410=
X-Google-Smtp-Source: AB8JxZq8uTDvEaAwGMvMei7Z+rV3eaIX0DX5s7JPgCcYaGalun95aKh7HaBkHkOzRRKzAcAs4D6IHOsEb468/06zl6I=
X-Received: by 2002:a1f:a7c7:: with SMTP id
	q190-v6mr1616901vke.5.1524840452087; 
	Fri, 27 Apr 2018 07:47:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.70.130 with HTTP; Fri, 27 Apr 2018 07:47:11 -0700 (PDT)
In-Reply-To: <CAOT_U5YEgeYdOJxdncO0vXm4OnNLofd6rj8amNiOMZZ_qbzqvw@mail.gmail.com>
References: <CAOT_U5YEgeYdOJxdncO0vXm4OnNLofd6rj8amNiOMZZ_qbzqvw@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 27 Apr 2018 16:47:11 +0200
Message-ID: <CAC+thW09N85OA6Wj_N=H4K5+tNYH8FxqDgpuWoWSRD8go840qQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Installing a package on the board at runtime
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
X-List-Received-Date: Fri, 27 Apr 2018 14:47:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Alan,

On Fri, Apr 27, 2018 at 1:38 PM, Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Hey,
> I know there is a method in devtool called devtool deploy-target.
> It's a great thing to install a package on the board at runtime.
>
> Is there something like that available without devtool?

The devtool deploy-target way of deploying recipes' artefacts is
mostly oriented to easing development loops with the eSDK. A more
controlled way of installing packages would be to have
package-management added to your IMAGE_FEATURES [1] to leverage a
fully fledged package manager on the target (like any mainstream
distro). You can choose among different format by setting the
PACKAGE_CLASSES configuration variable. Using a package manager on the
target won't differ from how you install/upgrade your desktop
distribution. The only extra step you'll need to accomplish is setting
up a proper package feed to let your targets grab the packages from
your build/deploy/<package_format> dir. See the manual at [2] for more
details.

Also, devtool works at a recipe scope, not at package level. You can
imagine it as a sort of 'make install' that leverages ssh to work
update the target filesystem. Recipes can provide more than one
package, then only a proper package manager will let you select any of
the packages a recipe provides for installation/upgrade.

> A digression:
> Am asking for a non devtool option because it
> seems like devtool is ignoring the patch and config files
> the recipe depends on (can't find any in workspace/sources).

This shouldn't be the case. When using 'devtool modify'
workspace/sources/<your-recipe> gets populated with a git repository
which includes a 'devtool' branch which includes any patch the recipe
declare in its SRC_URI. Those patches are already applied to the
fetched sources in the form of git commits on the 'devtool' branch
[3].

> My particular recipe has a custom build step that
> depends on rendering config file templates (which fails due to missing
> not finding the config file).

This might be due to errors in setting up the extra task: difficult to
say without looking at how the custom step is defined. Maybe you can
share your recipe together with the error logs bitbake is reporting.

[1] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-features-image
[2] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#runtime-package-management-server
[3] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#devtool-modifying-a-recipe

