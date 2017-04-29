Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73788E00A48; Fri, 28 Apr 2017 23:30:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 408CAE009AA
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 23:29:58 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id x86so14927071ioe.3
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 23:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/8T1WAgIAIm3RI/sujbWU+8/U3pn2SY2X1FAsOzav+g=;
	b=RkjlPX2ALfeJox6ufyAM82DUtKSXenwdKkYyyK/jr1GO1x2TY82wDvJ+Q3aFFD+jFC
	Y3GLCj1Ms1sMeMpa4knediNqQv8h9EKQSzMCHYRC6ZENVoqau8JFSBLu6qNxLRZ/DfyI
	9OYhgM/uWG2NTlSlYI8e7uSTVENNCtbVD9zTq5EZChIjB6HJevHuEgh8F8fU9VHMQaKJ
	gU2jZBiQKKuuN81NlgBAhCVBZJw0bpEc6KYHKmIlzNR0OfjJzAdehvQlKydgIcMWhjY6
	Z5ydfxPr9Nc9vd/dwaLyZQvXC95TkVTEZnAt7LoKbPm9j3zcqhCYF7oqwXXn0Xa58rpZ
	EYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/8T1WAgIAIm3RI/sujbWU+8/U3pn2SY2X1FAsOzav+g=;
	b=TvrTf7f+UdZvx0B+qTStSwoEvKU+dteQAJ0pztwZalQcPxAo00pBXUdp8Myu3Mtq/b
	3Rw9h7b1EKC4TjHBsysU0npLIziZzY8SMixjWBJPW4F4z5RJYzPIkXGTw6D03p1NRBWZ
	QSjb28R+kZxaRIqdmrY3vhfinwP2VU/Z16Haa5lWJf5CxbYG4u/IJ5Tcov6R8DYAyfI5
	l5D/ELZCd00qvYt3thWsL2eMSWhVd6Pf2wCFGvppVhS1LT3vpgGi8Y0/D1IdTrOogQs9
	7X5SiNdq9HYJlG3SEoX2wZcZcAwRwieYe+btQ1Gk6HEXzRuwfkb0gIBqcdTvWThMToeg
	fOCg==
X-Gm-Message-State: AN3rC/6YtlX8berNqTdhac0MKraJf7MrCWLFDHXAB86lSB5G18qeZpCx
	vF8aUBz4RArJvQ==
X-Received: by 10.107.170.80 with SMTP id t77mr14218199ioe.113.1493447398352; 
	Fri, 28 Apr 2017 23:29:58 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id m124sm885495itd.3.2017.04.28.23.29.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Apr 2017 23:29:57 -0700 (PDT)
Date: Sat, 29 Apr 2017 02:29:55 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Message-ID: <20170429062955.GA14491@linux-uys3>
References: <20170428135857.27341-1-romain.perier@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20170428135857.27341-1-romain.perier@collabora.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] linux: version bump to 4.11-rc8
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
X-List-Received-Date: Sat, 29 Apr 2017 06:30:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied, thanks!

It's nice to finally see those "mmc_host mmc2: Bus speed (slot 0) = 50000000Hz
(slot req 52000000Hz, actual 50000000HZ div = 0)" messages gone :-)

On Fri 2017-04-28 @ 03:58:57 PM, Romain Perier wrote:
> Linux kernel 4.11 being released soon, bump recipe to 4.11-rc8.
> 
> Signed-off-by: Romain Perier <romain.perier@collabora.com>
> ---
>  recipes-kernel/linux/linux_4.10.bb | 19 -------------------
>  recipes-kernel/linux/linux_4.11.bb | 20 ++++++++++++++++++++
>  2 files changed, 20 insertions(+), 19 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux_4.10.bb
>  create mode 100644 recipes-kernel/linux/linux_4.11.bb
> 
> diff --git a/recipes-kernel/linux/linux_4.10.bb b/recipes-kernel/linux/linux_4.10.bb
> deleted file mode 100644
> index e1d0aa4..0000000
> --- a/recipes-kernel/linux/linux_4.10.bb
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -# Copyright (C) 2017 Romain Perier
> -# Copyright (C) 2017 Eddie Cai
> -# Released under the MIT license (see COPYING.MIT for the terms)
> -
> -require recipes-kernel/linux/linux-yocto.inc
> -
> -SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> -
> -SRCREV = "7089db84e356562f8ba737c29e472cc42d530dbc"
> -LINUX_VERSION = "4.10"
> -# Override local version in order to use the one generated by linux build system
> -# And not "yocto-standard"
> -LINUX_VERSION_EXTENSION = ""
> -PR = "r1"
> -PV = "${LINUX_VERSION}-rc8"
> -
> -# Include only supported boards for now
> -COMPATIBLE_MACHINE = "(radxarock|marsboard-rk3066|firefly-rk3288|rock2-square)"
> -deltask kernel_configme
> diff --git a/recipes-kernel/linux/linux_4.11.bb b/recipes-kernel/linux/linux_4.11.bb
> new file mode 100644
> index 0000000..6058661
> --- /dev/null
> +++ b/recipes-kernel/linux/linux_4.11.bb
> @@ -0,0 +1,20 @@
> +# Copyright (C) 2017 Romain Perier
> +# Copyright (C) 2017 Eddie Cai
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +require recipes-kernel/linux/linux-yocto.inc
> +
> +SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> +
> +SRCREV = "5a7ad1146caa895ad718a534399e38bd2ba721b7"
> +LINUX_VERSION = "4.11"
> +# Override local version in order to use the one generated by linux build system
> +# And not "yocto-standard"
> +LINUX_VERSION_EXTENSION = ""
> +PR = "r1"
> +PV = "${LINUX_VERSION}-rc8"
> +
> +# Include only supported boards for now
> +COMPATIBLE_MACHINE = "(radxarock|marsboard-rk3066|firefly-rk3288|rock2-square)"
> +deltask kernel_configme
> +
> -- 
> 1.8.3.1
> 

