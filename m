Return-Path: <aws.ismail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F752E00985; Wed, 25 Nov 2015 12:12:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aws.ismail[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF0FE007C9
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 12:12:49 -0800 (PST)
Received: by obdgf3 with SMTP id gf3so47940632obd.3
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 12:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=AQ9hGIHEQ0Dsn6MoKiO9XNOEwFb8t6mi2AvhpEuWr8Q=;
	b=Ip/qsY98idA9uokKe2ErZed+fhaUlTalt3GrBsemjHcepEiXPi1MTnEKKHfBWwaOey
	KqVhAnCzCGj2b4mnrART9MWycsLstW18ZIBE5pealimOGudysN4dFan48X0B74dzZnYK
	tPAZwf5PiCdQZHy01lbK9c136pcZCcrmYPj5o4UWNLfeiPPnjwa0WqHSCus80MuH1sUH
	77R7kjmTzYOWeJXhsT/V3tNPucM5Udwd/FYWKizlbJU+5E94h4ZH9M8D+vlHSqW6RzRL
	pHRfWr1AWw+bjtVH7D4DuEb3ImyKCUq82yeuzpo81I3l+OwfwwBltLIALyOfWji1iNkS
	0U0w==
X-Received: by 10.182.91.6 with SMTP id ca6mr25761697obb.24.1448482369385;
	Wed, 25 Nov 2015 12:12:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.41.39 with HTTP; Wed, 25 Nov 2015 12:12:29 -0800 (PST)
In-Reply-To: <1448383148-2344-2-git-send-email-juro.bystricky@intel.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
	<1448383148-2344-2-git-send-email-juro.bystricky@intel.com>
From: Aws Ismail <aws.ismail@gmail.com>
Date: Wed, 25 Nov 2015 15:12:29 -0500
Message-ID: <CAMHMu0NkHpxu9i7KaHpnD6BPhrKmtm1Ox9fkR6-F-76+BWknrg@mail.gmail.com>
To: Juro Bystricky <juro.bystricky@intel.com>
Cc: yocto@yoctoproject.org, jurobystricky@hotmail.com
Subject: Re: [PSPLASH 1/2] psplash-fb.c: Fix BGR888 detection
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
X-List-Received-Date: Wed, 25 Nov 2015 20:12:54 -0000
Content-Type: text/plain; charset=UTF-8

:) I have sent the same patch three years ago but no one picked it up...

https://lists.yoctoproject.org/pipermail/yocto/2012-October/009846.html

On Tue, Nov 24, 2015 at 11:39 AM, Juro Bystricky
<juro.bystricky@intel.com> wrote:
> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
> ---
>  psplash-fb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/psplash-fb.c b/psplash-fb.c
> index bd9cd9d..e71af8f 100644
> --- a/psplash-fb.c
> +++ b/psplash-fb.c
> @@ -185,7 +185,7 @@ psplash_fb_new (int angle)
>           fb->rgbmode = RGB888;
>    } else if (fb->red_offset == 0 && fb->red_length == 8 &&
>        fb->green_offset == 8 && fb->green_length == 8 &&
> -      fb->blue_offset == 8 && fb->blue_length == 8) {
> +      fb->blue_offset == 16 && fb->blue_length == 8) {
>           fb->rgbmode = BGR888;
>    } else {
>           fb->rgbmode = GENERIC;
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

