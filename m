Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3B78E00B46; Sat, 27 Feb 2016 04:56:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10739E009D7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 04:56:05 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id g62so103054689wme.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 04:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=EizzsdWzioIO1kDqAzb0xnNvhXqMq98lASAKpiJxU2Y=;
	b=iB+dsxx1mTwSyVTb1dJsU07rtp2bnxv5SwhHds7G/ggzDyPhWb/XtNE2LgHO5/HZAc
	EM6xr9Ivuys41hn0yjV7zBO0bcARRcyKM9jrUMjheaGRxlqmhbi9qL/1B/FC1pM6K8iD
	/lQ8Zetns5lNzvFbs58k+5pC430hUoR2HjSFDAKk2goM61gQxL41AgnlpFoUmIU0fKCz
	IP4i0lDHpOG589Z4HwJKYWS65TcTfBEQ2hDPgQ+HRYrHW29srlp/QkaWXbe+dNOURe5u
	AhUm/Wle2edAYYOjgQAjan/gfXrNODF55tUReorHRpOf3S2NksFiqGs3ST7ZvQHAgjn2
	zNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=EizzsdWzioIO1kDqAzb0xnNvhXqMq98lASAKpiJxU2Y=;
	b=fLFHtMSZC8VICkNFUO1563pJAO6W2iMlDaT/mwTYxYCId5DBcpgZlBmD78rraznpBi
	ROL3wp0PxRIAIZ1ZRISRWiswRJiDXIeBKtZXVH5/2EtFGhAVc3tszhySZAj8wbAWyAQK
	CfRj8V0vOmpWeXafBuWTtMNp9UD1DICJ+eP1Tmd3CCXszLc39klZtrkciVTzAjd6yeXn
	nbZ7Lg/96qFniscF51Sxp7Beh7coghw9sLNR6wF9n2Jz4iaI6nNY5rjxrKi1LM9pcE0o
	pv6Sp+/7XbF84mL57lMryI8wYMPPR6OrVfxYwtlokeiqL1MAkHIRi1EqSzLyF0O0atmm
	imng==
X-Gm-Message-State: AD7BkJIJhujzIe8WEiUQ8NpMnzoZPYKOFM+C9Qggxeg4XEdAmfjjEoxwvytwLA1j8/VyEg==
X-Received: by 10.28.156.194 with SMTP id f185mr1944273wme.35.1456577764808;
	Sat, 27 Feb 2016 04:56:04 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	k124sm7040249wmb.11.2016.02.27.04.56.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 04:56:03 -0800 (PST)
Date: Sat, 27 Feb 2016 13:56:01 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160227125601.GB28071@resin.home>
References: <1456492868-19761-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456492868-19761-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] omxplayer: fix host-user-contaminated QA warnings
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
X-List-Received-Date: Sat, 27 Feb 2016 12:56:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 12:21:08AM +1100, Jonathan Liu wrote:
> Explicitly chown the installed files to fix host-user-contaminated QA
> warnings for libavcodec, libavdevice, libavfilter, libavformat,
> libavutil and libswresample shared libraries.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index a0690a0..8816273 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -61,6 +61,7 @@ do_install() {
>      oe_runmake STRIP='echo skipping strip' dist
>      mkdir -p ${D}${datadir}/fonts/truetype/freefont/
>      install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
> +    chown root:root -R ${D}
>  }
>
>  FILES_${PN} = "${bindir}/omxplayer* \
> --
> 2.7.1
>

Actually the problem here is how the package does the dist target.

Makefile:
...
<-->cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
...

This means that even if ran in a fackroot environment, this will preserve the
user id and other file attributes generating the warnings you pointed out.

In order to fix this I would vote for a patch that would change the archive
flag to a simple -R (-P is default anyway). What do you think?

As well this patch should go upstream too as I don't see the idea behind
copying those while preserving the file attributes.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

