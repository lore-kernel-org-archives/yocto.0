Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E060DE00B02; Mon, 15 May 2017 08:01:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAE25E00901
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:01:42 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id x47so7590583uab.0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=azEODJQ90lJl2fznnn8Heh2GwqrunvYT/hftUq6cLfI=;
	b=lcF1XJ636QjxQqSwsFSaKTpcd8anMBkMwWrF1Eif64mP3NjeGNuGonsq/pVw/PIHhv
	NQ6W1AMsuO4W7hqy/nNzFAjqAfmAMhnrjrJPeOkG8XPMzE9Ioph2KRAzTTNaWaAYXJqS
	r/J5Tt7pYpbjsUT+rPX9gEHaQLtv4zJkPcAp66idXOgLZ4t3ES05sWXwgUFH1kQviTJl
	8wPqiaex/YvfOEspvAHEH6FuG/I2y0G/rHEiGzdygiyxXuLcXhXLTEJRBochcK/SggJb
	0KmPwx5yIkCsz5CHUbEFy3Qjwe6yErNkfjsFMGGsKOY0lp/cOQdReG9FHM14kWPRLf6f
	roYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=azEODJQ90lJl2fznnn8Heh2GwqrunvYT/hftUq6cLfI=;
	b=ftiJcH5axZVXEBbziO1KhBvcPebiOVxvhnODiK3R0h7d05M2sZysI5HPEUFUYl4fLD
	ICH20oOtYctw67KeZguGguJ01Y/hDzRzL5sc+ZQ/gfYf/ka16peoAXtMoma/OzoMNumb
	A4VSLhtz36j4aYuaVfrab2oUBMJKGckc/c1Tmb6vNuE3ZPNDrMT0s+PgHtxOdXHc41/r
	Mlm3u8dub5QBupIzgVR8TECqqGKL9pwdI4AjaY0yOQPzoftUsdQ6kBqAXRtyZJQJJi9T
	6zOxpNDRYO6t/7W+ITVcbq/3r/MJR4lbJwSRRWovEkZb07z4amOYcpcoIr3Gk9M+/d7g
	xagg==
X-Gm-Message-State: AODbwcBh8MusPiRvuCq3C1gvVSmZW9Jk4zFyP9QQDBf9Qm/IYRDF4wUP
	PaywHu0qCSqJ+I0Evt4ux8wb83S39A==
X-Received: by 10.159.49.21 with SMTP id m21mr3341295uab.64.1494860501404;
	Mon, 15 May 2017 08:01:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Mon, 15 May 2017 08:01:40 -0700 (PDT)
In-Reply-To: <20170513155817.28102-1-romain.perier@collabora.com>
References: <20170513155817.28102-1-romain.perier@collabora.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 15 May 2017 11:01:40 -0400
Message-ID: <CAHUNapQiuedV-wvPLhQyQ3hbzi8Gp6G2ocU-fcH-zq5eo9gCjw@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH] linux: version bump to 4.11
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
X-List-Received-Date: Mon, 15 May 2017 15:01:46 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks!
Tested on the firefly-rk3288 and applied.

On Sat, May 13, 2017 at 11:58 AM, Romain Perier
<romain.perier@collabora.com> wrote:
> Linux v4.11 has been released, bump the version to 4.11.
>
> Signed-off-by: Romain Perier <romain.perier@collabora.com>
> ---
>  recipes-kernel/linux/linux_4.11.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux_4.11.bb b/recipes-kernel/linux/linux_4.11.bb
> index 6058661..8f1d2a7 100644
> --- a/recipes-kernel/linux/linux_4.11.bb
> +++ b/recipes-kernel/linux/linux_4.11.bb
> @@ -6,13 +6,13 @@ require recipes-kernel/linux/linux-yocto.inc
>
>  SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
>
> -SRCREV = "5a7ad1146caa895ad718a534399e38bd2ba721b7"
> +SRCREV = "a351e9b9fc24e982ec2f0e76379a49826036da12"
>  LINUX_VERSION = "4.11"
>  # Override local version in order to use the one generated by linux build system
>  # And not "yocto-standard"
>  LINUX_VERSION_EXTENSION = ""
>  PR = "r1"
> -PV = "${LINUX_VERSION}-rc8"
> +PV = "${LINUX_VERSION}"
>
>  # Include only supported boards for now
>  COMPATIBLE_MACHINE = "(radxarock|marsboard-rk3066|firefly-rk3288|rock2-square)"
> --
> 1.8.3.1
>

