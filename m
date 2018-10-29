Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1C8E00BC6; Mon, 29 Oct 2018 07:46:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB82E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 07:46:08 -0700 (PDT)
Received: by mail-oi1-f196.google.com with SMTP id v198-v6so4504069oif.2
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 07:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RmmYdp1GcP8kMTOmW99S7rPXZ+xNtl/gvzxupQ1eYY4=;
	b=PH0+yBzSabBwc9xCMI4rWPl7FFmTKlCXX1vUMyF0JXYvSV4Vj52VRqFKjzKav4oSeA
	KgZopvnQe44Lw5MGy3ycjNear7IuoAJDBpZRUpO2BV5mTutcGVmAghOwgjqa8npEjtvL
	sdWkoDvMMkm67lqBpoY1BFTbA445Ft3dpccl7Jpw/HPURqan9FTeJst+ym7R66zQ1lIQ
	S5t2o2oB6oNThtOZFVpJbvnENAjmJHaIymH+Op7NJJOQjg0kJKGHyTyrDtKlFzccMp7K
	KTJG7YNYco+gdMD5DA4OHAa0WppzDGk2mbOyAdmuESZrREnb9RHykWWZ7uC8A9UE92sK
	QmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RmmYdp1GcP8kMTOmW99S7rPXZ+xNtl/gvzxupQ1eYY4=;
	b=SOSqEe2yvMAbo9cyJgY9SAdnPO/FhpR/XxtC3/abfvqPPbMUIcAgmw1Ea6wgsfmCRW
	0s2Z0YA3pm26mx3mlSA8+/dKLAMhfo9WWuUX0U3NiiF/38ycD9/FhrTr8ZhpP3x4s4HB
	7s6GhEZVW77WnE9RetvSGPyh8v8xoBuuMU/qDGaqZ7NuyGU8g7kqxhaPRL+2i6Gpqx30
	XBSD4BcElT9rKW8a59OCFRd2HEQwuNy2MDV3saG/6JjSV7uyyjSgGC+fgsTp5qUuJ6qJ
	Hosy5TWZHHdfOhHT6pght6cYAvtsaB9UzbxhIMFqKiUIArE8RXxJ0hgVaq2WURDvJS3N
	3nbg==
X-Gm-Message-State: AGRZ1gKKDHchZwUXPs9NHbEVZBwttmbm5Nn4KSc7N1y5aX1YYGtPTF+L
	YSkl0ibsCEw7JndZO/Si4jEi4i2D/2+llVG/9vgz4w==
X-Google-Smtp-Source: AJdET5eAmMTySxUQqyyDl04LO7hfA4ZbC2ScFPPPkIHFyohpG2LXdPDmIc+e4VB75ccane13HfaZfSBzRt+yw9bY3RM=
X-Received: by 2002:aca:895:: with SMTP id
	143-v6mr8835342oii.309.1540824367699; 
	Mon, 29 Oct 2018 07:46:07 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN2C-=XWKStypsyUHr0ddyPrLX9-y4qJGJ+zO98=-F9vWA@mail.gmail.com>
In-Reply-To: <CACKFPN2C-=XWKStypsyUHr0ddyPrLX9-y4qJGJ+zO98=-F9vWA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 14:45:56 +0000
Message-ID: <CAJTo0Lb_=1H7E9K7ykakQTERt4n9j5b58Q=GV3cQwDCDhpLwvg@mail.gmail.com>
To: dimtass@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: nativesdk-libxcrypt-4.0.1 is failing
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
X-List-Received-Date: Mon, 29 Oct 2018 14:46:08 -0000
Content-Type: text/plain; charset="UTF-8"

The fix is already queued in master-next, so will be n master/thud shortly.

Ross
On Mon, 29 Oct 2018 at 13:44, Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> Hi all,
>
> it seems that the libxcrypt recipe in poky is failing because the git repo
> doesn't have a master branch anymore. The default branch has changed
> to `develop` and the recipe can't fetch the repo when I'm building the SDK
> for my image.
>
> A temporary solution is to override the URL with a bbappend, but in general
> this has broken the recipe. This is the error that I'm getting.
>
> WARNING: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Failed to fetch URL git://github.com/besser82/libxcrypt.git;branch=master, attempting MIRRORS if available
> ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure: Unable to find revision 089479bb24acd168613757a6f12d63caa95416b4 in branch master even from upstream
> ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure for URL: 'git://github.com/besser82/libxcrypt.git;branch=master'. Unable to fetch URL from any source.
> ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in: /rnd/yocto/nativeos/build/tmp/work/x86_64-nativesdk-nativeosmassdk-linux/nativesdk-libxcrypt/4.0.1-r0/temp/log.do_fetch.19081
> ERROR: Task (virtual:nativesdk:/rnd/yocto/nativeos/sources/poky/meta/recipes-core/libxcrypt/libxcrypt_4.0.1.bb:do_fetch) failed with exit code '1'
>
> P.S another good reason to enable the own mirrors early in the development phase.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

