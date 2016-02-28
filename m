Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83432E00C9F; Sun, 28 Feb 2016 02:22:00 -0800 (PST)
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
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F208E00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:21:55 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id l68so3662975wml.3
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=iskIQ8dER69hQs35ukNf3FGg5IDWHSFcu6PW89hob90=;
	b=gZW1pV3hUUPMPzy06a2I/agvidx1uWDbZnlE6TC0rsoNbqeXQZ4QSa4nOg/WfwTxlu
	O9AjDElYKhsOOCDqwPk8caSUlaknM1vqvLCmd5Apu9hhmIQjtX9pYW9DUYg45pu6o0qi
	BtCKnnsjSYtKaxK8CpZnmCyf5jAO5Vf2WScMd5in/nsj/tnE2KFWwzVKBrwZ7/ZI7eDw
	3vU1/vv/PhyqLxbBrk8nz30I70C2nmaNDdJMMJLTdjhp+3RdwP5+XtlyEu+Fl0+s7SfR
	f3Q/8rkHBAzaGvAMDw/b9RmN04mu4L49I11FaYeUWLYBVQ4vYl6S0yJ3cfTWprX7EuJI
	lvPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=iskIQ8dER69hQs35ukNf3FGg5IDWHSFcu6PW89hob90=;
	b=BBsummUjChb6xU+anhB5nCZsW9d0B/QyNPN2aNpzQQseptZvtHnIPtK/82RKRCZ0QT
	OHp95Ge5gK4l+ShTStoQGbvhG1hQzel2mzohK/LEK5O4AATh4dPHzpe9oap8mhWkBgLv
	NUey3p7DaIAq99rS8yFKCjlOxuHbHU3ENgd3Zndi65qGhkPKoZLuu6vETSPkaOsclN9C
	KrQ/00lBPhHeNjL+ORRM7/E40qY36N/8m9PsZWLXLNoDtB5wLabGBmqCxnqAp7riGzFN
	Q7IaE0ZdkSZLmqvktUIr1Epwi/OeshYcj7AhA/j+r1tDYfvSHt9ffA2btD3K24dY6dUV
	whxA==
X-Gm-Message-State: AD7BkJLLMPcFDFlnnyH+fxzFoY4Nwvh1gn0zE4Mf1jjzhvzvBUpf9wnTgJv029s6IMpwhQ==
X-Received: by 10.28.101.7 with SMTP id z7mr5919127wmb.92.1456654914242;
	Sun, 28 Feb 2016 02:21:54 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	c136sm10940053wmd.3.2016.02.28.02.21.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 02:21:52 -0800 (PST)
Date: Sun, 28 Feb 2016 11:21:50 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160228102150.GB12618@resin.home>
References: <1456580809-29922-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456580809-29922-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/3] rpi-mkimage: install to ${libexecdir}
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
X-List-Received-Date: Sun, 28 Feb 2016 10:22:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 28, 2016 at 12:46:47AM +1100, Jonathan Liu wrote:
> It doesn't make sense to install to ${libexecdir}/rpi-mkimage as it
> changes the path on fido and earlier branches from:
>   [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage
> to:
>   [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/rpi-mkimage
> 
> Using ${libexecdir} instead of ${libexecdir}/rpi-mkimage preserves
> the path for fido and earlier.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
> index 2c8ecb1..7dea43d 100644
> --- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
> +++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
> @@ -15,8 +15,8 @@ SRC_URI = " \
>  S = "${WORKDIR}/git"
>  
>  do_install () {
> -    install -d ${D}${libexecdir}/rpi-mkimage
> -    install -t ${D}${libexecdir}/rpi-mkimage ./mkimage/*
> +    install -d ${D}${libexecdir}
> +    install -t ${D}${libexecdir} mkimage/*
>  }
>  
>  BBCLASSEXTEND = "native"
> -- 
> 2.7.1
> 
Merged to master. Thanks.
-- 
Andrei Gherzan

