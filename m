Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 062EEE00C36; Mon,  9 Apr 2018 14:06:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 349DBE00C25
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 14:06:52 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id u189so21864400wmd.1
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2018 14:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Vy3ybvdW5NI4U1wV8gP7QzVfScarZwzUIs5yQg5lOc4=;
	b=nooY8FKX0hukHr0GxEHNB78GnIWoarme/3laYxO03tglr01edKUWjfyq7TrWDsHg+U
	C1tr7IALabXZVByc0/1KJz/Vm7tuf+e/FqqhV8yJBirDcHqOUuHoyACSUlIoD+nGyH6P
	sH3ZeowVLrD5EQyqPFsqxAYYlXJsykiuQn2FMwkzlmQFjMvPV8aLpPCFgNoWT/lVkxl4
	J1VOVf6ahZQ4eL2z0AvxRnJWcwZvDfiLJAKhvWOpQgJAoAx3U3xtv2oFZgm2FDDoAaaY
	vVu5N4HcG+b/UfobZ8Oy45Q9nHdUdWiPoK4BGuvNLQCpc7xFOKk7/JqsdNi1hcY2HTvH
	ZqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Vy3ybvdW5NI4U1wV8gP7QzVfScarZwzUIs5yQg5lOc4=;
	b=APx/gmfr1dn0NlwS3QeIrAUvnp7L1OPtDo3Xq9gc3VZxig0Op6sYMERqxzPDvUmm2t
	Dh2nfKN1RS7MiOiZvE3woxm8Ha+M9YNTvEriqjwmeNSIeY+lsbi2zTWRvhL08N9F6ASi
	AU8QWRPiVpceUp4pIx+e+2l+vwT3gmYYcBqGLjj6kihVduOR6ti0lEwXYBDpCk+i91IH
	DjU8awXYeQ4f28G2G0Ul5g068s8r4DvJrkDBzD+86zmx0v6tjiUiYNAPHSiBY663Tmc8
	R6uZKXTpJu3bBuz1oF3oXS4koyaaw1RXrLyMZ9ZtAXA7CmeRokDzDT4ZRSivtBCHKtxz
	p9UQ==
X-Gm-Message-State: ALQs6tAGPBMwnilp2NlhWYaxam3Ljnd/7U5UzQEAZFGVssWwwLf6O7i9
	/Gec0Gpt9h8wTekpdodO9Td3iKtwegvcP0ZAqXWAVQ==
X-Google-Smtp-Source: AIpwx4/nqpmih4dgEJRA8kqQF4fMkl8NuDFP6xFoqa63Q1kmde+tx4OxKoU3c+FQMM9NTkaP8uW41hrS2sQcuXlUhuw=
X-Received: by 10.28.212.84 with SMTP id l81mr947836wmg.151.1523308011882;
	Mon, 09 Apr 2018 14:06:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Mon, 9 Apr 2018 14:06:51 -0700 (PDT)
In-Reply-To: <f15f87ff-1140-54d0-81ac-2c27e663643d@qiio.com>
References: <f15f87ff-1140-54d0-81ac-2c27e663643d@qiio.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 9 Apr 2018 14:06:51 -0700
Message-ID: <CAJ86T=Xzi4qZF4wHEW5L_0btUvAseFQxcN+UG4ytrqy9xrKXUw@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@qiio.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: How to set SRC_URI in local.conf / how to set any variable of a specific recipe in local.conf
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
X-List-Received-Date: Mon, 09 Apr 2018 21:06:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Apr 7, 2018 at 8:04 AM, Jakob Hasse <jakob.hasse@qiio.com> wrote:
>
> how can I set a another branch, i.e., the SRC_URI variable for a specific
> recipe in conf/local.conf? Or more general: how can I change the variable of
> any recipe in local.conf temporarily? I tried something like this already:
> SRC_<recipe-name> = "..."
> SRC-<recipe-name> = "..."
> SRC_pn-<recipe-name> = "..."
>
> I would like to switch a recipe to a testing branch temporarily via
> local.conf without playing around in the actual recipes.

For your own temporary testing, modifying the actual recipes would be fine.

However, if you need to make the change via local.conf, then the
procedure would be something like:

1) Capture output of "bitbake -e recipe-name" into a file

2) From the bitbake environment for recipe-name, check what the
original value of SRC_URI is. For example, it may be something like:

  SRC_URI="git://git.project.com/foo file://fixes.patch"

3) Also from the bitbake environment for recipe-name, check which
over-rides are active. For example, it maybe something like:

  OVERRIDES="linux:i586:build-linux:pn-recipe-name:x86:qemuall:qemux86:spooky:class-target:forcevariable:libc-glibc"

4) Pick an over-ride. Since you want to use a global config file to
make a recipe specific change, you need to use the recipe specific
over-ride, ie "pn-recipe-name".

5) Update the SRC_URI from step 2 as you want and then define it in
local.conf using the over-ride you found in step 3. For example:

  SRC_URI_pn-recipe-name = "git://git.project.com/foo2 file://fixes.patch"

