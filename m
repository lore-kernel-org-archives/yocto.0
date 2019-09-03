Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6878AE00D6A; Tue,  3 Sep 2019 12:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4ED3E00DF0
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 12:55:02 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id d5so6309675lja.10
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2019 12:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DvzRAlUrKbbxBc+6z2dp1iShJ1S5becEbdC1R/iE/4U=;
	b=Vt851ZIwDyKQu/E7DOuChLlB3ocHzzZbkhGR6iKO16eo1utEPqkeMG8bw4qvsSB1T+
	3G/vL9q8gyDTbxM7Qc3y+vnHMlglXu7eVpCpvjAiLKlYU+hguJNVYQiRoOdpkfoW25Sr
	FSOxjGh3pBbjpROgzZ8xxEFuxOV3Z8DfjwD/qQJllT8atZZW8Y4yeY0p2tstgx/V3tMb
	L7Ctr6V+g2d/NFMj3Q1R4Fsh10/fM49R1aO9lVDc2lzmJnTYz7Ts4i0ZW7We7Njt1I/l
	UB8z8dAhrcgbv1Ih1YeFDMreOwrvgXl6wdRulk98IqvKc3UQYyxuzH2F6XW6nWaknP/Y
	Bj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DvzRAlUrKbbxBc+6z2dp1iShJ1S5becEbdC1R/iE/4U=;
	b=Y5U3bAkfVKm47HgH+cmCJMrnaGolZmrgKhl1qB9zsBjGbfZK0plulPrjqADPriK78j
	g5nkWGXGx9OropX6/plH4fIoCH7Edo5c5YH9YfpZWXVDlmEQRVxctoq6GDQhJ8WGlj+W
	2GKGilwlXNaEeDv6D5x82MNYSFwYeb/aoHPOoqHYuYS0IQ/UeT3V+cszcv/LKPxcTqU8
	mX6n6OUzPJ2r5HkA+YC803JJuu8PwJLhHKSL7K6U45vQkHgIfotaPXasI44K/nYRQiKB
	3CZejGlhOuSyUqOSy9j7t61Fq/yvL7iMxYc76ZT7n17snt8Jp6llnuQuOXS0z+Aqj72/
	V0Jw==
X-Gm-Message-State: APjAAAXDsA2oEMICBbK9Jby5FP8E50U9k0KqWknmvCuY7D+LjpuAirq8
	mUxoD1hFXRVtOB8nIF5kUB0qfPzE708DDtQj1PE=
X-Google-Smtp-Source: APXvYqzccco2u/4msWo77IWoqzd0aebwuevuM26zvzS3ohvHUffQHskNiT+aEIndJsmo26hbx+GgQCKN8t397/qsQ2M=
X-Received: by 2002:a2e:83d6:: with SMTP id s22mr14465691ljh.104.1567540501392;
	Tue, 03 Sep 2019 12:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <1567145403-30425-1-git-send-email-changqing.li@windriver.com>
In-Reply-To: <1567145403-30425-1-git-send-email-changqing.li@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 3 Sep 2019 15:54:50 -0400
Message-ID: <CADkTA4OUHkQkmp39iUuci2C6NOq7Lz=S_GrftUCOdzudGqDuPA@mail.gmail.com>
To: changqing.li@windriver.com
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-cloud-services][PATCH] glusterfs: support usrmerge
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
X-List-Received-Date: Tue, 03 Sep 2019 19:55:06 -0000
Content-Type: text/plain; charset="UTF-8"

merged

Bruce

On Fri, Aug 30, 2019 at 2:13 AM <changqing.li@windriver.com> wrote:
>
> From: Changqing Li <changqing.li@windriver.com>
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  recipes-extended/glusterfs/glusterfs.inc | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-extended/glusterfs/glusterfs.inc b/recipes-extended/glusterfs/glusterfs.inc
> index 40a3922..66e2bf1 100644
> --- a/recipes-extended/glusterfs/glusterfs.inc
> +++ b/recipes-extended/glusterfs/glusterfs.inc
> @@ -64,9 +64,11 @@ do_install_append() {
>      install -m 0755 ${WORKDIR}/glusterd.init \
>          ${D}${sysconfdir}/init.d/glusterd
>
> -    # Mount looks for mount.* plug-ins in /sbin; fix it with a symlink.
> -    mkdir -p ${D}${base_sbindir}
> -    (cd ${D}${base_sbindir}; ln -s ..${sbindir}/mount.glusterfs .)
> +    if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
> +        # Mount looks for mount.* plug-ins in /sbin; fix it with a symlink.
> +        mkdir -p ${D}${base_sbindir}
> +        (cd ${D}${base_sbindir}; ln -s ..${sbindir}/mount.glusterfs .)
> +    fi
>
>      # These are plug-ins, so they don't need libtool configs.
>      find ${D}${libdir}/glusterfs/${PV} -name '*.la' -exec rm -f '{}' ';'
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

