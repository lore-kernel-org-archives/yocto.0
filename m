Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF029E016B3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:54:18 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id f12so1350597vbg.39
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=7argcrB6CZ0sJ4XDsByzGzpAc1wB5J2FWmvCqN0iaT8=;
	b=JW3kH0fjhEOgLKiHU5trqReDcfrwIyeoUDGJNP/JERjEede0eXmK8zX1akNLPknSJJ
	qDAedprdbuiyQj+o1gkHXqr5hObwVpsehRZD8IDlutYehThfJNb8tkeE1lQU7GbRu+kT
	NKJPG2d9wfu1HJkLZzNfp7zXKzEzOdG6yt+sUGwXdXcMemwfkkZ0+6w/dxUGpcuGRtJK
	i2MMl7keUwBPxdtn/hFa/tYq6OuREVnh5P8dpFM8WAonTk6e8e7q/w5e2CvH9WAGr4EL
	u/QMTTFgAdZMXT+Cke7SSfkoX0qJ5BbmFctcdU9BOmjv2j78XM2iYi7d7Mh7bgOm/H2T
	msEg==
X-Gm-Message-State: ALoCoQkgfPo/FGAqbk5dTAhEi2HxXjpJ++rYFt3PYfhiaeYUdLNLcNNwEl4NpOunUQcyrmNm/xu2
MIME-Version: 1.0
X-Received: by 10.220.78.18 with SMTP id i18mr8141411vck.3.1382039657550; Thu,
	17 Oct 2013 12:54:17 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Thu, 17 Oct 2013 12:54:17 -0700 (PDT)
In-Reply-To: <1381774266-7522-1-git-send-email-bevenson@melinkcorp.com>
References: <1381774266-7522-1-git-send-email-bevenson@melinkcorp.com>
Date: Thu, 17 Oct 2013 12:54:17 -0700
Message-ID: <CAPhnLPC=_gb1u=7mOPvuVzCqS7tdhZ2YFHthaS1eJRckVOaPKA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] [PATCH 1/1] README-NEW-AUTOBUILDER: Add to scheduler documentation
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
X-List-Received-Date: Thu, 17 Oct 2013 19:54:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Pulled into master. Thanks!

-b

On Mon, Oct 14, 2013 at 11:11 AM, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> Adds detail on the Nightly scheduler properties that are
> available.  Notes default settings where appropriate and
> notes which values must be set by the user.
>
> Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
> ---
>  README-NEW-AUTOBUILDER |   12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
> index 27f892f..430e2a3 100644
> --- a/README-NEW-AUTOBUILDER
> +++ b/README-NEW-AUTOBUILDER
> @@ -145,10 +145,14 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>         are type-specific:
>
>            Nightly scheduler properties:
> -               month
> -               dayOfWeek
> -              hour
> -              minute
> +               month: The month in which to start the build, with January = 1.
> +                    This defaults to '*', meaning every month.
> +               dayOfWeek: The day of the week in which to start the build, with
> +                    Monday = 1.  This defaults to '*', meaning every day.
> +              hour: The hour of the day in which to start the build, with
> +                    12:00 AM = 0.  This must be set by the user.
> +              minute: The minute of the hour in which to start the build, with
> +                    0 to 59 as valid values.  This must be set by the user.
>
>           SingleBranchScheduler properties:
>                 repository: the repository to attach the scheduler to; this
> --
> 1.7.9.5
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

