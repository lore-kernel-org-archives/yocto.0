Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6FE6E00A0A; Fri, 21 Apr 2017 14:19:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.177 listed in dnsbl.sorbs.net]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21273E0083C
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Apr 2017 14:19:22 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id z52so20045089wrc.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Apr 2017 14:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/AfQkVtov6J5mWXLK1UkAmWw8JhXJ1hUyIvE20zMKK0=;
	b=k2T8Nrer8akWRtT+PH7zbiufy/2QwzH65ra12fxvJdFAECUJ3bTX2Dejwm0xAb2h7t
	Bf9Xk0BEXynRPWzB1DhdCpOC5PJq+h6IzY5FlmG0Z4sX6wKhRjqaglD4Gmj7JKi4V2hs
	vMb+C3XdM72vPWrA6QJ4fMTwJ1KRBqZz7fHIuQ90EQR7KRj2E/rTY5FHrbOjFusDUH6U
	lss2dT5uNLBqWCuw5d2liHCmWYRYIJw2NhB3xBS5bjaTSlrxujNhBw2z5UB7bGF3NqoH
	3vVxhUxBaR3f+XPOvqm006s/HF+sOwaNq0qxL1tlk+/R06lynKnYn9U5jWuRRwUbNm50
	/5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/AfQkVtov6J5mWXLK1UkAmWw8JhXJ1hUyIvE20zMKK0=;
	b=No+aZbX2rGRrIalf5uoSiSNbbAiDxHJrbJ7i7ZOERv6o087j7HC/wS8vR/Z19+2iIZ
	psTBNyhWK6wkCM/k3FIjtBwQwMQ6YYDgTvGjTavqCvUiHn0Tfxqse9Pgu4SeLCyxrKyL
	AjqKYofHHWF+HfRn5fNbNdguheuIljXaQV3Ggun/asxRuYNGwxS6+Gh1KhFIO/Wt4hKT
	Jk1yFSzz7tEPmNsxQt83S/qCcxvAcmZYGtl3KKOkgA5+Ojx77vPGvuHs3BP08mtDxTs5
	6nRB9GEuo0t2CCzsxjQ0lCoe8wvQXkKAc3XjhpULEF9MFlHSDMNERUvwHoqdCaeRysG1
	S8hQ==
X-Gm-Message-State: AN3rC/6NrqX+Plt+RPuOVxRS17iT42Vwk4AZ2vokKDa6aEevXM7BSFuX
	wc4HVh8Qq4xuMZf9F4Ds81qXj9vumQ==
X-Received: by 10.223.152.174 with SMTP id w43mr15772670wrb.151.1492809561615; 
	Fri, 21 Apr 2017 14:19:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.172.100 with HTTP; Fri, 21 Apr 2017 14:19:21 -0700 (PDT)
In-Reply-To: <20170421205911.GC3024@jama>
References: <20170421205911.GC3024@jama>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 21 Apr 2017 14:19:21 -0700
Message-ID: <CAJ86T=VXNdXhGn17Nu5Sexy0+JXj0A3B_PFVPoPu6bRsUc4e6Q@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [RFC][meta-gplv2] layer priority and worth creating branch compatible with morty?
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
X-List-Received-Date: Fri, 21 Apr 2017 21:19:24 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 21, 2017 at 1:59 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> 1) layer priority, currently it has:
>        BBFILE_PRIORITY_gplv2 = "1"
>    which is lower than oe-core with:
>        BBFILE_PRIORITY_core = "5"
>    so in order to use recipes from meta-gplv2 layer, user has to add
>    couple PREFERRED_VERSIONS. Was this intended use for meta-gplv2?

I guess the intention is that if you blacklist GPLv3 etc then only the
recipes in meta-gplv2 will be considered.

>    I can see some advantages of this (that the layer can be included
>    without immediate side effects), but on the other hand why would
>    anyone include this layer if he isn't deeply scared from (L)GPLv3
>    versions sneaking into the build?
>    In our local builds I'm bumping the priority to 6 to resolve this.

If any of the recipes in meta-gplv2 still contain BBCLASSEXTEND =
"native" then that could cause problems (generally you only want to
use the older recipes for the target, not for -native).

>    Alternatively we can add some conf/distro/gplv2-versions.inc file
>    in meta-gplv2 so that people who want to use all available recipes
>    in gplv2 compatible version can include it in their DISTRO.
>
> 2) branch for morty, currently the recipes aren't compatible with morty
>    but with e.g. gnutls version added there it might be better option
>    to share the gplv2 work there even when oe-core/morty contains most
>    of these recipes as well.
>    The recipes I had to modify to be compatible with morty are:
>    https://github.com/shr-project/meta-gplv2/commits/jansa/morty
>    88d1052 coreutils: make it compatible with Yocto 2.2 Morty
>    5e08ac2 rsync: make it compatible with Yocto 2.2 Morty
>    b33037f libiconv: make it compatible with Yocto 2.2 Morty
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

