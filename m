Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD51E004DD; Thu, 14 Aug 2014 10:21:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4CACE0034B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:21:16 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id u56so1363452wes.28
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=+mP0+SyCNz0oXJOU87LukjYh4KOijaBDOIMX14z1i5w=;
	b=SDg7m20Jf8FVWXxusrt2f0jTEmfV9uOs6wl9CuWpLoorAAEkt/QVJFkZlz3hZQObjV
	8+ymb8ILZq+VUYyYXpF68e9gNwsuJ+JYm4x3PKR80CUYYrprsha8KzP081yFFFr3nWfU
	m6EFtclVMqIEoU+Y6f/H7CxSuY9e774w9IuJ8W/33AmOARRvpKoRxPPvDl7drJiIsMOG
	YmlOhMLNn5p0aq5xZiLCaQAOn/B+7BLgmnVyOICpskykOPrMar53oLiR9TQNP1X2oqNP
	TtiCXT96QrPg0tHRpRP1Foynr7Q6LA4XMsWkVluGlsQepqANr6eYdksf5mqW5wxGZJXr
	MIIA==
X-Gm-Message-State: ALoCoQnIJaXjGZs5E7GKgQhulSXm3+xdBN6CJ//YJmZWrFpcRZSpaCgjFH360IoNjO06zH0LMa9M
X-Received: by 10.194.222.230 with SMTP id qp6mr14079315wjc.23.1408036874806; 
	Thu, 14 Aug 2014 10:21:14 -0700 (PDT)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id h3sm12714922wjn.10.2014.08.14.10.21.14
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 10:21:14 -0700 (PDT)
Date: Thu, 14 Aug 2014 19:21:12 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140814172112.GE18247@gmail.com>
References: <1408022200-3960-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1408022200-3960-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [meta-raspberrypi][PATCH 1/2] gstreamer1.0-plugins-bad: Sync version with yocto master
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
X-List-Received-Date: Thu, 14 Aug 2014 17:21:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 14, 2014 at 03:16:39PM +0200, Andrei Gherzan wrote:
> Change-Id: I7913b849ddfc615de4846dbd653e03d084bb8039
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend | 3 ---
>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend | 3 +++
>  2 files changed, 3 insertions(+), 3 deletions(-)
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend
> deleted file mode 100644
> index fba7e1a..0000000
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -EXTRA_OECONF_append_raspberrypi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
> -                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
> -                                    --with-egl-window-system=rpi"
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
> new file mode 100644
> index 0000000..fba7e1a
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
> @@ -0,0 +1,3 @@
> +EXTRA_OECONF_append_raspberrypi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
> +                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
> +                                    --with-egl-window-system=rpi"
> --
> 1.9.3
>

Merged.

--
Andrei Gherzan

