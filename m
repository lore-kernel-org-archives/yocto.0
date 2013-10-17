Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A19C7E01684
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:49:46 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id wm4so2263156obc.5
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:49:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=pWt4/lak0VxHfzIpiS8CTaIwSQETXqB7IWFGrJbfFoY=;
	b=juKvRreHqL7joUFduAmSDVAKaPbz53nmGqKKXNhka3DYn33bK6tVH2w4BnKywjw4qM
	dtI3RXhicXO9nvz/U6U/SEDwwqNISMcn80K6m0DReNJr8ZB4ocwOTHU54SUBbWfqghKu
	j9p/z+kh1sJu8SE8sJIJ3wJy6qL2Dkxe5Yr4k70Kf0AWX2g7UWHPyJIIsNgEsrBeYfSy
	oSttdyRcxpPtWg594ZV0r/7sdoLv8z1slHx0aiUJHbUTBxLQMuWT8ZO62ckSN8dYOxQ6
	cPAkS7F0a7O8FlQQxrFxFOaJOm++XUKpCpxlv1YWExzj1+lh+uJOhcEAV5h2ozIny7gp
	325g==
X-Gm-Message-State: ALoCoQkBqsOPAXKE3o7nzyB1QI/BX4sWcNkXIpFq04UHP5ckmdj+/2BaFoYtJfBwjP5bUzbScoht
X-Received: by 10.182.121.137 with SMTP id lk9mr16633847obb.32.1382039385413; 
	Thu, 17 Oct 2013 12:49:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.156.40 with HTTP; Thu, 17 Oct 2013 12:49:25 -0700 (PDT)
In-Reply-To: <525FEB23.6050907@mlbassoc.com>
References: <525FEB23.6050907@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 17 Oct 2013 21:49:25 +0200
Message-ID: <CAP71WjwidN0f1K6m1SfQqCbObqRKD7f4_RbmftrWkE9iOF7_OA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Busybox configuration example?
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
X-List-Received-Date: Thu, 17 Oct 2013 19:49:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 17, 2013 at 3:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> Can someone explain how I might control my busybox builds?
> For example, I routinely add this to busybox*.bbappend:
>
>   #
>   # Force 'ifup' to wait longer for really slow links...
>   #
>   do_prepare_config_append () {
>     sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R
> -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"/' ${S}/.config
>   }
>
> which is just editing the confguration file to match my preferences.
> Is there a way to do this using the "configuration fragments" mentioned
> above?

here is an example of busybox config fragment, that we use

https://git.linaro.org/gitweb?p=openembedded/meta-linaro.git;a=tree;f=meta-linaro/recipes-core/busybox;h=2c4a6b6b8b542b2eef04561d95a802d855ae7573;hb=master

i don't know if the config fragment would work for what you are
doing.. let us know ;-)

