Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89ED4E00D71; Mon, 29 Feb 2016 13:22:42 -0800 (PST)
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
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82036E00CDF
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:22:28 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id l68so9381156wml.0
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YBB/Gh4c6HHigMNvq+vHvqEXsm1sy+5fzB7iN4V0a0U=;
	b=VFxy4nDGEnlJU3rboVOCLbuffcYIy8WKWkQ6KN0z+cmTsgUde76XbpRr1AEZBTNTNs
	hmSpOP19XJvSESsOroOK6jbhZvsWN4DCY/9/QxwcFSpnsEvaEgZklDgx2WiWzhp7MDqJ
	modh7e0w7CZ+7zV3SHMmStlpQEsX0Dd61RsLddyw5O7A7cfKjlWGe7sAivy34OAr6d0a
	qgO4aBSvMEnlFmXSXO7jLIg0ipPGR0grOjDmWRBi3ee9ORbumJS8PFMDOMuFF831t+zD
	8LYFwzbBnClZtNQW/1JyagBp9umzsIGL1UAswhE1jvCFvRZMXvKdANLHVwMIZdqFI/y8
	47dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YBB/Gh4c6HHigMNvq+vHvqEXsm1sy+5fzB7iN4V0a0U=;
	b=g8eVds79Rk0az2u8rDnVXJK4HCVcRxqUkP/frr5Oe3mQHTtQIC4v4Qz2ce5DOk/rbO
	JRGr4/JMfSsnUomJmDl0UsS4FFME8E+79JgN+Y7zM5vP3IxTBJ9h07h4cC22+jzAHnAD
	edNCWq+keBmWM/3+q78bFoaOU9tnHCDj5eNSo+JI6tP6/tapuYHAWlVa7QvxaWShwZQb
	6t0LfeJJcgHMJBfQtITQuWE2LGS8PlGtkBGEjFWVvDLoYQJWMdiFl+x4o7G9cxiCO1h3
	8HVqzdbTcSNgDUTj9v8JuUelODwIC/2JPupnZUt+AJaXXvAG8858HIfSepmlKAfCQf+3
	idCA==
X-Gm-Message-State: AD7BkJKMk+mlVWDatKkWZji8JRmAKnoUPNYpWmtUe6wHy0RPQHlZtNv+xHCpFPdWKXmGzQ==
X-Received: by 10.28.184.137 with SMTP id i131mr73691wmf.96.1456780947557;
	Mon, 29 Feb 2016 13:22:27 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	t205sm18098042wmt.23.2016.02.29.13.22.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:22:26 -0800 (PST)
Date: Mon, 29 Feb 2016 22:22:24 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160229212224.GI2087@resin.home>
References: <1456655573-30138-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1456655573-30138-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [meta-raspberrypi][PATCH 1/1] omxplayer: Add patch to fix host-user-contaminated QA
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
X-List-Received-Date: Mon, 29 Feb 2016 21:22:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 28, 2016 at 11:32:53AM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  .../don-t-preserve-file-attributes-when-cp.patch       | 18 ++++++++++++++++++
>  recipes-multimedia/omxplayer/omxplayer_git.bb          |  1 +
>  2 files changed, 19 insertions(+)
>  create mode 100644 recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch b/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
> new file mode 100644
> index 0000000..08df12e
> --- /dev/null
> +++ b/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
> @@ -0,0 +1,18 @@
> +When running install (fakeroot) host-user-contaminated will fail because dist
> +rule copies files while preserving file attributes like user ID.
> +
> +Upstream-Status: Submitted [https://github.com/popcornmix/omxplayer/pull/431]
> +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> +
> +Index: git/Makefile
> +===================================================================
> +--- git.orig/Makefile
> ++++ git/Makefile
> +@@ -87,5 +87,5 @@ dist: omxplayer.bin omxplayer.1
> + 	cp COPYING $(DIST)/usr/share/doc/omxplayer
> + 	cp README.md $(DIST)/usr/share/doc/omxplayer/README
> + 	cp omxplayer.1 $(DIST)/usr/share/man/man1
> +-	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
> ++	cp -P ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
> + 	tar -czf omxplayer-dist.tar.gz $(DIST)
> +\ No newline at end of file
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index a0690a0..c8251fe 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -18,6 +18,7 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
>             file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
>             file://fix-tar-command-with-DIST.patch \
>             file://use-native-pkg-config.patch \
> +           file://don-t-preserve-file-attributes-when-cp.patch \
>             "
>  S = "${WORKDIR}/git"
>

Merged to master. Thank you.

--
Andrei Gherzan

