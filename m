Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BB87E00824; Thu, 14 Aug 2014 10:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 552DFE00855
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:21:31 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id z12so1408088wgg.24
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=RzPjfFelxtGj6WFQKKbNajWYGnTWJgbxSCkGIxaQvL8=;
	b=BBAjieZFhWUiKtL/DYH/taRSGsL6zRvbTDqcE7Ugey1Yv/gyYgiJ4RDG+MPjdE5qHw
	RhC7srrRquYzm04vBqHZOuf65Lfk8P5vgpqqhGbMRRd0nwNu2A06Vn/bOc/WLw87oAgP
	QT6X7vfjgTormR9TRqzK3TjD1blXhjgAQcP2w3aMxGocsBMRYX6WMo4KRLkOVg9+WHyS
	3zpZ1zwO9yqNAJyL3Gb9CBKofI2Z4AG8YUNKuldaKBxRmKPt934xMg84OXo8m/G34uHy
	OmknOjLeoL0WUZHc7ImQ69xTI0iHc8saJr4l1GPU0f1dR5qrfScrDGaH1DbJuFU8ZVaW
	Rxhg==
X-Gm-Message-State: ALoCoQnhk8ewb0VmwpMRFd9O5Ia16UDh5OR/QOZohONqUypkD5DNnBa9fxlBSbzn5J/qYTaGp6mU
X-Received: by 10.194.62.67 with SMTP id w3mr13863173wjr.32.1408036890617;
	Thu, 14 Aug 2014 10:21:30 -0700 (PDT)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id ca8sm12723567wjc.0.2014.08.14.10.21.29
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 10:21:30 -0700 (PDT)
Date: Thu, 14 Aug 2014 19:21:28 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140814172128.GF18247@gmail.com>
References: <1408022200-3960-1-git-send-email-andrei@gherzan.ro>
	<1408022200-3960-2-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1408022200-3960-2-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [meta-raspberrypi][PATCH 2/2] omxplayer: Add dependency on openssl
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
X-List-Received-Date: Thu, 14 Aug 2014 17:21:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 14, 2014 at 03:16:40PM +0200, Andrei Gherzan wrote:
> Change-Id: I06527c3814fe3690cdbbd03e4a41c79fe554773f
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index 5763d8f..eaadff6 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -7,7 +7,7 @@ SECTION = "console/utils"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
> +DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl"
>  PR = "r3"
>
>  SRCREV = "f3221825a92f27c5f49a52200ff933e454977ed2"
> --
> 1.9.3
>

Merged.

--
Andrei Gherzan

