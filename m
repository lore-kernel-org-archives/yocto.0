Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA854E00C28; Fri, 16 Nov 2018 07:46:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0EBE00B45
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:46:16 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id f6so14374141iob.1
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mNG67uT0G81NGLakeGAB2VB+KBMFDlfPntjL+HKXbiE=;
	b=rAhnawpNeeQYoa169xVmb86OBuXyvoIN8yVGTDaxfXja3KfLTHLvoQUHt3FdRbpsDk
	9RSt41XJd9ALHIN8yctEjKEBXDHm8a23CZc+zeZGWIOyWTgiu30V0VQ0btQhhdLxEMhL
	lws5+N6T0DgCX5FatduEe0kCnzxxQycrH1MGndSQ1082s//HBjujanVZuBSxcW+NSuwq
	wsgZb8LE+s3I1A2W7AsNkskoHlXY1uoDgAZjsmTGgmq6c/Z6G1aMEIKurz4Qk9njnO7R
	u6ipirQxgtLnAHtm/p04F/PRz8OSjf9epD5/hu2zMkun5q4I4FaprM2sUXsqYJBcItTr
	2UyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mNG67uT0G81NGLakeGAB2VB+KBMFDlfPntjL+HKXbiE=;
	b=l3KlDdxVKWvbFe95ecaI6s4e6f4yQZSjNJCI9mnzwkQiWmwWWBacepYoDLWKo+vKpp
	IRXqzgmKFFtLKXNpf+/80SsnJCt1d/JxLvsaxF4FVw7xBx/44wQHJbKCWAMTBKVfsueL
	VXD0g8Iw4ESoAsxhx+3/qscnGoajiowbBbvtvYvXDgL1UkdfLwYzaO1ET2qDex58NMK4
	fWl0cSqbOqR9GCPGxunZ2vhEkvpmMlLMttwmha/2xZo2JC0vSiICXPrwQIhYDV8+dyBD
	lPw5tRWp4fnAFSEwYwDQKFpPXD3fxIECdj2CbpYXlS9RM7AfhkdmQEFy0XoEW0J11JHy
	KkQg==
X-Gm-Message-State: AA+aEWYmSeenf1Zn0imnz/rgPf6bf/pE2rrTphTpLtKNWzOjO4f67WOW
	n5edawlrjh8RoZKaQ6yIoMcITYBA200RwPTdhcBMuA==
X-Google-Smtp-Source: AFSGD/UQFnNnfxS7kGHCqsQ3GptaKdxU+IaK6l3lKD2gZLQL6xb7yKzyNktgRizPkP9zAJtG4biq8s1PPDfhlY7l0Oo=
X-Received: by 2002:a6b:fb19:: with SMTP id
	h25-v6mr1551035iog.270.1542383175606; 
	Fri, 16 Nov 2018 07:46:15 -0800 (PST)
MIME-Version: 1.0
References: <20181116153608.24733-1-JPEWhacker@gmail.com>
In-Reply-To: <20181116153608.24733-1-JPEWhacker@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Nov 2018 15:46:03 +0000
Message-ID: <CAJTo0Lbp8hwW-ddU0AYs7WDM020dOCKOMmPNMRxBZHYgZi0SnQ@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] README: Add myself as a maintainer
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
X-List-Received-Date: Fri, 16 Nov 2018 15:46:16 -0000
Content-Type: text/plain; charset="UTF-8"

Juro doesn't work on the Yocto team anymore so can you remove him?

Ross
On Fri, 16 Nov 2018 at 15:36, Joshua Watt <jpewhacker@gmail.com> wrote:
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  README | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/README b/README
> index 2ed1395..e866213 100644
> --- a/README
> +++ b/README
> @@ -11,7 +11,9 @@ This layer depends on:
>   layers: meta
>   branch: master
>
> -Layer Maintainer: Juro Bystricky <juro.bystricky@intel.com>
> +Layer Maintainers:
> +    Juro Bystricky <juro.bystricky@intel.com>
> +    Joshua Watt <jpewhacker@gmail.com>
>
>  Please send changes to the yocto mailing list with [meta-mingw] in the subject line,
> -cc'ing the maintainer.
> +cc'ing the maintainers.
> --
> 2.19.1
>

