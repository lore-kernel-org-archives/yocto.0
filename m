Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D852AE00B65; Tue, 24 May 2016 06:44:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DCDAE00B52
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 06:44:22 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id t40so12266596ioi.0
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 06:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XlIDh3tcCk9VqKa0wWcM5ep7l+XxH8H8+AhFK2xFL1g=;
	b=YN9B1h3fLGtLQ1wh8A7LDLe9ZnOZ5ihVRTYB/5J7DM1sZIusZ5qMNyzd+lsmnI/rYQ
	jx7ptcVKoYmYgwqzASHSifG6sysUj7MFwZr05F1yoGJjH+KFrutvC6o2nJgB7h5UaQHA
	RHbarNtxhTtV9JTw2ZQFDkEaynqFHxKjUTrEk6/fOauhanq7PXtYqOqvGHIYWT+J5jdx
	M9JcDCs6GKhOzFempRrEdzjvrSnQhdyZD9KDWYV9yb2ygzNE9l1Kx/mbG8/68pR69c4D
	B18ZkkYQOfoYt5hyZAT/ifiFmuvbWppL08p/XtsbKHThOh5cy+6uvNGm/cER9kg/9W1n
	lL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XlIDh3tcCk9VqKa0wWcM5ep7l+XxH8H8+AhFK2xFL1g=;
	b=eXZozj7uM8uxXisRo8AZ7O24xVnoYsTmVDzjFdwUwlNRpkooWkiyH6L+Vw7J2ZaRv8
	doOlAQUlbVPhNzrV0VPEg36TvZEPMNAjI8A6Fu7p0AnMf0dCXsBqB5cr9nzqYZrAXOVv
	GXN32g8YdzdC93BdKIK8hvUszF+dbOIWFO1nm64KKsIvhaWrOeBQdLLF6i4gSQziGx5R
	Vr0RcZodzryLa2UslU4CUnvADDmbeE1ly4KJd+T6gkSrXkZ2B3FF5Vwqny0O2JrlwNR3
	fe0bQqKqBjs24U7/anjdtiiQ3j2tQNlSilL05S3gpey+8FWWlTMZFpKOyqVFi1qHD7JS
	KUYw==
X-Gm-Message-State: AOPr4FVfHb7/qntsORGJDgi58KK9hI+gi0z7tyNfC8ZLq1gBo6HsOYUdT4LBNprNXgdzMUl8i8GEGFUZAz+tvrba
X-Received: by 10.107.14.142 with SMTP id 136mr16132896ioo.94.1464097461581;
	Tue, 24 May 2016 06:44:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.48.131 with HTTP; Tue, 24 May 2016 06:43:42 -0700 (PDT)
In-Reply-To: <1464055945-9731-1-git-send-email-tracy.graydon@intel.com>
References: <1464055945-9731-1-git-send-email-tracy.graydon@intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Tue, 24 May 2016 14:43:42 +0100
Message-ID: <CAPhnLPA5GT+QOYnWjQuV+AwaFJNeZGPY5+TmBBt_GgoEPu6pKQ@mail.gmail.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
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
X-List-Received-Date: Tue, 24 May 2016 13:44:25 -0000
Content-Type: text/plain; charset=UTF-8

pulled into master. thanks!

-b

On 24 May 2016 at 03:12, Graydon, Tracy <tracy.graydon@intel.com> wrote:
> Remove the step for syncing the staged release to downloads directory. We
> pretty much NEVER do the sync to downloads at the time we do staging. Sync
> happens much later, as a separate process. We don't need this in the release
> script.
>
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>  bin/release_scripts/release.py | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
>
> diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
> index 3d4ce39..2b4d21c 100755
> --- a/bin/release_scripts/release.py
> +++ b/bin/release_scripts/release.py
> @@ -488,17 +488,7 @@ if __name__ == '__main__':
>          print "Generating the master md5sum table."
>          gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
>
> -    # 8) sync to downloads
> -    if REL_TYPE == "milestone":
> -        DL_DIR = os.path.join(DL_BASE, "milestones", RELEASE)
> -        print "DL_DIR for milestones: %s" %DL_DIR
> -    else:
> -        DL_DIR = os.path.join(DL_BASE, RELEASE)
> -        print "DL_DIR for point/major: %s" %DL_DIR
> -    print "Publishing release to downloads."
> -    sync_it(RELEASE_DIR, DL_DIR, "")
> -
> -    # 9) Publish the ADT repo. The default is NOT to publish the ADT. The ADT
> +    # 8) Publish the ADT repo. The default is NOT to publish the ADT. The ADT
>      # is deprecated as of 2.1_M1. However, we need to retain backward
>      # compatability for point releases, etc. We do this step after all the other
>      #  stuff because we want the symlinks to have been converted, extraneous
> --
> 2.7.0
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

