Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7831EE00D94; Wed,  3 Jul 2019 07:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.167.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC852E00D8A
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 07:05:46 -0700 (PDT)
Received: by mail-lf1-f65.google.com with SMTP id u10so1852761lfm.12
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 07:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IkkbbuNb4rGCCkpYU/p5GI26SdrDaVKjbna48ef61j8=;
	b=pMwISi0rnZi+RrUoqphOXnw5X/SuQyNlctnyxHUFtE5jGfGRkrX2ijmPe7BUzEhSjI
	J0cKOHhraGfRvbzLqGUIa6y6DdHeH51kB7HuqC6K9UhXAc3OwY9kILcR+Xp7N/CuPbDB
	FyVA7ks7wkwqriukvI0akcBMkfBV3RWkDlBmfz7qh73KxU/6m8qStyGCJNcmbgg06zDS
	w9YOrwxsnMNfVxicbR/oU7H4cZFpM6Kq0atczATCvRZQg3bMKBN12CxRbkeqbx+SOH0P
	QSnPLiw8N9P0J6oEOJRaOt4v9qM+2TV8Rr4jzCIje6pKyozFdZYjtaTyA8d8f8bmpNCE
	3frQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IkkbbuNb4rGCCkpYU/p5GI26SdrDaVKjbna48ef61j8=;
	b=egyzXCASg5h2XuOMBizm9rKvGHaHWKTFqXjkwNibfL/GPjqm6MWVXH8yOSmMLgIGs5
	uh2PwUIgjupL17u0GLL/ky/7ZJb92r6snB6r9zk2R70wyoEasohBGSHngDqa9SD0qgJT
	JDcKHmNvFchfyM20gF9ESIyyTmyXxuHjMQiRiCS2pSM2QQHpVTG/CowqDmw3N9e6sEIu
	dMv6eQV6EAKlcoAI2NrpsZPwnqVmxUibBevBrv8m/f5Y3aF4A3AFse29tx3Mm5xutFr9
	7/haai0HGDbo24ldIYJDSLsXH6lmpwyXZOerGMivJ00zQloHIEZf5t07YLYxJvbLWXz0
	8nFQ==
X-Gm-Message-State: APjAAAWgmjVYuKPq2xY3/FJdipL1Cgx3P3WKHce0YHXw2B7HkOhqRx6N
	w7GkouRT/0uh4RQG9FRwGD+YJfXhwKF68oGuZrGRXndK
X-Google-Smtp-Source: APXvYqxNdKBbFzdhyuOm2U/rIv4mGO4BldSRhi/gcfxmgLtOZz6TMrST/akFo0f4u4hQhb+6AQMN4bhj8/jkzNcEL6E=
X-Received: by 2002:a19:f24e:: with SMTP id d14mr5468403lfk.184.1562162745511; 
	Wed, 03 Jul 2019 07:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <1561946902-247680-1-git-send-email-mingli.yu@windriver.com>
	<1561946902-247680-2-git-send-email-mingli.yu@windriver.com>
In-Reply-To: <1561946902-247680-2-git-send-email-mingli.yu@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 3 Jul 2019 10:05:34 -0400
Message-ID: <CADkTA4Ovu323=Udn+L_4HhT8OsSQzv-QYbdVLxUOGNQVMrwboQ@mail.gmail.com>
To: "Yu, Mingli" <mingli.yu@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-cloud-services][PATCH 2/2] nss-pam-ldapd: add required distro feature check for pam
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
X-List-Received-Date: Wed, 03 Jul 2019 14:05:53 -0000
Content-Type: text/plain; charset="UTF-8"

merged.

Bruce

On Sun, Jun 30, 2019 at 10:09 PM <mingli.yu@windriver.com> wrote:
>
> From: Mingli Yu <Mingli.Yu@windriver.com>
>
> As nss-pam-ldapd depends on libpam, it should do
> required distro feature check for pam.
>
> Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> ---
>  recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb b/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb
> index 404aeca..dfa562f 100644
> --- a/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb
> +++ b/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb
> @@ -20,7 +20,8 @@ SRC_URI = "\
>         file://nslcd.service \
>         "
>
> -inherit autotools
> +inherit autotools distro_features_check
> +REQUIRED_DISTRO_FEATURES = "pam"
>
>  SRC_URI[md5sum] = "8c99fdc54f4bf9aca8c5f53fdb1403ff"
>  SRC_URI[sha256sum] = "ef7362e7f2003da8c7beb7bcc03c30494acf712625aaac8badc6e7eb16f3453f"
> --
> 2.7.4
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

