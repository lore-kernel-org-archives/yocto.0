Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92E8CE00CE2; Thu, 16 Nov 2017 09:58:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F31E1E00AD7
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 09:58:52 -0800 (PST)
Received: by mail-oi0-f68.google.com with SMTP id r128so18993721oig.9
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 09:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=AGyzC8qxW+R8VSD6z86NgVa2jSTfwLBKMk3D7gCdSF8=;
	b=A2UEFvLyEmnApq4T5/6WR+6VaXYD4EoJ90nWvfr6rMRXwcxpbK9epRF7pLyy9WYNv+
	G8vDow77N4v11+2lIdxGmfrV0VtXLtyP8iTHVxzJdX+C1khZ2xfhFeTefgHXn3uHsdTK
	WURTMNZZr3av23Xtpe8wtZv7NyG7pBKo7rL3pgeJ2wkJUjiYqpIikQJWykusqe99ftWw
	OMGtxdxEo/3bWb6ToFnndMob2HiyCuTdc2wxSo6QnMLVCys/OAEuWo7AkdcvqhBnTlxQ
	bITsyFgA3B4NQZY7vuWgKReGOBmfL4mUtVZQjwakXzWY6qmwRow11OV1eHWyUZl+ASc1
	DDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=AGyzC8qxW+R8VSD6z86NgVa2jSTfwLBKMk3D7gCdSF8=;
	b=ZRjYC4KW7amk6woCXGLM68OlElbKhKDx2JbvMGP3znWiRb7Ynru6yS5NLFFVGJSyje
	4V81nZvYVTx48v2ieKJ26Jzt4N7cL+NPKKmukNJ/ZLipmjV3KMoVnPO1qmwiMPiZ2k2g
	2lgxvaJGMrg2ZYqe0wCtK3fiTbuY+5Zc7tsU/e/nChRHgMyn2/pjXnp5XngZQj6kymxp
	mz5SJSkulKyrOJpdfUe4OcJX6ZtO3PV0/km1jt3wJe1IJOCaxhvb70BqyleK75V/qZNV
	uLXNVVJnstpWY7yYXOs95BX1WuO0xHHjgF7WooIW5lC1hKRWDNhbi6rKo5RXyFQrJNYd
	CHFw==
X-Gm-Message-State: AJaThX7ZV1WExa9ZVuWb2EhMAE4MlTe1mPUoqLl73xh7JZo7b6tNyEtz
	wWqYjUwsorLyToWt3E29ZRvwg7vI
X-Google-Smtp-Source: AGs4zMZoDgdYzEf6j2rK2TflVL6HNkEPXyHM8lSaCpMRNq/HJj9RcDsx/rGImBBEaXFpz/dmjwTYQw==
X-Received: by 10.202.63.196 with SMTP id m187mr475142oia.137.1510855131404;
	Thu, 16 Nov 2017 09:58:51 -0800 (PST)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com.
	[209.85.218.49])
	by smtp.gmail.com with ESMTPSA id l10sm675791oth.72.2017.11.16.09.58.49
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Nov 2017 09:58:49 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f49.google.com with SMTP id r128so18993607oig.9
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 09:58:49 -0800 (PST)
X-Received: by 10.202.55.132 with SMTP id e126mr1808069oia.216.1510855128878; 
	Thu, 16 Nov 2017 09:58:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.17.210 with HTTP; Thu, 16 Nov 2017 09:58:48 -0800 (PST)
In-Reply-To: <1510844758-20290-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1510844758-20290-1-git-send-email-martyn.welch@collabora.co.uk>
Date: Thu, 16 Nov 2017 15:58:48 -0200
X-Gmail-Original-Message-ID: <CAP9ODKo8OPv9RDv54sz+dWSUWqTBL-gEtf3eWzGGp7puCCq2zg@mail.gmail.com>
Message-ID: <CAP9ODKo8OPv9RDv54sz+dWSUWqTBL-gEtf3eWzGGp7puCCq2zg@mail.gmail.com>
To: Martyn Welch <martyn.welch@collabora.co.uk>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH v4 1/3] image.bbclass: add prohibited-paths QA test
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
X-List-Received-Date: Thu, 16 Nov 2017 17:58:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 16, 2017 at 1:05 PM, Martyn Welch
<martyn.welch@collabora.co.uk> wrote:
> Sometimes we wish to ensure that files or directories are not installed
> somewhere that may prove detrimental to the operation of the system. For
> example, this may be the case if files are placed in a directory that is
> utilised as a mount point at run time, thus making them inaccessible once
> when the mount point is being utilised.
>
> Implement the prohibited paths QA test, which enables such locations to be
> specified in a "IMAGE_QA_PROHIBITED_PATHS" variable. This implementation
> allows for a colon separated list of paths to be provided. Shell style
> wildcards can be used.
>
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
> ---
> Changes since v1:
>  - Correcting author and SOB.
>
> Changes since v2:
>  - Reimplemented as image rather than package level QA test.
>  - Changed variable from PROHIBITED_PATH to PROHIBITED_PATHS to better
>    reflect its use.
>
> Changes since v3:
>  - Rename variable to IMAGE_QA_PROHIBITED_PATHS.
>  - Use str.startswith().
>  - Simplify if statement.
>
>  meta/classes/image.bbclass | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> index d93de02..9053ce3 100644
> --- a/meta/classes/image.bbclass
> +++ b/meta/classes/image.bbclass
> @@ -296,6 +296,26 @@ python do_image_complete_setscene () {
>  }
>  addtask do_image_complete_setscene
>
> +python image_check_prohibited_paths () {
> +    import glob
> +    from oe.utils import ImageQAFailed
> +
> +    rootfs = d.getVar('IMAGE_ROOTFS')
> +
> +    path = (d.getVar('IMAGE_QA_PROHIBITED_PATHS') or "")
> +    if path != "":
> +        for p in path.split(':'):
> +            if not p.startswith('/'):
> +                raise ImageQAFailed("IMAGE_QA_PROHIBITED_PATHS \"%s\" must be an absolute path" % p, image_check_prohibited_paths)
> +
> +            match = glob.glob("%s%s" % (rootfs, p))
> +            if match:
> +                loc = ", ".join(item.replace(rootfs, '') for item in match)
> +                raise ImageQAFailed("Match(es) for IMAGE_QA_PROHIBITED_PATHS \"%s\": %s" % (p, loc), image_check_prohibited_paths)
> +}


        for p in path.split(':'):
            if not p.startswith('/'):

so you can drop the if path != "".

An empty list won't go inside the for. Each item needs to be tested.

> +IMAGE_QA_COMMANDS += "image_check_prohibited_paths"
> +
>  # Add image-level QA/sanity checks to IMAGE_QA_COMMANDS
>  #
>  # IMAGE_QA_COMMANDS += " \
> --
> 2.1.4
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core



-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

