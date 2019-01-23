Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25D49E00C29; Wed, 23 Jan 2019 11:05:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA2D3E00B92
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 11:05:00 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id q2-v6so2929456lji.10
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 11:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Nu4kPuKEN/3+SmCGaOPRreSXYup21ffEnxyVdzGtpb8=;
	b=UzqVtoE8mX6IgIVpx0WUsvMDEpN0hjX0KU2KwS4LougZCOMu1SYeZ3qz0+shcfo64X
	/xnAVIv4Z/8Y57oTIHKW9qvDsRoSTc7Q0CkJACy24Uyv2FOpz7pk6WRQroA747A/VgKb
	BV9ZGN20xd/pFyqg2vWMBqAHkxPZsHmP9MOY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Nu4kPuKEN/3+SmCGaOPRreSXYup21ffEnxyVdzGtpb8=;
	b=qmb0cTb3AeW7kYGPzWYDGq7g2gexmlVZ5swYzXVUfZ7a7tAZTVGlukd1EU856St8LK
	Aj/UAlZDxC93FrKpQ9LAsO2YsrHZ9aUBgiCa0huDl/EFdNCpQuAlHByX+hsnhuHiC1Bu
	i/La8dPzY40wnTVF1oeuSIrny44kJOOiXPVvWwPdD6lMSWvcehAQNzrrklVUmeKbmXXu
	p8QusXICV7zju5VymUM4c3fx6oLouoqNA/qs3wUtS/N7K1jywiql9HdgwVr7sBDjNIqW
	1Ob8kxvk4ICABzHAhoj0n9sR6/sPu05c4xF26IsuIkvAtOmF3zkYyrnUxk+Iz91uvr4d
	hqzQ==
X-Gm-Message-State: AJcUukciwu5NyibFwV498YjEGfPQIMobm+W8wfLKeELddm+b4C2Gl95j
	tuVbYnhTGAIFZybDqUHRZd6bkNuFIyRjPT78YkgM6g==
X-Google-Smtp-Source: ALg8bN7J/+Nx+hsm3FoNNcb5VSgH5lGuNm6gMFKj/TR1CY1lXiGLj6d3JgE2cEdv+Q2x0QI+kWEmnGs85ADh0FE/Aew=
X-Received: by 2002:a2e:89d7:: with SMTP id c23-v6mr3037509ljk.0.1548270299842;
	Wed, 23 Jan 2019 11:04:59 -0800 (PST)
MIME-Version: 1.0
References: <a4a6a347805343858a90a67242762ab5@multitech.com>
In-Reply-To: <a4a6a347805343858a90a67242762ab5@multitech.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 23 Jan 2019 20:04:48 +0100
Message-ID: <CAP71WjwmGLKryxCY-ySH4=sWDuqaXqQsX8SFBRo7iSRfSTO37g@mail.gmail.com>
To: John Klug <John.Klug@multitech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Exclude kernel module from image
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
X-List-Received-Date: Wed, 23 Jan 2019 19:05:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 23, 2019 at 7:35 PM John Klug <John.Klug@multitech.com> wrote:
>
> I am looking for a way to create an image with an exclusion list of kernel modules packages.
>
> If I use PACKAGE_EXCLUDE, I see the following:
>
>     Collected errors:
>      * calculate_dependencies_for: Cannot satisfy the following dependencies for kernel-modules:
>
> The list of modules that follows are the very kernel module packages I am trying to exclude.

if you want to exclude *all* kernel modules it's simple, you can
achieve that with the following in your image recipe.

BAD_RECOMMENDATIONS = "kernel-modules"

This is easy because kernel-modules comes as RRECOMMENDS from
packagegroup-core-boot.. but if you exclude just some modules, then
you are breaking an RDEPENDS relationship which is a fatal error..

>
> I would prefer not to create a list of every kernel module I wish to include.

right.. can't you disable these modules in the kernel recipe instead
using some config fragment?

>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

