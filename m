Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16993E01068; Thu,  8 Mar 2018 15:13:24 -0800 (PST)
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
	*      [209.85.128.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 704F3E00DA5
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 15:13:23 -0800 (PST)
Received: by mail-wr0-f177.google.com with SMTP id h2so18686wre.12
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 15:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VC1jVlIlWH825PAdtqCVZYXRCDZxkZ8OsxaDxQ5vPpo=;
	b=djwYOykIZqVqv+DNcQ/lPa+wIzq1F/xWpNQ6k0CXBq4JDNHs1vChIrx2sxs5YhBIJ9
	FQWjNhGhe4WWBHE/0Vv8wZLiJRFBhKgNZQv/nUCIH6I914kzr877ZZRrH3rCw9/xUOuz
	qFHapni7/906qkOPo//pie3DoXWkXqnq431DrxsI8ccxvwZ49HlQmzQhOIuiIT85lr17
	4BdlD3bO9vicg2AtMA727Fk/ocBmBp+Ml8rfQPm2HMd0YUQv7/b+T7SXdszhDzHT5y8g
	ELSL4cMJlhX73vNOXrj5Ej3cQmZiilsJBU0O8Uo1gqEt/QVuBJnYoiLbi0cTd4JtC+XA
	JaMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VC1jVlIlWH825PAdtqCVZYXRCDZxkZ8OsxaDxQ5vPpo=;
	b=eIMBYMcb2DUbx/dyTGYgab5gl7t3QWJQWKBuUiVWIkJEYth8C7v1mLE9f42oVqPQZm
	oPNYGUk4HMz4lrXylNl2xuAixKlVdDolQUSipN6FgzbtJWsk8Y07a67cEZ13xepGGr+N
	dwCONcxbaOe3kT1wnaltHKMB/dqS+gxNceV5oA0mIZn+vy5bzQvL1zj1cvmqAgMNQaXC
	6ty3IrtcsJ9XB4BCztsuBfGZzYuT+AdmQFgUSYtVX5JagzNI+PpS8PKzkL/eurzxTyCh
	zTEUEajvZq5TY9cPjgxihp7T1/ByzpSr/opQfZVj0dinjatQ15syvtXu+Mt0usdFQTQn
	mdBQ==
X-Gm-Message-State: APf1xPAyYZg1lzgfk1PJYfI2LrzH88teJ5IEeeMWVzxtKPi0c+ym1iUI
	oNUysEWWkTEewzYSBglG6dMyn+fYlpMDgZRhOruFlw==
X-Google-Smtp-Source: AG47ELt+7Y3QkvoN1/mw4JWTttDA6ujCjOXpRwP5BzpJyZDmSq8G6r4EFqhlchAKb9yRxZ/jJVxd4uakK5LDyJC3hvA=
X-Received: by 10.223.182.156 with SMTP id j28mr23690666wre.66.1520550802286; 
	Thu, 08 Mar 2018 15:13:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.173.193 with HTTP; Thu, 8 Mar 2018 15:13:21 -0800 (PST)
In-Reply-To: <423f0425-653d-37ab-098d-088466ef280d@asgrp.com>
References: <423f0425-653d-37ab-098d-088466ef280d@asgrp.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 8 Mar 2018 15:13:21 -0800
Message-ID: <CAJ86T=U=vu8nELczNnKnPZPZcXGn842xSorxGsvDpxdt_mqzqQ@mail.gmail.com>
To: Wayne Witzke <wwitzke@asgrp.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How and where does yocto find lighttpd-module-fastcgi?
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
X-List-Received-Date: Thu, 08 Mar 2018 23:13:24 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 8, 2018 at 1:52 PM, Wayne Witzke <wwitzke@asgrp.com> wrote:
>
> However, now I am attempting to determine if mod_openssl is installed on my
> server, and using "CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-openssl'"
> to simply add it does NOT magically work like it did with
> lighttpd-module-fastcgi. My original guess was that adding
> "CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-fastcgi'" caused a
> configuration option to be matched in the lighttpd.bb file so that the
> appropriate build option was used when building lighttpd.

No, that's not how it works. A very key point to understand with OE is
that options associated with one recipe can never affect the build of
another recipe (in this case, the image recipe can't affect the build
of the lighttpd recipe).

If adding lighttpd-module-fastcgi to your image worked, it's because
the lighttpd recipe was already creating that package.

> However, fastcgi
> doesn't actually show up in that file at all, and openssl does, so that
> clearly isn't the option . . . furthermore, mod_fastcgi doesn't appear in
> *any* of the layers I'm using to build, except in the lighttpd.conf portion
> of the recipe-extended/lighttpd directory structure.

If lighttpd doesn't have a configure option to control building of the
fastcgi module, then there won't be a PACKAGECONFIG option for it in
the recipe - it will just always be built.

(Even if lighttpd does have a configure option for the fastcgi module,
there's no guarantee that the recipe will allow it to be controlled -
it's common for PACKAGECONFIG options in recipes to only reflect the
configure options which people care about the most).

> So, my question is, how does bitbake know what to do when I add
> lighttpd-module-fastcgi,

The build for lighttpd isn't affected by whether or not you add
lighttpd-module-fastcgi to your image.

ie running "bitbake lighttpd", should always result in a package for
lighttpd-module-fastcgi being placed in tmp/deploy/ipk/i586/ (or
whatever your packaging format / architecture combination is). It
doesn't matter what image you may choose to build later, or what
packages you choose to include in it.

> and where in the world does it find the source for
> mod_fastcgi?

The source which gets compiled into lighttpd-module-fastcgi must be
coming from lighttpd.

> Thank you in advance for your help :)
>
> Wayne
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

