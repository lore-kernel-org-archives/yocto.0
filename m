Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 323D0E00D2E; Thu, 16 Nov 2017 02:04:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14280E00D07
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:04:11 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id v186so8217366wma.2
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:04:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=vS5hZL7UZovP0PA8RjCKkUngE33FpMONpoBr/eeLACw=;
	b=ox7KJADR1kVfAbfIzqCAvM34+Bvt8l+bgRBmqV+TrWlble25t00GB+/NDkmUCJYj4m
	ewJFsZPbgq1rExH+jE1i7PEWSi6ZeS8y5Ty1B4qEneOdjXXoJsvuQWrL8Jk6vzT4COIA
	j9s1AE/JbrpSp3gOyhk82WkVAADaXKmFUHg2XLyTCPqe+V1KN2BEQdQ4z1j0x0ocV43J
	8FLbxzpdo20CFqmaGenxYPPtu+kfWqSZl2ryUJmrg1ur6m14wGIJcsRu2pZKr58lzygu
	RLMP6+um+uP0gTuPk5VyamGIoCBeszUKehusgGwqKRsnueX4XRyvvmjKyfAo9xnzSjEY
	1rgw==
X-Gm-Message-State: AJaThX6mbwzbHiu24JU4T17//beq3HdV0idLXnPM0XBaRArohSc17qme
	qOyYCEk/62XcpNBZj2K805ftnb0g
X-Google-Smtp-Source: AGs4zMatPWdDCvcjoI0yR210QSJQq9T2JIJ5P4hzd/9zl/+rCd/XLfFNqgJRxkDXG2QKkJsnXKn5aQ==
X-Received: by 10.80.213.131 with SMTP id v3mr1832435edi.102.1510826646852;
	Thu, 16 Nov 2017 02:04:06 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id o55sm877689edc.90.2017.11.16.02.04.05
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 16 Nov 2017 02:04:06 -0800 (PST)
Message-ID: <1510826645.4049.76.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 16 Nov 2017 10:04:05 +0000
In-Reply-To: <20171116100258.21588-1-git@andred.net>
References: <20171116100258.21588-1-git@andred.net>
X-Mailer: Evolution 3.26.1-1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] layer.conf: exclude libarchive (bsdtar) dependency from swupd-client
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
X-List-Received-Date: Thu, 16 Nov 2017 10:04:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-11-16 at 10:02 +0000, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
> 
> The swupd-client doesn't need to be rebuilt if libarchive
> changes, because swupd-client just invokes the command line
> utility bsdtar from the libarchive recipe, it doesn't link
> against libarchive.
> The bsdtar binary changing doesn't matter, as bsdtar's ABI
> (command line argument handling) wouldn't be changing.
> 
> Signed-off-by: André Draszik <adraszik@tycoint.com>
> ---
>  conf/layer.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 50e7558..3af6992 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -14,4 +14,5 @@ LAYERVERSION_meta-swupd = "1"
>  SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS += "\
>    oe-swupd-helpers->bash \
>    oe-swupd-helpers->busybox \
> +  swupd-client->libarchive \
>  "

I hope I understood the description of SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS
correctly...

Cheers,
Andre'


