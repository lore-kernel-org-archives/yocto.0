Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 156C3E006E9; Thu,  3 Nov 2016 12:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CDD0E00509
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:55:49 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id 68so626966wmz.2
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 12:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aXuTVLBG9hoM7cvMfUSyIPrTrpJjnf8uRTC73A5PiSI=;
	b=LLiYEpOKPfbPBgEP51pwzWIHsgZfffyTd60CoCBrVaez6IfM2HHGQXEaSRET4+f2V1
	vwM4qcqSheRys0eQqAV9xjr7O/ZZ40/3ZrQcM3EX3+lzQyGGaj7YxkLjbHffS8UzZr94
	DiXB9Uo0SHpCrE8+yp3b5tIi3bt5W+uZz89DWyksiOysntpL9S3vNNS0drxtKAOSwWSG
	R3pEKMFEKPLDsWb6GmV3qyp1wbzN1tpD2nnwc0f4OVoqOwzJ1ScRt/xnetryFUIgBaqC
	MmjKfYzMbp78q8DT8mk/8kqjsE+PE5OL1+Oiw9tjTU5/1RyDFmOoQOVcVHd1nWLcqG5b
	FNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aXuTVLBG9hoM7cvMfUSyIPrTrpJjnf8uRTC73A5PiSI=;
	b=lC3yiJ0m2dp6G8W20Znkff9IHlbDexcQnMEC2A08SKClpWtbhS3wfCEWyImAWKdC6/
	d0jK+TiNhtrMFU998BUFAq6HsgycP76aoPNuulvU/2IMYIs8ST/nPkp6oDJwzlGb9QKw
	dgA6Q+3K0n6q7C7fbUFPRudsNfV49EGKYcVjemYWZXVIrF8VJix4k/SYnYKyOXKU2yrS
	+WVjDo/kaIOSzCo5gg8Dg+EtXKN5v7fsCdwhKVYpphHtV5Hn44egII9gn6vMZEmgs3tk
	KUEQAoHaUixOrOhAYLxv9zi9bPUpRwxG4PqXhTpLIYVYPCTUlkI/+pGC5QM1Q9EdDQLk
	Gqtg==
X-Gm-Message-State: ABUngveJOIsBGsq2rzpjXMNbiex5zEoy2LyGc/Tri1NxQO47Uqk02HUUHL+j2Bk+9BX0PAle/n+khF+T8o/UDw==
X-Received: by 10.194.75.165 with SMTP id d5mr8612097wjw.190.1478202948484;
	Thu, 03 Nov 2016 12:55:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.155.103 with HTTP; Thu, 3 Nov 2016 12:55:47 -0700 (PDT)
In-Reply-To: <20161103062937.23799-1-raj.khem@gmail.com>
References: <20161103062937.23799-1-raj.khem@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 3 Nov 2016 12:55:47 -0700
Message-ID: <CAJ86T=XR2tN-56mcRoXNCNnnxOJvOb32GbvsVkGp9g1t31Yfhw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Thu, 03 Nov 2016 19:55:51 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 2, 2016 at 11:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Enable dispmanx support if using bcm driver
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index ab0280e..1097e65 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -1,2 +1,12 @@
> -EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
> -                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
> +EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_INCDIR}/interface/vcos/pthreads \
> +                                   -I${STAGING_INCDIR}/interface/vmcs_host/linux'"
> +
> +# if using bcm driver then enable dispmanx, other

Comment seems to be truncated?

> +
> +PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,userland"

Typical style is to put PACKAGECONFIG[foo] lines after defining PACKAGECONFIG.

> +PACKAGECONFIG_append_rpi = " "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "", "dispmanx", d)}"

Typo, extra "

> +
> +PACKAGECONFIG_GL_rpi = "egl gles2"
> +PACKAGECONFIG_append_rpi = " hls libmms faad dispmanx"

Appending dispmanx is conditional on MACHINE_FEATURES 3 lines above.
It probably shouldn't be unconditional here.

> +
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

