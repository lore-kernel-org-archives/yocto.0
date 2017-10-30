Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 209D6E00D9C; Mon, 30 Oct 2017 09:02:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.52 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 960D3E00CC3
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 09:02:34 -0700 (PDT)
Received: by mail-pg0-f52.google.com with SMTP id l24so11983291pgu.11
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 09:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BWiEUujZIBBNy0SNUQ+ssGUijq8yBS+9edP0OC8ZnKU=;
	b=YbEmQubJ3LcyjNoaqoNKUkoqyBYoUivGIFZhEwC8Sq7jBrJ1HSCSYtvwNDpgRw5y9t
	zIsJdBxB/fuVdisitk9dcHqZp+bMG/ycl4mEPVwz+d/YIqg/LojIrqX1NVPqZr3Hiznm
	vmhd4tYr+ucy2lbLvWeKaKOYhbSzfDIIIJNE9u9CE6ZjwJ8OJ1dIoo04IAmzMqUzaY6H
	Fb7uCCDR+8D16ljyIOTPIf4KXECNyOBuY5MbYJrQA+lOxtlian1nHLt+4y7cBYg+uq8J
	p7doyvmtQxQodBnnu24qTudBEwE5oV1c3wzYIIuE9LdE3/hiGoEReXaE1PoYY0z9cjj4
	4VtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BWiEUujZIBBNy0SNUQ+ssGUijq8yBS+9edP0OC8ZnKU=;
	b=OqK7nZZyFB+9uYZIkMqIvZ7OSkW52F2FnERitomADSLKFKvALWqOFN2Bbnj40PBl/o
	axGijO8k2TTvLFLSN2nU4BxL9ISue+ENci74LEQpLI7aitUJ7mvq+f0VHTdvxIJ9iEYo
	0IjhNMVND+HjTa7Vys82q9LWKMTgpGtlqiklSsQQLx0vGnB5F6w336Gq44O/4OsuWCuQ
	ExkpsNYonBB1Q/KcO62dqBudN7Oeug16a0byW07GsNOM4DT+vBiSojOP3/J+8zi/iACy
	s8Yjg5NayvMf4G976+uJIMttTZkw9mm/48C+rvJC9yC7fhePSsdeyyCkwYs+N4r81LFU
	vW4g==
X-Gm-Message-State: AMCzsaXew2n1FBZ+nj5KtRUCmu/VdIzlECab9Rg1QtYkljnjYjK5VGQ5
	QihgQlJjrzQksIpFB2wVRgLIlWHU2b96YBB/Zyk=
X-Google-Smtp-Source: ABhQp+RM4S1Un9nvEzCT3BEQn1PnMwHIJXg4c1ohpC120lI8ll5lsD6S8cwf3fc9d2sGwSyQlcnQ/j/i3lClhFcz10E=
X-Received: by 10.98.194.215 with SMTP id w84mr9059537pfk.255.1509379353750;
	Mon, 30 Oct 2017 09:02:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Mon, 30 Oct 2017 09:02:03 -0700 (PDT)
In-Reply-To: <64cf2d95-5651-3ff8-3ce2-327329edc4da@gmail.com>
References: <64cf2d95-5651-3ff8-3ce2-327329edc4da@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Oct 2017 09:02:03 -0700
Message-ID: <CAMKF1sr+DvBXOKr1+QrSj33MLy4RZxkPzQ54of4tjEV6pk85mg@mail.gmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, ross.buron@intel.com,
	Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: Re: [PATCH] poky: LICENSE in packagegroup makes no sense - removed
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
X-List-Received-Date: Mon, 30 Oct 2017 16:02:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 30, 2017 at 6:51 AM, Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
>
> Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
> ---
>  meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git
> a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> index 2ca6392..aee4a03 100644
> --- a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> +++ b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> @@ -4,7 +4,6 @@
>   SUMMARY = "Host packages for the standalone SDK or external toolchain"
>  PR = "r12"
> -LICENSE = "MIT"

this might fail some QA checks. what issues do you see with this in.

>   inherit packagegroup nativesdk
>  -- 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

