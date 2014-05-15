Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9850E006EF; Wed, 14 May 2014 17:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 313 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 17:50:38 PDT
Received: from mail-ig0-f177.google.com (unknown [209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1976DE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:50:38 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id l13so360686iga.16
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XzL5jn58c/2WD2rNcit9hIvoX0MrhI5z8/Nhl/oj+rE=;
	b=b0Q/C9/q2NgIYBpxQcbvP/9iwptPpd6SyTnu2324jAxmGyAVt7ZuxolUBUTgVjUKnr
	AIpgFVEw+J2QczVNyLND93LMl8LtQtuUNLBYqUioLORJYNgQxH78tiovv606NnAw0nRj
	t1rvVeRaMK9NQ0h/hdVVkBUAaxj/9Iy/xt6rH/qB53v3peMQXNjE+bq7d0kTvGN1qWTs
	ItaJC0AFqjVT+ikWboUsjERLFMvL8NselH5Trm4PJhJDV7emMuxfkx6ekDSocNn3x6Ax
	FvdflrGZlrZLHrFxKVTsMeBlfSDU8+ATmybgzDO9NlMp2WRFnpw2cSCTvbDK/eky/PBz
	8NFA==
X-Received: by 10.50.65.3 with SMTP id t3mr51230962igs.20.1400114725204; Wed,
	14 May 2014 17:45:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Wed, 14 May 2014 17:44:55 -0700 (PDT)
In-Reply-To: <1400106263-25100-10-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
	<1400106263-25100-10-git-send-email-akuster808@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 May 2014 17:44:55 -0700
Message-ID: <CAMKF1srMr1KqCnwgn3ORz+0WLSDRj03qXU+5Ji51_NE8hbvDAA@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 9/9] setools fix do_configure
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
X-List-Received-Date: Thu, 15 May 2014 00:50:39 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 14, 2014 at 3:24 PM, Armin Kuster <akuster808@gmail.com> wrote:
>         setools: change autotools to autotools-brokensep and bump rev.
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/setools/setools_3.3.8.bb | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
> index 78ed06d..b3bad6b 100644
> --- a/recipes-security/setools/setools_3.3.8.bb
> +++ b/recipes-security/setools/setools_3.3.8.bb
> @@ -12,6 +12,8 @@ SRC_URI = "http://oss.tresys.com/projects/setools/chrome/site/dists/setools-${PV
>  SRC_URI[md5sum] = "d68d0d4e4da0f01da0f208782ff04b91"
>  SRC_URI[sha256sum] = "44387ecc9a231ec536a937783440cd8960a72c51f14bffc1604b7525e341e999"
>
> +PR .= ".1"
> +

why is this needed

>  SRC_URI += "file://setools-neverallow-rules-all-always-fail.patch"
>  SRC_URI += "file://setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch"
>  #SRC_URI += "file://setools-Changes-to-support-named-file_trans-rules.patch"
> @@ -69,7 +71,7 @@ FILES_${PN} += "\
>         ${mandir}/man1/sesearch.1.gz \
>         "
>
> -inherit autotools pythonnative
> +inherit autotools-brokensep pythonnative

It overrides do_configure and thats most probably the reason for
breakage. May be you can
look at trying to remove do_configure and solve the problem instead of
this brokensep workaround.

>
>  # need to export these variables for python-config to work
>  export BUILD_SYS
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

