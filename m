Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0123AE00D56; Tue, 13 Oct 2015 12:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF98BE00C28
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:09:18 -0700 (PDT)
Received: by wieq12 with SMTP id q12so47550975wie.1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=oonkoEJfNnIqidz1bCk/OlUb+K6meR2+t7p9l0LxwAg=;
	b=G99Zt4F6LJ9sra2xDQ4AMVsNT5LbPgX7wUyDiKGeBR2tbIzp3QCenBELHIz2mY52B2
	iiA8suXUyg7CpMb/HLXS7zYl8Fq85bAtIlzQMbLr3AsfZuo2t1fHAzrul0EAqpoNUeDb
	VgVlnL56qmCQQ2bpaIiyXcH5AIHgs8TP8MremxR0pSY1PCO3OhXQxZWKcKK9i23vzDsh
	ztxKLAXuWz8P8dgYy9y21sRuFSZuVgNvjZrRS6KQXQ82QdV4JWBqZpyPSDMDtB5Z5d66
	GYSFNUpzgn3M/iECQDdZB6GM4rk8mAXotJ2Dax6jIjTSswbo9XbotWIR8n0Iq7TSOtTz
	V/rw==
X-Gm-Message-State: ALoCoQl/kg2ymCaJiLuDAKHTllZbJdpNEPKHXRY2vU8vJ+WOgVjFq/oJ5Jsc4VBL4vtvu+tjoHnb
X-Received: by 10.180.81.199 with SMTP id c7mr22108325wiy.87.1444763357571;
	Tue, 13 Oct 2015 12:09:17 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31])
	by smtp.gmail.com with ESMTPSA id 12sm5348945wjw.15.2015.10.13.12.09.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Oct 2015 12:09:16 -0700 (PDT)
Date: Tue, 13 Oct 2015 21:09:14 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151013190914.GC8800@resin>
References: <1440232418-4519-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1440232418-4519-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: remove unrecognized configure option
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
X-List-Received-Date: Tue, 13 Oct 2015 19:09:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Aug 22, 2015 at 06:33:38PM +1000, Jonathan Liu wrote:
> The --with-egl-window-system=rpi configure option is not recognized
> in the current version.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index 39ded59..ab0280e 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -1,3 +1,2 @@
>  EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
> -                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
> -                                    --with-egl-window-system=rpi"
> +                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
> --
> 2.5.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master.

--
Andrei Gherzan

